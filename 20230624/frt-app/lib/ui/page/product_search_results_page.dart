import 'package:flutter/material.dart';

import 'package:collection/collection.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../../enum/category_type.dart';
import '../../enum/recommend_type.dart';
import '../../enum/screen_name.dart';
import '../../enum/search_history_type.dart';
import '../../enum/sort_number.dart';
import '../../util/logger.dart';
import '../common/app_colors.dart';
import '../common/app_loading.dart';
import '../common/cart_button.dart';
import '../common/order_changing_bar.dart';
import '../common/product_cassette_list_for_sortable_page.dart';
import '../common/sale_by_measure_image.dart';
import '../common/search_app_bar.dart';
import '../common/sort_modal.dart';
import '../common/total_price.dart';
import '../state/product_search_results_page_state.dart';
import '../state/shop_info_state.dart';
import '../view_model/product_search_results_page_view_model.dart';

class ProductSearchResultsPageArguments {
  ProductSearchResultsPageArguments({
    this.keyword,
    this.categoryCode,
    this.categoryName,
    this.facetDiscountType,
    this.recommendType,
    this.productId,
  }) : assert(
          () {
            if (keyword != null) {
              return true;
            } else if (facetDiscountType != null) {
              return true;
            } else if (categoryCode != null && categoryName != null) {
              return true;
            } else {
              return recommendType != null;
            }
          }(),
        );

  final String? keyword;
  final String? categoryCode;
  final String? categoryName;
  final String? facetDiscountType;
  final RecommendType? recommendType;
  final String? productId;
}

/// 検索結果画面
class ProductSearchResultsPage extends StatelessWidget {
  const ProductSearchResultsPage({Key? key}) : super(key: key);

  static Route<Object?> route({
    String? keyword,
    String? categoryCode,
    String? categoryName,
    String? facetDiscountType,
    RecommendType? recommendType,
    String? productId,
  }) =>
      MaterialPageRoute<Object?>(
        builder: (_) => Provider.value(
          value: ProductSearchResultsPageArguments(
            keyword: keyword,
            categoryCode: categoryCode,
            categoryName: categoryName,
            facetDiscountType: facetDiscountType,
            recommendType: recommendType,
            productId: productId,
          ),
          child: const ProductSearchResultsPage(),
        ),
        settings: RouteSettings(name: name),
      );

  static final name = ScreenName.productSearchResultsPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build ProductSearchResultsPage');
    return Provider(
      create: (_) => GlobalKey<CartButtonState>(),
      builder: (context, _) {
        final keyword = context.select((ProductSearchResultsPageArguments state) => state.keyword);
        return Scaffold(
          appBar: SearchAppBar(
            historyType: SearchHistoryType.product,
            initialText: keyword,
            onSubmitted: (String keyword) {
              return Navigator.pushReplacement(context, ProductSearchResultsPage.route(keyword: keyword));
            },
          ),
          body: Stack(
            children: const [
              _Body(),
              Align(
                alignment: Alignment.bottomCenter,
                child: TotalPrice(),
              ),
            ],
          ),
          floatingActionButton: CartButton(key: context.watch<GlobalKey<CartButtonState>>()),
        );
      },
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final keyword = context.select((ProductSearchResultsPageArguments state) => state.keyword);
    final categoryCode = context.select((ProductSearchResultsPageArguments state) => state.categoryCode);
    final facetDiscountType = context.select((ProductSearchResultsPageArguments state) => state.facetDiscountType);
    final recommendType = context.select((ProductSearchResultsPageArguments state) => state.recommendType);
    final productId = context.select((ProductSearchResultsPageArguments state) => state.productId);
    return StateNotifierProvider<ProductSearchResultsPageViewModel, ProductSearchResultsPageState>(
      create: (_) => ProductSearchResultsPageViewModel(),
      builder: (context, _) {
        final selectedSortNumber = context.select((ProductSearchResultsPageState state) => state.selectedSortNumber);
        return LoadingFullScreen(
          future: () => context.read<ProductSearchResultsPageViewModel>().initLoad(
                searchWord: keyword,
                searchCategoryCode: categoryCode,
                sortNumber: selectedSortNumber,
                facetDiscountType: facetDiscountType,
                recommendType: recommendType,
                productId: productId,
              ),
          content: _ProductCassetteList(
            sortNumber: selectedSortNumber,
          ),
        );
      },
    );
  }
}

class _ProductCassetteList extends StatelessWidget {
  const _ProductCassetteList({
    required this.sortNumber,
  });

  final SortNumber sortNumber;

  @override
  Widget build(BuildContext context) {
    final products = context.select((ProductSearchResultsPageState state) => state.products);
    final totalSize = context.select((ProductSearchResultsPageState state) => state.totalSize);
    final cartButtonKey = context.select((GlobalKey<CartButtonState> state) => state);
    final keyword = context.select((ProductSearchResultsPageArguments state) => state.keyword);
    final categoryCode = context.select((ProductSearchResultsPageArguments state) => state.categoryCode);
    final facetDiscountType = context.select((ProductSearchResultsPageArguments state) => state.facetDiscountType);
    final recommendType = context.select((ProductSearchResultsPageArguments state) => state.recommendType);
    final productId = context.select((ProductSearchResultsPageArguments state) => state.productId);
    final categoryType = context.select((ShopInfoState state) => state.shopInfo.isAkachanhonpoShop)
        ? CategoryType.akahon
        : CategoryType.other;
    return Column(
      children: [
        const OrderChangingBar(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: ProductCassetteListForSortablePage(
              products: products,
              totalSize: totalSize,
              cartButtonKey: cartButtonKey,
              onLoad: (page) => context.read<ProductSearchResultsPageViewModel>().getSearchProductList(
                    page: page,
                    searchWord: keyword,
                    searchCategoryCode: categoryCode,
                    sortNumber: sortNumber,
                    facetDiscountType: facetDiscountType,
                    recommendType: recommendType,
                    productId: productId,
                  ),
              noSearchResults: const _NoProductMessage(),
              firstColumn: const _HeaderRow(),
              categoryType: categoryType,
              primaryScrollController: true,
            ),
          ),
        ),
      ],
    );
  }
}

class _HeaderRow extends StatelessWidget {
  const _HeaderRow();

  @override
  Widget build(BuildContext context) {
    final isNotEmpty = context.select((ProductSearchResultsPageState state) => state.products.isNotEmpty);
    final totalSize = context.select((ProductSearchResultsPageState state) => state.totalSize);
    final keyword = context.select((ProductSearchResultsPageArguments state) => state.keyword);
    final categoryCode = context.select((ProductSearchResultsPageArguments state) => state.categoryCode);
    final facetDiscountType = context.select((ProductSearchResultsPageArguments state) => state.facetDiscountType);
    final recommendType = context.select((ProductSearchResultsPageArguments state) => state.recommendType);
    return isNotEmpty
        ? Column(
            children: [
              const _DrugCategoryLabel(),
              const SaleByMeasureImage(margin: EdgeInsets.only(top: 8)),
              const _ResultText(),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '全$totalSize件',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black2,
                        height: 16 / 14,
                      ),
                    ),
                    Offstage(
                      offstage: recommendType != null,
                      child: SortModal(
                        sortNumber: context.select((ProductSearchResultsPageState state) => state.selectedSortNumber) ??
                            SortNumber.recommendation,
                        onPressed: (sortNumberReturnValue) {
                          showLoadingModal(
                            context: context,
                            future: () => context.read<ProductSearchResultsPageViewModel>().initialize(
                                  keyword,
                                  categoryCode,
                                  sortNumberReturnValue,
                                  facetDiscountType,
                                ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        : const SizedBox.shrink();
  }
}

class _NoProductMessage extends StatelessWidget {
  const _NoProductMessage();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _ResultText(),
        Container(
          padding: const EdgeInsets.only(top: 32),
          child: const Text(
            '検索条件に該当する商品が\n見つかりませんでした',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: AppColors.gray3,
              height: 19 / 14,
            ),
          ),
        ),
      ],
    );
  }
}

/// 医薬品カテゴリ注釈
class _DrugCategoryLabel extends StatelessWidget {
  const _DrugCategoryLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final keyword = context.select((ProductSearchResultsPageArguments state) => state.keyword);
    final category = context.select((ProductSearchResultsPageState state) => state.categories
        .firstWhereOrNull((category) => category.category2Code.isNotEmpty && category.isMedicineCategory));
    if (keyword == null || category == null) {
      return const SizedBox.shrink();
    }
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.background2,
      ),
      margin: const EdgeInsets.only(top: 8, bottom: 0),
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '${category.category2Name}の「$keyword」をお探しの方は、カテゴリから選択してください。',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              height: 19 / 14,
              color: AppColors.black2,
            ),
          ),
        ],
      ),
    );
  }
}

class _ResultText extends StatelessWidget {
  const _ResultText();

  @override
  Widget build(BuildContext context) {
    final keyword = context.select((ProductSearchResultsPageArguments state) => state.keyword);
    final categoryName = context.select((ProductSearchResultsPageArguments state) => state.categoryName);
    final facetDiscountType = context.select((ProductSearchResultsPageArguments state) => state.facetDiscountType);
    final recommendType = context.select((ProductSearchResultsPageArguments state) => state.recommendType);

    var headerTitle = '';
    if (keyword != null) {
      headerTitle = '「$keyword」の検索結果(※予約商品・医薬品は含まれません)';
    } else if (facetDiscountType != null) {
      headerTitle = '売り切りセール';
    } else if (categoryName != null) {
      headerTitle = '「$categoryName」の商品';
    } else if (recommendType == RecommendType.concurrentSelling) {
      headerTitle = '関連商品';
    } else if (recommendType == RecommendType.inCart) {
      headerTitle = 'この商品を買った人はこんな商品も買っています。';
    }
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        children: [
          Text(
            headerTitle,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.black2,
              height: 25 / 18,
            ),
          ),
        ],
      ),
    );
  }
}
