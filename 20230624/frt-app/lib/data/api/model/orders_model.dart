// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'order_history_customers_model.dart';
import 'order_history_list_model.dart';

part 'orders_model.freezed.dart';
part 'orders_model.g.dart';

@freezed
class OrdersModel with _$OrdersModel {
  const factory OrdersModel({
    @Default(OrderHistoryCustomersModel()) @JsonKey() OrderHistoryCustomersModel customer,
    @Default(<OrderHistoryListModel>[]) List<OrderHistoryListModel> histories,
  }) = _OrdersModel;

  factory OrdersModel.fromJson(Map<String, dynamic> json) => _$OrdersModelFromJson(json);
}
