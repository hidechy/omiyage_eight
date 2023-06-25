// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_locations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReceiptLocationsModel _$$_ReceiptLocationsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ReceiptLocationsModel(
      shopCode: json['shop_code'] as String? ?? '',
      receiptPointName: json['receipt_point_name'] as String? ?? '',
      receiptPointAddress: json['receipt_point_address'] as String? ?? '',
      receiptPointLatitude:
          (json['receipt_point_latitude'] as num?)?.toDouble() ?? 0.0,
      receiptPointLongitude:
          (json['receipt_point_longitude'] as num?)?.toDouble() ?? 0.0,
      locationId: json['location_id'] as String? ?? '',
      hasShopReceipt: json['has_shop_receipt'] as bool? ?? false,
      hasLockerReceipt: json['has_locker_receipt'] as bool? ?? false,
      iconType:
          $enumDecodeNullable(_$LocationIconTypeEnumMap, json['icon_type']) ??
              LocationIconType.iy,
      deliveryBaseCode: json['delivery_base_code'] as String? ?? '',
    );

Map<String, dynamic> _$$_ReceiptLocationsModelToJson(
        _$_ReceiptLocationsModel instance) =>
    <String, dynamic>{
      'shop_code': instance.shopCode,
      'receipt_point_name': instance.receiptPointName,
      'receipt_point_address': instance.receiptPointAddress,
      'receipt_point_latitude': instance.receiptPointLatitude,
      'receipt_point_longitude': instance.receiptPointLongitude,
      'location_id': instance.locationId,
      'has_shop_receipt': instance.hasShopReceipt,
      'has_locker_receipt': instance.hasLockerReceipt,
      'icon_type': _$LocationIconTypeEnumMap[instance.iconType]!,
      'delivery_base_code': instance.deliveryBaseCode,
    };

const _$LocationIconTypeEnumMap = {
  LocationIconType.iy: '01',
  LocationIconType.sevenAndILocker: '02',
};
