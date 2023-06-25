import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:tuple/tuple.dart';

import '../../data/api/model/product_model.dart';
import '../../data/api/model/search_category_model.dart';
import '../../data/repository/products_repository.dart';
import '../../enum/recommend_type.dart';
import '../../enum/sort_number.dart';
import '../../util/cart_info_manager.dart';
import '../state/product_search_results_page_state.dart';

class ProductSearchResultsPageViewModel extends StateNotifier<ProductSearchResultsPageState> with LocatorMixin {
  ProductSearchResultsPageViewModel() : super(ProductSearchResultsPageState());

  CartInfoManager get _cartInfoManager => read();

  var _isLoading = false;

  Future<bool> initialize(
    String? searchWord,
    String? searchCategoryCode,
    SortNumber sortNumber,
    String? facetDiscountType,
  ) async {
    if (_isLoading) {
      return true;
    }
    try {
      _isLoading = true;

      final response = await _getProductList(
        page: 1,
        searchWord: searchWord,
        searchCategoryCode: searchCategoryCode,
        sortNumber: sortNumber,
        facetDiscountType: facetDiscountType,
      );
      state = state.copyWith(
        products: response.item2,
        totalSize: response.item1,
        selectedSortNumber: sortNumber,
      );
      return true;
    } finally {
      _isLoading = false;
    }
  }

  Future<bool> initLoad({
    required String? searchWord,
    required String? searchCategoryCode,
    required SortNumber sortNumber,
    required String? facetDiscountType,
    required RecommendType? recommendType,
    required String? productId,
  }) async {
    await getSearchProductList(
      page: 1,
      searchWord: searchWord,
      searchCategoryCode: searchCategoryCode,
      sortNumber: sortNumber,
      facetDiscountType: facetDiscountType,
      recommendType: recommendType,
      productId: productId,
    );
    return true;
  }

  /// 商品リスト取得
  Future<bool> getSearchProductList(
      {required int page,
      String? searchWord,
      String? searchCategoryCode,
      required SortNumber sortNumber,
      String? facetDiscountType,
      RecommendType? recommendType,
      String? productId,
      String? bannerAdvertisingId}) async {
    if (_isLoading) {
      return true;
    }
    try {
      _isLoading = true;

      final response = await _getProductList(
          page: page,
          searchWord: searchWord,
          searchCategoryCode: searchCategoryCode,
          sortNumber: sortNumber,
          facetDiscountType: facetDiscountType,
          recommendType: recommendType,
          productId: productId);
      state = state.copyWith(
        products: [...state.products, ...response.item2],
        totalSize: response.item1,
        categories: response.item3,
        selectedSortNumber: sortNumber,
      );
      return true;
    } finally {
      _isLoading = false;
    }
  }

  Future<Tuple3<int, List<ProductModel>, List<SearchCategoryModel>>> _getProductList({
    required int page,
    String? searchWord,
    String? searchCategoryCode,
    SortNumber? sortNumber,
    String? facetDiscountType,
    RecommendType? recommendType,
    String? productId,
  }) async {
    try {
      if (searchWord != null || searchCategoryCode != null || facetDiscountType != null) {
        final response = await GetIt.I<ProductsRepository>().getProducts(
          page: page,
          viewCount: 30,
          shopCode: _cartInfoManager.info.shop.shopCode,
          searchWord: searchWord,
          searchCategoryCode: searchCategoryCode,
          cartId: _cartInfoManager.info.cartId,
          sortNumber: sortNumber,
          facetDiscountType: facetDiscountType,
        );
        return Tuple3(response.totalDataNum, response.first.products, response.first.categories);
      } else {
        // レコメンド種別がなかった場合
        if (recommendType == null) {
          return const Tuple3(0, [], []);
        }

        // レコメンド商品一覧を表示する場合
        final response = await GetIt.I<ProductsRepository>().getRecommendedProduct(
          page: page,
          viewCount: 30,
          cartId: _cartInfoManager.info.cartId,
          shopCode: _cartInfoManager.info.shop.shopCode,
          recommendType: recommendType,
          productId: productId,
        );

        return Tuple3(response.totalDataNum,
            response.data.map((recommendedProductModel) => recommendedProductModel.product).toList(), []);
      }
    } on StateError {
      return const Tuple3(0, [], []);
    }
  }
}
