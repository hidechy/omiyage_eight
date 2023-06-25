import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../data/repository/front_repository.dart';
import '../../util/cart_info_manager.dart';
import '../state/categories_page_state.dart';

class CategoriesPageViewModel extends StateNotifier<CategoriesPageState> with LocatorMixin {
  CategoriesPageViewModel() : super(CategoriesPageState());

  CartInfoManager get _cartInfoManager => read();

  // カテゴリパネルの開閉の状態管理
  void isOpenChange(String categoryCode) {
    final isOpenMap = {...state.isOpenMap};
    isOpenMap[categoryCode] = !(state.isOpenMap[categoryCode] ?? false);
    state = state.copyWith(isOpenMap: isOpenMap);
  }

  // 画面遷移時の処理
  Future<bool> load() async {
    final response = await GetIt.I<FrontRepository>().getFrontCategory(shopCode: _cartInfoManager.info.shop.shopCode);
    // ボタン開閉状態をカテゴリコードをキーにしてMap化する
    final isOpenMap = Map.fromEntries(response.data.map((category) => MapEntry(category.categoryCode, false)));

    state = state.copyWith(
      isOpenMap: isOpenMap,
      frontCategoriesModel: response.data,
    );

    return true;
  }
}
