// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_information_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryInformationModel _$$_DeliveryInformationModelFromJson(
        Map<String, dynamic> json) =>
    _$_DeliveryInformationModel(
      deliveryTimes: (json['delivery_times'] as List<dynamic>?)
              ?.map(
                  (e) => DeliveryTimeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DeliveryTimeModel>[],
      isPointReceipt: json['is_point_receipt'] as bool? ?? false,
      receiptPointId: json['receipt_point_id'] as String? ?? '',
      receiptPointName: json['receipt_point_name'] as String? ?? '',
      isNotSelectedPackMethod:
          json['is_not_selected_pack_method'] as bool? ?? false,
      hasShopReceipt: json['has_shop_receipt'] as bool? ?? false,
      shopReceiptPlaceUrl: json['shop_receipt_place_url'] as String? ?? '',
      hasLockerReceipt: json['has_locker_receipt'] as bool? ?? false,
      lockerReceiptPlaceUrl: json['locker_receipt_place_url'] as String? ?? '',
    );

Map<String, dynamic> _$$_DeliveryInformationModelToJson(
        _$_DeliveryInformationModel instance) =>
    <String, dynamic>{
      'delivery_times': instance.deliveryTimes.map((e) => e.toJson()).toList(),
      'is_point_receipt': instance.isPointReceipt,
      'receipt_point_id': instance.receiptPointId,
      'receipt_point_name': instance.receiptPointName,
      'is_not_selected_pack_method': instance.isNotSelectedPackMethod,
      'has_shop_receipt': instance.hasShopReceipt,
      'shop_receipt_place_url': instance.shopReceiptPlaceUrl,
      'has_locker_receipt': instance.hasLockerReceipt,
      'locker_receipt_place_url': instance.lockerReceiptPlaceUrl,
    };
