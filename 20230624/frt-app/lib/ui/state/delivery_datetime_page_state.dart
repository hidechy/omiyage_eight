import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/changed_cart_model.dart';
import '../../data/api/model/delivery_information_model.dart';
import '../../data/api/model/individual_delivery_price_information_model.dart';
import '../../data/api/model/shopping_start_check_result_model.dart';
import '../../enum/delivery_schedules_fulfillment_type.dart';
import '../../enum/living_status_type.dart';

part 'delivery_datetime_page_state.freezed.dart';

@freezed
class DeliveryDatetimePageState with _$DeliveryDatetimePageState {
  factory DeliveryDatetimePageState({
    DeliverySchedulesFulfillmentType? fulfillmentType,
    @Default(false) bool isAddressDifference,
    IndividualDeliveryPriceInformationModel? individualDeliveryPriceInformation,
    LivingStatusType? livingStatus,
    @Default(DeliveryInformationModel()) DeliveryInformationModel deliveryInformationModel,
    @Default(ShoppingStartCheckResultModel()) ShoppingStartCheckResultModel shoppingStartCheckResultModel,
    @Default(ChangedCartModel()) ChangedCartModel changedCartModel,
    SelectedShopInfo? selectedShopInfo,
    @Default(false) bool isAfterMigration,
    // 便一覧画面では使用しないが、店舗選択画面へ渡すパラメータ用に緯度経度を定義する
    double? initReceiptPointLatitude,
    double? initReceiptPointLongitude,
  }) = _DeliveryDatetimePageState;
}

@freezed
class SelectedShopInfo with _$SelectedShopInfo {
  const factory SelectedShopInfo({
    required String shopCode,
    required String receiptPointName,
    required String receiptPointId,
  }) = _DelectedShopInfo;
}
