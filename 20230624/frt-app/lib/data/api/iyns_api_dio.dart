import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:collection/collection.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_firebase_performance/dio_firebase_performance.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../util/access_point_info_manager.dart';
import '../../util/authentication_manager.dart';
import '../../util/cart_info_manager.dart';
import '../../util/logger.dart';
import 'basic_authentication_interceptor.dart';
import 'cart_clear_exception.dart';
import 'model/response_model.dart';

class IynsApiDio extends DioMixin {
  IynsApiDio() {
    interceptors.add(DioFirebasePerformanceInterceptor());
    interceptors.add(BasicAuthenticationInterceptor(this));
    // dioのバージョンを上げたら、connectTimeout設定値の修正が必要
    // https://7andi-digital.atlassian.net/wiki/spaces/IYNS/pages/211881042/DIO+timeout
    options = BaseOptions(
      connectTimeout: 70000,
      sendTimeout: 10000,
      receiveTimeout: 10000,
      setRequestContentTypeWhenNoPayload: true,
      headers: <String, dynamic>{
        HttpHeaders.acceptEncodingHeader: 'gzip',
      },
    );
    if (kDebugMode) {
      interceptors.add(LogInterceptor(
        logPrint: logger.info,
        responseBody: true,
        requestBody: true,
      ));
    }

    interceptors.add(
      InterceptorsWrapper(
        onResponse: (response, handler) async {
          // nds-trackidの取得
          final trackId = response.headers[trackIdName]?.firstOrNull;
          if (trackId != null) {
            logger.info('$trackIdName: $trackId');
            GetIt.I<AuthenticationManager>().trackId = trackId;
          }

          handler.next(response);
        },
      ),
    );

    httpClientAdapter = DefaultHttpClientAdapter();
  }

  @override
  Future<Response<T>> request<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    // IynsApiDioクラスのコンストラクタでbaseUrlを設定すると、S3接続先情報の取得前にiynsApiBaseUrlを参照することになるので代入タイミングを移設
    this.options.baseUrl = iynsApiBaseUrl;

    options ??= Options();
    options.headers ??= <String, dynamic>{};
    final requestCookies = (options.headers![HttpHeaders.cookieHeader] as String?)
        ?.split(';')
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        // 再帰呼び出しを行うので、毎回設定するCookieは削除
        .where((e) => !(e.startsWith(loginTokenName) || e.startsWith(trackIdName) || e.startsWith(trackUuidName)));

    final loginToken = GetIt.I<AuthenticationManager>().loginToken ?? '';
    final trackId = GetIt.I<AuthenticationManager>().trackId;
    final cookies = [
      ...?requestCookies,
      '$loginTokenName=$loginToken',
      if (trackId != null) '$trackIdName=$trackId',
      '$trackUuidName=${await GetIt.I<AuthenticationManager>().uuid}',
    ];

    options.headers![HttpHeaders.cookieHeader] = cookies.join('; ');

    try {
      final response = await super.request<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      if (options.extra?['isCartClearHandler'] != false) {
        // ignore: prefer_void_to_null
        final clearCartList = ResponseModel<Null>.fromJson(response.data).clearCart;
        final context = GetIt.I<GlobalKey<NavigatorState>>().currentContext!;
        final cartId = context.read<CartInfoManager>().info.cartId;
        final isClearCart = clearCartList.firstOrNull?.ids.any((id) => id == cartId);
        if (isClearCart ?? false) {
          throw CartClearException();
        }
      }

      return response;
    } on DioError catch (error) {
      // DioErrorがレスポンスじゃない場合処理しない
      if (error.type != DioErrorType.response) {
        rethrow;
      }
      final response = error.response!;
      final httpStatus = response.statusCode!;
      // HTTPステータスが401じゃない場合処理しない
      if (httpStatus != HttpStatus.unauthorized) {
        rethrow;
      }

      logger.info('再ログイン開始');
      // ここで二要素認証エラーが発生する場合がある
      await GetIt.I<AuthenticationManager>().reLogin();
      if (!(await GetIt.I<AuthenticationManager>().isAuthenticated)) {
        logger.info('再ログインしたが未認証');
        rethrow;
      }
      logger.info('再ログイン終了');

      // 再帰呼び出しをすることでトークンを最新化
      return await request<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    }
  }

  @override
  Future<Response<T>> post<T>(String path,
      {dynamic data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress}) {
    // POSTメソッドをリクエストボディ空で送信するとエラーが発生するバック側の仕様のため、
    // dataが空の場合に、空のMAPを代わりに指定している。
    return super.post<T>(path,
        data: data ?? <String, dynamic>{},
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress);
  }
}

typedef CartPath = String Function(int);
