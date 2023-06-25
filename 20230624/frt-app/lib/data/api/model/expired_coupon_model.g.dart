// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expired_coupon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExpiredCouponModel _$$_ExpiredCouponModelFromJson(
        Map<String, dynamic> json) =>
    _$_ExpiredCouponModel(
      couponName: json['coupon_name'] as String? ?? '',
      couponCode: json['coupon_code'] as String? ?? '',
      isDealTermExpired: json['is_deal_term_expired'] as bool? ?? false,
      isExpiredSalePrice: json['is_expired_sale_price'] as bool? ?? false,
      epochDealFinishDatetime: json['deal_finish_datetime'] == null
          ? 0
          : const StringToEpochTimeConverter()
              .fromJson(json['deal_finish_datetime'] as String),
      orderSalePrice: json['order_sale_price'] as int? ?? 0,
      isExpiredOrderCount: json['is_expired_order_count'] as bool? ?? false,
      orderCount: json['order_count'] as int? ?? 0,
      isExpiredUseDeliveryDate:
          json['is_expired_use_delivery_date'] as bool? ?? false,
      epochUseDeliveryFinishDatetime:
          json['use_delivery_finish_datetime'] == null
              ? 0
              : const StringToEpochTimeConverter()
                  .fromJson(json['use_delivery_finish_datetime'] as String),
    );

Map<String, dynamic> _$$_ExpiredCouponModelToJson(
        _$_ExpiredCouponModel instance) =>
    <String, dynamic>{
      'coupon_name': instance.couponName,
      'coupon_code': instance.couponCode,
      'is_deal_term_expired': instance.isDealTermExpired,
      'is_expired_sale_price': instance.isExpiredSalePrice,
      'deal_finish_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochDealFinishDatetime),
      'order_sale_price': instance.orderSalePrice,
      'is_expired_order_count': instance.isExpiredOrderCount,
      'order_count': instance.orderCount,
      'is_expired_use_delivery_date': instance.isExpiredUseDeliveryDate,
      'use_delivery_finish_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochUseDeliveryFinishDatetime),
    };
