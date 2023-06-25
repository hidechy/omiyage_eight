// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeDetailModel _$$_RecipeDetailModelFromJson(Map<String, dynamic> json) =>
    _$_RecipeDetailModel(
      id: json['id'] as String? ?? '',
      lead: json['lead'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      cookingTime: json['cooking_time'] as String? ?? '',
      calorie: json['calorie'] as String? ?? '',
      rectVideo: json['rect_video'] == null
          ? const VideoUrlModel()
          : VideoUrlModel.fromJson(json['rect_video'] as Map<String, dynamic>),
      squareVideo: json['square_video'] == null
          ? const VideoUrlModel()
          : VideoUrlModel.fromJson(
              json['square_video'] as Map<String, dynamic>),
      servings: json['servings'] as String? ?? '',
      ingredientGroups: (json['ingredient_groups'] as List<dynamic>?)
              ?.map((e) =>
                  IngredientGroupModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <IngredientGroupModel>[],
      steps: (json['steps'] as List<dynamic>?)
              ?.map((e) => StepModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <StepModel>[],
    );

Map<String, dynamic> _$$_RecipeDetailModelToJson(
        _$_RecipeDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lead': instance.lead,
      'title': instance.title,
      'description': instance.description,
      'cooking_time': instance.cookingTime,
      'calorie': instance.calorie,
      'rect_video': instance.rectVideo.toJson(),
      'square_video': instance.squareVideo.toJson(),
      'servings': instance.servings,
      'ingredient_groups':
          instance.ingredientGroups.map((e) => e.toJson()).toList(),
      'steps': instance.steps.map((e) => e.toJson()).toList(),
    };
