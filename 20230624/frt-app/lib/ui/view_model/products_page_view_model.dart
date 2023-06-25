import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../../enum/products_category_summary_loading_status.dart';
import '../../data/repository/products_repository.dart';
import '../../util/cart_info_manager.dart';
import '../state/main_category_tab_page_state.dart';

class MainCategoryTabPageViewModel extends StateNotifier<MainCategoryTabPageState> with LocatorMixin {
  MainCategoryTabPageViewModel() : super(MainCategoryTabPageState());

  // カテゴリパネルの開閉の状態管理
  void isOpenChange() => state = state.copyWith(isOpen: !state.isOpen);

  // 画面遷移時の処理
  Future<bool> load(String categoryCode) async {
    final response = await GetIt.I<ProductsRepository>().getProductsCategorySummary(
      categoryCode: categoryCode,
      shopCode: read<CartInfoState>().shop.shopCode,
      productCount: 10,
      cartId: read<CartInfoState>().cartId,
      categoriesCountLimitFlag: '1',
    );

    if (response.data.first.categoriesOverview.length > 5) {
      state = state.copyWith(
          categorySummaryModel: response.data,
          productsCategorySummaryLoadingStatus: ProductsCategorySummaryLoadingStatus.fullLoading);

      GetIt.I<ProductsRepository>()
          .getProductsCategorySummary(
            categoryCode: categoryCode,
            shopCode: read<CartInfoState>().shop.shopCode,
            productCount: 10,
            cartId: read<CartInfoState>().cartId,
          )
          .then((response) => state = state.copyWith(
              categorySummaryModel: response.data,
              productsCategorySummaryLoadingStatus: ProductsCategorySummaryLoadingStatus.fullLoadingSucceeded))
          .catchError((Object error) => state = state.copyWith(
              productsCategorySummaryLoadingStatus: ProductsCategorySummaryLoadingStatus.fullLoadingFailed));
    } else {
      state = state.copyWith(
          categorySummaryModel: response.data,
          productsCategorySummaryLoadingStatus: ProductsCategorySummaryLoadingStatus.fullLoadingSucceeded);
    }

    return true;
  }
}
