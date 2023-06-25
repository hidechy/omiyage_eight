// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regular_shipment_delivery_schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegularShipmentDeliveryScheduleModel
    _$$_RegularShipmentDeliveryScheduleModelFromJson(
            Map<String, dynamic> json) =>
        _$_RegularShipmentDeliveryScheduleModel(
          deliveryDate: json['delivery_date'] as String? ?? '',
          deliveryStartTime: json['delivery_start_time'] as String? ?? '',
          deliveryFinishTime: json['delivery_finish_time'] as String? ?? '',
          epochFrontCancelClosingDatetime:
              json['front_cancel_closing_datetime'] == null
                  ? 0
                  : const StringToEpochTimeConverter().fromJson(
                      json['front_cancel_closing_datetime'] as String),
          epochAdditionalOrderStartDatetime:
              json['additional_order_start_datetime'] == null
                  ? 0
                  : const StringToEpochTimeConverter().fromJson(
                      json['additional_order_start_datetime'] as String),
          epochChangeOrderClosingDatetime:
              json['change_order_closing_datetime'] == null
                  ? 0
                  : const StringToEpochTimeConverter().fromJson(
                      json['change_order_closing_datetime'] as String),
          isFrontCancel: json['is_front_cancel'] as bool? ?? false,
          isShopCancel: json['is_shop_cancel'] as bool? ?? false,
          isEnableFrontCancel: json['is_enable_front_cancel'] as bool? ?? false,
          isLastSchedule: json['is_last_schedule'] as bool? ?? false,
          hasCreatedOrder: json['has_created_order'] as bool? ?? false,
          orderId: json['order_id'] as String? ?? '',
          isAuthoriError: json['is_authori_error'] as bool? ?? false,
          isEnableAdditionalOrderTerm:
              json['is_enable_additional_order_term'] as bool? ?? false,
        );

Map<String, dynamic> _$$_RegularShipmentDeliveryScheduleModelToJson(
        _$_RegularShipmentDeliveryScheduleModel instance) =>
    <String, dynamic>{
      'delivery_date': instance.deliveryDate,
      'delivery_start_time': instance.deliveryStartTime,
      'delivery_finish_time': instance.deliveryFinishTime,
      'front_cancel_closing_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochFrontCancelClosingDatetime),
      'additional_order_start_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochAdditionalOrderStartDatetime),
      'change_order_closing_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochChangeOrderClosingDatetime),
      'is_front_cancel': instance.isFrontCancel,
      'is_shop_cancel': instance.isShopCancel,
      'is_enable_front_cancel': instance.isEnableFrontCancel,
      'is_last_schedule': instance.isLastSchedule,
      'has_created_order': instance.hasCreatedOrder,
      'order_id': instance.orderId,
      'is_authori_error': instance.isAuthoriError,
      'is_enable_additional_order_term': instance.isEnableAdditionalOrderTerm,
    };
