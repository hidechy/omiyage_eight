// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_changed_quantity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartChangedQuantityModel _$$_CartChangedQuantityModelFromJson(
        Map<String, dynamic> json) =>
    _$_CartChangedQuantityModel(
      needPriceChangeConfirm:
          json['need_price_change_confirm'] as bool? ?? false,
      cart: json['cart'] == null
          ? const CartModel()
          : CartModel.fromJson(json['cart'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CartChangedQuantityModelToJson(
        _$_CartChangedQuantityModel instance) =>
    <String, dynamic>{
      'need_price_change_confirm': instance.needPriceChangeConfirm,
      'cart': instance.cart.toJson(),
    };
