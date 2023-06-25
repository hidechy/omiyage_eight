import '../api/model/response_model.dart';
import '../api/model/shop_info_model.dart';
import '../api/model/shops_deliverables_get_response_model.dart';
import '../api/model/shops_medicine_confirms_model.dart';

abstract class ShopsRepository {
  /// 配達可能エリア判定API
  /// @param postalNumber 郵便番号
  Future<ResponseModel<ShopsDeliverablesGetResponseModel>> getShopsDeliverables({
    required String postalNumber,
  });

  /// 店舗情報取得API
  Future<ResponseModel<ShopInfoModel>> getShopInfo({required String shopCode});

  /// 医薬品確認情報取得API
  ///
  /// @param shopCode 店舗コード
  Future<ResponseModel<ShopsMedicineConfirmsModel>> getShopsMedicineConfirms({required String shopCode});
}
