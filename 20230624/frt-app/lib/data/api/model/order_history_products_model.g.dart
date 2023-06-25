// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderHistoryProductsModel _$$_OrderHistoryProductsModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrderHistoryProductsModel(
      productId: json['product_id'] as String? ?? '',
      productName: json['product_name'] as String? ?? '',
      thumbnailImagePath: json['thumbnail_image_path'] as String? ?? '',
      thumbnailImageName: json['thumbnail_image_name'] as String? ?? '',
      isDisplayWhiteImage: json['is_display_white_image'] as bool? ?? false,
      frontThumbnailImageFullPath:
          json['front_thumbnail_image_full_path'] as String? ?? '',
    );

Map<String, dynamic> _$$_OrderHistoryProductsModelToJson(
        _$_OrderHistoryProductsModel instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'product_name': instance.productName,
      'thumbnail_image_path': instance.thumbnailImagePath,
      'thumbnail_image_name': instance.thumbnailImageName,
      'is_display_white_image': instance.isDisplayWhiteImage,
      'front_thumbnail_image_full_path': instance.frontThumbnailImageFullPath,
    };
