import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../constants.dart';
import '../../data/repository/favorite_repository.dart';
import '../../util/cart_info_manager.dart';
import '../state/favorite_page_state.dart';

class FavoritePageViewModel extends StateNotifier<FavoritePageState> with LocatorMixin {
  FavoritePageViewModel() : super(const FavoritePageState());

  CartInfoManager get _cartInfoManager => read();

  var _isLoading = false;

  Future<bool> initLoad() async {
    try {
      _isLoading = true;
      final response = await GetIt.I<FavoriteRepository>().getItems(
        cartId: _cartInfoManager.info.cartId,
        viewCount: viewCount,
        page: 1,
      );
      if (response.data.isEmpty) {
        state = state.copyWith(
          products: [],
          totalSize: 0,
          page: 1,
          isLastPage: true,
        );
      } else {
        state = state.copyWith(
          products: response.data,
          totalSize: response.totalDataNum,
          page: 1,
          isLastPage: response.totalPageNum <= 1,
        );
      }
    } finally {
      _isLoading = false;
    }
    return true;
  }

  Future<bool> getFavorites() async {
    if (_isLoading) {
      return true;
    }

    try {
      _isLoading = true;
      final response = await GetIt.I<FavoriteRepository>().getItems(
        cartId: _cartInfoManager.info.cartId,
        viewCount: viewCount,
        page: state.page + 1,
      );
      // APIの不具合によりお気に入りのデータ件数が正しくレスポンスされない
      // 在庫なしをレスポンスしないようになったりしているので、実際のお気に入り件数よりレスポンスされる商品データが少なくなる
      // そのため最終ページ読み込み前にデータが空になりうるので、お気に入りが1件もレスポンスされない場合はそこで終了とする
      if (response.data.isEmpty) {
        state = state.copyWith(
          isLastPage: true,
        );
      } else {
        final nextPageProducts = response.data;
        nextPageProducts.removeWhere((value) => state.products.any((element) => value.productId == element.productId));
        state = state.copyWith(
          products: [...state.products, ...nextPageProducts],
          totalSize: response.totalDataNum,
          page: state.page + 1,
          isLastPage: response.totalPageNum <= state.page + 1,
        );
      }
    } finally {
      _isLoading = false;
    }
    return true;
  }

  Future<bool> requestDeleteFavorite(String productId) async {
    if (_isLoading) {
      return true;
    }

    try {
      _isLoading = true;
      await GetIt.I<FavoriteRepository>().deleteItems(
        cartId: _cartInfoManager.info.cartId,
        productIds: [productId],
      );
      deleteFavorite(productId);
      return true;
    } finally {
      _isLoading = false;
    }
  }

  void deleteFavorite(String productId) {
    final deletedProducts = [...state.products];
    deletedProducts.removeWhere((value) => value.productId == productId);
    state = state.copyWith(
      products: deletedProducts,
      totalSize: state.totalSize - 1,
    );
  }
}
