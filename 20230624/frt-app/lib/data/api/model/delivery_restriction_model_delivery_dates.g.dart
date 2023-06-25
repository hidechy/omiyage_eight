// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_restriction_model_delivery_dates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryRestrictionModelDeliveryDates
    _$$_DeliveryRestrictionModelDeliveryDatesFromJson(
            Map<String, dynamic> json) =>
        _$_DeliveryRestrictionModelDeliveryDates(
          epochDeliveryDate: json['delivery_date'] == null
              ? 0
              : const StringToEpochTimeConverter()
                  .fromJson(json['delivery_date'] as String),
          isDeliveryDelay: json['is_delivery_delay'] as bool? ?? false,
          isDeliveryClosed: json['is_delivery_closed'] as bool? ?? false,
        );

Map<String, dynamic> _$$_DeliveryRestrictionModelDeliveryDatesToJson(
        _$_DeliveryRestrictionModelDeliveryDates instance) =>
    <String, dynamic>{
      'delivery_date':
          const StringToEpochTimeConverter().toJson(instance.epochDeliveryDate),
      'is_delivery_delay': instance.isDeliveryDelay,
      'is_delivery_closed': instance.isDeliveryClosed,
    };
