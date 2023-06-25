import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:native_webview/native_webview.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

import '../../util/access_point_info_manager.dart';
import '../constants.dart';
import '../data/api/model/login_customer_model.dart';
import '../data/api/model/visitor_info_model.dart';
import '../data/api/re_consent_exception.dart';
import '../data/api/two_factor_authentication_exception.dart';
import '../data/repository/authentication_repository.dart';
import '../data/repository/front_repository.dart';
import '../data/repository/login_repository.dart';
import '../data/repository/logout_repository.dart';
import '../data/repository/recipe_detail_view_history_repository.dart';
import '../data/repository/search_history_repository.dart';
import '../enum/authentication_type.dart';
import '../enum/search_history_type.dart';
import '../enum/user_property_type.dart';
import '../gen/assets.gen.dart';
import '../ui/page/root_page.dart';
import 'analytics_manager.dart';
import 'basic_authentication_manager.dart';
import 'cart_info_manager.dart';
import 'customer_manager.dart';
import 'logger.dart';
import 'url.dart';

class AuthenticationManager {
  factory AuthenticationManager() => _instance;

  AuthenticationManager._internal() {
    _repository = GetIt.I<AuthenticationRepository>();
    _js = rootBundle.loadString(Assets.js.inputIdPassword);
  }

  static final _instance = AuthenticationManager._internal();

  CustomerManager? observer;
  Completer<Uri>? _completer;
  Completer<void>? _isLoading;

  String? loginToken;
  String? trackId;

  late final AuthenticationRepository _repository;
  late final Future<String> _js;

  /// インストール後初回アクセス時に新規UUIDを採番して永続化する
  /// その後は永続化したUUIDを利用する
  Future<String> get uuid async {
    var value = await _repository.fetchOne(AuthenticationType.uuid);
    if (value != null) {
      return value;
    }
    value = const Uuid().v4(
      options: <String, dynamic>{'rng': UuidUtil.cryptoRNG},
    );
    await _repository.write({AuthenticationType.uuid: value});
    return value;
  }

  /// 見学ID
  Future<String?> get iyVisitId => _repository.fetchOne(AuthenticationType.iyVisitId);

  /// 見学店舗コード
  Future<String?> get visitorShopCode => _repository.fetchOne(AuthenticationType.shopCode);

  /// 見学時郵便番号
  Future<String?> get _postalNumber async {
    final value = await _repository.fetchOne(AuthenticationType.encryptedPostalNumber);
    if (value != null && value.isNotEmpty) {
      final response = await GetIt.I<FrontRepository>().postSecureDecrypt(parameter: value);
      return response.first.value;
    } else {
      return null;
    }
  }

  Future<String?> get _loginId => _repository.fetchOne(AuthenticationType.loginId);

  Future<String?> get _password => _repository.fetchOne(AuthenticationType.password);

  Future<bool> get _isMember async {
    final loginId = await _repository.fetchOne(AuthenticationType.loginId);
    final password = await _repository.fetchOne(AuthenticationType.password);
    // idとpasswordが保存されている場合メンバーとみなす
    return (loginId?.isNotEmpty ?? false) && (password?.isNotEmpty ?? false);
  }

  Future<bool> get _isVisitor async {
    final loginId = await _repository.fetchOne(AuthenticationType.loginId);
    final password = await _repository.fetchOne(AuthenticationType.password);
    final iyVisitId = await _repository.fetchOne(AuthenticationType.iyVisitId);
    return (loginId?.isEmpty ?? true) && (password?.isEmpty ?? true) && (iyVisitId?.isNotEmpty ?? false);
  }

  Future<bool> get isAuthenticated async => await _isMember || await _isVisitor;

  Future<void> save({
    required String id,
    required String password,
  }) async {
    await _repository.write({AuthenticationType.loginId: id, AuthenticationType.password: password});
    // 会員ログイン時に見学の情報は消してしまう
    for (final type in [
      AuthenticationType.encryptedPostalNumber,
      AuthenticationType.iyVisitId,
      AuthenticationType.shopCode,
    ]) {
      await _repository.delete(type);
    }
  }

  Future<void> deletePersistentData() async {
    deleteCookies();

    await _repository.deleteAll();
    for (final historyType in SearchHistoryType.values) {
      GetIt.I.get<SearchHistoryRepository>(instanceName: historyType.toString()).deleteAll();
    }

    GetIt.I.get<RecipeDetailViewHistoryRepository>().deleteAll();
  }

  Future<void> logout({bool toRoot = true, bool needLogoutApi = true}) async {
    if (needLogoutApi) {
      if (await _isMember) {
        await GetIt.I<LogoutRepository>().logout().onError((error, stackTrace) => null);
      }
      if (await _isVisitor) {
        await GetIt.I<LogoutRepository>().logoutVisitor().onError((error, stackTrace) => null);
      }
    }

    await deletePersistentData();

    if (toRoot) {
      RootPage.flush();
    }

    observer?.invalid();
  }

  Future<void> reLogin({bool shouldGetCart = false}) async {
    if (await _isMember) {
      logger.info('会員ログイン');
      await _memberLogin(shouldGetCart);
    }
    if (await _isVisitor) {
      logger.info('見学ログイン');
      await _visitorLogin();
    }
  }

  Future<void> _memberLogin(bool shouldGetCart) async {
    // 二重呼び出し防止
    if (_isLoading?.isCompleted == false) {
      _isLoading!.future;
      return;
    }
    _isLoading = Completer();
    final userAgent = GetIt.I<String>(instanceName: 'userAgent');
    final webview = OverlayEntry(
      builder: (_) => Offstage(
        offstage: true,
        child: WebView(
          initialUrl: iynsAuthUrl.toString(),
          onPageFinished: _onPageFinished,
          onWebResourceError: _onWebResourceError,
          onReceivedHttpAuthRequest: (controller, _) async {
            return GetIt.I<BasicAuthenticationManager>()
                .onReceivedHttpAuthRequest(Uri.tryParse(await controller.currentUrl() ?? ''));
          },
          userAgent: userAgent,
        ),
      ),
    );
    try {
      _completer = Completer();

      GetIt.I<GlobalKey<NavigatorState>>().currentState!.overlay!.insert(webview);

      final url = await _completer!.future.timeout(
        const Duration(seconds: 30),
        onTimeout: () => throw TimeoutException('ログインできませんでした'),
      );

      await observer?.setInfo(await tryLogin(url, isManual: false), shouldGetCart);

      //ユーザープロパティ(カスタムディメンション)の送信
      _sendUserProperty();

      _isLoading!.complete();
    } on _LoginFailedException catch (e, st) {
      logger.info(e);
      logger.info(st);
      // 共通エラーハンドラでログアウトされる
      _isLoading!.completeError(_unauthorizedError(e), st);
    } on TwoFactorAuthenticationException catch (e, st) {
      logger.info(e);
      logger.info(st);
      _isLoading!.completeError(e, st);
    } on _RecaptchaDetectedException catch (e, st) {
      logger.info(e);
      logger.info(st);
      _isLoading!.completeError(_unauthorizedError(e), st);
    } on CorporateMemberException catch (e, st) {
      logger.info(e);
      logger.info(st);
      _isLoading!.completeError(e, st);
    } on ReConsentException catch (e, st) {
      logger.info(e);
      logger.info(st);
      _isLoading!.completeError(e, st);
    } on TimeoutException catch (e, st) {
      logger.info(e);
      logger.info(st);
      _isLoading!.completeError(_unauthorizedError(e), st);
    } on DioError catch (e, st) {
      logger.info(e);
      logger.info(st);
      _isLoading!.completeError(e, st);
    } finally {
      logger.info('dispose start');
      webview.remove();
      logger.info('dispose end');
    }
    return _isLoading!.future;
  }

  DioError _unauthorizedError(Exception error) {
    final requestOptions = RequestOptions(path: '/');
    return DioError(
      requestOptions: requestOptions,
      response: Response<void>(
        requestOptions: requestOptions,
        statusCode: HttpStatus.unauthorized,
      ),
      type: DioErrorType.response,
      error: error,
    );
  }

  Future<void> _visitorLogin() async {
    final response = await GetIt.I<LoginRepository>().loginVisitor(
      shopCode: await visitorShopCode,
      iyVisitId: await iyVisitId,
    );
    final loginVisitor = response.first;
    final context = GetIt.I<GlobalKey<NavigatorState>>().currentContext;
    if (context != null) {
      context.read<CartInfoManager>().info = loginVisitor.cart;
    }

    await saveVisitorInfo(
      shopCode: loginVisitor.shopCode,
      iyVisitId: loginVisitor.iyVisitId,
      postalNumber: await _postalNumber,
    );
  }

  FutureOr<void> _onPageFinished(WebViewController controller, String? url) async {
    logger.info(url);
    try {
      mfaEnabledChecker(url);

      _reConsentChecker(url);

      await _reCaptchaEnabledChecker(controller);

      await _runLoginScript(controller);

      final parsedUrl = Uri.parse(url!);

      // ログインに失敗した場合
      if (parsedUrl.normalizedPath == Uri(path: '/login-password/input/login/fail').normalizedPath) {
        if (!_completer!.isCompleted) {
          _completer!.completeError(const _LoginFailedException());
        }
        return;
      }

      if (parsedUrl.normalizedPath == afterLoginUrl.normalizedPath) {
        if (!_completer!.isCompleted) {
          _completer!.complete(parsedUrl);
        }
        return;
      }
    } on TwoFactorAuthenticationException catch (e, st) {
      if (!_completer!.isCompleted) {
        _completer!.completeError(e, st);
      }
    } on _RecaptchaDetectedException catch (e, st) {
      if (!_completer!.isCompleted) {
        _completer!.completeError(e, st);
      }
    } on ReConsentException catch (e, st) {
      if (!_completer!.isCompleted) {
        _completer!.completeError(e, st);
      }
    }
  }

  Future<void> _reCaptchaEnabledChecker(WebViewController controller) async {
    final hasRecaptcha = await controller
        .evaluateJavascript('document.querySelector("iframe[title=\'reCAPTCHA\']") ? true : false;') as bool;
    if (hasRecaptcha) {
      logger.info('reCAPTCHA検出');
      throw const _RecaptchaDetectedException();
    }
  }

  Future<void> _runLoginScript(WebViewController controller) async {
    var js = await _js;
    final id = await _loginId;
    final password = await _password;
    js = js.replaceFirst('%s', id!).replaceFirst('%s', password!);
    return controller.evaluateJavascript(js);
  }

  Future<LoginCustomerModel> tryLogin(Uri url, {required bool isManual}) async {
    final originalCookies = await CookieManager.instance().getCookies(url: url.origin);
    for (var cookie in originalCookies) {
      logger.info('cookie: ${cookie.name}=${cookie.value}');
    }
    final cookies = Map.fromEntries(
      originalCookies
          .where((cookie) => cookie.name == ssoStateTokenName || cookie.name == ssoStateName)
          .map((cookie) => MapEntry(cookie.name!, cookie.value as String)),
    );
    final queries = url.queryParameters;
    logger.info(queries);

    final response = await GetIt.I<LoginRepository>().login(
      ssoState: cookies[ssoStateName]!,
      ssoStateToken: cookies[ssoStateTokenName]!,
      appId: queries[appIdName]!,
      userHash: queries[userHashName]!,
      ssoStartTime: queries[ssoStartTimeName]!,
      oneTimeToken: queries[oneTimeTokenName]!,
      signature: queries[signatureName]!,
      iyVisitId: await iyVisitId,
      shopCode: await visitorShopCode,
      isManualLogin: isManual,
    );

    final result = response.first;

    if (!result.isIndividualCustomer) {
      throw const CorporateMemberException();
    }
    return result;
  }

  void _onWebResourceError(WebResourceError error) {
    logger.info('${error.description}\ncode: ${error.errorCode}\ntype: ${error.errorType}');
    if (error.errorType != null) {
      if (!_completer!.isCompleted) {
        _completer!.completeError(HttpException(error.description, uri: Uri.parse(error.domain!)), StackTrace.current);
      }
    }
  }

  void _sendUserProperty() {
    final analytics = GetIt.I<AnalyticsManager>();
    final customerInfo = observer?.member;
    if (customerInfo != null) {
      analytics.sendUserProperty(userPropertyType: UserPropertyType.age, value: customerInfo.age);
      analytics.sendUserProperty(userPropertyType: UserPropertyType.continueDay, value: customerInfo.continueDay);
    }
  }

  Future<void> saveVisitorInfo({
    String? postalNumber,
    required String shopCode,
    required String iyVisitId,
  }) async {
    final map = {
      AuthenticationType.shopCode: shopCode,
      AuthenticationType.iyVisitId: iyVisitId,
    };

    if (postalNumber != null) {
      final response = await GetIt.I<FrontRepository>().postSecureEncrypt(parameter: postalNumber);
      map[AuthenticationType.encryptedPostalNumber] = response.first.value;
    }

    await _repository.write(map);
    observer?.setInfo(VisitorInfoModel(shopCode: shopCode, postalNumber: postalNumber));
  }
}

void mfaEnabledChecker(String? url) {
  if (url == iyns2faUrl.toString()) {
    throw TwoFactorAuthenticationException();
  }
}

void _reConsentChecker(String? url) {
  if (url == iynsReConsentUrl.toString()) {
    logger.info('再同意URLが検出されました');
    throw ReConsentException();
  }
}

/// Android側の問題でCookieの個別URLでCookieを削除できなくなった。
Future<void> deleteCookies() async {
  await CookieManager.instance().deleteAllCookies();
}

class CorporateMemberException extends FormatException {
  const CorporateMemberException() : super();
}

class _LoginFailedException extends HttpException {
  const _LoginFailedException() : super('ログインに失敗しました');
}

class _RecaptchaDetectedException extends HttpException {
  const _RecaptchaDetectedException() : super('reCAPTCHAが検出されました');
}
