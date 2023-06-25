// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'front_categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FrontCategoriesModel _$$_FrontCategoriesModelFromJson(
        Map<String, dynamic> json) =>
    _$_FrontCategoriesModel(
      categoryLevel: json['category_level'] as int? ?? 0,
      categoryCode: json['category_code'] as String? ?? '',
      categoryName: json['category_name'] as String? ?? '',
      categoryThumbnail: json['category_thumbnail'] as String? ?? '',
      sortNumber: json['sort_number'] as int? ?? 0,
      children: (json['children'] as List<dynamic>?)
              ?.map(
                  (e) => FrontCategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <FrontCategoryModel>[],
    );

Map<String, dynamic> _$$_FrontCategoriesModelToJson(
        _$_FrontCategoriesModel instance) =>
    <String, dynamic>{
      'category_level': instance.categoryLevel,
      'category_code': instance.categoryCode,
      'category_name': instance.categoryName,
      'category_thumbnail': instance.categoryThumbnail,
      'sort_number': instance.sortNumber,
      'children': instance.children.map((e) => e.toJson()).toList(),
    };
