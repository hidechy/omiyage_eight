// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../util/datetime_json_converter.dart';

part 'delivery_restriction_model_delivery_dates.freezed.dart';
part 'delivery_restriction_model_delivery_dates.g.dart';

@freezed
class DeliveryRestrictionModelDeliveryDates with _$DeliveryRestrictionModelDeliveryDates {
  const DeliveryRestrictionModelDeliveryDates._();

  const factory DeliveryRestrictionModelDeliveryDates({
    /* 配達日 ※YYYYMMDD */
    @StringToEpochTimeConverter() @Default(0) @JsonKey(name: 'delivery_date') int epochDeliveryDate,
    /* 配送遅延判定 - true：遅延あり - false：遅延なし */
    @Default(false) bool isDeliveryDelay,
    /* 配送休み判定  - true：配送休み - false：配送休み以外 */
    @Default(false) bool isDeliveryClosed,
  }) = _DeliveryRestrictionModelDeliveryDates;

  factory DeliveryRestrictionModelDeliveryDates.fromJson(Map<String, dynamic> json) =>
      _$DeliveryRestrictionModelDeliveryDatesFromJson(json);

  DateTime get deliveryDate => const StringToEpochTimeConverter().toDateTime(epochDeliveryDate);
}
