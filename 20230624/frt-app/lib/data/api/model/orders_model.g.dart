// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrdersModel _$$_OrdersModelFromJson(Map<String, dynamic> json) =>
    _$_OrdersModel(
      customer: json['customer'] == null
          ? const OrderHistoryCustomersModel()
          : OrderHistoryCustomersModel.fromJson(
              json['customer'] as Map<String, dynamic>),
      histories: (json['histories'] as List<dynamic>?)
              ?.map((e) =>
                  OrderHistoryListModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <OrderHistoryListModel>[],
    );

Map<String, dynamic> _$$_OrdersModelToJson(_$_OrdersModel instance) =>
    <String, dynamic>{
      'customer': instance.customer.toJson(),
      'histories': instance.histories.map((e) => e.toJson()).toList(),
    };
