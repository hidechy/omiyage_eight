// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'individual_delivery_price_information_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IndividualDeliveryPriceInformationModel
    _$$_IndividualDeliveryPriceInformationModelFromJson(
            Map<String, dynamic> json) =>
        _$_IndividualDeliveryPriceInformationModel(
          individualDeliveryName:
              json['individual_delivery_name'] as String? ?? '',
          individualDeliveryPriceType: $enumDecodeNullable(
                  _$IndividualDeliveryPriceTypeEnumMap,
                  json['individual_delivery_price_type']) ??
              IndividualDeliveryPriceType.fixedAmount,
          individualDeliveryPrice:
              json['individual_delivery_price'] as int? ?? 0,
          individualDeliveryDiscountRate:
              json['individual_delivery_discount_rate'] as int? ?? 0,
          epochDeliveryTypeStartDatetime:
              json['delivery_type_start_datetime'] == null
                  ? 0
                  : const StringToEpochTimeConverter()
                      .fromJson(json['delivery_type_start_datetime'] as String),
          epochDeliveryTypeFinishDatetime:
              json['delivery_type_finish_datetime'] == null
                  ? 0
                  : const StringToEpochTimeConverter().fromJson(
                      json['delivery_type_finish_datetime'] as String),
        );

Map<String, dynamic> _$$_IndividualDeliveryPriceInformationModelToJson(
        _$_IndividualDeliveryPriceInformationModel instance) =>
    <String, dynamic>{
      'individual_delivery_name': instance.individualDeliveryName,
      'individual_delivery_price_type': _$IndividualDeliveryPriceTypeEnumMap[
          instance.individualDeliveryPriceType]!,
      'individual_delivery_price': instance.individualDeliveryPrice,
      'individual_delivery_discount_rate':
          instance.individualDeliveryDiscountRate,
      'delivery_type_start_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochDeliveryTypeStartDatetime),
      'delivery_type_finish_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochDeliveryTypeFinishDatetime),
    };

const _$IndividualDeliveryPriceTypeEnumMap = {
  IndividualDeliveryPriceType.fixedAmount: '1',
  IndividualDeliveryPriceType.percentDiscount: '2',
  IndividualDeliveryPriceType.standard: '',
};
