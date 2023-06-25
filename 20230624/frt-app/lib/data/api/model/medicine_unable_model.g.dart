// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine_unable_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicineUnableModel _$$_MedicineUnableModelFromJson(
        Map<String, dynamic> json) =>
    _$_MedicineUnableModel(
      effect: json['effect'] as String? ?? '',
      abuseLimitedFlag: json['abuse_limited_flag'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['abuse_limited_flag'] as String),
    );

Map<String, dynamic> _$$_MedicineUnableModelToJson(
        _$_MedicineUnableModel instance) =>
    <String, dynamic>{
      'effect': instance.effect,
      'abuse_limited_flag':
          const StringToBooleanConverter().toJson(instance.abuseLimitedFlag),
    };
