import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../data/api/model/product_model.dart';
import '../../data/repository/products_repository.dart';
import '../../enum/sort_number.dart';
import '../../util/cart_info_manager.dart';
import '../state/sub_category_tab_page_state.dart';

class SubCategoryTabPageViewModel extends StateNotifier<SubCategoryTabPageState> with LocatorMixin {
  SubCategoryTabPageViewModel() : super(SubCategoryTabPageState());

  CartInfoManager get _cartInfoManager => read();

  var _isLoading = false;

  Future<bool> getProducts(String categoryCode, int page, SortNumber sortNumber, [bool shouldRefresh = false]) async {
    if (_isLoading) {
      return true;
    }
    _isLoading = true;
    final response = await GetIt.I<ProductsRepository>().getProducts(
      page: page,
      viewCount: 30,
      sortNumber: sortNumber,
      shopCode: _cartInfoManager.info.shop.shopCode,
      searchCategoryCode: categoryCode,
      cartId: _cartInfoManager.info.cartId,
    );
    final products = response.data.isNotEmpty ? response.first.products : <ProductModel>[];
    state = state.copyWith(
      products: shouldRefresh ? products : [...state.products, ...products],
      totalSize: response.totalDataNum,
      selectedSortNumber: sortNumber,
    );
    _isLoading = false;
    return true;
  }
}
