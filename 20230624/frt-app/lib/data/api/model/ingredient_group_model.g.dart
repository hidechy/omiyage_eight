// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IngredientGroupModel _$$_IngredientGroupModelFromJson(
        Map<String, dynamic> json) =>
    _$_IngredientGroupModel(
      name: json['name'] as String? ?? '',
      ingredients: (json['ingredients'] as List<dynamic>?)
              ?.map((e) => IngredientModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <IngredientModel>[],
    );

Map<String, dynamic> _$$_IngredientGroupModelToJson(
        _$_IngredientGroupModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'ingredients': instance.ingredients.map((e) => e.toJson()).toList(),
    };
