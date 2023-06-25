// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_visitor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginVisitorModel _$$_LoginVisitorModelFromJson(Map<String, dynamic> json) =>
    _$_LoginVisitorModel(
      shopCode: json['shop_code'] as String? ?? '',
      cart: json['cart'] == null
          ? const CartModel()
          : CartModel.fromJson(json['cart'] as Map<String, dynamic>),
      deliveryBaseCode: json['delivery_base_code'] as String? ?? '',
      iyVisitId: json['iy_visit_id'] as String? ?? '',
    );

Map<String, dynamic> _$$_LoginVisitorModelToJson(
        _$_LoginVisitorModel instance) =>
    <String, dynamic>{
      'shop_code': instance.shopCode,
      'cart': instance.cart.toJson(),
      'delivery_base_code': instance.deliveryBaseCode,
      'iy_visit_id': instance.iyVisitId,
    };
