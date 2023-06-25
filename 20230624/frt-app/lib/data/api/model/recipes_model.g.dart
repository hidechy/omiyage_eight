// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipesModel _$$_RecipesModelFromJson(Map<String, dynamic> json) =>
    _$_RecipesModel(
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
    );

Map<String, dynamic> _$$_RecipesModelToJson(_$_RecipesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lead': instance.lead,
      'title': instance.title,
      'description': instance.description,
      'cooking_time': instance.cookingTime,
      'calorie': instance.calorie,
      'rect_video': instance.rectVideo.toJson(),
      'square_video': instance.squareVideo.toJson(),
    };
