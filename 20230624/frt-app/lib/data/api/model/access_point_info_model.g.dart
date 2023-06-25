// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_point_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccessPointInfoModel _$$_AccessPointInfoModelFromJson(
        Map<String, dynamic> json) =>
    _$_AccessPointInfoModel(
      iynsApiBaseUrl: json['iyns_api_base_url'] as String? ?? '',
      iynsBaseUrl: json['iyns_base_url'] as String? ?? '',
      iynsAuthBaseUrl: json['iyns_auth_base_url'] as String? ?? '',
      iynsAccountBaseUrl: json['iyns_account_base_url'] as String? ?? '',
      iynsMileProgramBaseUrl:
          json['iyns_mile_program_base_url'] as String? ?? '',
    );

Map<String, dynamic> _$$_AccessPointInfoModelToJson(
        _$_AccessPointInfoModel instance) =>
    <String, dynamic>{
      'iyns_api_base_url': instance.iynsApiBaseUrl,
      'iyns_base_url': instance.iynsBaseUrl,
      'iyns_auth_base_url': instance.iynsAuthBaseUrl,
      'iyns_account_base_url': instance.iynsAccountBaseUrl,
      'iyns_mile_program_base_url': instance.iynsMileProgramBaseUrl,
    };
