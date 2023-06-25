// ignore_for_file: prefer_void_to_null

import 'dart:async';
import 'dart:collection';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/api/cart_clear_exception.dart';
import '../../data/api/model/response_model.dart';
import '../../data/api/over_closing_time_and_is_exist_products_exception.dart';
import '../../data/api/re_consent_exception.dart';
import '../../data/api/two_factor_authentication_exception.dart';
import '../../util/access_point_info_manager.dart';
import '../../util/authentication_manager.dart';
import '../../util/logger.dart';
import '../page/root_page.dart';
import '../page/sorry_page.dart';
import '../page/web_view_base_page.dart';
import 'app_dialogs.dart';

class HandledError {
  const HandledError({
    this.title,
    this.message,
    this.status,
    this.statusCode,
    this.errorReasonCode,
  });

  final String? title;
  final String? message;
  final int? status;
  final String? statusCode;
  final String? errorReasonCode;
}

enum ErrorHandlerResultType {
  /// エラーハンドリングをしない (無視する) 場合
  next,

  /// エラーを解決した場合
  resolve,

  /// エラーのままで終了させる場合
  reject,
}

class ErrorHandlerState<T> {
  ErrorHandlerState(this.data, [this.type = ErrorHandlerResultType.next]);

  final T data;
  final ErrorHandlerResultType type;
}

class ErrorHandler {
  ErrorHandlerState next(Object error) => ErrorHandlerState<Object>(error);

  ErrorHandlerState resolve([HandledError? handledError]) =>
      ErrorHandlerState<HandledError?>(handledError, ErrorHandlerResultType.resolve);

  ErrorHandlerState reject(Object error) => ErrorHandlerState<Object>(error, ErrorHandlerResultType.reject);
}

abstract class ErrorOperator {
  final ErrorHandler handler = ErrorHandler();

  Future<ErrorHandlerState> handle(Object error, BuildContext context);
}

typedef ErrorHandlerCallback = Future<ErrorHandlerState> Function(
    Object error, BuildContext context, ErrorHandler handler);

typedef DioResponseErrorHandlerCallback = Future<ErrorHandlerState> Function(
    DioError error, BuildContext context, ErrorHandler handler);

class ErrorOperatorWrapper extends ErrorOperator {
  ErrorOperatorWrapper([
    this._callback,
    this._baseCallback,
  ])  : assert(_baseCallback == null || _callback == null),
        assert(_baseCallback != null || _callback != null);

  final ErrorHandlerCallback? _baseCallback;
  final DioResponseErrorHandlerCallback? _callback;

  @override
  Future<ErrorHandlerState> handle(Object error, BuildContext context) async {
    if (_baseCallback != null) {
      return await _baseCallback!(error, context, handler);
    }
    if (error is! DioError) {
      return handler.next(error);
    }
    if (error.type != DioErrorType.response) {
      return handler.next(error);
    }
    return await _callback!(error, context, handler);
  }
}

class ErrorOperators extends ListMixin<ErrorOperator> {
  ErrorOperators() : _list = [];

  ErrorOperators.of(Iterable<ErrorOperator>? elements) : _list = elements?.toList() ?? [];

  ErrorOperators.common()
      : _list = [
          ReConsentErrorOperator(),
          OverClosingTimeAndIsExistProductsErrorOperator(),
          OverClosingTimeAndIsNotExistProductsErrorOperator(),
          TwoFactorAuthenticationErrorOperator(),
          CorporateMemberErrorOperator(),
          CartClearErrorOperator(),
          DioErrorOperator(),
          NetworkErrorOperator(),
          DioCancelErrorOperator(),
          DioOtherErrorOperator(),
          BadRequestErrorOperator(),
          UnauthorizedErrorOperator(),
          NotFoundErrorOperator(),
          ForbiddenErrorOperator(),
          ServiceUnavailableErrorOperator(),
          TooManyRequestsErrorOperator(),
          UnexpectedServerErrorOperator(),
        ];

  final List<ErrorOperator> _list;

  @override
  int get length => _list.length;

  @override
  set length(int newLength) {
    _list.length = newLength;
  }

  @override
  void add(ErrorOperator element) {
    _list.add(element);
  }

  @override
  ErrorOperator operator [](int index) {
    return _list[index];
  }

  @override
  void operator []=(int index, ErrorOperator value) {
    if (_list.length == index) {
      _list.add(value);
    } else {
      _list[index] = value;
    }
  }

  Future<HandledError?> handle(Object error, BuildContext context) async {
    final completer = Completer<ErrorHandlerState>();

    // ここで 個別ハンドリング -> 共通ハンドリングを行う
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      var state = ErrorHandlerState<dynamic>(error);
      for (final operator in _list) {
        if (state.type == ErrorHandlerResultType.next) {
          state = await operator.handle(error, context);
        }
      }
      completer.complete(state);
    });

    final state = await completer.future;

    switch (state.type) {
      case ErrorHandlerResultType.next:
        // エラーハンドリングが閉じきれていないので実装時エラー
        throw StateError('実装が間違っている');
      case ErrorHandlerResultType.resolve:
        // エラーがきちんと取り扱えた
        return state.data as HandledError?;
      case ErrorHandlerResultType.reject:
        // 取り扱えないエラーが発生していた
        throw error;
    }
  }
}

/// 閉店時間横断 カートをリセットし全体的に商品情報を更新する必要がある
class OverClosingTimeAndIsExistProductsErrorOperator extends ErrorOperator {
  @override
  Future<ErrorHandlerState> handle(Object error, BuildContext context) async {
    if (error is OverClosingTimeAndIsExistProductsException) {
      await showConfirmationDialog<void>(
        context: GetIt.I<GlobalKey<NavigatorState>>().currentContext!,
        dialogName: 'CartDeletionNotificationModal',
        title: 'カートがクリアされました',
        content: const Text('商品の入れ替えとメンテナンスを行ったため商品が削除されました。再度追加してください。'),
        applicationText: 'OK',
        onApplied: (context) => () {
          RootPage.flush();
        },
      );
      return handler.resolve();
    }
    return handler.next(error);
  }
}

/// 閉店時間横断 カートに商品は存在しないが全体的に商品情報を更新する必要がある
class OverClosingTimeAndIsNotExistProductsErrorOperator extends ErrorOperator {
  @override
  Future<ErrorHandlerState> handle(Object error, BuildContext context) async {
    if (error is OverClosingTimeAndIsNotExistProductsException) {
      RootPage.flush();
      return handler.resolve();
    }
    return handler.next(error);
  }
}

/// 二要素認証エラー
class TwoFactorAuthenticationErrorOperator extends ErrorOperator {
  static const name = 'TwoFactorAuthenticationErrorModal';

  @override
  Future<ErrorHandlerState> handle(Object error, BuildContext context) async {
    if (error is TwoFactorAuthenticationException) {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        final result = await showDialog(context);
        if (!result) {
          GetIt.I<AuthenticationManager>().logout();
        }
      });
      return handler.resolve();
    }
    return handler.next(error);
  }

  static Future<bool> showDialog(BuildContext context) async {
    final result = await showNormalSelectionDialog<bool?>(
      context: context,
      dialogName: name,
      title: '二要素認証を設定されているお客様はアプリのご利用ができません。',
      content: const Text('大変申し訳ございませんがイトーヨーカドーネットスーパーWebブラウザ版をご利用いただくか、二要素認証を解除してからご利用ください。'),
      applicationText: 'Webブラウザ版を見る',
      cancellationText: '見学時のトップページへ戻る',
      cancellationTextFontSize: 16,
      onApplied: (context) => () async {
        final shopTopUrl = Uri.parse('$iynsWebBaseUrl/shop');
        if (!await canLaunchUrl(shopTopUrl)) {
          logger.info('Webブラウザ版が開けません');
          return;
        }
        await launchUrl(shopTopUrl);
        Navigator.pop(context, true);
        if (Platform.isIOS) {
          exit(0);
        } else {
          SystemNavigator.pop(animated: false);
        }
      },
      onCanceled: (context) => () => Navigator.pop(context, false),
    );
    return result == true;
  }
}

class CorporateMemberErrorOperator extends ErrorOperator {
  @override
  Future<ErrorHandlerState> handle(Object error, BuildContext context) async {
    if (error is CorporateMemberException) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
        await showConfirmationDialog<void>(
          context: context,
          dialogName: 'CorporateMemberUnavailableModal',
          title: 'イトーヨーカドーネットスーパーアプリのご利用ができないアカウントです',
          content: const Text('法人会員のお客様はアプリのご利用ができません。\nWebブラウザ版をご利用ください。'),
          applicationText: 'OK',
          onApplied: (_) => () {
            // 法人会員の場合はログアウトしてからトップページへ遷移
            GetIt.I<AuthenticationManager>().logout();
          },
        );
      });
      return handler.resolve();
    }
    return handler.next(error);
  }
}

class CartClearErrorOperator extends ErrorOperator {
  @override
  Future<ErrorHandlerState> handle(Object error, BuildContext context) async {
    if (error is CartClearException) {
      SorryPage.push(SorryPageArgument.cartClear());
      return handler.resolve();
    }
    return handler.next(error);
  }
}

/// DioErrorだけ通すフィルター
class DioErrorOperator extends ErrorOperator {
  @override
  Future<ErrorHandlerState> handle(Object error, BuildContext context) async {
    if (error is DioError) {
      return handler.next(error);
    } else {
      return handler.reject(error);
    }
  }
}

/// ネットワークエラー
class NetworkErrorOperator extends ErrorOperator {
  @override
  Future<ErrorHandlerState> handle(Object error, BuildContext context) async {
    if (error is! DioError) {
      return handler.next(error);
    }
    final errorType = error.type;
    if (errorType != DioErrorType.connectTimeout &&
        errorType != DioErrorType.sendTimeout &&
        errorType != DioErrorType.receiveTimeout) {
      return handler.next(error);
    }
    final errorResponse = ResponseModel<Null>.fromJson(error.response?.data);
    final errorStatusCode = errorResponse.statusCode;
    final errorReasonCode = errorResponse.errorDetails.firstOrNull?.errorReasonCode;
    return handler.resolve(HandledError(
      title: 'インターネットに接続されていません',
      message: '接続を確認し、再度お試しください。',
      // connectTimeoutにはresponseがないことは確認済み。receiveTimeoutの場合不明
      status: error.response?.statusCode,
      statusCode: errorStatusCode,
      errorReasonCode: errorReasonCode,
    ));
  }
}

/// 通信キャンセルエラー
class DioCancelErrorOperator extends ErrorOperator {
  @override
  Future<ErrorHandlerState> handle(Object error, BuildContext context) async {
    if (error is! DioError) {
      return handler.next(error);
    }
    if (error.type == DioErrorType.cancel) {
      // APIのキャンセル処理は想定していないのでもし起こったらエラー
      return handler.reject(error);
    } else {
      return handler.next(error);
    }
  }
}

/// その他の通信エラー
class DioOtherErrorOperator extends ErrorOperator {
  @override
  Future<ErrorHandlerState> handle(Object error, BuildContext context) async {
    if (error is! DioError) {
      return handler.next(error);
    }
    // 端末のネットワークがオフの場合、もしくはサーバーから拒否された場合起こった
    if (error.type == DioErrorType.other) {
      final dynamic exception = error.error;
      if (exception is SocketException) {
        final osError = exception.osError;
        final errorCode = osError?.errorCode;
        // 端末側でのネットワークエラーの場合エラーコード101が出る
        // サーバ側でのネットワークエラーの場合エラーコード61が出た
        return handler.resolve(HandledError(
          title: 'インターネットに接続されていません',
          message: '接続を確認し、再度お試しください。',
          status: errorCode,
        ));
      }

      SorryPage.push(SorryPageArgument.unexpected());
      return handler.resolve();
    } else {
      return handler.next(error);
    }
  }
}

/// Bad Request
class BadRequestErrorOperator extends ErrorOperatorWrapper {
  BadRequestErrorOperator()
      : super(
          (error, context, handler) async {
            final response = error.response!;
            final httpStatus = response.statusCode!;
            if (httpStatus != HttpStatus.badRequest) {
              return handler.next(error);
            }
            final errorResponse = ResponseModel<Null>.fromJson(response.data);
            final errorStatusCode = errorResponse.statusCode;
            // エラーレスポンスのステータスコードが空の場合、未知のエラー
            if (errorStatusCode.isEmpty) {
              FirebaseCrashlytics.instance.recordError(error, error.stackTrace, fatal: true);
              final errorReasonCode = errorResponse.errorDetails.firstOrNull?.errorReasonCode;
              SorryPage.push(
                SorryPageArgument.unexpected(
                  HandledError(
                    status: httpStatus,
                    statusCode: errorStatusCode,
                    errorReasonCode: errorReasonCode,
                  ),
                ),
              );
              return handler.resolve();
            }
            if (errorStatusCode == 'E-00007') {
              bool hasReasonCode(String code) =>
                  errorResponse.errorDetails.any((errorModel) => errorModel.errorReasonCode == code);
              // ログイン制限(緊急閉店)
              if (hasReasonCode('2000124')) {
                _loginRestricted();
                // SorryPage.push(SorryPageArgument.loginRestricted());
                return handler.resolve();
              }
              // フロント完全ログイン制限
              if (hasReasonCode('2100059')) {
                // SorryPage.push(SorryPageArgument.loginRestricted(), logout: true);
                _loginRestricted();
                return handler.resolve();
              }
              // ログイン失敗
              if (hasReasonCode('2100012')) {
                // 予期せぬ業務エラー
                FirebaseCrashlytics.instance.recordError(error, error.stackTrace, fatal: true);
                SorryPage.push(
                  SorryPageArgument.unexpected(
                    const HandledError(
                      status: HttpStatus.badRequest,
                      statusCode: 'E-00007',
                      errorReasonCode: '2100012',
                    ),
                  ),
                  logout: true,
                );
                return handler.resolve();
              }
              // 完全閉店
              if (hasReasonCode('2000123')) {
                final errorDetail = errorResponse.errorDetails.first;
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
                    MaterialPageRoute<Object?>(
                      settings: const RouteSettings(name: 'PermanentlyClosedShopErrorPage'),
                      builder: (context) => WebViewBasePage(
                        initialUrl:
                            '$iynsBaseUrl/nds/error/close/${errorDetail.errorReasonSubstitute.first.value}.html',
                        showAppBar: true,
                        authenticationRequired: false,
                      ),
                    ),
                    (route) => false,
                  );
                });
                return handler.resolve();
              }
              // カートクリア
              if (hasReasonCode('3100001')) {
                SorryPage.push(SorryPageArgument.cartClear());
                return handler.resolve();
              }
              // プレオープン店舗
              if (hasReasonCode('2100054') || hasReasonCode('2100090')) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
                    MaterialPageRoute<Object?>(
                      settings: const RouteSettings(name: 'PreopenShopErrorPage'),
                      builder: (context) => WebViewBasePage(
                        initialUrl: '$iynsBaseUrl/nds/error/new-open.html',
                        authenticationRequired: false,
                      ),
                    ),
                    (route) => false,
                  );
                });
                return handler.resolve();
              }
              // 見学ログイン利用不可
              if (hasReasonCode('2100105')) {
                // 予期せぬ業務エラー
                SorryPage.push(
                  SorryPageArgument.unexpected(
                    HandledError(
                      status: httpStatus,
                      statusCode: errorStatusCode,
                      errorReasonCode: '2100105',
                    ),
                  ),
                  logout: true,
                );
                return handler.resolve();
              }
            }
            // 予期せぬ業務エラー
            FirebaseCrashlytics.instance.recordError(error, error.stackTrace);
            final errorReasonCode = errorResponse.errorDetails.firstOrNull?.errorReasonCode;
            SorryPage.push(
              SorryPageArgument.unexpected(
                HandledError(
                  status: httpStatus,
                  statusCode: errorStatusCode,
                  errorReasonCode: errorReasonCode,
                ),
              ),
            );
            return handler.resolve();
          },
        );

  static void _loginRestricted() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        await GetIt.I<AuthenticationManager>().logout(toRoot: false);
        GetIt.I<GlobalKey<NavigatorState>>().currentState?.pushAndRemoveUntil(
              MaterialPageRoute<Object?>(
                settings: const RouteSettings(name: 'LoginRestrictionPage'),
                builder: (_) => WebViewBasePage(
                  initialUrl: iynsLoginRestrictionUrl,
                  showAppBar: false,
                  authenticationRequired: false,
                ),
              ),
              (_) => false,
            );
      },
    );
  }
}

/// Unauthorized
class UnauthorizedErrorOperator extends ErrorOperatorWrapper {
  UnauthorizedErrorOperator()
      : super(
          (error, context, handler) async {
            final response = error.response!;
            final httpStatus = response.statusCode!;
            if (httpStatus != HttpStatus.unauthorized) {
              return handler.next(error);
            }
            GetIt.I<AuthenticationManager>().logout();
            return handler.resolve();
          },
        );
}

/// Resource Not Found
class NotFoundErrorOperator extends ErrorOperatorWrapper {
  NotFoundErrorOperator()
      : super(
          (error, context, handler) async {
            final response = error.response!;
            final httpStatus = response.statusCode!;
            if (httpStatus != HttpStatus.notFound) {
              return handler.next(error);
            }
            // 個別画面で処理されていない場合、ここで処理する
            FirebaseCrashlytics.instance.recordError(error, error.stackTrace);
            SorryPage.push(SorryPageArgument.resourceNotFound());
            return handler.resolve();
          },
        );
}

/// Forbidden ErrorOperator
class ForbiddenErrorOperator extends ErrorOperatorWrapper {
  ForbiddenErrorOperator()
      : super(
          (error, context, handler) async {
            final response = error.response!;
            final httpStatus = response.statusCode!;
            if (httpStatus != HttpStatus.forbidden) {
              return handler.next(error);
            }
            final errorResponse = ResponseModel<Null>.fromJson(response.data);
            final errorStatusCode = errorResponse.statusCode;
            final errorReasonCode = errorResponse.errorDetails.firstOrNull?.errorReasonCode;

            SorryPage.push(
              SorryPageArgument.serviceUnavailable(
                HandledError(
                  status: httpStatus,
                  statusCode: errorStatusCode,
                  errorReasonCode: errorReasonCode,
                ),
              ),
            );
            return handler.resolve();
          },
        );
}

/// All other errors
class UnexpectedServerErrorOperator extends ErrorOperatorWrapper {
  UnexpectedServerErrorOperator()
      : super(
          (error, context, handler) async {
            final response = error.response!;
            final httpStatus = response.statusCode!;
            final errorResponse = ResponseModel<Null>.fromJson(response.data);
            final errorStatusCode = errorResponse.statusCode;
            final errorReasonCode = errorResponse.errorDetails.firstOrNull?.errorReasonCode;
            FirebaseCrashlytics.instance.recordError(error, error.stackTrace);
            SorryPage.push(
              SorryPageArgument.serviceUnavailable(
                HandledError(
                  status: httpStatus,
                  statusCode: errorStatusCode,
                  errorReasonCode: errorReasonCode,
                ),
              ),
            );
            return handler.resolve();
          },
        );
}

/// Service Unavailable
class ServiceUnavailableErrorOperator extends ErrorOperatorWrapper {
  ServiceUnavailableErrorOperator()
      : super(
          (error, context, handler) async {
            final response = error.response!;
            final httpStatus = response.statusCode!;
            if (httpStatus != HttpStatus.serviceUnavailable) {
              return handler.next(error);
            }

            final errorResponse = ResponseModel<Null>.fromJson(response.data);
            final errorStatusCode = errorResponse.statusCode;
            final frontMessage = errorResponse.frontMessage;
            // 計画停止時
            if (errorStatusCode == 'E-00009' && frontMessage.isNotEmpty) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
                  MaterialPageRoute<Object?>(
                    settings: const RouteSettings(name: 'PlannedOutageErrorPage'),
                    builder: (context) => WebViewBasePage(
                      initialUrl: frontMessage,
                      showAppBar: true,
                      authenticationRequired: false,
                    ),
                  ),
                  (route) => false,
                );
              });
              return handler.resolve();
            }
            final errorReasonCode = errorResponse.errorDetails.firstOrNull?.errorReasonCode;
            SorryPage.push(
              SorryPageArgument.serviceUnavailable(
                HandledError(
                  status: httpStatus,
                  statusCode: errorStatusCode,
                  errorReasonCode: errorReasonCode,
                ),
              ),
            );
            return handler.resolve();
          },
        );
}

/// TooManyRequests ErrorOperator
class TooManyRequestsErrorOperator extends ErrorOperatorWrapper {
  TooManyRequestsErrorOperator()
      : super(
          (error, context, handler) async {
            final response = error.response!;
            final httpStatus = response.statusCode!;
            final errorResponse = ResponseModel<Null>.fromJson(response.data);
            final errorStatusCode = errorResponse.statusCode;
            final errorReasonCode = errorResponse.errorDetails.firstOrNull?.errorReasonCode;
            FirebaseCrashlytics.instance.recordError(error, error.stackTrace);
            SorryPage.push(
              SorryPageArgument.accessConcentration(
                HandledError(
                  status: httpStatus,
                  statusCode: errorStatusCode,
                  errorReasonCode: errorReasonCode,
                ),
              ),
            );
            return handler.resolve();
          },
        );
}

/// 再同意エラー
class ReConsentErrorOperator extends ErrorOperator {
  @override
  Future<ErrorHandlerState> handle(Object error, BuildContext context) async {
    if (error is ReConsentException) {
      logger.info('ReConsentExceptionが発生したためログアウトします');
      // 再同意が表示されて認証が終わらない状態なのでログアウトAPIは呼び出しても成功しないため、ログアウト以外で必要なログアウト処理だけ行う
      await GetIt.I<AuthenticationManager>().logout(needLogoutApi: false);
      return handler.resolve();
    }
    return handler.next(error);
  }
}
