import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:get_it/get_it.dart';

import '../../../constants.dart';
import '../../../enum/mail_magazine_type.dart';
import '../../../util/authentication_manager.dart';
import '../../../util/logger.dart';
import '../../repository/login_repository.dart';
import '../iyns_api_dio.dart';
import '../model/first_use_registoration_model.dart';
import '../model/login_customer_model.dart';
import '../model/login_visitor_model.dart';
import '../model/response_model.dart';

class LoginDao extends IynsApiDio implements LoginRepository {
  LoginDao() : super() {
    interceptors.add(
      InterceptorsWrapper(
        onResponse: (response, handler) async {
          try {
            final cookies =
                response.headers[HttpHeaders.setCookieHeader]?.map((s) => Cookie.fromSetCookieValue(s)).toList();
            if (cookies == null) {
              throw HttpException('Cookieが設定されていません', uri: response.realUri);
            }
            final index = cookies.indexWhere((cookie) => cookie.name == loginTokenName);
            // ログインAPIの場合ログイントークンが設定されていない場合がある
            if (!index.isNegative) {
              final loginToken = cookies[index].value;
              logger.info('$loginTokenName: $loginToken');
              GetIt.I<AuthenticationManager>().loginToken = loginToken;
            }
            handler.next(response);
          } on HttpException catch (e, st) {
            FirebaseCrashlytics.instance.recordError(e, st);
            handler.reject(
              DioError(
                requestOptions: response.requestOptions,
                response: response
                  ..statusCode = HttpStatus.internalServerError
                  ..data = null,
                type: DioErrorType.response,
                error: e,
              ),
            );
          }
        },
      ),
    );
  }

  @override
  Future<ResponseModel<LoginVisitorModel>> loginVisitor({String? shopCode, String? iyVisitId}) async {
    final response = await post<Map<String, dynamic>>(
      '/login/visitor',
      data: {
        'shop_code': shopCode,
        'iy_visit_id': iyVisitId,
      }..removeWhere((key, dynamic value) => value == null),
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<LoginCustomerModel>> login({
    required String ssoState,
    required String ssoStateToken,
    required String appId,
    required String userHash,
    required String ssoStartTime,
    required String oneTimeToken,
    required String signature,
    String? iyVisitId,
    String? shopCode,
    bool isManualLogin = false,
  }) async {
    final response = await post<Map<String, dynamic>>(
      '/login',
      options: Options(
        headers: <String, String>{HttpHeaders.cookieHeader: '$ssoStateTokenName=$ssoStateToken'},
        extra: <String, bool>{'isCartClearHandler': !isManualLogin},
      ),
      data: {
        appIdName: appId,
        userHashName: userHash,
        ssoStartTimeName: ssoStartTime,
        oneTimeTokenName: oneTimeToken,
        signatureName: signature,
        ssoStateName: ssoState,
        iyVisitIdName: iyVisitId,
        'shop_code': shopCode,
      }..removeWhere((key, value) => value == null),
    );
    final result = ResponseModel<LoginCustomerModel>.fromJson(response.data);
    final cookies = Map.fromEntries(
      response.headers[HttpHeaders.setCookieHeader]!.map((s) {
        final cookie = Cookie.fromSetCookieValue(s);
        return MapEntry(cookie.name, cookie);
      }),
    );

    final firstUseToken = cookies[firstUseTokenName]?.value;
    if (result.data.isEmpty || (!result.first.isFirstUseRegistered && firstUseToken?.isNotEmpty != true)) {
      throw DioError(
        requestOptions: response.requestOptions,
        response: response..statusCode = HttpStatus.internalServerError,
        type: DioErrorType.response,
        error: const HttpException('異常なレスポンスを受信しました'),
      );
    }

    final loginModel = result.first;

    return result.copyWith(data: [
      loginModel.copyWith(
        firstUseToken: firstUseToken,
      ),
    ]);
  }

  @override
  Future<ResponseModel<FirstUseRegistrationModel>> firstUseRegistration({
    required String firstUseToken,
    required String prefectureCode,
    required String cityCode,
    required String townCode,
    required String chomeCode,
    required String address,
    required String address2,
    required MailMagazineType mailMagazineType,
    String? iyVisitId,
    String? shopCode,
  }) async {
    final response = await post<Map<String, dynamic>>(
      '/customers/me/settings/first_use',
      options: Options(
        headers: <String, String>{HttpHeaders.cookieHeader: '$firstUseTokenName=$firstUseToken'},
      ),
      data: {
        'prefecture_code': prefectureCode,
        'city_code': cityCode,
        'town_code': townCode,
        'chome_code': chomeCode,
        'address': address,
        'address2': address2,
        'mail_magazine_type': mailMagazineType.value,
        'iy_visit_id': iyVisitId,
        'shop_code': shopCode,
      }..removeWhere((key, value) => value == null || value.isEmpty),
    );
    return ResponseModel<FirstUseRegistrationModel>.fromJson(response.data);
  }
}
