// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageModel _$$_MessageModelFromJson(Map<String, dynamic> json) =>
    _$_MessageModel(
      messageId: json['message_id'] as String? ?? '',
      messageDiv:
          $enumDecodeNullable(_$NotificationTypeEnumMap, json['message_div']) ??
              NotificationType.urgent,
      title: json['title'] as String? ?? '',
      text: json['text'] as String? ?? '',
      epochDisplayStartDate: const NullableStringToEpochTimeConverter()
          .fromJson(json['display_start_date'] as String?),
      sortNum: json['sort_num'] as int? ?? 0,
    );

Map<String, dynamic> _$$_MessageModelToJson(_$_MessageModel instance) =>
    <String, dynamic>{
      'message_id': instance.messageId,
      'message_div': _$NotificationTypeEnumMap[instance.messageDiv]!,
      'title': instance.title,
      'text': instance.text,
      'display_start_date': const NullableStringToEpochTimeConverter()
          .toJson(instance.epochDisplayStartDate),
      'sort_num': instance.sortNum,
    };

const _$NotificationTypeEnumMap = {
  NotificationType.important: 'important',
  NotificationType.news: 'news',
  NotificationType.shop: 'shop',
  NotificationType.urgent: 'urgent',
  NotificationType.none: '',
};
