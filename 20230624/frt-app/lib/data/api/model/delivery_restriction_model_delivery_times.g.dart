// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_restriction_model_delivery_times.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryRestrictionModelDeliveryTimes
    _$$_DeliveryRestrictionModelDeliveryTimesFromJson(
            Map<String, dynamic> json) =>
        _$_DeliveryRestrictionModelDeliveryTimes(
          deliveryClosingTime: json['delivery_closing_time'] as String? ?? '',
          isPreviousDay: json['is_previous_day'] as bool? ?? false,
          deliveryStartTime: json['delivery_start_time'] as String? ?? '',
          deliveryFinishTime: json['delivery_finish_time'] as String? ?? '',
          deliveryDates: (json['delivery_dates'] as List<dynamic>?)
                  ?.map((e) => DeliveryRestrictionModelDeliveryDates.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              const <DeliveryRestrictionModelDeliveryDates>[],
        );

Map<String, dynamic> _$$_DeliveryRestrictionModelDeliveryTimesToJson(
        _$_DeliveryRestrictionModelDeliveryTimes instance) =>
    <String, dynamic>{
      'delivery_closing_time': instance.deliveryClosingTime,
      'is_previous_day': instance.isPreviousDay,
      'delivery_start_time': instance.deliveryStartTime,
      'delivery_finish_time': instance.deliveryFinishTime,
      'delivery_dates': instance.deliveryDates.map((e) => e.toJson()).toList(),
    };
