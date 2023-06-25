// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'akachanhonpo_store_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AkachanhonpoStoreInfoModel _$$_AkachanhonpoStoreInfoModelFromJson(
        Map<String, dynamic> json) =>
    _$_AkachanhonpoStoreInfoModel(
      area: json['area'] as String? ?? '',
      stores: (json['stores'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$_AkachanhonpoStoreInfoModelToJson(
        _$_AkachanhonpoStoreInfoModel instance) =>
    <String, dynamic>{
      'area': instance.area,
      'stores': instance.stores,
    };
