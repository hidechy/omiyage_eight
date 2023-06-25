// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_previous_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductsPreviousOrderModel _$$_ProductsPreviousOrderModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductsPreviousOrderModel(
      previousTotalPrice: json['previous_total_price'] as String?,
      isAllSoldout: json['is_all_soldout'] as bool? ?? false,
      isTemporaryCustomer: json['is_temporary_customer'] as bool? ?? false,
      shopCode: json['shop_code'] as String?,
      orderId: json['order_id'] as int?,
      previusOrders: (json['previus_orders'] as List<dynamic>?)
          ?.map((e) => PreviousOrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isConsentMedicine: json['is_consent_medicine'] as bool? ?? false,
      isConsentAkachanHonpo: json['is_consent_akachan_honpo'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ProductsPreviousOrderModelToJson(
        _$_ProductsPreviousOrderModel instance) =>
    <String, dynamic>{
      'previous_total_price': instance.previousTotalPrice,
      'is_all_soldout': instance.isAllSoldout,
      'is_temporary_customer': instance.isTemporaryCustomer,
      'shop_code': instance.shopCode,
      'order_id': instance.orderId,
      'previus_orders': instance.previusOrders?.map((e) => e.toJson()).toList(),
      'is_consent_medicine': instance.isConsentMedicine,
      'is_consent_akachan_honpo': instance.isConsentAkachanHonpo,
    };
