import 'package:flutter/foundation.dart';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

import '../../constants.dart';
import '../../util/logger.dart';
import 'basic_authentication_interceptor.dart';

/// 新お届けS3上のjsonファイル取得用のDioクラス
class IynsAwsS3Dio extends DioMixin {
  IynsAwsS3Dio() {
    interceptors.add(BasicAuthenticationInterceptor(this));
    // dioのバージョンを上げたら、connectTimeout設定値の修正が必要
    // https://7andi-digital.atlassian.net/wiki/spaces/IYNS/pages/211881042/DIO+timeout
    options = BaseOptions(
      baseUrl: iynsAwsS3,
      connectTimeout: 70000,
      sendTimeout: 10000,
      receiveTimeout: 10000,
    );
    if (kDebugMode) {
      interceptors.add(LogInterceptor(
        logPrint: logger.info,
        responseBody: true,
        requestBody: true,
      ));
    }
    httpClientAdapter = DefaultHttpClientAdapter();
  }
}
