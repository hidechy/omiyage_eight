import 'package:flutter/material.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../../data/api/model/front_categories_model.dart';
import '../../enum/screen_name.dart';
import '../../enum/search_history_type.dart';
import '../../util/logger.dart';
import '../common/app_colors.dart';
import '../common/app_loading.dart';
import '../common/cart_button.dart';
import '../common/category_open_close_button.dart';
import '../common/category_panels.dart';
import '../common/category_title.dart';
import '../common/search_app_bar.dart';
import '../common/total_price.dart';
import '../state/categories_page_state.dart';
import '../view_model/categories_page_view_model.dart';
import 'product_search_results_page.dart';

/// カテゴリ画面
class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  static Route<Object?> route([Object? arguments]) => MaterialPageRoute<Object?>(
        builder: (_) => const CategoriesPage(),
        settings: RouteSettings(name: name, arguments: arguments),
      );

  static final name = ScreenName.categoriesPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build CategoriesPage');
    return Scaffold(
      body: Column(
        children: [
          // 検索バー
          SearchAppBar(
            historyType: SearchHistoryType.product,
            onSubmitted: (String keyword) {
              return Navigator.push(
                context,
                ProductSearchResultsPage.route(keyword: keyword),
              );
            },
          ),
          Expanded(
            child: Stack(
              children: const [
                _Body(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: TotalPrice(),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: CartButton(key: GlobalKey<CartButtonState>()),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<CategoriesPageViewModel, CategoriesPageState>(
      create: (_) => CategoriesPageViewModel(),
      builder: (context, _) {
        return LoadingFullScreen(
          future: () => context.read<CategoriesPageViewModel>().load(),
          content: const SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: _CategoryComponent(),
          ),
        );
      },
    );
  }
}

class _CategoryComponent extends StatelessWidget {
  const _CategoryComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final frontCategoriesModel = context.select((CategoriesPageState state) => state.frontCategoriesModel);
    return Column(
      children: [
        for (final frontCategory in frontCategoriesModel)
          _categoryComponent(frontCategory.categoryName, frontCategory,
              frontCategory.categoryCode == frontCategoriesModel.first.categoryCode),
        SizedBox(height: context.select((CategoriesPageState state) => state.bottomPadding)),
      ],
    );
  }

  // カテゴリパーツ
  Widget _categoryComponent(String categoryTitle, FrontCategoriesModel frontCategories, bool isFirstCategory) {
    late final Widget categoryBody;
    if (frontCategories.children.isEmpty) {
      categoryBody = const Text(
        '現在こちらのカテゴリは当店ではお取り扱いがございません',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          color: AppColors.gray2,
          fontWeight: FontWeight.w300,
          height: 19 / 14,
        ),
      );
    } else {
      final categoryPanels = frontCategories.children;
      categoryBody = Column(
        children: [
          CategoryPanels(
            categoryPanels: categoryPanels,
            isOpenFunction: (context) =>
                context.select((CategoriesPageState state) => state.isOpenMap[frontCategories.categoryCode] ?? false),
            categoryCountInClose: 6,
            categoryType: frontCategories.type,
            categoryLevel: frontCategories.children.first.categoryLevel,
          ),
          Visibility(
            visible: frontCategories.children.length > 6,
            child: CategoryOpenCloseButton(
              isOpenFunction: (context) =>
                  context.select((CategoriesPageState state) => state.isOpenMap[frontCategories.categoryCode] ?? false),
              onPressed: (context) =>
                  context.read<CategoriesPageViewModel>().isOpenChange(frontCategories.categoryCode),
            ),
          ),
        ],
      );
    }

    return Column(
      children: [
        CategoryTitle(
          title: categoryTitle,
          topMargin: isFirstCategory ? 24 : 32,
        ),
        categoryBody,
      ],
    );
  }
}
