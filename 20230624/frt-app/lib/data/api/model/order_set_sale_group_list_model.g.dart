// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_set_sale_group_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderSetSaleGroupListModel _$$_OrderSetSaleGroupListModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrderSetSaleGroupListModel(
      setSaleName: json['set_sale_name'] as String? ?? '',
      setSalePrice: json['set_sale_price'] as int? ?? 0,
      fixSetSaleNumber: json['fix_set_sale_number'] as int? ?? 0,
      totalSetSaleDiscount: json['total_set_sale_discount'] as int? ?? 0,
      orderSetSaleDetails: (json['order_set_sale_details'] as List<dynamic>?)
              ?.map((e) =>
                  OrderSetSaleGroupListModelOrderSetSaleDetails.fromJson(
                      e as Map<String, dynamic>))
              .toList() ??
          const <OrderSetSaleGroupListModelOrderSetSaleDetails>[],
    );

Map<String, dynamic> _$$_OrderSetSaleGroupListModelToJson(
        _$_OrderSetSaleGroupListModel instance) =>
    <String, dynamic>{
      'set_sale_name': instance.setSaleName,
      'set_sale_price': instance.setSalePrice,
      'fix_set_sale_number': instance.fixSetSaleNumber,
      'total_set_sale_discount': instance.totalSetSaleDiscount,
      'order_set_sale_details':
          instance.orderSetSaleDetails.map((e) => e.toJson()).toList(),
    };
