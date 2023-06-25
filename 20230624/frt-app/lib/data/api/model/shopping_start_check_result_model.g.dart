// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_start_check_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShoppingStartCheckResultModel _$$_ShoppingStartCheckResultModelFromJson(
        Map<String, dynamic> json) =>
    _$_ShoppingStartCheckResultModel(
      isLimitedDeliveryProduct:
          json['is_limited_delivery_product'] as bool? ?? false,
      limitedDeliveryProductNames:
          (json['limited_delivery_product_names'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const <String>[],
      isCanNotBuyProduct: json['is_can_not_buy_product'] as bool? ?? false,
      canNotBuyProductNames:
          (json['can_not_buy_product_names'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const <String>[],
      cartId: json['cart_id'] as int?,
      cart: json['cart'] == null
          ? null
          : CartModel.fromJson(json['cart'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ShoppingStartCheckResultModelToJson(
        _$_ShoppingStartCheckResultModel instance) =>
    <String, dynamic>{
      'is_limited_delivery_product': instance.isLimitedDeliveryProduct,
      'limited_delivery_product_names': instance.limitedDeliveryProductNames,
      'is_can_not_buy_product': instance.isCanNotBuyProduct,
      'can_not_buy_product_names': instance.canNotBuyProductNames,
      'cart_id': instance.cartId,
      'cart': instance.cart?.toJson(),
    };
