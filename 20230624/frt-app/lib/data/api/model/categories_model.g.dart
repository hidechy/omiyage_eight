// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoriesModel _$$_CategoriesModelFromJson(Map<String, dynamic> json) =>
    _$_CategoriesModel(
      target: json['target'] == null
          ? const CategoryModel()
          : CategoryModel.fromJson(json['target'] as Map<String, dynamic>),
      parent: json['parent'] == null
          ? const CategoryModel()
          : CategoryModel.fromJson(json['parent'] as Map<String, dynamic>),
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CategoryModel>[],
    );

Map<String, dynamic> _$$_CategoriesModelToJson(_$_CategoriesModel instance) =>
    <String, dynamic>{
      'target': instance.target.toJson(),
      'parent': instance.parent.toJson(),
      'children': instance.children.map((e) => e.toJson()).toList(),
    };
