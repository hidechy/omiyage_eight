import '../api/model/autolock_mansion_model.dart';
import '../api/model/customer_model.dart';
import '../api/model/customers_me_nanaco_model.dart';
import '../api/model/response_model.dart';

abstract class CustomersRepository {
  /// 会員情報取得
  Future<ResponseModel<CustomerModel>> getCustomerInfo();

  /// nanacoポイント取得
  Future<ResponseModel<CustomersMeNanacoModel>> getNanacoPoint();

  /// 会員情報更新（お届け先住所更新）
  Future<void> changeDeliveryAddress({
    required String shopCode,
    required String prefectureCode,
    required String cityCode,
    required String townCode,
    required String chomeCode,
    required String address,
    String? address2,
    required String mailMagazineType,
    required String mailSendType,
  });

  /// オートロックマンション情報取得
  Future<ResponseModel<AutoLockMansionModel>> getAutoLockMansions();
}
