// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/regular_shipment_delivery_week_div.dart';
import '../../../util/datetime_json_converter.dart';
import 'regular_shipment_delivery_schedule_model.dart';

part 'regular_shipment_model.freezed.dart';
part 'regular_shipment_model.g.dart';

/// 会員定期便一覧のModel
@freezed
class RegularShipmentModel with _$RegularShipmentModel {
  const factory RegularShipmentModel({
    /* 会員定期便申込ID */
    @Default(0) int regularShipmentApplyId,
    /* 店舗コード 5桁 */
    @Default('') String shopCode,
    /* 初回申込日時　※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter() @Default(0) @JsonKey(name: 'init_app_datetime') int epochInitAppDatetime,
    /* 申込日　※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter() @Default(0) @JsonKey(name: 'app_datetime') int epochAppDatetime,
    /* 配達曜日区分 ````` 01_MON:月曜日 02_TUE:火曜日 03_WED:水曜日 04_THU:木曜日 05_FRI:金曜日 06_SAT:土曜日 07_SUN:日曜日 ````` */
    @Default(RegularShipmentDeliveryWeekDiv.monday) RegularShipmentDeliveryWeekDiv deliveryWeekDiv,
    /* 配送開始時間（時分）　※hhmm */
    @Default('') String deliveryStartTime,
    /* 配送終了時間（時分）　※hhmm */
    @Default('') String deliveryFinishTime,
    /* 配送時間帯ID */
    @Default('') String deliveryTimeId,
    /* 初回配達予定日　※YYYYMMDD */
    @Default('') String initDeliveryScheduleDate,
    /* PGT顧客ID */
    @Default('') String paygentClientId,
    /* PGT顧客カードID */
    @Default('') String paygentClientCreditCardId,
    /* オーソリエラー受注有無  ``` true：オーソリエラー受注あり false：オーソリエラー受注なし ``` */
    @Default(false) bool hasAuthoryErrorOrder,
    /* 会員定期便-配達スケジュールリスト */
    @Default(<RegularShipmentDeliveryScheduleModel>[]) List<RegularShipmentDeliveryScheduleModel> deliverySchedules,
    /* 解約済みフラグ  ``` true：解約済み false：解約していない ``` */
    @Default(false) bool isCanceled,
    /* 申込時-定期便割引率(%) */
    @Default(0) int regularShipmentApplyDiscountRate,
    /* 申込時-定期便割引額 */
    @Default(0) int regularShipmentApplyDiscountPrice,
    /* 商品総額 */
    @Default(0) int productTotalPrice,
    /* 商品総額（定期便割引後） */
    @Default(0) int productTotalPriceAfterRegularShipmentDiscount,
  }) = _RegularShipmentModel;

  factory RegularShipmentModel.fromJson(Map<String, dynamic> json) => _$RegularShipmentModelFromJson(json);
}
