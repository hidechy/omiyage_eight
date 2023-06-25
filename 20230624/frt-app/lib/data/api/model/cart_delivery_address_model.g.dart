// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_delivery_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartDeliveryAddressModel _$$_CartDeliveryAddressModelFromJson(
        Map<String, dynamic> json) =>
    _$_CartDeliveryAddressModel(
      separatedPostalNumber: json['separated_postal_number'] as String? ?? '',
      prefectureCode: json['prefecture_code'] as String? ?? '',
      prefectureName: json['prefecture_name'] as String? ?? '',
      cityCode: json['city_code'] as String? ?? '',
      cityName: json['city_name'] as String? ?? '',
      townCode: json['town_code'] as String? ?? '',
      townName: json['town_name'] as String? ?? '',
      chomeCode: json['chome_code'] as String? ?? '',
      chomeName: json['chome_name'] as String? ?? '',
      addressDetail: json['address_detail'] as String? ?? '',
    );

Map<String, dynamic> _$$_CartDeliveryAddressModelToJson(
        _$_CartDeliveryAddressModel instance) =>
    <String, dynamic>{
      'separated_postal_number': instance.separatedPostalNumber,
      'prefecture_code': instance.prefectureCode,
      'prefecture_name': instance.prefectureName,
      'city_code': instance.cityCode,
      'city_name': instance.cityName,
      'town_code': instance.townCode,
      'town_name': instance.townName,
      'chome_code': instance.chomeCode,
      'chome_name': instance.chomeName,
      'address_detail': instance.addressDetail,
    };
