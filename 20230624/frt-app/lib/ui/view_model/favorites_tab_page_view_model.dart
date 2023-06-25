import 'package:flutter/cupertino.dart';

import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../data/repository/favorite_repository.dart';
import '../../util/cart_info_manager.dart';
import '../state/product_cassette_list_state.dart';

class FavoritesTabPageViewModel {
  FavoritesTabPageViewModel(BuildContext context) : _cartInfoManager = context.read<CartInfoManager>();

  final CartInfoManager _cartInfoManager;

  Future<ProductCassetteListState> getFavorites(int page) async {
    final response = await GetIt.I<FavoriteRepository>().getItems(
      cartId: _cartInfoManager.info.cartId,
      viewCount: 30,
      page: page,
    );
    if (response.data.isEmpty) {
      return const ProductCassetteListState();
    }
    return ProductCassetteListState(totalSize: response.totalDataNum, products: response.data);
  }
}
