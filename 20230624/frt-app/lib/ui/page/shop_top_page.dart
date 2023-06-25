import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:collection/collection.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../data/api/model/base_category_model.dart';
import '../../data/api/model/message_model.dart';
import '../../data/api/model/recipes_model.dart';
import '../../enum/analytics_event_type.dart';
import '../../enum/event_parameter_type.dart';
import '../../enum/notification_type.dart';
import '../../enum/recipe_search_type.dart';
import '../../enum/screen_name.dart';
import '../../enum/search_history_type.dart';
import '../../enum/tap_contents.dart';
import '../../gen/assets.gen.dart';
import '../../util/access_point_info_manager.dart';
import '../../util/analytics_manager.dart';
import '../../util/authentication_manager.dart';
import '../../util/basic_authentication_manager.dart';
import '../../util/logger.dart';
import '../../util/text_formatter.dart';
import '../common/akachanhonpo_shop_info.dart';
import '../common/alert_for_migration.dart';
import '../common/app_buttons.dart';
import '../common/app_cached_network_image.dart';
import '../common/app_colors.dart';
import '../common/app_image_not_found.dart';
import '../common/app_loading.dart';
import '../common/cart_button.dart';
import '../common/cassette_label_and_link_row.dart';
import '../common/category_tab_bar.dart';
import '../common/delivery_datetime_insertion_bar.dart';
import '../common/drug_confirmation.dart';
import '../common/drug_shop_info.dart';
import '../common/html_parser.dart';
import '../common/image_slider_indicator.dart';
import '../common/insertion_bar.dart';
import '../common/order_changing_bar.dart';
import '../common/product_cassette_set.dart';
import '../common/pull_to_refresh.dart';
import '../common/sale_by_measure_image.dart';
import '../common/search_app_bar.dart';
import '../common/shop_info_footer.dart';
import '../common/total_price.dart';
import '../state/customer_state.dart';
import '../state/shop_info_state.dart';
import '../state/shop_top_page_state.dart';
import '../view_model/shop_top_page_view_model.dart';
import 'banner_special_feature_detail_page.dart';
import 'main_category_tab_page.dart';
import 'notification_detail_web_view_page.dart';
import 'notifications_web_view_page.dart';
import 'orders_page.dart';
import 'product_search_results_page.dart';
import 'recipe_detail_page.dart';
import 'recipes_page.dart';

/// 店舗トップページ
class ShopTopPage extends StatelessWidget {
  const ShopTopPage({Key? key}) : super(key: key);

  static Route<Object?> route([Object? arguments]) {
    return MaterialPageRoute<Object?>(
      builder: (_) => const ShopTopPage(),
      settings: RouteSettings(name: name),
    );
  }

  static final name = ScreenName.shopTopPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build ShopTopPage');
    return MultiProvider(
      providers: [
        StateNotifierProvider<ShopTopPageViewModel, ShopTopPageState>(
          create: (_) => ShopTopPageViewModel(),
        ),
        Provider(create: (_) => GlobalKey<CartButtonState>()),
      ],
      builder: (context, _) {
        final isMember = context.select((CustomerState state) => state.isMember);
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
                      LoadingFullScreen(
                        future: () => context.read<ShopTopPageViewModel>().load(isMember),
                        content: const _CategoryTab(),
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
          floatingActionButton: CartButton(
            key: context.watch<GlobalKey<CartButtonState>>(),
          ),
        );
      },
    );
  }
}

/// カテゴリタブ
class _CategoryTab extends StatelessWidget {
  const _CategoryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryTabs = context.select((ShopTopPageState state) => state.categoryTabs);

    return CategoryTabBar(
      tabs: Map.fromIterable(categoryTabs,
          value: (dynamic categoryTab) => (categoryTab as BaseCategoryModel).code.isNotEmpty
              ? MainCategoryTabPage(
                  categoryCode: categoryTab.code,
                  cartButtonKey: context.watch<GlobalKey<CartButtonState>>(),
                  // MainCategoryTabPageで叩くカテゴリ商品サマリAPIではカテゴリ階層が取れない
                  // 遷移先の判定のため、店舗トップで取得したフロント用カテゴリAPIの結果のカテゴリ階層を渡す
                  categoryLevel: categoryTab.level + 1,
                  categoryType: categoryTab.type,
                )
              : const _FeaturePage()),
    );
  }
}

/// 特集ページ
class _FeaturePage extends StatelessWidget {
  const _FeaturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shopInfo = context.select((ShopInfoState state) => state.shopInfo);
    final medicineConfirms = context.select((ShopInfoState state) => state.medicineConfirms);
    final isMember = context.select((CustomerState state) => state.isMember);
    return VisibilityDetector(
      key: GlobalKey(),
      onVisibilityChanged: (VisibilityInfo info) {
        if (info.visibleFraction == 1) {
          final context = (info.key as GlobalKey).currentContext;
          final viewModel = context?.read<ShopTopPageViewModel>();
          if (viewModel?.mounted == true) {
            viewModel!.getOrderHistories();
          }
        }
      },
      child: PullToRefresh(
        onRefresh: (BuildContext context) async => context.read<ShopTopPageViewModel>().onRefresh(isMember),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AlertForMigration(), // 移行期間中アラート
              const _DeliveryAddressInsertionBar(), // 配達可能エリア & 配達不可エリア
              if (isMember) const DeliveryDatetimeInsertionBar(), // 受け取り日時
              const _EmergencyNotificationList(), // 緊急告知
              const _ImportantNotification(), // 重要なお知らせ or 配送規制
              const _DeliveryScheduleBar(), // 配達予定注文あり
              const _RecommendationRecipes(), // おすすめレシピ
              const _ProductCassetteListWithSellingOff(), // 売り切りセール
              const _ProductCassetteListWithBanners(), // 8連バナー商品表示
              const _ProductCassetteListWithSevenPremium(), // セブンプレミアム
              const _ProductCassetteListWithToUserRecommends(), // あなたへのおすすめ
              const _AlcoholAnnotationBanner(), // お酒の注意喚起バナー
              const _BannerSlider(), // 8連バナースライダー
              const SaleByMeasureImage(margin: EdgeInsets.fromLTRB(16.0, 0, 16.0, 32.0)), // 不定貫注意喚起
              const _ShopNotification(), // 店舗からのお知らせ
              if (shopInfo.isDrugShop)
                const Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 32.0),
                  child: DrugConfirmation(), // 医薬品の購入事前確認
                ),
              if (medicineConfirms != null && shopInfo.isDrugShop)
                const Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 32.0),
                  child: DrugShopInfo(),
                ), // 担当店情報 - 赤ちゃん本舗
              if (shopInfo.isAkachanhonpoShop)
                const Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 32.0),
                  child: AkachanhonpoShopInfo(),
                ),
              const SizedBox(height: 40),
              const ShopInfoFooter(),
              const SizedBox(height: 90),
            ],
          ),
        ),
        // ),
      ),
    );
  }
}

/// 配達可能エリア & 配達不可エリア 差し込み
class _DeliveryAddressInsertionBar extends StatelessWidget {
  const _DeliveryAddressInsertionBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isVisitor = context.select((CustomerState state) => state.isVisitor);
    final postalNumber = context.select((CustomerState state) => state.visitor?.postalNumber);
    if (isVisitor && postalNumber != null) {
      return InsertionBar(
        title: '受け取り住所',
        content: '〒${formatToSeparatedZipCode(postalNumber)} にお届け',
        buttonText: '変更する',
        onPressed: () {
          GetIt.I<AuthenticationManager>().logout();
        },
      );
    } else if (isVisitor && postalNumber == null) {
      return InsertionBar(
        title: '担当店舗',
        content: '対象エリア外',
        buttonText: '担当店舗の確認',
        onPressed: () {
          GetIt.I<AuthenticationManager>().logout();
        },
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}

/// 配達予定注文あり or クレジットカードエラーの差し込み
class _DeliveryScheduleBar extends StatelessWidget {
  const _DeliveryScheduleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: context.select((ShopTopPageState state) => state.hasOrders),
      child: Container(
        height: 40,
        width: double.infinity,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: const BoxDecoration(color: AppColors.background2),
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: context.select((ShopTopPageState state) => state.hasCreditError)
                    ? const Text(
                        'カードエラーの注文があります',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.warning1,
                          height: 19 / 14,
                        ),
                      )
                    : const Text(
                        '受け取り予定の注文があります',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          height: 19 / 14,
                        ),
                      ),
              ),
            ),
            BlueElevatedButton.small(
              onPressed: () {
                Navigator.push(context, OrdersPage.route());
              },
              child: const Text('注文変更'),
            ),
          ],
        ),
      ),
    );
  }
}

/// 緊急告知差し込みリスト
class _EmergencyNotificationList extends StatelessWidget {
  const _EmergencyNotificationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notifications = context
        .select((ShopTopPageState state) => state.notifications)
        .where((notification) => notification.messageDiv == NotificationType.urgent);
    return notifications.isNotEmpty
        ? Column(
            children: [
              for (MessageModel notification in notifications)
                _AlertInsertionBar(
                  content: notification.title,
                  detail: notification,
                ),
            ],
          )
        : const SizedBox.shrink();
  }
}

/// 重要なお知らせ or 配送規制
class _ImportantNotification extends StatelessWidget {
  const _ImportantNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDeliveryRestriction = context.select((ShopTopPageState state) => state.isDeliveryRestriction);
    final title = context.select((ShopTopPageState state) => state.notifications
        .firstWhereOrNull((notification) => notification.messageDiv == NotificationType.important)
        ?.title);
    return (!isDeliveryRestriction && title == null)
        ? const SizedBox.shrink()
        : Column(
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.background2,
                ),
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 19 / 14,
                    color: AppColors.black2,
                  ),
                  textAlign: TextAlign.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('重要なお知らせ'),
                          BlueTextButton.medium(
                            child: const Text(
                              '確認する',
                            ),
                            onPressed: () {
                              final analytics = GetIt.I<AnalyticsManager>();
                              analytics.sendEvent(eventType: AnalyticsEventType.confirmInformationDetail);

                              Navigator.push(context, NotificationsWebView.route());
                            },
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          isDeliveryRestriction ? '配達規制のお知らせ' : title!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
  }
}

class _BannerImage extends StatelessWidget {
  const _BannerImage({
    Key? key,
    required this.imageUrl,
    this.onTap,
  }) : super(key: key);

  final String imageUrl;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return AppCachedNetworkImage(
      imageUrl: imageUrl,
      fit: BoxFit.fitWidth,
      imageBuilder: (context, image) => LayoutBuilder(
        builder: (context, constraints) => Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: InkWell(
            child: SizedBox(width: constraints.maxWidth, child: image),
            onTap: onTap,
          ),
        ),
      ),
      errorBuilder: (_, __, ___) => const SizedBox.shrink(),
    );
  }
}

/// 8連バナー商品表示
class _ProductCassetteListWithBanners extends StatelessWidget {
  const _ProductCassetteListWithBanners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bannerSummaries = context.select((ShopTopPageState state) => state.bannerSummaries.take(3));
    if (bannerSummaries.isEmpty) {
      return const SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Column(
        children: [
          for (var bannerSummary in bannerSummaries)
            Column(
              children: [
                CassetteLabelAndLinkRow(
                  onPressed: () async {
                    final analytics = GetIt.I<AnalyticsManager>();
                    analytics.sendEvent(
                        eventType: AnalyticsEventType.selectBannerFeatureDetail,
                        parameters: {EventParameterType.bannerAdvertisingId: bannerSummary.bannerAdvertisingId});
                    _navigatorPush(
                      context,
                      bannerSummary.bannerAdvertisingId,
                      bannerSummary.category1Code,
                    );
                  },
                  needLabel: true,
                  needLinkLabel: bannerSummary.products.length > 3,
                  titleLabel: bannerSummary.bannerAdvertisingName,
                ),
                if (bannerSummary.imageUrl.isNotEmpty)
                  _BannerImage(
                    imageUrl: bannerSummary.imageUrl,
                    onTap: () {
                      final analytics = GetIt.I<AnalyticsManager>();
                      analytics.sendEvent(
                          eventType: AnalyticsEventType.selectBannerFeatureDetail,
                          parameters: {EventParameterType.bannerAdvertisingId: bannerSummary.bannerAdvertisingId});
                      _navigatorPush(
                        context,
                        bannerSummary.bannerAdvertisingId,
                        bannerSummary.category1Code,
                      );
                    },
                  ),
                Provider<AnalyticsParam>.value(
                  value: AnalyticsParam(
                      advertisingId: bannerSummary.bannerAdvertisingId, tapContents: TapContents.banners.value),
                  updateShouldNotify: (previous, current) => previous.advertisingId != current.advertisingId,
                  child: ProductCassetteSet(
                    products: bannerSummary.products.take(3).toList(),
                    categoryName: '',
                    onPressed: () async {},
                    cartButtonKey: context.watch<GlobalKey<CartButtonState>>(),
                    needLabel: false,
                    needLinkLabel: false,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }

  Future<void> _navigatorPush(BuildContext context, String bannerAdvertisingId, String categoryCode) async {
    Navigator.push(
      context,
      BannerSpecialFeatureDetailPage.route(
        bannerAdvertisingId: bannerAdvertisingId,
        categoryCode: categoryCode,
      ),
    );
  }
}

/// アラート差し込み
class _AlertInsertionBar extends StatelessWidget {
  const _AlertInsertionBar({Key? key, required this.content, this.detail}) : super(key: key);

  final String content;

  final MessageModel? detail;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: AppColors.warning1,
        fontSize: 12,
        fontWeight: FontWeight.w600,
        height: 16 / 12,
      ),
      textAlign: TextAlign.center,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.warning2,
        ),
        padding: EdgeInsets.fromLTRB(detail != null ? 33 : 16, 9, 16, 8),
        margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                content,
                overflow: TextOverflow.visible,
              ),
            ),
            if (detail != null)
              Padding(
                padding: const EdgeInsets.only(left: 33),
                child: AppTextButton(
                  child: const Text(
                    '詳細を確認',
                    style: TextStyle(
                      color: AppColors.warning1,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      height: 16 / 12,
                    ),
                  ),
                  onPressed: () {
                    final analytics = GetIt.I<AnalyticsManager>();
                    analytics.sendEvent(eventType: AnalyticsEventType.confirmInformationDetail);

                    Navigator.push(context, NotificationDetailWebViewPage.route(notification: detail!));
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}

/// おすすめレシピ
class _RecommendationRecipes extends StatelessWidget {
  const _RecommendationRecipes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firstRecipesModel = context.select(
        (ShopTopPageState state) => state.recommendationRecipes.isNotEmpty ? state.recommendationRecipes[0] : null);
    final secondRecipesModel = context.select(
        (ShopTopPageState state) => state.recommendationRecipes.length >= 2 ? state.recommendationRecipes[1] : null);
    if (firstRecipesModel == null || secondRecipesModel == null) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
      child: Column(
        children: [
          CassetteLabelAndLinkRow(
            titleLabel: 'おすすめレシピ',
            needLabel: true,
            needLinkLabel: true,
            onPressed: () => Navigator.push(context, RecipesPage.route(searchType: RecipeSearchType.recommendation)),
          ),
          _RecipeCassette(recipesModel: firstRecipesModel),
          const SizedBox(height: 8),
          _RecipeCassette(recipesModel: secondRecipesModel),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerRight,
            child: SvgPicture.network(
              iynsStaticImagesBaseUrlAndPath + '/logo-delish-kitchen.svg',
              placeholderBuilder: (_) => const SizedBox.shrink(),
              headers: context.select((BasicAuthenticationState state) => state.base64Header),
            ),
          ),
        ],
      ),
    );
  }
}

class _RecipeCassette extends StatelessWidget {
  const _RecipeCassette({
    Key? key,
    required this.recipesModel,
  }) : super(key: key);

  final RecipesModel recipesModel;

  static const verticalMargin_4 = SizedBox(height: 4);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          type: MaterialType.button,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color: AppColors.background2,
          child: InkWell(
            onTap: () {
              final analytics = GetIt.I<AnalyticsManager>();
              analytics.sendEvent(
                eventType: AnalyticsEventType.selectRecipeDetail,
                parameters: {EventParameterType.recipeId: recipesModel.id},
              );

              Navigator.push(context, RecipeDetailPage.route(recipesModel.id));
            },
            child: Container(
              constraints: const BoxConstraints(maxHeight: 140),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  // カセット内コンテンツ カセット幅の半分
                  final width = constraints.maxWidth / 2;
                  return IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: constraints.maxHeight,
                          width: width,
                          child: Stack(
                            fit: StackFit.passthrough,
                            children: [
                              AppCachedNetworkImage(
                                fit: BoxFit.fitWidth,
                                imageUrl: recipesModel.squareVideo.posterUrl,
                                errorBuilder: (_, __, ___) => const AppImageNotFound(isGrayBack: true),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 4, bottom: 4),
                                  child: SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: Assets.icons.recipeVideoPlayCircle.svg(),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        DefaultTextStyle(
                          style: const TextStyle(
                            color: AppColors.black2,
                            fontSize: 11,
                            fontWeight: FontWeight.w300,
                            height: 15 / 11,
                          ),
                          child: SizedBox(
                            width: width,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(11, 12, 12, 8),
                              child: SingleChildScrollView(
                                physics: const NeverScrollableScrollPhysics(),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      recipesModel.title,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        height: 22 / 16,
                                      ),
                                    ),
                                    verticalMargin_4,
                                    Text(
                                      recipesModel.description,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    verticalMargin_4,
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 4),
                                          child: Assets.icons.recipeTime.svg(),
                                        ),
                                        Text(
                                          recipesModel.cookingTime,
                                        ),
                                      ],
                                    ),
                                    verticalMargin_4,
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 4),
                                          child: Assets.icons.recipeCalorie.svg(),
                                        ),
                                        Text(
                                          recipesModel.calorie,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// 売り切りセール染み出し
class _ProductCassetteListWithSellingOff extends StatelessWidget {
  const _ProductCassetteListWithSellingOff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: context.select((ShopTopPageState state) => state.sellingOff.isNotEmpty),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          children: [
            CassetteLabelAndLinkRow(
              onPressed: () => _navigatorPush(context),
              needLabel: true,
              needLinkLabel: context.select((ShopTopPageState state) => state.sellingOff.length > 3),
              titleLabel: '売り切りセール',
            ),
            _BannerImage(
              imageUrl: '$iynsStaticImagesBaseUrlAndSpPath/clearance-sale.png',
              onTap: () => _navigatorPush(context),
            ),
            Provider<AnalyticsParam>.value(
              value: AnalyticsParam(tapContents: TapContents.sellingOff.value),
              updateShouldNotify: (previous, current) => previous.advertisingId != current.advertisingId,
              child: ProductCassetteSet(
                products: context.select((ShopTopPageState state) => state.sellingOff.take(3).toList()),
                categoryName: '',
                onPressed: () async {},
                cartButtonKey: context.watch<GlobalKey<CartButtonState>>(),
                needLabel: false,
                needLinkLabel: false,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _navigatorPush(BuildContext context) async {
    Navigator.push(
      context,
      ProductSearchResultsPage.route(
        facetDiscountType: '05',
      ),
    );
  }
}

/// セブンプレミアム染み出し
class _ProductCassetteListWithSevenPremium extends StatelessWidget {
  const _ProductCassetteListWithSevenPremium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: context.select((ShopTopPageState state) => state.sevenPremium.isNotEmpty),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          children: [
            CassetteLabelAndLinkRow(
              onPressed: () => _navigatorPush(context),
              needLabel: true,
              needLinkLabel: context.select((ShopTopPageState state) => state.sevenPremium.length) > 3,
              titleLabel: 'セブンプレミアム',
            ),
            _BannerImage(
              imageUrl: '$iynsStaticImagesBaseUrlAndSpPath/seven-premium-series.jpg',
              onTap: () => _navigatorPush(context),
            ),
            Provider<AnalyticsParam>.value(
              value: AnalyticsParam(tapContents: TapContents.sevenPremium.value),
              updateShouldNotify: (previous, current) => previous.advertisingId != current.advertisingId,
              child: ProductCassetteSet(
                products: context.select((ShopTopPageState state) => state.sevenPremium.take(3).toList()),
                categoryName: '',
                onPressed: () async {},
                cartButtonKey: context.watch<GlobalKey<CartButtonState>>(),
                needLabel: false,
                needLinkLabel: false,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _navigatorPush(BuildContext context) async {
    Navigator.push(
      context,
      ProductSearchResultsPage.route(
        keyword: 'セブンプレミアム',
      ),
    );
  }
}

/// あなたへのおすすめ染み出し
class _ProductCassetteListWithToUserRecommends extends StatelessWidget {
  const _ProductCassetteListWithToUserRecommends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: context.select((ShopTopPageState state) => state.toUserRecommends.isNotEmpty),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          children: [
            ProductCassetteSet(
              products: context.select((ShopTopPageState state) =>
                  state.toUserRecommends.map((toUserRecommend) => toUserRecommend.product).take(3).toList()),
              categoryName: 'あなたへのおすすめ',
              onPressed: () async {},
              cartButtonKey: context.watch<GlobalKey<CartButtonState>>(),
              needLabel: true,
              needLinkLabel: false,
            ),
            Provider<AnalyticsParam>.value(
              value: AnalyticsParam(tapContents: TapContents.toUserRecommends.value),
              child: ProductCassetteSet(
                products: context.select((ShopTopPageState state) =>
                    state.toUserRecommends.map((toUserRecommend) => toUserRecommend.product).skip(3).take(3).toList()),
                categoryName: '',
                onPressed: () async {},
                cartButtonKey: context.watch<GlobalKey<CartButtonState>>(),
                needLabel: false,
                needLinkLabel: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AlcoholAnnotationBanner extends StatelessWidget {
  const _AlcoholAnnotationBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppCachedNetworkImage(
      imageUrl: '$iynsStaticImagesBaseUrlAndSpPath/stop-20-alcohol.png',
      imageBuilder: (context, image) => Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 32.0),
        child: image,
      ),
      errorBuilder: (_, __, ___) => const SizedBox.shrink(),
    );
  }
}

class _BannerSlider extends StatelessWidget {
  const _BannerSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<BannerSliderViewModel, BannerSliderState>(
          create: (_) => BannerSliderViewModel(),
        ),
        Provider(
          create: (_) => CarouselController(),
        ),
      ],
      builder: (context, _) {
        return Visibility(
          visible: context.select((BannerSliderState state) => state.isNotEmpty),
          child: Column(
            children: const [
              _BannerSliderImages(),
              _ImageSliderIndicator(),
            ],
          ),
        );
      },
    );
  }
}

class _BannerSliderImages extends StatelessWidget {
  const _BannerSliderImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: CarouselSlider.builder(
        carouselController: context.watch<CarouselController>(),
        itemCount: context.select((BannerSliderState state) => state.length),
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: context.select((BannerSliderState state) => state.minAspectRatio),
          initialPage: context.select((BannerSliderState state) => state.index),
          viewportFraction: 1,
          onPageChanged: (index, _) => context.read<BannerSliderViewModel>().index = index,
        ),
        itemBuilder: (_, index, __) => LayoutBuilder(
          builder: (context, constraints) {
            final banner = context.select((BannerSliderState state) => state[index]);
            // リビルド時にindexが溢れてしまった場合にnullになる
            if (banner == null) {
              return const SizedBox.shrink();
            }
            return InkWell(
              child: SizedBox(
                width: constraints.maxWidth,
                child: Image.file(
                  banner.value,
                  fit: BoxFit.fitWidth,
                  errorBuilder: (_, error, ___) {
                    // 事前にファイルの存在チェックをしているので、まず発生しないエラー
                    logger.severe(error);
                    return const SizedBox.shrink();
                  },
                ),
              ),
              onTap: () {
                final analytics = GetIt.I<AnalyticsManager>();
                analytics.sendEvent(
                    eventType: AnalyticsEventType.selectBannerCarouselSlider,
                    parameters: {EventParameterType.bannerAdvertisingId: banner.key.bannerAdvertisingId});
                Navigator.push(
                  context,
                  BannerSpecialFeatureDetailPage.route(
                    bannerAdvertisingId: banner.key.bannerAdvertisingId,
                    categoryCode: banner.key.category1Code,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class _ImageSliderIndicator extends StatelessWidget {
  const _ImageSliderIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: ImageSliderIndicator(
        itemCount: context.select((BannerSliderState state) => state.length),
        currentIndex: context.select((BannerSliderState state) => state.index),
        onTap: (index) {
          context.read<BannerSliderViewModel>().index = index;
          context.read<CarouselController>().animateToPage(index);
        },
      ),
    );
  }
}

/// 店舗からのお知らせ
class _ShopNotification extends StatelessWidget {
  const _ShopNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textList = context
        .select((ShopTopPageState state) => state.notifications
            .where((notification) => notification.messageDiv == NotificationType.shop && notification.text.isNotEmpty))
        .toList();
    final text = textList.map((MessageModel message) => message.text).toList().join('<br/>');
    final shopName = context.select((ShopInfoState state) => state.shopInfo.shopName);
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 32.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.inactive, width: 1.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '店舗からのお知らせ\n$shopName',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 22 / 16,
                color: AppColors.black2,
              ),
            ),
            const SizedBox(height: 16),
            Visibility(
              visible: textList.isNotEmpty,
              replacement: const Text('ただいま店舗からのお知らせはありません。'),
              child: HtmlParser(
                value: text,
                fontStyle: const TextStyle(
                  fontSize: 14,
                  height: 19 / 14,
                  color: AppColors.black2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
