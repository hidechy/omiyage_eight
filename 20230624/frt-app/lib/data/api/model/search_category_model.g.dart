// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchCategoryModel _$$_SearchCategoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_SearchCategoryModel(
      category1Code: json['category1_code'] as String? ?? '',
      category1Name: json['category1_name'] as String? ?? '',
      category2Code: json['category2_code'] as String? ?? '',
      category2Name: json['category2_name'] as String? ?? '',
      category3Code: json['category3_code'] as String? ?? '',
      category3Name: json['category3_name'] as String? ?? '',
      category4Code: json['category4_code'] as String? ?? '',
      category4Name: json['category4_name'] as String? ?? '',
      isMedicineCategory: json['is_medicine_category'] as bool? ?? false,
      productCount: json['product_count'] as int? ?? 0,
    );

Map<String, dynamic> _$$_SearchCategoryModelToJson(
        _$_SearchCategoryModel instance) =>
    <String, dynamic>{
      'category1_code': instance.category1Code,
      'category1_name': instance.category1Name,
      'category2_code': instance.category2Code,
      'category2_name': instance.category2Name,
      'category3_code': instance.category3Code,
      'category3_name': instance.category3Name,
      'category4_code': instance.category4Code,
      'category4_name': instance.category4Name,
      'is_medicine_category': instance.isMedicineCategory,
      'product_count': instance.productCount,
    };
