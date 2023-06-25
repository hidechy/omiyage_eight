// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regular_shipment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegularShipmentModel _$$_RegularShipmentModelFromJson(
        Map<String, dynamic> json) =>
    _$_RegularShipmentModel(
      regularShipmentApplyId: json['regular_shipment_apply_id'] as int? ?? 0,
      shopCode: json['shop_code'] as String? ?? '',
      epochInitAppDatetime: json['init_app_datetime'] == null
          ? 0
          : const StringToEpochTimeConverter()
              .fromJson(json['init_app_datetime'] as String),
      epochAppDatetime: json['app_datetime'] == null
          ? 0
          : const StringToEpochTimeConverter()
              .fromJson(json['app_datetime'] as String),
      deliveryWeekDiv: $enumDecodeNullable(
              _$RegularShipmentDeliveryWeekDivEnumMap,
              json['delivery_week_div']) ??
          RegularShipmentDeliveryWeekDiv.monday,
      deliveryStartTime: json['delivery_start_time'] as String? ?? '',
      deliveryFinishTime: json['delivery_finish_time'] as String? ?? '',
      deliveryTimeId: json['delivery_time_id'] as String? ?? '',
      initDeliveryScheduleDate:
          json['init_delivery_schedule_date'] as String? ?? '',
      paygentClientId: json['paygent_client_id'] as String? ?? '',
      paygentClientCreditCardId:
          json['paygent_client_credit_card_id'] as String? ?? '',
      hasAuthoryErrorOrder: json['has_authory_error_order'] as bool? ?? false,
      deliverySchedules: (json['delivery_schedules'] as List<dynamic>?)
              ?.map((e) => RegularShipmentDeliveryScheduleModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const <RegularShipmentDeliveryScheduleModel>[],
      isCanceled: json['is_canceled'] as bool? ?? false,
      regularShipmentApplyDiscountRate:
          json['regular_shipment_apply_discount_rate'] as int? ?? 0,
      regularShipmentApplyDiscountPrice:
          json['regular_shipment_apply_discount_price'] as int? ?? 0,
      productTotalPrice: json['product_total_price'] as int? ?? 0,
      productTotalPriceAfterRegularShipmentDiscount:
          json['product_total_price_after_regular_shipment_discount'] as int? ??
              0,
    );

Map<String, dynamic> _$$_RegularShipmentModelToJson(
        _$_RegularShipmentModel instance) =>
    <String, dynamic>{
      'regular_shipment_apply_id': instance.regularShipmentApplyId,
      'shop_code': instance.shopCode,
      'init_app_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochInitAppDatetime),
      'app_datetime':
          const StringToEpochTimeConverter().toJson(instance.epochAppDatetime),
      'delivery_week_div':
          _$RegularShipmentDeliveryWeekDivEnumMap[instance.deliveryWeekDiv]!,
      'delivery_start_time': instance.deliveryStartTime,
      'delivery_finish_time': instance.deliveryFinishTime,
      'delivery_time_id': instance.deliveryTimeId,
      'init_delivery_schedule_date': instance.initDeliveryScheduleDate,
      'paygent_client_id': instance.paygentClientId,
      'paygent_client_credit_card_id': instance.paygentClientCreditCardId,
      'has_authory_error_order': instance.hasAuthoryErrorOrder,
      'delivery_schedules':
          instance.deliverySchedules.map((e) => e.toJson()).toList(),
      'is_canceled': instance.isCanceled,
      'regular_shipment_apply_discount_rate':
          instance.regularShipmentApplyDiscountRate,
      'regular_shipment_apply_discount_price':
          instance.regularShipmentApplyDiscountPrice,
      'product_total_price': instance.productTotalPrice,
      'product_total_price_after_regular_shipment_discount':
          instance.productTotalPriceAfterRegularShipmentDiscount,
    };

const _$RegularShipmentDeliveryWeekDivEnumMap = {
  RegularShipmentDeliveryWeekDiv.monday: '01_MON',
  RegularShipmentDeliveryWeekDiv.tuesday: '02_TUE',
  RegularShipmentDeliveryWeekDiv.wednesday: '03_WED',
  RegularShipmentDeliveryWeekDiv.thursday: '04_THU',
  RegularShipmentDeliveryWeekDiv.friday: '05_FRI',
  RegularShipmentDeliveryWeekDiv.saturday: '06_SAT',
  RegularShipmentDeliveryWeekDiv.sunday: '07_SUN',
  RegularShipmentDeliveryWeekDiv.none: '',
};
