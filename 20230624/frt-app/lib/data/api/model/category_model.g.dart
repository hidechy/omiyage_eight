// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryModel _$$_CategoryModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryModel(
      categoryLevel: json['category_level'] as int? ?? 0,
      categoryCode: json['category_code'] as String? ?? '',
      categoryName: json['category_name'] as String? ?? '',
      sortNumber: json['sort_number'] as int? ?? 0,
    );

Map<String, dynamic> _$$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'category_level': instance.categoryLevel,
      'category_code': instance.categoryCode,
      'category_name': instance.categoryName,
      'sort_number': instance.sortNumber,
    };
