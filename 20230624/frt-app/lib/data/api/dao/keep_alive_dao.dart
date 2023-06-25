import 'dart:io';

import 'package:dio/dio.dart';

import '../../../enum/front_div.dart';
import '../../repository/keep_alive_repository.dart';
import '../iyns_api_dio.dart';

// IynsApiDioを継承することで401の場合は自動的に再ログインされる
class KeepAliveDao extends IynsApiDio implements KeepAliveRepository {
  KeepAliveDao() : super() {
    interceptors.add(
      InterceptorsWrapper(
        onError: (dioError, handler) {
          // HTTPステータス404以外は扱わない
          if (dioError.response?.statusCode != HttpStatus.notFound) {
            handler.next(dioError);
            return;
          }
          // 404はエラーとしない
          handler.resolve(dioError.response!);
        },
      ),
    );
  }

  @override
  Future<void> check() async {
    // 実態はログイン後8連バナー取得API
    await get<Map<String, dynamic>>(
      '/banners/after_login',
      queryParameters: <String, dynamic>{
        'front_div': FrontDiv.sp.value,
        // 存在しない店舗の場合はエラーコード404で確定している
        // トークンの有効性のみ知りたいので、レスポンスは不要だからこの対応で問題ない
        'shop_code': '99999',
      },
    );
  }
}
