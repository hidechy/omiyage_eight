// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BannerSummaryModel _$$_BannerSummaryModelFromJson(
        Map<String, dynamic> json) =>
    _$_BannerSummaryModel(
      bannerAdvertisingId: json['banner_advertising_id'] as String? ?? '',
      bannerAdvertisingName: json['banner_advertising_name'] as String? ?? '',
      departmentCategoryCode1:
          json['department_category_code1'] as String? ?? '',
      category1Code: json['category1_code'] as String? ?? '',
      bannerStaticImagePath: json['banner_static_image_path'] as String? ?? '',
      bannerStaticImageFileName:
          json['banner_static_image_file_name'] as String? ?? '',
      productCount: json['product_count'] as int? ?? 0,
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductModel>[],
    );

Map<String, dynamic> _$$_BannerSummaryModelToJson(
        _$_BannerSummaryModel instance) =>
    <String, dynamic>{
      'banner_advertising_id': instance.bannerAdvertisingId,
      'banner_advertising_name': instance.bannerAdvertisingName,
      'department_category_code1': instance.departmentCategoryCode1,
      'category1_code': instance.category1Code,
      'banner_static_image_path': instance.bannerStaticImagePath,
      'banner_static_image_file_name': instance.bannerStaticImageFileName,
      'product_count': instance.productCount,
      'products': instance.products.map((e) => e.toJson()).toList(),
    };
