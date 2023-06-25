import 'package:collection/collection.dart';
import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../data/api/model/base_customer_model.dart';
import '../data/api/model/visitor_info_model.dart';
import '../data/repository/customers_repository.dart';
import '../ui/state/customer_state.dart';
import 'authentication_manager.dart';
import 'cart_info_manager.dart';

class CustomerManager extends StateNotifier<CustomerState> with LocatorMixin {
  CustomerManager()
      : _manager = GetIt.I<AuthenticationManager>(),
        super(const CustomerState());

  final AuthenticationManager _manager;

  CustomerState get info => state;

  VisitorInfoModel? get visitor => state.visitor;

  BaseCustomerModel? get member => state.member;

  CartInfoManager? observer;

  /// @param `shouldGetCart` : カートを取得するか (会員ログイン時のみ有効)
  Future<bool> getInfo({bool shouldGetCart = true}) async {
    final Object? value;
    if (state.isMember) {
      value = (await GetIt.I<CustomersRepository>().getCustomerInfo()).first;
    } else {
      value = visitor;
    }
    return await setInfo(value, shouldGetCart);
  }

  /// @param `value` : 会員情報モデル
  /// @param `shouldGetCart` : カートを取得するか (会員ログイン時のみ有効)
  Future<bool> setInfo([Object? value, bool shouldGetCart = true]) async {
    if (value is BaseCustomerModel) {
      if (shouldGetCart) {
        await observer?.ensure(shopCode: value.deliveryShop.firstOrNull?.shopCode);
      }
      state = CustomerState.member(value);
    } else if (value is VisitorInfoModel) {
      state = CustomerState.visitor(value);
    } else {
      // この時はカートを削除する
      observer?.clear();
      state = const CustomerState();
    }
    return true;
  }

  @override
  Future<void> initState() async {
    super.initState();
    _manager.observer = this;
  }

  @override
  void dispose() {
    _manager.observer = null;
    super.dispose();
  }

  void invalid() => setInfo();
}
