// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autolock_mansion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AutoLockMansionModel _$$_AutoLockMansionModelFromJson(
        Map<String, dynamic> json) =>
    _$_AutoLockMansionModel(
      livingStatus: $enumDecodeNullable(
              _$LivingStatusTypeEnumMap, json['living_status']) ??
          LivingStatusType.unconfirmed,
      deliveryAutolockMansion: json['delivery_autolock_mansion'] == null
          ? null
          : DeliveryAutolockMansionModel.fromJson(
              json['delivery_autolock_mansion'] as Map<String, dynamic>),
      existsMansionAttacklist:
          json['exists_mansion_attacklist'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AutoLockMansionModelToJson(
        _$_AutoLockMansionModel instance) =>
    <String, dynamic>{
      'living_status': _$LivingStatusTypeEnumMap[instance.livingStatus]!,
      'delivery_autolock_mansion': instance.deliveryAutolockMansion?.toJson(),
      'exists_mansion_attacklist': instance.existsMansionAttacklist,
    };

const _$LivingStatusTypeEnumMap = {
  LivingStatusType.unconfirmed: '0',
  LivingStatusType.confirmed: '1',
  LivingStatusType.duringConfirmation: '2',
  LivingStatusType.none: '',
};

_$_DeliveryAutolockMansionModel _$$_DeliveryAutolockMansionModelFromJson(
        Map<String, dynamic> json) =>
    _$_DeliveryAutolockMansionModel(
      mansionId: json['mansion_id'] as String? ?? '',
      mansionName: json['mansion_name'] as String? ?? '',
      negotiationStatus: $enumDecodeNullable(
              _$NegotiationStatusTypeEnumMap, json['negotiation_status']) ??
          NegotiationStatusType.none,
      prefectureName: json['prefecture_name'] as String? ?? '',
      cityName: json['city_name'] as String? ?? '',
      townName: json['town_name'] as String? ?? '',
      chomeName: json['chome_name'] as String? ?? '',
      addressDetail: json['address_detail'] as String? ?? '',
    );

Map<String, dynamic> _$$_DeliveryAutolockMansionModelToJson(
        _$_DeliveryAutolockMansionModel instance) =>
    <String, dynamic>{
      'mansion_id': instance.mansionId,
      'mansion_name': instance.mansionName,
      'negotiation_status':
          _$NegotiationStatusTypeEnumMap[instance.negotiationStatus]!,
      'prefecture_name': instance.prefectureName,
      'city_name': instance.cityName,
      'town_name': instance.townName,
      'chome_name': instance.chomeName,
      'address_detail': instance.addressDetail,
    };

const _$NegotiationStatusTypeEnumMap = {
  NegotiationStatusType.notNegotiated: '1',
  NegotiationStatusType.duringNegotiation: '2',
  NegotiationStatusType.enablePackageDrop: '3',
  NegotiationStatusType.unablePackageDrop: '4',
  NegotiationStatusType.reNegotiation: '5',
  NegotiationStatusType.none: '',
};
