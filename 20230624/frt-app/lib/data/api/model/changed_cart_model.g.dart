// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'changed_cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChangedCartModel _$$_ChangedCartModelFromJson(Map<String, dynamic> json) =>
    _$_ChangedCartModel(
      isCanNotBuyProduct: json['is_can_not_buy_product'] as bool? ?? false,
      canNotBuyProductNames:
          (json['can_not_buy_product_names'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const <String>[],
      deliveryPriceChangeFlag: json['delivery_price_change_flag'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['delivery_price_change_flag'] as String),
      couponChangeFlag: json['coupon_change_flag'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['coupon_change_flag'] as String),
      isLimitedDeliveryProduct:
          json['is_limited_delivery_product'] as bool? ?? false,
      limitedDeliveryProductNames:
          (json['limited_delivery_product_names'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const <String>[],
      warnMessages: (json['warn_messages'] as List<dynamic>?)
              ?.map((e) => WarnMessageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <WarnMessageModel>[],
      cart: json['cart'] == null
          ? null
          : CartModel.fromJson(json['cart'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChangedCartModelToJson(_$_ChangedCartModel instance) =>
    <String, dynamic>{
      'is_can_not_buy_product': instance.isCanNotBuyProduct,
      'can_not_buy_product_names': instance.canNotBuyProductNames,
      'delivery_price_change_flag': const StringToBooleanConverter()
          .toJson(instance.deliveryPriceChangeFlag),
      'coupon_change_flag':
          const StringToBooleanConverter().toJson(instance.couponChangeFlag),
      'is_limited_delivery_product': instance.isLimitedDeliveryProduct,
      'limited_delivery_product_names': instance.limitedDeliveryProductNames,
      'warn_messages': instance.warnMessages.map((e) => e.toJson()).toList(),
      'cart': instance.cart?.toJson(),
    };
