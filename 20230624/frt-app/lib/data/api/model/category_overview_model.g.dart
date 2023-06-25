// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_overview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategorySummaryDataModel _$$_CategorySummaryDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_CategorySummaryDataModel(
      categoryCode: json['category_code'] as String? ?? '',
      categoryName: json['category_name'] as String? ?? '',
      categoryThumbnail: json['category_thumbnail'] as String? ?? '',
    );

Map<String, dynamic> _$$_CategorySummaryDataModelToJson(
        _$_CategorySummaryDataModel instance) =>
    <String, dynamic>{
      'category_code': instance.categoryCode,
      'category_name': instance.categoryName,
      'category_thumbnail': instance.categoryThumbnail,
    };
