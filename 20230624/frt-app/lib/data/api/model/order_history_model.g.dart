// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderHistoryModel _$$_OrderHistoryModelFromJson(Map<String, dynamic> json) =>
    _$_OrderHistoryModel(
      disableDeliveryPlanChangeStartFlag:
          json['disable_delivery_plan_change_start_flag'] == null
              ? false
              : const StringToBooleanConverter().fromJson(
                  json['disable_delivery_plan_change_start_flag'] as String),
      orderId: json['order_id'] as String? ?? '',
      reserveStatus:
          $enumDecodeNullable(_$ReserveStatusEnumMap, json['reserve_status']) ??
              ReserveStatus.notReservedOrder,
    );

Map<String, dynamic> _$$_OrderHistoryModelToJson(
        _$_OrderHistoryModel instance) =>
    <String, dynamic>{
      'disable_delivery_plan_change_start_flag':
          const StringToBooleanConverter()
              .toJson(instance.disableDeliveryPlanChangeStartFlag),
      'order_id': instance.orderId,
      'reserve_status': _$ReserveStatusEnumMap[instance.reserveStatus]!,
    };

const _$ReserveStatusEnumMap = {
  ReserveStatus.notReservedOrder: '0',
  ReserveStatus.onlyReservedOrder: '1',
  ReserveStatus.hasReservedOrder: '2',
  ReserveStatus.none: '',
};
