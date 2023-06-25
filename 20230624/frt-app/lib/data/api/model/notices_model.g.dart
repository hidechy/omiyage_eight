// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notices_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoticesModel _$$_NoticesModelFromJson(Map<String, dynamic> json) =>
    _$_NoticesModel(
      shopCode: json['shop_code'] as String? ?? '',
      shopName: json['shop_name'] as String? ?? '',
      messages: (json['messages'] as List<dynamic>?)
              ?.map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MessageModel>[],
      importantNotification: json['important_notification'] == null
          ? null
          : ImportantNotificationModel.fromJson(
              json['important_notification'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NoticesModelToJson(_$_NoticesModel instance) =>
    <String, dynamic>{
      'shop_code': instance.shopCode,
      'shop_name': instance.shopName,
      'messages': instance.messages.map((e) => e.toJson()).toList(),
      'important_notification': instance.importantNotification?.toJson(),
    };
