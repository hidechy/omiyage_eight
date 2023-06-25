// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warn_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WarnMessageModel _$$_WarnMessageModelFromJson(Map<String, dynamic> json) =>
    _$_WarnMessageModel(
      message: json['message'] as String? ?? '',
      messageSubstitute: (json['message_substitute'] as List<dynamic>?)
              ?.map((e) =>
                  MessageSubstituteModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MessageSubstituteModel>[],
      messageCode: json['message_code'] as String? ?? '',
    );

Map<String, dynamic> _$$_WarnMessageModelToJson(_$_WarnMessageModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'message_substitute':
          instance.messageSubstitute.map((e) => e.toJson()).toList(),
      'message_code': instance.messageCode,
    };
