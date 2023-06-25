import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../data/repository/customers_repository.dart';
import '../../util/authentication_manager.dart';
import '../../util/customer_manager.dart';
import '../state/my_page_state.dart';

class MyPageViewModel extends StateNotifier<MyPageState> with LocatorMixin {
  MyPageViewModel() : super(MyPageState());

  CustomerManager get _customerManager => read();

  /// 会員情報取得
  Future<bool> getCustomerInfo() async {
    await _reLogin();
    await _customerManager.getInfo(shouldGetCart: false);
    await _getNanacoPoint();
    return true;
  }

  Future<void> _reLogin() async {
    final authenticationManager = GetIt.I<AuthenticationManager>();
    await authenticationManager.reLogin();
  }

  /// nanacoポイント取得
  Future<void> _getNanacoPoint() async {
    try {
      final response = await GetIt.I<CustomersRepository>().getNanacoPoint();
      state = state.copyWith(nanacoPoint: response.first.nanacoPoint);
    } on DioError catch (_) {
      // nanacoポイント取得APIのエラーにより、マイページ画面の利用に支障をきたす事を避けるため、エラーの握り潰しを行う
      return;
    }
  }
}
