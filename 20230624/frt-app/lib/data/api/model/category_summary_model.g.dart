// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategorySummaryModel _$$_CategorySummaryModelFromJson(
        Map<String, dynamic> json) =>
    _$_CategorySummaryModel(
      searchCategoryCode: json['search_category_code'] as String? ?? '',
      searchCategoryName: json['search_category_name'] as String? ?? '',
      categoriesOverview: (json['categories_overview'] as List<dynamic>?)
              ?.map((e) =>
                  CategoryOverviewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CategoryOverviewModel>[],
      categorys: (json['categorys'] as List<dynamic>?)
              ?.map((e) =>
                  CategorySummaryDataModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CategorySummaryDataModel>[],
    );

Map<String, dynamic> _$$_CategorySummaryModelToJson(
        _$_CategorySummaryModel instance) =>
    <String, dynamic>{
      'search_category_code': instance.searchCategoryCode,
      'search_category_name': instance.searchCategoryName,
      'categories_overview':
          instance.categoriesOverview.map((e) => e.toJson()).toList(),
      'categorys': instance.categorys.map((e) => e.toJson()).toList(),
    };
