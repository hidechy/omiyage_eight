import '../../enum/delivery_schedules_fulfillment_type.dart';
import '../api/model/delivery_addresses_model.dart';
import '../api/model/delivery_restriction_model.dart';
import '../api/model/delivery_shops_model.dart';
import '../api/model/receipt_locations_model.dart';
import '../api/model/response_model.dart';
import '../api/model/select_delivery_plan_model.dart';
import '../api/model/selectable_address_model.dart';

abstract class DeliveryRepository {
  /// 便一覧取得API
  Future<ResponseModel<SelectDeliveryPlanModel>> schedules({
    required String shopCode,
    DeliverySchedulesFulfillmentType fulfillmentType,
    String locationId = '',
  });

  /// 変更可能便取得API
  Future<ResponseModel<SelectDeliveryPlanModel>> changeableSchedules(
    int orderId,
  );

  /// 店舗・ロッカー情報取得API
  Future<ResponseModel<ReceiptLocationsModel>> getShopAndLockerInfo();

  /// 配送規制情報取得API
  ///
  /// @param shopCode 店舗コード
  /// @param prefectureCode 都道府県コード
  /// @param cityCode 市区町村コード
  /// @param townCode 通称コード
  /// @param chomeCode 丁目コード
  Future<ResponseModel<DeliveryRestrictionModel>> getDeliveryRestriction({
    required String shopCode,
    String? prefectureCode,
    String? cityCode,
    String? townCode,
    String? chomeCode,
  });

  /// 都道府県一覧取得API
  Future<ResponseModel<SelectableAddressModel>> getPrefectures();

  /// 市区町村一覧取得API
  ///
  /// @param prefectureCode 都道府県コード
  Future<ResponseModel<SelectableAddressModel>> getCites({
    required String prefectureCode,
  });

  /// 通称一覧取得API
  ///
  /// @param prefectureCode 都道府県コード
  /// @param cityCode 市区町村コード
  Future<ResponseModel<SelectableAddressModel>> getTowns({
    required String prefectureCode,
    required String cityCode,
  });

  /// 丁目一覧取得API
  ///
  /// @param prefectureCode 都道府県コード
  /// @param cityCode 市区町村コード
  /// @param townCode 通称コード
  Future<ResponseModel<SelectableAddressModel>> getChomes({
    required String prefectureCode,
    required String cityCode,
    required String townCode,
  });

  /// 配送先住所担当店舗一覧取得API
  ///
  /// @param prefectureCode 都道府県コード
  /// @param cityCode 市区町村コード
  /// @param townCode 通称コード
  /// @param chomeCode 丁目コード
  Future<ResponseModel<DeliveryShopsModel>> getDeliveryShops({
    required String prefectureCode,
    required String cityCode,
    required String townCode,
    required String chomeCode,
  });

  /// 配送先住所取得API
  ///
  /// @param postalNumber 郵便番号
  Future<ResponseModel<DeliveryAddressesModel>> getDeliveryAddresses({
    required String postalNumber,
  });
}
