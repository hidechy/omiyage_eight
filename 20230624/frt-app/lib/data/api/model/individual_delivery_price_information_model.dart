// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/individual_delivery_price_type.dart';
import '../../../util/datetime_json_converter.dart';

part 'individual_delivery_price_information_model.freezed.dart';
part 'individual_delivery_price_information_model.g.dart';

/// 個別配達料情報
@freezed
class IndividualDeliveryPriceInformationModel with _$IndividualDeliveryPriceInformationModel {
  const IndividualDeliveryPriceInformationModel._();

  const factory IndividualDeliveryPriceInformationModel({
    /* 配達料キャンペーン名 */
    @Default('') String individualDeliveryName,
    /* 個別配達料種別 ``` \"1\"：固定額 \"2\"：%割引 */
    @Default(IndividualDeliveryPriceType.fixedAmount) IndividualDeliveryPriceType individualDeliveryPriceType,
    /* 個別配達料 */
    @Default(0) int individualDeliveryPrice,
    /* 個別配達料-割引率 */
    @Default(0) int individualDeliveryDiscountRate,
    /* 配送種別開始日 ※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter()
    @Default(0)
    @JsonKey(name: 'delivery_type_start_datetime')
        int epochDeliveryTypeStartDatetime,
    /* 配送種別終了日 ※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter()
    @Default(0)
    @JsonKey(name: 'delivery_type_finish_datetime')
        int epochDeliveryTypeFinishDatetime,
  }) = _IndividualDeliveryPriceInformationModel;

  factory IndividualDeliveryPriceInformationModel.fromJson(Map<String, dynamic> json) =>
      _$IndividualDeliveryPriceInformationModelFromJson(json);

  DateTime get deliveryTypeStartDatetime =>
      const StringToEpochTimeConverter().toDateTime(epochDeliveryTypeStartDatetime);
  DateTime get deliveryTypeFinishDatetime =>
      const StringToEpochTimeConverter().toDateTime(epochDeliveryTypeFinishDatetime);
}
