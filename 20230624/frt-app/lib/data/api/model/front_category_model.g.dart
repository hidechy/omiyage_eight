// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'front_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FrontCategoryModel _$$_FrontCategoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_FrontCategoryModel(
      categoryLevel: json['category_level'] as int? ?? 0,
      categoryCode: json['category_code'] as String? ?? '',
      categoryName: json['category_name'] as String? ?? '',
      categoryThumbnail: json['category_thumbnail'] as String? ?? '',
      sortNumber: json['sort_number'] as int? ?? 0,
    );

Map<String, dynamic> _$$_FrontCategoryModelToJson(
        _$_FrontCategoryModel instance) =>
    <String, dynamic>{
      'category_level': instance.categoryLevel,
      'category_code': instance.categoryCode,
      'category_name': instance.categoryName,
      'category_thumbnail': instance.categoryThumbnail,
      'sort_number': instance.sortNumber,
    };
