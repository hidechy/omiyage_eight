// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'previous_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PreviousOrderModel _$$_PreviousOrderModelFromJson(
        Map<String, dynamic> json) =>
    _$_PreviousOrderModel(
      thumbnailImagePath: json['thumbnail_image_path'] as String? ?? '',
      product: json['product'] == null
          ? const ProductModel()
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PreviousOrderModelToJson(
        _$_PreviousOrderModel instance) =>
    <String, dynamic>{
      'thumbnail_image_path': instance.thumbnailImagePath,
      'product': instance.product.toJson(),
    };
