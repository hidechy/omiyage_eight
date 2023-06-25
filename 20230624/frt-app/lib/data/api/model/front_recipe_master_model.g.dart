// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'front_recipe_master_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FrontRecipeMasterModel _$$_FrontRecipeMasterModelFromJson(
        Map<String, dynamic> json) =>
    _$_FrontRecipeMasterModel(
      code: json['code'] as String? ?? '',
      name: json['name'] as String? ?? '',
      order: json['order'] as int? ?? 0,
    );

Map<String, dynamic> _$$_FrontRecipeMasterModelToJson(
        _$_FrontRecipeMasterModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'order': instance.order,
    };
