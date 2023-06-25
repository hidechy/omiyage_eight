// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_facet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchFacetModel _$$_SearchFacetModelFromJson(Map<String, dynamic> json) =>
    _$_SearchFacetModel(
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) =>
                  SelectableFacetModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SelectableFacetModel>[],
      saleTerms: (json['sale_terms'] as List<dynamic>?)
              ?.map((e) =>
                  SelectableFacetModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SelectableFacetModel>[],
      prices: (json['prices'] as List<dynamic>?)
              ?.map((e) =>
                  SelectableFacetModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SelectableFacetModel>[],
      makers: (json['makers'] as List<dynamic>?)
              ?.map((e) =>
                  SelectableFacetModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SelectableFacetModel>[],
      brands: (json['brands'] as List<dynamic>?)
              ?.map((e) =>
                  SelectableFacetModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SelectableFacetModel>[],
      colors: (json['colors'] as List<dynamic>?)
              ?.map((e) =>
                  SelectableFacetModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SelectableFacetModel>[],
      sizes: (json['sizes'] as List<dynamic>?)
              ?.map((e) =>
                  SelectableFacetModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SelectableFacetModel>[],
      volumes: (json['volumes'] as List<dynamic>?)
              ?.map((e) =>
                  SelectableFacetModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SelectableFacetModel>[],
      discount: (json['discount'] as List<dynamic>?)
              ?.map((e) =>
                  SelectableFacetModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SelectableFacetModel>[],
    );

Map<String, dynamic> _$$_SearchFacetModelToJson(_$_SearchFacetModel instance) =>
    <String, dynamic>{
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'sale_terms': instance.saleTerms.map((e) => e.toJson()).toList(),
      'prices': instance.prices.map((e) => e.toJson()).toList(),
      'makers': instance.makers.map((e) => e.toJson()).toList(),
      'brands': instance.brands.map((e) => e.toJson()).toList(),
      'colors': instance.colors.map((e) => e.toJson()).toList(),
      'sizes': instance.sizes.map((e) => e.toJson()).toList(),
      'volumes': instance.volumes.map((e) => e.toJson()).toList(),
      'discount': instance.discount.map((e) => e.toJson()).toList(),
    };
