// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressModel _$$_AddressModelFromJson(Map<String, dynamic> json) =>
    _$_AddressModel(
      postalNumber: json['postal_number'] as String? ?? '',
      prefectureCode: json['prefecture_code'] as String? ?? '',
      prefectureName: json['prefecture_name'] as String? ?? '',
      cityCode: json['city_code'] as String? ?? '',
      cityName: json['city_name'] as String? ?? '',
      townCode: json['town_code'] as String? ?? '',
      townName: json['town_name'] as String? ?? '',
      chomeCode: json['chome_code'] as String? ?? '',
      chomeName: json['chome_name'] as String? ?? '',
      addressDetail: json['address_detail'] as String? ?? '',
      addressDetail2: json['address_detail2'] as String? ?? '',
      isAbolished: json['is_abolished'] as bool? ?? false,
      prefectures: (json['prefectures'] as List<dynamic>?)
              ?.map((e) =>
                  SelectableAddressModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SelectableAddressModel>[],
      cities: (json['cities'] as List<dynamic>?)
              ?.map((e) =>
                  SelectableAddressModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SelectableAddressModel>[],
      towns: (json['towns'] as List<dynamic>?)
              ?.map((e) =>
                  SelectableAddressModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SelectableAddressModel>[],
      chomes: (json['chomes'] as List<dynamic>?)
              ?.map((e) =>
                  SelectableAddressModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SelectableAddressModel>[],
      mansionId: json['mansion_id'] as String? ?? '',
      livingStatus: $enumDecodeNullable(
              _$LivingStatusTypeEnumMap, json['living_status']) ??
          LivingStatusType.unconfirmed,
      packageDropPlace: $enumDecodeNullable(
              _$PackageDropPlaceEnumMap, json['package_drop_place']) ??
          PackageDropPlace.notPackageDropPlace,
      packageDropPlaceDetail:
          json['package_drop_place_detail'] as String? ?? '',
    );

Map<String, dynamic> _$$_AddressModelToJson(_$_AddressModel instance) =>
    <String, dynamic>{
      'postal_number': instance.postalNumber,
      'prefecture_code': instance.prefectureCode,
      'prefecture_name': instance.prefectureName,
      'city_code': instance.cityCode,
      'city_name': instance.cityName,
      'town_code': instance.townCode,
      'town_name': instance.townName,
      'chome_code': instance.chomeCode,
      'chome_name': instance.chomeName,
      'address_detail': instance.addressDetail,
      'address_detail2': instance.addressDetail2,
      'is_abolished': instance.isAbolished,
      'prefectures': instance.prefectures.map((e) => e.toJson()).toList(),
      'cities': instance.cities.map((e) => e.toJson()).toList(),
      'towns': instance.towns.map((e) => e.toJson()).toList(),
      'chomes': instance.chomes.map((e) => e.toJson()).toList(),
      'mansion_id': instance.mansionId,
      'living_status': _$LivingStatusTypeEnumMap[instance.livingStatus]!,
      'package_drop_place':
          _$PackageDropPlaceEnumMap[instance.packageDropPlace]!,
      'package_drop_place_detail': instance.packageDropPlaceDetail,
    };

const _$LivingStatusTypeEnumMap = {
  LivingStatusType.unconfirmed: '0',
  LivingStatusType.confirmed: '1',
  LivingStatusType.duringConfirmation: '2',
  LivingStatusType.none: '',
};

const _$PackageDropPlaceEnumMap = {
  PackageDropPlace.rightAtTheEntrance: '1',
  PackageDropPlace.leftAtTheEntrance: '2',
  PackageDropPlace.underTheIntercom: '3',
  PackageDropPlace.other: '9',
  PackageDropPlace.notPackageDropPlace: '',
};
