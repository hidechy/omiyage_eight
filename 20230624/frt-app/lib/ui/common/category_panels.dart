import 'package:flutter/material.dart';

import '../../data/api/model/base_category_model.dart';
import '../../data/api/model/front_category_model.dart';
import '../../enum/category_type.dart';
import '../../ui/common/app_colors.dart';
import '../page/main_category_products_page.dart';
import '../page/product_detail/akachanhonpo_category_top_page.dart';
import '../page/sub_category_page.dart';
import 'app_media_query.dart';
import 'category_card.dart';

/// カテゴリパネル
class CategoryPanels extends StatelessWidget {
  const CategoryPanels({
    required this.categoryPanels,
    required this.isOpenFunction,
    required this.categoryCountInClose,
    required this.categoryType,
    required this.categoryLevel,
    Key? key,
  }) : super(key: key);

  final List<BaseFrontCategoryModel> categoryPanels;
  final bool Function(BuildContext context) isOpenFunction;
  final int categoryCountInClose;
  final CategoryType categoryType;
  final int categoryLevel;

  @override
  Widget build(BuildContext context) {
    final isOpen = isOpenFunction(context);
    final size = AppMediaQuery.of(context).size;
    final isAllVisible = isOpen || categoryPanels.length <= categoryCountInClose;
    final categoryList = isAllVisible ? categoryPanels : categoryPanels.sublist(0, categoryCountInClose);
    final categoryTabs = categoryPanels
        .map((categoryPanel) => (categoryPanel as FrontCategoryModel).copyWith(categoryLevel: categoryLevel))
        .toList();
    final itemWidth = (size.width - 32) * 0.489;
    const itemHeight = 60;
    // 小さい端末だと見切れることがあるのでその場合は固定で2.25を設定
    final ratio = itemWidth / itemHeight < 2.25 ? itemWidth / itemHeight : 2.25;
    return Stack(
      children: [
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          childAspectRatio: size.height > size.width ? ratio : 5,
          crossAxisCount: 2,
          padding: const EdgeInsets.all(0),
          children: categoryList
              .map(
                (category) => CategoryCard(
                  thumbnailUrl: category.thumbnailUrl,
                  categoryName: category.name,
                  onTap: () {
                    final Route<dynamic> route;

                    if (category.type.isAkahon) {
                      //選択されたカテゴリが、アカチャンホンポのカテゴリの場合、赤ちゃん本舗カテゴリトップへ遷移
                      route = AkachanhonpoCategoryTopPage.route();
                    } else if (categoryLevel == 2) {
                      // 選択したカテゴリ階層が2カテの場合、第二カテゴリ商品一覧に遷移
                      route = MainCategoryProductsPage.route(
                        categoryTabs: categoryTabs,
                        targetCategoryCode: category.code,
                        categoryType: categoryType,
                      );
                    } else {
                      route = SubCategoryPage.route(
                        categoryTabs: categoryTabs,
                        categoryType: categoryType,
                        targetCategoryCode: category.code,
                      );
                    }
                    Navigator.push<void>(context, route);
                  },
                ),
              )
              .toList(),
        ),
        Visibility(
          visible: !isAllVisible,
          child: Positioned(
            bottom: 0,
            left: 0,
            height: 100,
            width: size.width,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: FractionalOffset.center,
                  end: FractionalOffset.bottomCenter,
                  colors: [AppColors.whiteAlpha0, AppColors.white],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
