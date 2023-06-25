import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../data/api/model/base_address_model.dart';
import '../../data/api/model/first_use_registoration_model.dart';
import '../../data/api/model/response_model.dart';
import '../../data/repository/delivery_repository.dart';
import '../../data/repository/login_repository.dart';
import '../../util/authentication_manager.dart';
import '../../util/customer_manager.dart';
import '../state/first_use_registration_page_state.dart';

class FirstUseRegistrationPageViewModel extends StateNotifier<FirstUseRegistrationPageState> with LocatorMixin {
  FirstUseRegistrationPageViewModel() : super(const FirstUseRegistrationPageState());

  CustomerManager get _customerManager => read();

  Future<bool> load(BaseAddressModel addressModel) async {
    // 400エラー(検索結果なし)の場合、エラーハンドリングで表示更新する
    final result = await getDeliveryShops(addressModel);
    state = state.copyWith(baseAddress: addressModel, isExistStore: result);
    return true;
  }

  Future<FirstUseRegistrationModel> firstUseRegistration({
    required String firstUseToken,
    required BaseAddressModel addressModel,
  }) async {
    final shopCode = _customerManager.info.visitor?.shopCode;
    final authenticationManager = GetIt.I<AuthenticationManager>();
    final response = await GetIt.I<LoginRepository>().firstUseRegistration(
      firstUseToken: firstUseToken,
      prefectureCode: addressModel.prefectureCode,
      cityCode: addressModel.cityCode,
      townCode: addressModel.townCode,
      chomeCode: addressModel.chomeCode,
      address: addressModel.addressDetail,
      address2: addressModel.addressDetail2,
      mailMagazineType: state.getMailMagazineType,
      iyVisitId: await authenticationManager.iyVisitId,
      shopCode: shopCode,
    );
    return response.first;
  }

  void switchMailCheck(bool isMainMail) => state = isMainMail
      ? state.copyWith(isCheckMainMail: !state.isCheckMainMail)
      : state.copyWith(isCheckSubMail: !state.isCheckSubMail);

  /// 配送先住所担当店舗取得
  Future<bool> getDeliveryShops(BaseAddressModel addressModel) async {
    try {
      await GetIt.I<DeliveryRepository>().getDeliveryShops(
        prefectureCode: addressModel.prefectureCode,
        cityCode: addressModel.cityCode,
        townCode: addressModel.townCode,
        chomeCode: addressModel.chomeCode,
      );
      return true;
    } on DioError catch (error) {
      final httpStatus = error.response!.statusCode;
      if (httpStatus != 400) {
        rethrow;
      }

      // ignore: prefer_void_to_null
      final errorResponse = ResponseModel<Null>.fromJson(error.response!.data);
      final statusCode = errorResponse.statusCode;
      if (statusCode != 'E-00007') {
        rethrow;
      }

      final errorReasonCode = errorResponse.errorDetails.first.errorReasonCode;
      if (errorReasonCode != '2100015') {
        rethrow;
      }
      // エラーコード：2100015 業務エラー(配送先住所担当店舗なし)の場合、例外を握り潰しfalseを返す。
      return false;
    }
  }
}
