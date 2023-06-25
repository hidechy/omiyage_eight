// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_shop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryShopModel _$$_DeliveryShopModelFromJson(Map<String, dynamic> json) =>
    _$_DeliveryShopModel(
      shopCode: json['shop_code'] as String? ?? '',
      shopName: json['shop_name'] as String? ?? '',
      isCompleteClosed: json['is_complete_closed'] as bool? ?? false,
      isBeforeNewOpenDate: json['is_before_new_open_date'] as bool? ?? false,
      canPackageDrop: json['can_package_drop'] as bool? ?? false,
      deliveryBaseCode: json['delivery_base_code'] as String? ?? '',
      deliveryBaseName: json['delivery_base_name'] as String? ?? '',
      mailMagazineType: $enumDecodeNullable(
              _$MailMagazineTypeEnumMap, json['mail_magazine_type']) ??
          MailMagazineType.doNotSend,
    );

Map<String, dynamic> _$$_DeliveryShopModelToJson(
        _$_DeliveryShopModel instance) =>
    <String, dynamic>{
      'shop_code': instance.shopCode,
      'shop_name': instance.shopName,
      'is_complete_closed': instance.isCompleteClosed,
      'is_before_new_open_date': instance.isBeforeNewOpenDate,
      'can_package_drop': instance.canPackageDrop,
      'delivery_base_code': instance.deliveryBaseCode,
      'delivery_base_name': instance.deliveryBaseName,
      'mail_magazine_type':
          _$MailMagazineTypeEnumMap[instance.mailMagazineType]!,
    };

const _$MailMagazineTypeEnumMap = {
  MailMagazineType.doNotSend: '0',
  MailMagazineType.mainMailAddress: '1',
  MailMagazineType.subMailAddress: '2',
  MailMagazineType.both: '3',
  MailMagazineType.none: '',
};
