// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_master_child_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryMasterChildModel _$$_CategoryMasterChildModelFromJson(
        Map<String, dynamic> json) =>
    _$_CategoryMasterChildModel(
      code: json['code'] as String? ?? '',
      name: json['name'] as String? ?? '',
      order: json['order'] as int? ?? 0,
    );

Map<String, dynamic> _$$_CategoryMasterChildModelToJson(
        _$_CategoryMasterChildModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'order': instance.order,
    };
