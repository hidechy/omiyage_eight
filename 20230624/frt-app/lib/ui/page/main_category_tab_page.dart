import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:collection/collection.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../../data/api/model/category_overview_model.dart';
import '../../data/api/model/category_summary_data_model.dart';
import '../../data/api/model/front_category_model.dart';
import '../../enum/category_type.dart';
import '../../enum/products_category_summary_loading_status.dart';
import '../../ui/common/app_colors.dart';
import '../../ui/view_model/loading_view_model.dart';
import '../../util/logger.dart';
import '../common/about_medical_product.dart';
import '../common/akachanhonpo_shop_info.dart';
import '../common/app_buttons.dart';
import '../common/app_loading.dart';
import '../common/app_media_query.dart';
import '../common/attention_text.dart';
import '../common/cart_button.dart';
import '../common/category_open_close_button.dart';
import '../common/category_panels.dart';
import '../common/category_tab_bar.dart';
import '../common/category_title.dart';
import '../common/compliance_warning_labels.dart';
import '../common/drug_confirmation.dart';
import '../common/drug_shop_info.dart';
import '../common/product_cassette_set.dart';
import '../common/pull_to_refresh.dart';
import '../common/sale_by_measure_image.dart';
import '../common/search_app_bar.dart';
import '../state/main_category_tab_page_state.dart';
import '../view_model/products_page_view_model.dart';
import 'main_category_products_page.dart';
import 'product_detail/akachanhonpo_category_top_page.dart';
import 'sub_category_page.dart';

/// 商品一覧ページ
class MainCategoryTabPage extends StatefulWidget {
  const MainCategoryTabPage({
    Key? key,
    required this.categoryCode,
    required this.categoryLevel,
    required this.categoryType,
    required this.cartButtonKey,
  }) : super(key: key);

  final String categoryCode;
  final int categoryLevel;
  final CategoryType categoryType;
  final GlobalKey<CartButtonState> cartButtonKey;

  @override
  State<StatefulWidget> createState() => _MainCategoryTabPageState();
}

class _MainCategoryTabPageState extends State<MainCategoryTabPage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    logger.info('Build MainCategoryTabPage');
    return MultiProvider(
      providers: [
        Provider.value(value: widget.categoryLevel),
        Provider.value(value: widget.categoryType),
        Provider.value(value: widget.cartButtonKey),
        StateNotifierProvider<MainCategoryTabPageViewModel, MainCategoryTabPageState>(
          create: (_) => MainCategoryTabPageViewModel(),
        )
      ],
      builder: (context, _) {
        return Center(
          child: LoadingFullScreen(
            future: () async => await context.read<MainCategoryTabPageViewModel>().load(widget.categoryCode),
            content: PullToRefresh(
              onRefresh: (BuildContext context) async {
                await context.read<MainCategoryTabPageViewModel>().load(widget.categoryCode);
              },
              child: const _ProductList(),
            ),
          ),
        );
      },
    );
  }
}

class _Empty extends StatelessWidget {
  const _Empty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Text(
          '現在こちらのカテゴリは、\n当店ではお取り扱いがございません',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: Color(0xff999999),
            fontWeight: FontWeight.w300,
            height: 1.36,
          ),
        ),
      ),
    );
  }
}

class _CategoryTitle extends StatelessWidget {
  const _CategoryTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => CategoryTitle(
        title: context.select(
            (MainCategoryTabPageState state) => state.categorySummaryModel.firstOrNull?.searchCategoryName ?? ''),
        topMargin: 8,
      );
}

class _ProductList extends StatelessWidget {
  const _ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.select((MainCategoryTabPageState state) => state.categorySummaryModel);
    final categoriesOverview = model.isNotEmpty ? model.first.categoriesOverview : const <CategoryOverviewModel>[];

    if (categoriesOverview.isEmpty) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: const [
            _CategoryTitle(),
            _Empty(),
          ],
        ),
      );
    }

    final categoryPanels = [
      for (final categoryOverview in categoriesOverview)
        FrontCategoryModel(
          categoryCode: categoryOverview.categoryCode,
          categoryName: categoryOverview.categoryName,
          categoryThumbnail: categoryOverview.categoryThumbnail,
        ),
    ];
    final categoryTabs = [
      for (final categoryOverview in categoriesOverview)
        FrontCategoryModel(
          categoryCode: categoryOverview.code,
          categoryName: categoryOverview.name,
          categoryLevel: context.watch<int>(),
        ),
    ];

    final media = AppMediaQuery.of(context).size;
    final padding = AppMediaQuery.of(context).padding;
    final bottom = padding.bottom + kBottomNavigationBarHeight;
    logger.info(bottom);
    final top = AppMediaQuery.of(context).headerHeight + SearchAppBar.height + CategoryTabBar.height;
    logger.info(top);
    final size = Size(media.width, media.height - (top + bottom));
    final categorySummaries = model.isNotEmpty ? model.first.categorys : const <CategorySummaryDataModel>[];

    final productsCategorySummaryLoadingStatus =
        context.select((MainCategoryTabPageState state) => state.productsCategorySummaryLoadingStatus);

    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16),
      width: size.width,
      height: size.height,
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: ComplianceWarningLabels(categoryType: context.watch<CategoryType>()),
          ),
          const SliverToBoxAdapter(child: SaleByMeasureImage()),
          const SliverToBoxAdapter(child: _CategoryTitle()),
          SliverToBoxAdapter(
            child: CategoryPanels(
              categoryPanels: categoryPanels,
              isOpenFunction: (context) => context.select((MainCategoryTabPageState state) => state.isOpen),
              categoryCountInClose: 4,
              categoryType: context.watch<CategoryType>(),
              categoryLevel: context.watch<int>(),
            ),
          ),
          SliverVisibility(
            visible: categoryPanels.length > 4,
            sliver: SliverToBoxAdapter(
              child: Center(
                child: CategoryOpenCloseButton(
                  isOpenFunction: (context) => context.select((MainCategoryTabPageState state) => state).isOpen,
                  onPressed: (context) => context.read<MainCategoryTabPageViewModel>().isOpenChange(),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 32),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                if (index >= categorySummaries.length) {
                  return null;
                }
                final category = categorySummaries[index];
                return ProductCassetteSet(
                  products: category.products,
                  categoryName: category.categoryName,
                  needLinkLabel: category.products.length > 3,
                  onPressed: () async {
                    final categoryLevel = context.read<int>();
                    final categoryType = context.read<CategoryType>();
                    if (category.type.isAkahon) {
                      Navigator.of(context).push(AkachanhonpoCategoryTopPage.route());
                    } else if (categoryLevel == 2) {
                      Navigator.of(context).push(
                        MainCategoryProductsPage.route(
                          categoryTabs: categoryTabs,
                          targetCategoryCode: category.categoryCode,
                          categoryType: categoryType,
                        ),
                      );
                    } else {
                      Navigator.of(context).push(
                        SubCategoryPage.route(
                          categoryTabs: categoryTabs,
                          targetCategoryCode: category.categoryCode,
                          categoryType: categoryType,
                        ),
                      );
                    }
                  },
                  cartButtonKey: context.watch<GlobalKey<CartButtonState>>(),
                );
              }),
            ),
          ),
          if (productsCategorySummaryLoadingStatus == ProductsCategorySummaryLoadingStatus.fullLoading)
            const SliverToBoxAdapter(child: Center(child: CupertinoActivityIndicator(radius: 24))),
          if (productsCategorySummaryLoadingStatus == ProductsCategorySummaryLoadingStatus.fullLoadingFailed)
            SliverToBoxAdapter(
              child: Center(
                child: Column(
                  children: [
                    const Text('商品を読み込めませんでした。しばらく時間をおいてから、画面を更新して再度お試しください。',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.gray2,
                          fontWeight: FontWeight.w300,
                          height: 19 / 14,
                        )),
                    const SizedBox(height: 12),
                    BlueTextButton.underline(
                      child: const Text(
                        '再読み込みする',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          height: 19 / 14,
                        ),
                      ),
                      onPressed: () => context.read<LoadingViewModel>().load(),
                    ),
                  ],
                ),
              ),
            ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: AttentionText(),
            ),
          ),
          if (context.watch<CategoryType>().isDrug)
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: AboutMedicalProduct(),
              ),
            ),
          if (context.watch<CategoryType>().isDrug)
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: DrugConfirmation(),
              ),
            ),
          if (context.watch<CategoryType>().isDrug)
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: DrugShopInfo(),
              ),
            ),
          if (context.watch<CategoryType>().isAkahon)
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: AkachanhonpoShopInfo(),
              ),
            ),
          const SliverToBoxAdapter(child: SizedBox(height: 90)),
        ],
      ),
    );
  }
}
