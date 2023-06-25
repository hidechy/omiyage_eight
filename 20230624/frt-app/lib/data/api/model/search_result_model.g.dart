// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResultModel _$$_SearchResultModelFromJson(Map<String, dynamic> json) =>
    _$_SearchResultModel(
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) =>
                  SearchCategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SearchCategoryModel>[],
      facets: (json['facets'] as List<dynamic>?)
              ?.map((e) => SearchFacetModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SearchFacetModel>[],
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductModel>[],
      correctionSearchWords: (json['correction_search_words'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      isSelectedAllCategory: json['is_selected_all_category'] as bool? ?? false,
    );

Map<String, dynamic> _$$_SearchResultModelToJson(
        _$_SearchResultModel instance) =>
    <String, dynamic>{
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'facets': instance.facets.map((e) => e.toJson()).toList(),
      'products': instance.products.map((e) => e.toJson()).toList(),
      'correction_search_words': instance.correctionSearchWords,
      'is_selected_all_category': instance.isSelectedAllCategory,
    };
