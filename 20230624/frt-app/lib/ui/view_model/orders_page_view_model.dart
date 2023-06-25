import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:tuple/tuple.dart';

import '../../data/api/model/order_history_list_model.dart';
import '../../data/repository/orders_repository.dart';
import '../../enum/order_fulfillment_type.dart';
import '../../enum/order_status.dart';
import '../../ui/state/orders_page_state.dart';
import '../../util/cart_info_manager.dart';

class OrdersPageViewModel extends StateNotifier<OrdersPageState> with LocatorMixin {
  OrdersPageViewModel() : super(const OrdersPageState());

  CartInfoManager get _cartManager => read();

  var _isLoading = false;

  Future<bool> initLoad() async {
    if (_isLoading) {
      return true;
    }

    await _cartManager.ensure();

    try {
      _isLoading = true;
      final data = await _onLoad(1);
      state = state.copyWith(
        loadCount: state.loadCount + 1,
        totalSize: data.item1,
        ongoingOrders: data.item2,
        previousOrders: data.item3,
      );
      return true;
    } finally {
      _isLoading = false;
    }
  }

  Future<bool> load(int page) async {
    if (_isLoading) {
      return true;
    }

    try {
      if (state.length < state.totalSize) {
        _isLoading = true;
        final next = await _onLoad(page);

        // 取得したデータが空の場合は元のstateオブジェクトを利用することで無駄なstateの更新を行わない
        final ongoing = next.item2.isNotEmpty ? [...state.ongoingOrders, ...next.item2] : state.ongoingOrders;
        final previous = next.item3.isNotEmpty ? [...state.previousOrders, ...next.item3] : state.previousOrders;

        state = state.copyWith(
          totalSize: next.item1,
          ongoingOrders: ongoing,
          previousOrders: previous,
        );
      }
      return true;
    } finally {
      _isLoading = false;
    }
  }

  Future<Tuple3<int, List<OrderHistoryListModel>, List<OrderHistoryListModel>>> _onLoad(int page) async {
    final fulfillmentTypes = [
      OrderFulfillmentType.homeDelivery,
      OrderFulfillmentType.shipment,
      OrderFulfillmentType.clickAndCollect,
      OrderFulfillmentType.pickup,
    ];
    final response = await GetIt.I<OrdersRepository>().getOrderHistories(
      page: page,
      viewCount: 10,
      fulfillmentTypes: fulfillmentTypes,
    );
    final data = Tuple3(response.totalDataNum, <OrderHistoryListModel>[], <OrderHistoryListModel>[]);
    if (response.data.isNotEmpty) {
      for (final e in response.first.histories) {
        if (e.status.isCurrentOrder) {
          data.item2.add(e);
        } else {
          data.item3.add(e);
        }
      }
    }
    return data;
  }
}
