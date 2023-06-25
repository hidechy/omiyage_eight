import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../data/api/model/base_category_model.dart';
import '../../enum/category_type.dart';
import '../../enum/screen_name.dart';
import '../../enum/search_history_type.dart';
import '../../util/logger.dart';
import '../common/cart_button.dart';
import '../common/category_tab_bar.dart';
import '../common/order_changing_bar.dart';
import '../common/search_app_bar.dart';
import '../common/total_price.dart';
import '../page/main_category_tab_page.dart';
import '../page/product_search_results_page.dart';

// 第二カテゴリ商品一覧
class MainCategoryProductsPageArguments {
  const MainCategoryProductsPageArguments({
    required this.categoryTabs,
    required this.targetCategoryCode,
    required this.categoryType,
  });

  final List<BaseCategoryModel> categoryTabs;
  final String targetCategoryCode;
  final CategoryType categoryType;
}

class MainCategoryProductsPage extends StatelessWidget {
  const MainCategoryProductsPage({Key? key}) : super(key: key);

  static Route<Object?> route({
    required List<BaseCategoryModel> categoryTabs,
    required String targetCategoryCode,
    required CategoryType categoryType,
  }) =>
      MaterialPageRoute<Object?>(
        builder: (_) => Provider.value(
          value: MainCategoryProductsPageArguments(
            categoryTabs: categoryTabs,
            targetCategoryCode: targetCategoryCode,
            categoryType: categoryType,
          ),
          child: const MainCategoryProductsPage(),
        ),
        settings: RouteSettings(name: name),
      );

  static final name = ScreenName.categoryProductsPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build MainCategoryProductsPage');
    return Provider(
      create: (_) => GlobalKey<CartButtonState>(),
      builder: (context, _) {
        final arguments = context.watch<MainCategoryProductsPageArguments>();
        final cartButtonKey = context.watch<GlobalKey<CartButtonState>>();
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                SearchAppBar(
                  historyType: SearchHistoryType.product,
                  onSubmitted: (String keyword) {
                    return Navigator.push(
                      context,
                      ProductSearchResultsPage.route(keyword: keyword),
                    );
                  },
                ),
                const OrderChangingBar(),
                Expanded(
                  child: Stack(
                    children: [
                      CategoryTabBar(
                        tabs: Map.fromIterables(
                          arguments.categoryTabs,
                          arguments.categoryTabs.map(
                            (categoryTab) => MainCategoryTabPage(
                              categoryCode: categoryTab.code,
                              cartButtonKey: cartButtonKey,
                              categoryLevel: 3,
                              categoryType: _categoryTypeForTabPage(categoryTab, arguments),
                            ),
                          ),
                        ),
                        initialIndex: arguments.categoryTabs
                            .indexWhere((categoryTab) => categoryTab.code == arguments.targetCategoryCode),
                      ),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: TotalPrice(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: CartButton(key: cartButtonKey),
        );
      },
    );
  }

  CategoryType _categoryTypeForTabPage(BaseCategoryModel categoryTab, MainCategoryProductsPageArguments arguments) {
    if (categoryTab.type.isAkahon) {
      return CategoryType.akahon;
    } else if (categoryTab.type.isDrug) {
      return CategoryType.drug;
    }
    return arguments.categoryType;
  }
}
