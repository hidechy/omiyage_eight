// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'front_delis_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FrontDelisModel _$$_FrontDelisModelFromJson(Map<String, dynamic> json) =>
    _$_FrontDelisModel(
      recipes: (json['recipes'] as List<dynamic>?)
              ?.map((e) => RecipesModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <RecipesModel>[],
    );

Map<String, dynamic> _$$_FrontDelisModelToJson(_$_FrontDelisModel instance) =>
    <String, dynamic>{
      'recipes': instance.recipes.map((e) => e.toJson()).toList(),
    };
