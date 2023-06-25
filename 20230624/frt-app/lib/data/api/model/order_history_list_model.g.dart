// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderHistoryListModel _$$_OrderHistoryListModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrderHistoryListModel(
      orderId: json['order_id'] as int? ?? 0,
      oldOrderId: json['old_order_id'] as int?,
      status: $enumDecodeNullable(_$OrderStatusEnumMap, json['status']) ??
          OrderStatus.undeliveried,
      paymentMethod: $enumDecodeNullable(
              _$PaymentMethodTypeEnumMap, json['payment_method']) ??
          PaymentMethodType.cashOnDelivery,
      reserveStatus:
          $enumDecodeNullable(_$ReserveStatusEnumMap, json['reserve_status']) ??
              ReserveStatus.notReservedOrder,
      cancelPriceFlag: json['cancel_price_flag'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['cancel_price_flag'] as String),
      fulfillmentType: $enumDecodeNullable(
              _$CartFulfillmentTypeEnumMap, json['fulfillment_type']) ??
          CartFulfillmentType.normal,
      epochDeliveryPlanStartDatetime:
          json['delivery_plan_start_datetime'] == null
              ? 0
              : const StringToEpochTimeConverter()
                  .fromJson(json['delivery_plan_start_datetime'] as String),
      epochDeliveryPlanFinishDatetime:
          json['delivery_plan_finish_datetime'] == null
              ? 0
              : const StringToEpochTimeConverter()
                  .fromJson(json['delivery_plan_finish_datetime'] as String),
      isDisplayReceiptLocationName:
          json['is_display_receipt_location_name'] as bool? ?? false,
      receiptLocationContentsUrl:
          json['receipt_location_contents_url'] as String? ?? '',
      receiptLocationName: json['receipt_location_name'] as String? ?? '',
      shopName: json['shop_name'] as String? ?? '',
      totalPrice: json['total_price'] as int? ?? 0,
      nanacoPointUsePoint: json['nanaco_point_use_point'] as int? ?? 0,
      isChangeOrderLoginShop:
          json['is_change_order_login_shop'] as bool? ?? false,
      epochCancelDatetime: json['cancel_datetime'] == null
          ? 0
          : const StringToEpochTimeConverter()
              .fromJson(json['cancel_datetime'] as String),
      epochCancelClosingDatetime: json['cancel_closing_datetime'] == null
          ? 0
          : const StringToEpochTimeConverter()
              .fromJson(json['cancel_closing_datetime'] as String),
      epochChangeClosingDatetime: json['change_closing_datetimt'] == null
          ? 0
          : const StringToEpochTimeConverter()
              .fromJson(json['change_closing_datetimt'] as String),
      epochAdditionalOrderClosingDatetime:
          const NullableStringToEpochTimeConverter()
              .fromJson(json['additional_order_closing_datetime'] as String?),
      epochAdditionalOrderStartDatetime:
          const NullableStringToEpochTimeConverter()
              .fromJson(json['additional_order_start_datetime'] as String?),
      isNotSelectedFulfillment:
          json['is_not_selected_fulfillment'] as bool? ?? false,
      isReserveOrder: json['is_reserve_order'] as bool? ?? false,
      isAdditionalOrderTerm: json['is_additional_order_term'] as bool? ?? false,
      isAdditionalOrderLoginShop:
          json['is_additional_order_login_shop'] as bool? ?? false,
      deliveryQuestionUrl: json['delivery_question_url'] as String? ?? '',
      isBeforeChangeClosingDatetime:
          json['is_before_change_closing_datetime'] as bool? ?? false,
      isBeforeDeliveryQuestionAnswerExpired:
          json['is_before_delivery_question_answer_expired'] as bool? ?? false,
      isBeforeAdditionalOrderClosingDatetime:
          json['is_before_additional_order_closing_datetime'] as bool? ?? false,
      isOrderLimited: json['is_order_limited'] as bool? ?? false,
      noDeliveryFlg: json['no_delivery_flg'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['no_delivery_flg'] as String),
      isRegularShipmentOrder:
          json['is_regular_shipment_order'] as bool? ?? false,
      isEnableOrderCancel: json['is_enable_order_cancel'] as bool? ?? false,
      regularShipmentDiscountRate:
          json['regular_shipment_discount_rate'] as int? ?? 0,
      deliveryStatusConfirmationScreenUrl:
          json['delivery_status_confirmation_screen_url'] as String? ?? '',
      products: (json['products'] as List<dynamic>?)
              ?.map((e) =>
                  OrderHistoryProductsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <OrderHistoryProductsModel>[],
    );

Map<String, dynamic> _$$_OrderHistoryListModelToJson(
        _$_OrderHistoryListModel instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'old_order_id': instance.oldOrderId,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'payment_method': _$PaymentMethodTypeEnumMap[instance.paymentMethod]!,
      'reserve_status': _$ReserveStatusEnumMap[instance.reserveStatus]!,
      'cancel_price_flag':
          const StringToBooleanConverter().toJson(instance.cancelPriceFlag),
      'fulfillment_type':
          _$CartFulfillmentTypeEnumMap[instance.fulfillmentType]!,
      'delivery_plan_start_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochDeliveryPlanStartDatetime),
      'delivery_plan_finish_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochDeliveryPlanFinishDatetime),
      'is_display_receipt_location_name': instance.isDisplayReceiptLocationName,
      'receipt_location_contents_url': instance.receiptLocationContentsUrl,
      'receipt_location_name': instance.receiptLocationName,
      'shop_name': instance.shopName,
      'total_price': instance.totalPrice,
      'nanaco_point_use_point': instance.nanacoPointUsePoint,
      'is_change_order_login_shop': instance.isChangeOrderLoginShop,
      'cancel_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochCancelDatetime),
      'cancel_closing_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochCancelClosingDatetime),
      'change_closing_datetimt': const StringToEpochTimeConverter()
          .toJson(instance.epochChangeClosingDatetime),
      'additional_order_closing_datetime':
          const NullableStringToEpochTimeConverter()
              .toJson(instance.epochAdditionalOrderClosingDatetime),
      'additional_order_start_datetime':
          const NullableStringToEpochTimeConverter()
              .toJson(instance.epochAdditionalOrderStartDatetime),
      'is_not_selected_fulfillment': instance.isNotSelectedFulfillment,
      'is_reserve_order': instance.isReserveOrder,
      'is_additional_order_term': instance.isAdditionalOrderTerm,
      'is_additional_order_login_shop': instance.isAdditionalOrderLoginShop,
      'delivery_question_url': instance.deliveryQuestionUrl,
      'is_before_change_closing_datetime':
          instance.isBeforeChangeClosingDatetime,
      'is_before_delivery_question_answer_expired':
          instance.isBeforeDeliveryQuestionAnswerExpired,
      'is_before_additional_order_closing_datetime':
          instance.isBeforeAdditionalOrderClosingDatetime,
      'is_order_limited': instance.isOrderLimited,
      'no_delivery_flg':
          const StringToBooleanConverter().toJson(instance.noDeliveryFlg),
      'is_regular_shipment_order': instance.isRegularShipmentOrder,
      'is_enable_order_cancel': instance.isEnableOrderCancel,
      'regular_shipment_discount_rate': instance.regularShipmentDiscountRate,
      'delivery_status_confirmation_screen_url':
          instance.deliveryStatusConfirmationScreenUrl,
      'products': instance.products.map((e) => e.toJson()).toList(),
    };

const _$OrderStatusEnumMap = {
  OrderStatus.undeliveried: '0',
  OrderStatus.deliveried: '1',
  OrderStatus.recordSales: '2',
  OrderStatus.instructed: '3',
  OrderStatus.takeOut: '4',
  OrderStatus.creditError: '5',
  OrderStatus.autoCancel: '6',
  OrderStatus.undeliverableAll: '7',
  OrderStatus.undeliverablePart: '8',
  OrderStatus.none: '',
};

const _$PaymentMethodTypeEnumMap = {
  PaymentMethodType.cashOnDelivery: '1',
  PaymentMethodType.creditCard: '2',
  PaymentMethodType.useFullPoints: '4',
  PaymentMethodType.none: '',
};

const _$ReserveStatusEnumMap = {
  ReserveStatus.notReservedOrder: '0',
  ReserveStatus.onlyReservedOrder: '1',
  ReserveStatus.hasReservedOrder: '2',
  ReserveStatus.none: '',
};

const _$CartFulfillmentTypeEnumMap = {
  CartFulfillmentType.normal: '01',
  CartFulfillmentType.remoteNormal: '02',
  CartFulfillmentType.shopReceipt: '03',
  CartFulfillmentType.placement: '04',
  CartFulfillmentType.sevenAndILockerReceipt: '05',
  CartFulfillmentType.shopLockerReceipt: '06',
  CartFulfillmentType.none: '',
};
