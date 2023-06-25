// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_restriction_model_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryRestrictionModelAddress _$$_DeliveryRestrictionModelAddressFromJson(
        Map<String, dynamic> json) =>
    _$_DeliveryRestrictionModelAddress(
      prefectureCode: json['prefecture_code'] as String? ?? '',
      prefectureName: json['prefecture_name'] as String? ?? '',
      cityCode: json['city_code'] as String? ?? '',
      cityName: json['city_name'] as String? ?? '',
      townCode: json['town_code'] as String? ?? '',
      townName: json['town_name'] as String? ?? '',
      chomeCode: json['chome_code'] as String? ?? '',
      chomeName: json['chome_name'] as String? ?? '',
    );

Map<String, dynamic> _$$_DeliveryRestrictionModelAddressToJson(
        _$_DeliveryRestrictionModelAddress instance) =>
    <String, dynamic>{
      'prefecture_code': instance.prefectureCode,
      'prefecture_name': instance.prefectureName,
      'city_code': instance.cityCode,
      'city_name': instance.cityName,
      'town_code': instance.townCode,
      'town_name': instance.townName,
      'chome_code': instance.chomeCode,
      'chome_name': instance.chomeName,
    };
