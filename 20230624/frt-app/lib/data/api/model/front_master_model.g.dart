// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'front_master_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FrontMasterModel _$$_FrontMasterModelFromJson(Map<String, dynamic> json) =>
    _$_FrontMasterModel(
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) =>
                  FrontCategoryMasterModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <FrontCategoryMasterModel>[],
      recipes: (json['recipes'] as List<dynamic>?)
              ?.map((e) =>
                  FrontRecipeMasterModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <FrontRecipeMasterModel>[],
    );

Map<String, dynamic> _$$_FrontMasterModelToJson(_$_FrontMasterModel instance) =>
    <String, dynamic>{
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'recipes': instance.recipes.map((e) => e.toJson()).toList(),
    };
