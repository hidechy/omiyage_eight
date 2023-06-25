// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_advertising_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BannerAdvertisingModel _$$_BannerAdvertisingModelFromJson(
        Map<String, dynamic> json) =>
    _$_BannerAdvertisingModel(
      bannerAdvertisingId: json['banner_advertising_id'] as String? ?? '',
      bannerAdvertisingName: json['banner_advertising_name'] as String? ?? '',
      staticImagePath: json['static_image_path'] as String? ?? '',
      staticImageFileName1: json['static_image_file_name1'] as String? ?? '',
      staticImageUrl1: json['static_image_url1'] as String? ?? '',
      staticImageFileName2: json['static_image_file_name2'] as String? ?? '',
      staticImageUrl2: json['static_image_url2'] as String? ?? '',
      staticImageFileName3: json['static_image_file_name3'] as String? ?? '',
      staticImageUrl3: json['static_image_url3'] as String? ?? '',
      staticImageFileName4: json['static_image_file_name4'] as String? ?? '',
      staticImageUrl4: json['static_image_url4'] as String? ?? '',
      staticMovieFlag4: json['static_movie_flag4'] as bool? ?? false,
      staticImageFileName5: json['static_image_file_name5'] as String? ?? '',
      staticImageUrl5: json['static_image_url5'] as String? ?? '',
      staticMovieFlag5: json['static_movie_flag5'] as bool? ?? false,
      category1CategoryCode: json['category1_category_code'] as String? ?? '',
      departmentName1: json['department_name1'] as String? ?? '',
      departmentCategoryCode1:
          json['department_category_code1'] as String? ?? '',
      departmentName2: json['department_name2'] as String? ?? '',
      departmentCategoryCode2:
          json['department_category_code2'] as String? ?? '',
      bannerPageNo: json['banner_page_no'] as int? ?? 0,
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductModel>[],
    );

Map<String, dynamic> _$$_BannerAdvertisingModelToJson(
        _$_BannerAdvertisingModel instance) =>
    <String, dynamic>{
      'banner_advertising_id': instance.bannerAdvertisingId,
      'banner_advertising_name': instance.bannerAdvertisingName,
      'static_image_path': instance.staticImagePath,
      'static_image_file_name1': instance.staticImageFileName1,
      'static_image_url1': instance.staticImageUrl1,
      'static_image_file_name2': instance.staticImageFileName2,
      'static_image_url2': instance.staticImageUrl2,
      'static_image_file_name3': instance.staticImageFileName3,
      'static_image_url3': instance.staticImageUrl3,
      'static_image_file_name4': instance.staticImageFileName4,
      'static_image_url4': instance.staticImageUrl4,
      'static_movie_flag4': instance.staticMovieFlag4,
      'static_image_file_name5': instance.staticImageFileName5,
      'static_image_url5': instance.staticImageUrl5,
      'static_movie_flag5': instance.staticMovieFlag5,
      'category1_category_code': instance.category1CategoryCode,
      'department_name1': instance.departmentName1,
      'department_category_code1': instance.departmentCategoryCode1,
      'department_name2': instance.departmentName2,
      'department_category_code2': instance.departmentCategoryCode2,
      'banner_page_no': instance.bannerPageNo,
      'products': instance.products.map((e) => e.toJson()).toList(),
    };
