import 'package:flutter/cupertino.dart';

import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../data/repository/carts_repository.dart';
import '../../util/cart_info_manager.dart';

class AkachanHonpoConfirmationsPageViewModel {
  AkachanHonpoConfirmationsPageViewModel(BuildContext context) : _cartInfoManager = context.read<CartInfoManager>();

  final CartInfoManager _cartInfoManager;

  /// 赤ちゃん本舗購入事前確認登録APIをリクエスト
  Future<void> agreeAkachanHonpoConfirmations() async {
    final cartId = _cartInfoManager.info.cartId;
    await GetIt.I<CartsRepository>().agreeAkachanHonpoConfirmations(cartId: cartId);
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
