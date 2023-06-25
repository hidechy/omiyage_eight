import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';

import '../../data/repository/carts_repository.dart';
import '../../util/cart_info_manager.dart';
import '../../util/logger.dart';
import '../common/cart_button.dart';

class ProductCassetteViewModel {
  const ProductCassetteViewModel(this._manager, this._cartButtonKey);

  final CartInfoManager _manager;
  final GlobalKey<CartButtonState> _cartButtonKey;

  Future<bool> addToCart(String productId, String imageUrl, String? tapContents) async {
    final cartModel = _manager.info;
    final response = await GetIt.I<CartsRepository>().addItems(
      cartId: cartModel.cartId,
      productId: productId,
      tapContents: tapContents,
    );
    logger.info('cartId=[${response.first.cart.cartId}');
    _manager.info = response.first.cart;
    _cartButtonKey.currentState?.afterAddToCart(imageUrl);
    return true;
  }
}
