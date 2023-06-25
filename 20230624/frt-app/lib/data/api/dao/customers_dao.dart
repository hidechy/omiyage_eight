import '../../repository/customers_repository.dart';
import '../iyns_api_dio.dart';
import '../model/autolock_mansion_model.dart';
import '../model/customer_model.dart';
import '../model/customers_me_nanaco_model.dart';
import '../model/response_model.dart';

class CustomersDao extends IynsApiDio implements CustomersRepository {
  @override
  Future<ResponseModel<CustomerModel>> getCustomerInfo() async {
    final response = await get<Map<String, dynamic>>('/customers/me');
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<CustomersMeNanacoModel>> getNanacoPoint() async {
    final response = await get<Map<String, dynamic>>('/customers/me/nanaco');
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<void> changeDeliveryAddress({
    required String shopCode,
    required String prefectureCode,
    required String cityCode,
    required String townCode,
    required String chomeCode,
    required String address,
    String? address2 = '',
    required String mailMagazineType,
    required String mailSendType,
  }) async {
    await put<Map<String, dynamic>>(
      '/customers/me',
      data: {
        'shop_code': shopCode,
        'prefecture_code': prefectureCode,
        'city_code': cityCode,
        'town_code': townCode,
        'chome_code': chomeCode,
        'address': address,
        'address2': address2,
        'mail_magazine_type': mailMagazineType,
        'mail_send_type': mailSendType,
      },
    );
  }

  /// オートロックマンション情報取得
  @override
  Future<ResponseModel<AutoLockMansionModel>> getAutoLockMansions() async {
    final response = await get<Map<String, dynamic>>(
      '/customers/me/package_drop/autolock_mansions',
    );
    return ResponseModel<AutoLockMansionModel>.fromJson(response.data!);
  }
}
