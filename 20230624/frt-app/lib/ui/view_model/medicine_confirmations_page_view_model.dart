import 'package:flutter/cupertino.dart';

import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../data/repository/carts_repository.dart';
import '../../util/cart_info_manager.dart';
import '../state/medicine_confirmations_page_state.dart';

class MedicineConfirmationsPageViewModel extends StateNotifier<MedicineConfirmationsPageState> with LocatorMixin {
  MedicineConfirmationsPageViewModel(BuildContext context)
      : _cartInfoManager = context.read<CartInfoManager>(),
        super(MedicineConfirmationsPageState());

  final scrollController = ScrollController();

  final CartInfoManager _cartInfoManager;

  set isExpanded(bool value) {
    state = state.copyWith(isExpanded: value);
  }

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (!state.isActive) {
      double positionRate = scrollController.offset / scrollController.position.maxScrollExtent;
      const threshold = 0.8;
      if (positionRate > threshold) {
        if (state.isExpanded) {
          state = state.copyWith(isActive: true);
        }
      }
    }
  }

  /// 医薬品購入事前確認登録APIをリクエスト
  Future<void> agreeMedicineConfirmations() async {
    final cartId = _cartInfoManager.info.cartId;
    await GetIt.I<CartsRepository>().agreeMedicineConfirmations(cartId: cartId);
    // カート情報を更新する
    await requestAndUpdateCartInfo(cartId: cartId);
  }

  /// カート情報取得APIをリクエストとカート情報を更新
  Future<void> requestAndUpdateCartInfo({required int cartId}) async {
    // カート情報取得
    final response = await GetIt.I<CartsRepository>().getCartInfo(cartId: cartId);
    // ローカルのカート情報を更新する
    _cartInfoManager.info = response.first;
  }
}
