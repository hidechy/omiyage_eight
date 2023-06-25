import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../util/basic_authentication_manager.dart';

class BasicAuthenticationInterceptor extends Interceptor {
  BasicAuthenticationInterceptor(this.dio);
  final Dio dio;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final manager = GetIt.I<BasicAuthenticationManager>();
    if (manager.authenticated && manager.urlTrusted(options.uri)) {
      options.headers[HttpHeaders.authorizationHeader] = manager.base64String;
    }
    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    final response = err.response;
    final shouldBasicAuthenticate =
        response?.headers.value(HttpHeaders.wwwAuthenticateHeader)?.toLowerCase() == 'basic';
    if (!shouldBasicAuthenticate) {
      return super.onError(err, handler);
    }

    final manager = GetIt.I<BasicAuthenticationManager>();
    final result = await manager.basicAuthUserChallenge();
    if (!result) {
      return super.onError(err, handler);
    }
    try {
      // void型だが中身ではJSONとして処理される
      final result = await dio.fetch<void>(err.requestOptions);
      handler.resolve(result);
    } on DioError catch (e) {
      super.onError(e, handler);
    }
  }
}
