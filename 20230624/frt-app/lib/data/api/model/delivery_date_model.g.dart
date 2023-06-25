// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_date_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryDateModel _$$_DeliveryDateModelFromJson(Map<String, dynamic> json) =>
    _$_DeliveryDateModel(
      packMethodTypeNames: (json['pack_method_type_names'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      acceptedOrderTotalPrice: json['accepted_order_total_price'] as int? ?? 0,
      fulfillmentDeliveryPrice: json['fulfillment_delivery_price'] as int? ?? 0,
      deliveryDate: json['delivery_date'] as String? ?? '',
      deliveryTimeId: json['delivery_time_id'] as String? ?? '',
      epochAdditionalOrderClosingDatetime:
          json['additional_order_closing_datetime'] == null
              ? 0
              : const StringToEpochTimeConverter().fromJson(
                  json['additional_order_closing_datetime'] as String),
      epochChangeOrderClosingDatetime:
          json['change_order_closing_datetime'] == null
              ? 0
              : const StringToEpochTimeConverter()
                  .fromJson(json['change_order_closing_datetime'] as String),
      epochCancelOrderClosingDatetime:
          json['cancel_order_closing_datetime'] == null
              ? 0
              : const StringToEpochTimeConverter()
                  .fromJson(json['cancel_order_closing_datetime'] as String),
      epochOrderDeliveryPlanChangeClosingDatetime:
          json['order_delivery_plan_change_closing_datetime'] == null
              ? 0
              : const StringToEpochTimeConverter().fromJson(
                  json['order_delivery_plan_change_closing_datetime']
                      as String),
      hasAcceptedOrder: json['has_accepted_order'] as bool? ?? false,
      hasOldOrder: json['has_old_order'] as bool? ?? false,
      isDeliveryPlanChangeOrign:
          json['is_delivery_plan_change_orign'] as bool? ?? false,
      isEnableDeliveryPlan: json['is_enable_delivery_plan'] as bool? ?? false,
      isEnableDeliveryPlanMixPackMethodOrder:
          json['is_enable_delivery_plan_mix_pack_method_order'] as bool? ??
              false,
      isEventHandleDeliveryPlanChange:
          json['is_event_handle_delivery_plan_change'] as bool? ?? false,
      isEventHandleNewOrder:
          json['is_event_handle_new_order'] as bool? ?? false,
      isEventHandleChangeOrder:
          json['is_event_handle_change_order'] as bool? ?? false,
      isWarnRemainingOrder: json['is_warn_remaining_order'] as bool? ?? false,
      orderHistory: json['order_history'] == null
          ? null
          : OrderHistoryModel.fromJson(
              json['order_history'] as Map<String, dynamic>),
      shopCode: json['shop_code'] as String? ?? '',
      isEventHandleAdditionalOrder:
          json['is_event_handle_additional_order'] as bool? ?? false,
      isEnableEvent: json['is_enable_event'] as bool? ?? false,
      orderDisabledReason: $enumDecodeNullable(
              _$OrderDisabledReasonEnumMap, json['order_disabled_reason']) ??
          OrderDisabledReason.closingDate,
      acceptedOrderCount: json['accepted_order_count'] as int? ?? 0,
      isEnableDeliveryPlanClosingDatetimeExpired:
          json['is_enable_delivery_plan_closing_datetime_expired'] as bool? ??
              false,
      isEnableDeliveryPlanDeliveryRestriction:
          json['is_enable_delivery_plan_delivery_restriction'] as bool? ??
              false,
      isEnableDeliveryPlanMaxOrder:
          json['is_enable_delivery_plan_max_order'] as bool? ?? false,
      isEnableDeliveryPlanChangeAcceptedOrder:
          json['is_enable_delivery_plan_change_accepted_order'] as bool? ??
              false,
      isEnableDeliveryPlanChangeMixStockSaleDate:
          json['is_enable_delivery_plan_change_mix_stock_sale_date'] as bool? ??
              false,
      isEnableDeliveryPlanReserveReceiptLimited:
          json['is_enable_delivery_plan_reserve_receipt_limited'] as bool? ??
              false,
      isRegularShipmentOrder:
          json['is_regular_shipment_order'] as bool? ?? false,
      acceptedOrderSalePrice: json['accepted_order_sale_price'] as int? ?? 0,
      isClosingPreviousDay: json['is_closing_previous_day'] as bool? ?? false,
      isEnableOrderAdd: json['is_enable_order_add'] as bool? ?? false,
      isMinDeliveryPriceHighlight:
          json['is_min_delivery_price_highlight'] as bool? ?? false,
      deliveryScheduleStatus: $enumDecodeNullable(
              _$DeliveryScheduleStatusEnumMap,
              json['delivery_schedule_status']) ??
          DeliveryScheduleStatus.closedAccept,
    );

Map<String, dynamic> _$$_DeliveryDateModelToJson(
        _$_DeliveryDateModel instance) =>
    <String, dynamic>{
      'pack_method_type_names': instance.packMethodTypeNames,
      'accepted_order_total_price': instance.acceptedOrderTotalPrice,
      'fulfillment_delivery_price': instance.fulfillmentDeliveryPrice,
      'delivery_date': instance.deliveryDate,
      'delivery_time_id': instance.deliveryTimeId,
      'additional_order_closing_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochAdditionalOrderClosingDatetime),
      'change_order_closing_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochChangeOrderClosingDatetime),
      'cancel_order_closing_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochCancelOrderClosingDatetime),
      'order_delivery_plan_change_closing_datetime':
          const StringToEpochTimeConverter()
              .toJson(instance.epochOrderDeliveryPlanChangeClosingDatetime),
      'has_accepted_order': instance.hasAcceptedOrder,
      'has_old_order': instance.hasOldOrder,
      'is_delivery_plan_change_orign': instance.isDeliveryPlanChangeOrign,
      'is_enable_delivery_plan': instance.isEnableDeliveryPlan,
      'is_enable_delivery_plan_mix_pack_method_order':
          instance.isEnableDeliveryPlanMixPackMethodOrder,
      'is_event_handle_delivery_plan_change':
          instance.isEventHandleDeliveryPlanChange,
      'is_event_handle_new_order': instance.isEventHandleNewOrder,
      'is_event_handle_change_order': instance.isEventHandleChangeOrder,
      'is_warn_remaining_order': instance.isWarnRemainingOrder,
      'order_history': instance.orderHistory?.toJson(),
      'shop_code': instance.shopCode,
      'is_event_handle_additional_order': instance.isEventHandleAdditionalOrder,
      'is_enable_event': instance.isEnableEvent,
      'order_disabled_reason':
          _$OrderDisabledReasonEnumMap[instance.orderDisabledReason]!,
      'accepted_order_count': instance.acceptedOrderCount,
      'is_enable_delivery_plan_closing_datetime_expired':
          instance.isEnableDeliveryPlanClosingDatetimeExpired,
      'is_enable_delivery_plan_delivery_restriction':
          instance.isEnableDeliveryPlanDeliveryRestriction,
      'is_enable_delivery_plan_max_order':
          instance.isEnableDeliveryPlanMaxOrder,
      'is_enable_delivery_plan_change_accepted_order':
          instance.isEnableDeliveryPlanChangeAcceptedOrder,
      'is_enable_delivery_plan_change_mix_stock_sale_date':
          instance.isEnableDeliveryPlanChangeMixStockSaleDate,
      'is_enable_delivery_plan_reserve_receipt_limited':
          instance.isEnableDeliveryPlanReserveReceiptLimited,
      'is_regular_shipment_order': instance.isRegularShipmentOrder,
      'accepted_order_sale_price': instance.acceptedOrderSalePrice,
      'is_closing_previous_day': instance.isClosingPreviousDay,
      'is_enable_order_add': instance.isEnableOrderAdd,
      'is_min_delivery_price_highlight': instance.isMinDeliveryPriceHighlight,
      'delivery_schedule_status':
          _$DeliveryScheduleStatusEnumMap[instance.deliveryScheduleStatus]!,
    };

const _$OrderDisabledReasonEnumMap = {
  OrderDisabledReason.closingDate: '1',
  OrderDisabledReason.holidayOrTraffic: '2',
  OrderDisabledReason.upperLimit: '3',
  OrderDisabledReason.differentPackage: '4',
  OrderDisabledReason.limitedReservation: '5',
  OrderDisabledReason.otherOrders: '6',
  OrderDisabledReason.differentInventory: '7',
  OrderDisabledReason.deemedOrders: '8',
  OrderDisabledReason.other: '',
};

const _$DeliveryScheduleStatusEnumMap = {
  DeliveryScheduleStatus.openNormal: '1',
  DeliveryScheduleStatus.openWarn: '2',
  DeliveryScheduleStatus.onOrderNormal: '3',
  DeliveryScheduleStatus.onOrderReserve: '4',
  DeliveryScheduleStatus.onOrderReserveAndAdditional: '5',
  DeliveryScheduleStatus.onOrderRegularShipment: '6',
  DeliveryScheduleStatus.closedOrder: '7',
  DeliveryScheduleStatus.unchangeable: '8',
  DeliveryScheduleStatus.closedAccept: '9',
};
