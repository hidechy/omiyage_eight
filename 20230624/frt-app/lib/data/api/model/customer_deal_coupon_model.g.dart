// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_deal_coupon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerDealCouponModel _$$_CustomerDealCouponModelFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerDealCouponModel(
      epochUseDeliveryStartDatetime: json['use_delivery_start_datetime'] == null
          ? 0
          : const StringToEpochTimeConverter()
              .fromJson(json['use_delivery_start_datetime'] as String),
      couponName: json['coupon_name'] as String? ?? '',
      couponCode: json['coupon_code'] as String? ?? '',
      isLimitedUseOneDay: json['is_limited_use_one_day'] as bool? ?? false,
      epochUseDeliveryFinishDatetime:
          json['use_delivery_finish_datetime'] == null
              ? 0
              : const StringToEpochTimeConverter()
                  .fromJson(json['use_delivery_finish_datetime'] as String),
      couponUseRemainingNumber:
          json['coupon_use_remaining_number'] as String? ?? '',
      couponGuide: json['coupon_guide'] as String? ?? '',
    );

Map<String, dynamic> _$$_CustomerDealCouponModelToJson(
        _$_CustomerDealCouponModel instance) =>
    <String, dynamic>{
      'use_delivery_start_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochUseDeliveryStartDatetime),
      'coupon_name': instance.couponName,
      'coupon_code': instance.couponCode,
      'is_limited_use_one_day': instance.isLimitedUseOneDay,
      'use_delivery_finish_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochUseDeliveryFinishDatetime),
      'coupon_use_remaining_number': instance.couponUseRemainingNumber,
      'coupon_guide': instance.couponGuide,
    };
