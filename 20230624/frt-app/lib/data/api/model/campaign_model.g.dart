// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CampaignModel _$$_CampaignModelFromJson(Map<String, dynamic> json) =>
    _$_CampaignModel(
      priceType: $enumDecodeNullable(_$PriceTypeEnumMap, json['price_type']) ??
          PriceType.price,
      name: json['name'] as String? ?? '',
      price: json['price'] as int?,
      discountRate: json['discount_rate'] as int?,
      epochStartDatetime: json['start_datetime'] == null
          ? 0
          : const StringToEpochTimeConverter()
              .fromJson(json['start_datetime'] as String),
      epochFinishDatetime: json['finish_datetime'] == null
          ? 0
          : const StringToEpochTimeConverter()
              .fromJson(json['finish_datetime'] as String),
    );

Map<String, dynamic> _$$_CampaignModelToJson(_$_CampaignModel instance) =>
    <String, dynamic>{
      'price_type': _$PriceTypeEnumMap[instance.priceType]!,
      'name': instance.name,
      'price': instance.price,
      'discount_rate': instance.discountRate,
      'start_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochStartDatetime),
      'finish_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochFinishDatetime),
    };

const _$PriceTypeEnumMap = {
  PriceType.price: '1',
  PriceType.discountRate: '2',
};
