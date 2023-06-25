import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../data/repository/products_repository.dart';
import '../../enum/sort_number.dart';
import '../../util/cart_info_manager.dart';
import '../state/product_cassette_list_state.dart';

class RecipeDetailBottomSheetViewModel extends StateNotifier<ProductCassetteListState> with LocatorMixin {
  RecipeDetailBottomSheetViewModel(this._productName) : super(const ProductCassetteListState());

  final String _productName;

  CartInfoManager get _cartInfoManager => read();

  /// レシピ詳細ボトムシート用商品リスト取得
  /// おすすめ順3件固定
  Future<bool> getKeywordSearchProductList() async {
    final response = await GetIt.I<ProductsRepository>().getProducts(
      page: 1,
      viewCount: 3,
      cartId: _cartInfoManager.info.cartId,
      shopCode: _cartInfoManager.info.shop.shopCode,
      searchWord: _productName,
      sortNumber: SortNumber.recommendation,
    );
    state = ProductCassetteListState(
      totalSize: response.totalDataNum,
      products: response.data.isNotEmpty ? response.first.products : [],
    );
    return true;
  }
}
