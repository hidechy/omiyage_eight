// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopModel _$$_ShopModelFromJson(Map<String, dynamic> json) => _$_ShopModel(
      shopName: json['shop_name'] as String? ?? '',
      telNumber: json['tel_number'] as String? ?? '',
      shopCode: json['shop_code'] as String? ?? '',
      isAkachanHonpoShop: json['is_akachan_honpo_shop'] as bool? ?? false,
      isAkachanHonpoAgencyShop:
          json['is_akachan_honpo_agency_shop'] as bool? ?? false,
      isDrugShop: json['is_drug_shop'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ShopModelToJson(_$_ShopModel instance) =>
    <String, dynamic>{
      'shop_name': instance.shopName,
      'tel_number': instance.telNumber,
      'shop_code': instance.shopCode,
      'is_akachan_honpo_shop': instance.isAkachanHonpoShop,
      'is_akachan_honpo_agency_shop': instance.isAkachanHonpoAgencyShop,
      'is_drug_shop': instance.isDrugShop,
    };
