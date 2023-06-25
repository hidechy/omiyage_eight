// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shops_deliverables_get_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopsDeliverablesGetResponseModel
    _$$_ShopsDeliverablesGetResponseModelFromJson(Map<String, dynamic> json) =>
        _$_ShopsDeliverablesGetResponseModel(
          isDeliverable: json['is_deliverable'] as bool? ?? false,
          shopCode: json['shop_code'] as String? ?? '',
        );

Map<String, dynamic> _$$_ShopsDeliverablesGetResponseModelToJson(
        _$_ShopsDeliverablesGetResponseModel instance) =>
    <String, dynamic>{
      'is_deliverable': instance.isDeliverable,
      'shop_code': instance.shopCode,
    };
