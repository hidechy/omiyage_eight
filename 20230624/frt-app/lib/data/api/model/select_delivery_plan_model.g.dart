// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_delivery_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SelectDeliveryPlanModel _$$_SelectDeliveryPlanModelFromJson(
        Map<String, dynamic> json) =>
    _$_SelectDeliveryPlanModel(
      isEntranceRestrictions:
          json['is_entrance_restrictions'] as bool? ?? false,
      isEnableShopReceipt: json['is_enable_shop_receipt'] as bool? ?? false,
      deliveryInformations: (json['delivery_informations'] as List<dynamic>?)
              ?.map((e) =>
                  DeliveryInformationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DeliveryInformationModel>[],
      individualDeliveryPriceInformation:
          json['individual_delivery_price_information'] == null
              ? null
              : IndividualDeliveryPriceInformationModel.fromJson(
                  json['individual_delivery_price_information']
                      as Map<String, dynamic>),
      deliveryAddress: json['delivery_address'] as String? ?? '',
      livingStatus: $enumDecodeNullable(
              _$LivingStatusTypeEnumMap, json['living_status']) ??
          LivingStatusType.unconfirmed,
      isPackPriceTargetCustomer:
          json['is_pack_price_target_customer'] as bool? ?? false,
      deliveryPlanChangeOriginOrderId:
          json['delivery_plan_change_origin_order_id'] as int?,
      isNotSelectedPackMethod:
          json['is_not_selected_pack_method'] as bool? ?? false,
      defaultPackMethodType: $enumDecodeNullable(
              _$PackMethodTypeEnumMap, json['default_pack_method_type']) ??
          PackMethodType.none,
      packMethodInformations:
          (json['pack_method_informations'] as List<dynamic>?)
                  ?.map((e) => PackMethodInformationModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              const <PackMethodInformationModel>[],
      shopCode: json['shop_code'] as String? ?? '',
      shopName: json['shop_name'] as String? ?? '',
      initReceiptPointLatitude:
          (json['init_receipt_point_latitude'] as num?)?.toDouble(),
      initReceiptPointLongitude:
          (json['init_receipt_point_longitude'] as num?)?.toDouble(),
      initReceiptPointId: json['init_receipt_point_id'] as String? ?? '',
    );

Map<String, dynamic> _$$_SelectDeliveryPlanModelToJson(
        _$_SelectDeliveryPlanModel instance) =>
    <String, dynamic>{
      'is_entrance_restrictions': instance.isEntranceRestrictions,
      'is_enable_shop_receipt': instance.isEnableShopReceipt,
      'delivery_informations':
          instance.deliveryInformations.map((e) => e.toJson()).toList(),
      'individual_delivery_price_information':
          instance.individualDeliveryPriceInformation?.toJson(),
      'delivery_address': instance.deliveryAddress,
      'living_status': _$LivingStatusTypeEnumMap[instance.livingStatus]!,
      'is_pack_price_target_customer': instance.isPackPriceTargetCustomer,
      'delivery_plan_change_origin_order_id':
          instance.deliveryPlanChangeOriginOrderId,
      'is_not_selected_pack_method': instance.isNotSelectedPackMethod,
      'default_pack_method_type':
          _$PackMethodTypeEnumMap[instance.defaultPackMethodType]!,
      'pack_method_informations':
          instance.packMethodInformations.map((e) => e.toJson()).toList(),
      'shop_code': instance.shopCode,
      'shop_name': instance.shopName,
      'init_receipt_point_latitude': instance.initReceiptPointLatitude,
      'init_receipt_point_longitude': instance.initReceiptPointLongitude,
      'init_receipt_point_id': instance.initReceiptPointId,
    };

const _$LivingStatusTypeEnumMap = {
  LivingStatusType.unconfirmed: '0',
  LivingStatusType.confirmed: '1',
  LivingStatusType.duringConfirmation: '2',
  LivingStatusType.none: '',
};

const _$PackMethodTypeEnumMap = {
  PackMethodType.individualOrder: '0',
  PackMethodType.multipleOrder: '1',
  PackMethodType.collectivelyPacked: '2',
  PackMethodType.none: '',
};
