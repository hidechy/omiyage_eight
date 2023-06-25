// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_addresses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryAddressesModel _$$_DeliveryAddressesModelFromJson(
        Map<String, dynamic> json) =>
    _$_DeliveryAddressesModel(
      prefectureCode: json['prefecture_code'] as String? ?? '',
      cityCode: json['city_code'] as String? ?? '',
      townCode: json['town_code'] as String? ?? '',
      postalNumber: json['postal_number'] as String? ?? '',
      prefectureName: json['prefecture_name'] as String? ?? '',
      cityName: json['city_name'] as String? ?? '',
      townName: json['town_name'] as String? ?? '',
    );

Map<String, dynamic> _$$_DeliveryAddressesModelToJson(
        _$_DeliveryAddressesModel instance) =>
    <String, dynamic>{
      'prefecture_code': instance.prefectureCode,
      'city_code': instance.cityCode,
      'town_code': instance.townCode,
      'postal_number': instance.postalNumber,
      'prefecture_name': instance.prefectureName,
      'city_name': instance.cityName,
      'town_name': instance.townName,
    };
