// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommended_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecommendedProductModel _$$_RecommendedProductModelFromJson(
        Map<String, dynamic> json) =>
    _$_RecommendedProductModel(
      product: json['product'] == null
          ? const ProductModel()
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      hasStock: json['has_stock'] as bool? ?? false,
    );

Map<String, dynamic> _$$_RecommendedProductModelToJson(
        _$_RecommendedProductModel instance) =>
    <String, dynamic>{
      'product': instance.product.toJson(),
      'has_stock': instance.hasStock,
    };
