// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryTimeModel _$$_DeliveryTimeModelFromJson(Map<String, dynamic> json) =>
    _$_DeliveryTimeModel(
      deliveryDates: (json['delivery_dates'] as List<dynamic>?)
              ?.map(
                  (e) => DeliveryDateModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DeliveryDateModel>[],
      deliveryFinishHour: json['delivery_finish_hour'] as String? ?? '',
      deliveryFinishMinute: json['delivery_finish_minute'] as String? ?? '',
      deliveryStartHour: json['delivery_start_hour'] as String? ?? '',
      deliveryStartMinute: json['delivery_start_minute'] as String? ?? '',
      isFulfillmentTypeLocker:
          json['is_fulfillment_type_locker'] as bool? ?? false,
      isFulfillmentTypePackageDrop:
          json['is_fulfillment_type_package_drop'] as bool? ?? false,
      isFulfillmentTypeShop: json['is_fulfillment_type_shop'] as bool? ?? false,
      receiptLocationAdditionalText:
          json['receipt_location_additional_text'] as String? ?? '',
      receiptLocationContentsUrl:
          json['receipt_location_contents_url'] as String? ?? '',
      isEnableNoContact: json['is_enable_no_contact'] as bool? ?? false,
    );

Map<String, dynamic> _$$_DeliveryTimeModelToJson(
        _$_DeliveryTimeModel instance) =>
    <String, dynamic>{
      'delivery_dates': instance.deliveryDates.map((e) => e.toJson()).toList(),
      'delivery_finish_hour': instance.deliveryFinishHour,
      'delivery_finish_minute': instance.deliveryFinishMinute,
      'delivery_start_hour': instance.deliveryStartHour,
      'delivery_start_minute': instance.deliveryStartMinute,
      'is_fulfillment_type_locker': instance.isFulfillmentTypeLocker,
      'is_fulfillment_type_package_drop': instance.isFulfillmentTypePackageDrop,
      'is_fulfillment_type_shop': instance.isFulfillmentTypeShop,
      'receipt_location_additional_text':
          instance.receiptLocationAdditionalText,
      'receipt_location_contents_url': instance.receiptLocationContentsUrl,
      'is_enable_no_contact': instance.isEnableNoContact,
    };
