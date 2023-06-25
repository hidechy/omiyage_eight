import 'package:flutter/material.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../enum/category_type.dart';
import '../../../enum/screen_name.dart';
import '../../../enum/search_history_type.dart';
import '../../../util/access_point_info_manager.dart';
import '../../../util/logger.dart';
import '../../common/app_cached_network_image.dart';
import '../../common/app_colors.dart';
import '../../common/app_loading.dart';
import '../../common/app_media_query.dart';
import '../../common/cart_button.dart';
import '../../common/order_changing_bar.dart';
import '../../common/search_app_bar.dart';
import '../../common/total_price.dart';
import '../../state/akachanhonpo_category_top_page_state.dart';
import '../../view_model/akachanhonpo_category_top_page_view_model.dart';
import '../product_search_results_page.dart';
import '../sub_category_page.dart';

/// 赤ちゃん本舗カテゴリトップ画面
class AkachanhonpoCategoryTopPage extends StatelessWidget {
  const AkachanhonpoCategoryTopPage({Key? key}) : super(key: key);

  static Route<Object?> route([Object? arguments]) => MaterialPageRoute<Object?>(
        builder: (_) => const AkachanhonpoCategoryTopPage(),
        settings: RouteSettings(name: name, arguments: arguments),
      );

  static final name = ScreenName.akachanhonpoCategoryTopPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build AkachanhonpoCategoryTopPage');
    return Scaffold(
      appBar: SearchAppBar(
        historyType: SearchHistoryType.product,
        onSubmitted: (String keyword) {
          return Navigator.push(context, ProductSearchResultsPage.route(keyword: keyword));
        },
      ),
      body: Column(
        children: [
          const OrderChangingBar(),
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
    return StateNotifierProvider<AkachanHonpoCategoryTopPageViewModel, AkachanhonpoCategoryTopPageState>(
      create: (_) => AkachanHonpoCategoryTopPageViewModel(),
      builder: (context, _) {
        return LoadingFullScreen(
          future: context.read<AkachanHonpoCategoryTopPageViewModel>().load,
          content: SingleChildScrollView(
            child: Column(
              children: const [
                _CategoryTopHeader(),
                _CategoryHeader(),
                _CategoryList(),
                _CategoryFooter(),
                _StoreInfo(),
                _StoreFooter(),
                SizedBox(height: 90),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _CategoryTopHeader extends StatelessWidget {
  const _CategoryTopHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCachedNetworkImage(
      imageUrl: '$iynsStaticImagesBaseUrlAndSpPath/akachanhonpo-main-visual.jpg',
      fit: BoxFit.contain,
      errorBuilder: (_, __, ___) => const SizedBox.shrink(),
    );
  }
}

class _CategoryHeader extends StatelessWidget {
  const _CategoryHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
      alignment: Alignment.centerLeft,
      child: const Text(
        'アカチャンホンポ商品カテゴリー',
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 18,
          height: 25 / 18,
          fontWeight: FontWeight.w600,
          color: AppColors.black2,
        ),
      ),
    );
  }
}

class _CategoryList extends StatelessWidget {
  const _CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryList = context.select((AkachanhonpoCategoryTopPageState state) => state.model.categoryList);
    final isEmpty = context.select((AkachanhonpoCategoryTopPageState state) => state.model.categoryList.isEmpty);
    final size = AppMediaQuery.of(context).size;
    return !isEmpty
        ? Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
            child: GridView.count(
              crossAxisCount: 2,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: size.custom((size) => size.height > size.width ? 2.18 : 5),
              children: categoryList
                  .map(
                    (category) => _CategoryCard(
                      thumbnailUrl: '$iynsAwsS3/images/categories/akahon/${category.fileName}',
                      categoryName: category.categoryName,
                      onTap: () {
                        Navigator.of(context).push(
                          SubCategoryPage.route(
                            categoryTabs: categoryList,
                            categoryType: CategoryType.akahon,
                            targetCategoryCode: category.categoryCode,
                          ),
                        );
                      },
                    ),
                  )
                  .toList(),
            ),
          )
        : const SizedBox.shrink();
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required this.thumbnailUrl,
    required this.categoryName,
    required this.onTap,
  }) : super(key: key);
  final String thumbnailUrl;
  final String categoryName;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(4), border: Border.all(color: AppColors.blackShadow)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                height: 64,
                width: 64,
                child: AppCachedNetworkImage(
                  imageUrl: thumbnailUrl,
                  errorBuilder: (_, __, ___) => const SizedBox.shrink(),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Text(
                  categoryName,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 19 / 14,
                    fontWeight: FontWeight.w300,
                    color: AppColors.black2,
                  ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}

class _CategoryFooter extends StatelessWidget {
  const _CategoryFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
      child: Text(
        '※店舗によってお取り扱いのないカテゴリーもございます。',
        style: TextStyle(
          fontSize: 14,
          height: 19 / 14,
          fontWeight: FontWeight.w300,
          color: AppColors.gray1,
        ),
      ),
    );
  }
}

class _StoreInfo extends StatelessWidget {
  const _StoreInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.blackBorder,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: const [
                  _StoreHeader(),
                  _StoreList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _StoreHeader extends StatelessWidget {
  const _StoreHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.maxFinite,
      child: Text(
        'アカチャンホンポ実施店舗',
        style: TextStyle(
          fontSize: 16,
          height: 22 / 16,
          fontWeight: FontWeight.w600,
          color: AppColors.black2,
        ),
      ),
    );
  }
}

class _StoreList extends StatelessWidget {
  const _StoreList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final storeList = context.select((AkachanhonpoCategoryTopPageState state) => state.model.storeList);
    final isEmpty = context.select((AkachanhonpoCategoryTopPageState state) => state.model.storeList.isEmpty);
    return !isEmpty
        ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: AppColors.blackBorder,
                  ),
                ),
              ),
              child: Column(
                children: storeList
                    .map(
                      (storeInfo) => _InsertContent(
                        areaName: storeInfo.area,
                        storeName: storeInfo.stores.join('、'),
                      ),
                    )
                    .toList(),
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}

class _InsertContent extends StatelessWidget {
  const _InsertContent({
    Key? key,
    required this.areaName,
    required this.storeName,
  }) : super(key: key);
  final String areaName;
  final String storeName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.blackBorder)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 14,
            height: 19 / 14,
            fontWeight: FontWeight.w300,
            color: AppColors.black2,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  areaName,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(storeName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StoreFooter extends StatelessWidget {
  const _StoreFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
      child: SizedBox(
        width: double.maxFinite,
        child: Text(
          '※ネットスーパーでは、上記店舗がアカチャンホンポ実施店舗となります。',
          style: TextStyle(
            fontSize: 14,
            height: 19 / 14,
            fontWeight: FontWeight.w300,
            color: AppColors.gray1,
          ),
        ),
      ),
    );
  }
}
