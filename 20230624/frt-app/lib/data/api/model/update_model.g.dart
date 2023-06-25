// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateModel _$$_UpdateModelFromJson(Map<String, dynamic> json) =>
    _$_UpdateModel(
      os: json['os'] as String,
      osVersion: json['os_version'] as String,
      appVersion: json['app_version'] as String,
      title: json['title'] as String? ?? '',
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$_UpdateModelToJson(_$_UpdateModel instance) =>
    <String, dynamic>{
      'os': instance.os,
      'os_version': instance.osVersion,
      'app_version': instance.appVersion,
      'title': instance.title,
      'message': instance.message,
    };
