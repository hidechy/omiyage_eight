// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'first_use_registoration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FirstUseRegistrationModel _$$_FirstUseRegistrationModelFromJson(
        Map<String, dynamic> json) =>
    _$_FirstUseRegistrationModel(
      dealCoupons: (json['deal_coupons'] as List<dynamic>?)
              ?.map((e) =>
                  CustomerDealCouponModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CustomerDealCouponModel>[],
      isCanNotBuyProduct: json['is_can_not_buy_product'] as bool? ?? false,
      canNotBuyProductNames:
          (json['can_not_buy_product_names'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const <String>[],
    );

Map<String, dynamic> _$$_FirstUseRegistrationModelToJson(
        _$_FirstUseRegistrationModel instance) =>
    <String, dynamic>{
      'deal_coupons': instance.dealCoupons.map((e) => e.toJson()).toList(),
      'is_can_not_buy_product': instance.isCanNotBuyProduct,
      'can_not_buy_product_names': instance.canNotBuyProductNames,
    };
