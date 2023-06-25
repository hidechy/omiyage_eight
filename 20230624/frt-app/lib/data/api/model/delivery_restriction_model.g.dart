// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_restriction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryRestrictionModel _$$_DeliveryRestrictionModelFromJson(
        Map<String, dynamic> json) =>
    _$_DeliveryRestrictionModel(
      address: json['address'] == null
          ? null
          : DeliveryRestrictionModelAddress.fromJson(
              json['address'] as Map<String, dynamic>),
      deliveryTimes: (json['delivery_times'] as List<dynamic>?)
              ?.map((e) => DeliveryRestrictionModelDeliveryTimes.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const <DeliveryRestrictionModelDeliveryTimes>[],
    );

Map<String, dynamic> _$$_DeliveryRestrictionModelToJson(
        _$_DeliveryRestrictionModel instance) =>
    <String, dynamic>{
      'address': instance.address?.toJson(),
      'delivery_times': instance.deliveryTimes.map((e) => e.toJson()).toList(),
    };
