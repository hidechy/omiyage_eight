import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/order_history_list_model.dart';
import '../../enum/order_status.dart';

part 'orders_page_state.freezed.dart';

@freezed
class OrdersPageState with _$OrdersPageState {
  const OrdersPageState._();

  const factory OrdersPageState({
    @Default(0) int loadCount,
    @Default(0) int totalSize,
    @Default(<OrderHistoryListModel>[]) List<OrderHistoryListModel> ongoingOrders,
    @Default(<OrderHistoryListModel>[]) List<OrderHistoryListModel> previousOrders,
  }) = _OrdersPageState;

  int get length => ongoingOrders.length + previousOrders.length;
  OrderHistoryListModel operator [](int i) {
    assert(i >= 0);
    if (i < ongoingOrders.length) {
      return ongoingOrders[i];
    } else if (i < length) {
      // Pull to refreshをした際にindexがクリアされるので分岐を入れておかないとrange errorが発生する
      return previousOrders[i - ongoingOrders.length];
    } else {
      return const OrderHistoryListModel();
    }
  }

  bool get isNotEmpty => length > 0;
  bool get isEmpty => !isNotEmpty;

  bool get hasCreditError =>
      ongoingOrders.any((e) => e.status == OrderStatus.creditError) ||
      previousOrders.any((e) => e.status == OrderStatus.creditError);
}
