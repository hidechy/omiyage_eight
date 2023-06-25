// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'old_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OldOrderModel _$$_OldOrderModelFromJson(Map<String, dynamic> json) =>
    _$_OldOrderModel(
      isNanacoPointUse: json['is_nanaco_point_use'] as bool? ?? false,
      nanacoPointUsePoint: json['nanaco_point_use_point'] as int? ?? 0,
      oldOrderId: json['old_order_id'] as int? ?? 0,
    );

Map<String, dynamic> _$$_OldOrderModelToJson(_$_OldOrderModel instance) =>
    <String, dynamic>{
      'is_nanaco_point_use': instance.isNanacoPointUse,
      'nanaco_point_use_point': instance.nanacoPointUsePoint,
      'old_order_id': instance.oldOrderId,
    };
