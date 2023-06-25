import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../data/repository/orders_repository.dart';
import '../../util/cart_info_manager.dart';
import '../state/repurchase_page_state.dart';

class RepurchasePageViewModel extends StateNotifier<RepurchasePageState> with LocatorMixin {
  RepurchasePageViewModel() : super(RepurchasePageState());

  CartInfoManager get _cartInfoManager => read();

  /// 注文詳細取得APIをリクエスト
  Future<bool> getOrderDetail(int orderId) async {
    final response = await GetIt.I<OrdersRepository>().getOrderDetail(
      orderId: orderId,
      repurchaseCartId: _cartInfoManager.info.cartId,
    );
    // 医薬品を除外
    final products = List.of(response.first.products);
    final productCount = products.length;
    products.removeWhere((element) => element.isDrugProduct);
    state = state.copyWith(
      orderDetail: response.first.copyWith(products: products),
      isExistDrugProduct: productCount != products.length,
    );
    return true;
  }
}
