// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'important_notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImportantNotificationModel _$$_ImportantNotificationModelFromJson(
        Map<String, dynamic> json) =>
    _$_ImportantNotificationModel(
      isDeliveryControlOneWeek:
          json['is_delivery_control_one_week'] as bool? ?? false,
      areaCode: json['area_code'] as String? ?? '',
    );

Map<String, dynamic> _$$_ImportantNotificationModelToJson(
        _$_ImportantNotificationModel instance) =>
    <String, dynamic>{
      'is_delivery_control_one_week': instance.isDeliveryControlOneWeek,
      'area_code': instance.areaCode,
    };
