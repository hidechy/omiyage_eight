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
import 'product_search_results_page.dart';
import 'sub_category_tab_page.dart';

class SubCategoryPageArguments {
  const SubCategoryPageArguments({
    required this.categoryTabs,
    required this.categoryType,
    required this.targetCategoryCode,
  });

  final List<BaseCategoryModel> categoryTabs;
  final CategoryType categoryType;
  final String targetCategoryCode;
}

/// カテゴリ2
class SubCategoryPage extends StatelessWidget {
  const SubCategoryPage({Key? key}) : super(key: key);

  static Route<Object?> route({
    required List<BaseCategoryModel> categoryTabs,
    required CategoryType categoryType,
    required String targetCategoryCode,
  }) =>
      MaterialPageRoute<Object?>(
        builder: (_) => Provider.value(
          value: SubCategoryPageArguments(
            categoryTabs: categoryTabs,
            categoryType: categoryType,
            targetCategoryCode: targetCategoryCode,
          ),
          child: const SubCategoryPage(),
        ),
        settings: RouteSettings(name: name),
      );

  static final name = ScreenName.category2Page.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build SubCategoryPage');
    final arguments = context.watch<SubCategoryPageArguments>();
    return Provider(
      create: (_) => GlobalKey<CartButtonState>(),
      builder: (context, _) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                SearchAppBar(
                  historyType: SearchHistoryType.product,
                  hintText: '例：野菜、牛乳、金の食パンなど',
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
                          arguments.categoryTabs
                              .map((categoryTab) => SubCategoryTabPage(
                                    categoryType: arguments.categoryType,
                                    categoryCode: categoryTab.code,
                                    categoryName: categoryTab.name,
                                    cartButtonKey: context.watch<GlobalKey<CartButtonState>>(),
                                  ))
                              .toList(),
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
          floatingActionButton: CartButton(key: context.watch<GlobalKey<CartButtonState>>()),
        );
      },
    );
  }
}
