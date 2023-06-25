// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StepModel _$$_StepModelFromJson(Map<String, dynamic> json) => _$_StepModel(
      step: json['step'] as int? ?? 0,
      description: json['description'] as String? ?? '',
      point: json['point'] as String? ?? '',
    );

Map<String, dynamic> _$$_StepModelToJson(_$_StepModel instance) =>
    <String, dynamic>{
      'step': instance.step,
      'description': instance.description,
      'point': instance.point,
    };
