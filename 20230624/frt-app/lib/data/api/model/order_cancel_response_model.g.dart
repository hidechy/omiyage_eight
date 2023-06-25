// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_cancel_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderCancelResponseModel _$$_OrderCancelResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrderCancelResponseModel(
      expiredCoupons: (json['expired_coupons'] as List<dynamic>?)
              ?.map(
                  (e) => ExpiredCouponModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ExpiredCouponModel>[],
    );

Map<String, dynamic> _$$_OrderCancelResponseModelToJson(
        _$_OrderCancelResponseModel instance) =>
    <String, dynamic>{
      'expired_coupons':
          instance.expiredCoupons.map((e) => e.toJson()).toList(),
    };
