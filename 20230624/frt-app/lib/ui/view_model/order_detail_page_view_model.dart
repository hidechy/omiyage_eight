import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../data/api/model/order_cancel_response_model.dart';
import '../../data/repository/orders_repository.dart';
import '../../enum/cart_order_status_type.dart';
import '../../util/authentication_manager.dart';
import '../../util/cart_info_manager.dart';
import '../../util/customer_manager.dart';
import '../state/order_detail_page_state.dart';

class OrderDetailPageViewModel extends StateNotifier<OrderDetailPageState> with LocatorMixin {
  OrderDetailPageViewModel() : super(OrderDetailPageState());

  // ご注文内容の開閉の状態管理
  void isOpenChange() => state = state.copyWith(isOpen: !state.isOpen);

  CartInfoManager get _cartInfoManager => read();

  CustomerManager get _customerManager => read();

  Future<bool> initLoad(int orderId) async {
    await _reLogin();
    return getOrderDetail(orderId);
  }

  Future<void> _reLogin() async {
    final authenticationManager = GetIt.I<AuthenticationManager>();
    await authenticationManager.reLogin(shouldGetCart: true);
  }

  /// 注文詳細取得APIをリクエスト
  Future<bool> getOrderDetail(int orderId) async {
    final response = await GetIt.I<OrdersRepository>().getOrderDetail(
      orderId: orderId,
      viewCount: 1,
    );
    state = state.copyWith(orderDetail: response.first);
    return true;
  }

  Future<void> changeOrder(int orderId) async {
    final responseChangeOrder = await GetIt.I<OrdersRepository>().changeOrder(orderId);
    _cartInfoManager.info = responseChangeOrder.first.cart!;
  }

  bool isCartStatusNowChanging() {
    return _cartInfoManager.info.orderStatus == CartOrderStatusType.nowChanging;
  }

  /// 注文キャンセルAPIをリクエスト
  Future<OrderCancelResponseModel> cancelOrder(int orderId) async {
    final response = await GetIt.I<OrdersRepository>().cancelOrder(
      orderId: orderId,
      cartId: _cartInfoManager.info.cartId,
    );

    /// 会員情報に未配達注文がある場合は住所変更不可の情報があるため、注文キャンセル後に会員情報を取得しなおす
    await _customerManager.getInfo(shouldGetCart: false);

    return response.first;
  }
}
