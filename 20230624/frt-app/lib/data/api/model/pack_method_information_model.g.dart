// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pack_method_information_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PackMethodInformationModel _$$_PackMethodInformationModelFromJson(
        Map<String, dynamic> json) =>
    _$_PackMethodInformationModel(
      packMethodType: $enumDecodeNullable(
              _$PackMethodTypeEnumMap, json['pack_method_type']) ??
          PackMethodType.individualOrder,
      packMethodTypeName: json['pack_method_type_name'] as String? ?? '',
      packingFeeRate: json['packing_fee_rate'] as int? ?? 0,
    );

Map<String, dynamic> _$$_PackMethodInformationModelToJson(
        _$_PackMethodInformationModel instance) =>
    <String, dynamic>{
      'pack_method_type': _$PackMethodTypeEnumMap[instance.packMethodType]!,
      'pack_method_type_name': instance.packMethodTypeName,
      'packing_fee_rate': instance.packingFeeRate,
    };

const _$PackMethodTypeEnumMap = {
  PackMethodType.individualOrder: '0',
  PackMethodType.multipleOrder: '1',
  PackMethodType.collectivelyPacked: '2',
  PackMethodType.none: '',
};
