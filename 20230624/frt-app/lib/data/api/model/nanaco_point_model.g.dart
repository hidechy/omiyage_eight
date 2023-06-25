// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nanaco_point_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NanacoPointModel _$$_NanacoPointModelFromJson(Map<String, dynamic> json) =>
    _$_NanacoPointModel(
      nanacoPointUnitPoint: json['nanaco_point_unit_point'] as int? ?? 0,
      nanacoPointPrice: json['nanaco_point_price'] as int? ?? 0,
      nanacoPointCarryOver: json['nanaco_point_carry_over'] as int? ?? 0,
      nanacoPointOriginalPrice:
          json['nanaco_point_original_price'] as int? ?? 0,
      nanacoPointTotalPoint: json['nanaco_point_total_point'] as int? ?? 0,
    );

Map<String, dynamic> _$$_NanacoPointModelToJson(_$_NanacoPointModel instance) =>
    <String, dynamic>{
      'nanaco_point_unit_point': instance.nanacoPointUnitPoint,
      'nanaco_point_price': instance.nanacoPointPrice,
      'nanaco_point_carry_over': instance.nanacoPointCarryOver,
      'nanaco_point_original_price': instance.nanacoPointOriginalPrice,
      'nanaco_point_total_point': instance.nanacoPointTotalPoint,
    };
