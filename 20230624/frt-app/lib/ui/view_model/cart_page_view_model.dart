import 'package:flutter/cupertino.dart';

import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../data/repository/carts_repository.dart';
import '../../util/cart_info_manager.dart';

class CartPageViewModel {
  CartPageViewModel(BuildContext context) : _cartInfoManager = context.read<CartInfoManager>();

  final CartInfoManager _cartInfoManager;

  /// カート情報取得
  Future<bool> load() async {
    final response = await GetIt.I<CartsRepository>().getCartInfo(cartId: _cartInfoManager.info.cartId);
    _cartInfoManager.info = response.first;
    return true;
  }

  /// カート商品削除
  Future<bool> deleteItem(String productId, String productDetailKey) async {
    final response = await GetIt.I<CartsRepository>()
        .deleteItem(cartId: _cartInfoManager.info.cartId, productId: productId, productDetailKey: productDetailKey);
    _cartInfoManager.info = response.first;
    return true;
  }

  /// カート商品全件削除
  Future<bool> deleteAllItems() async {
    final response = await GetIt.I<CartsRepository>().deleteAllItems(cartId: _cartInfoManager.info.cartId);
    _cartInfoManager.info = response.first;
    return true;
  }
}
