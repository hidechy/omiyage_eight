import 'dart:io';
import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:get_it/get_it.dart';
import 'package:image_size_getter/file_input.dart';
import 'package:image_size_getter/image_size_getter.dart' hide Size;
import 'package:intl/intl.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../data/api/model/banner_summary_model.dart';
import '../../data/api/model/base_category_model.dart';
import '../../data/api/model/front_categories_model.dart';
import '../../data/repository/banners_repository.dart';
import '../../data/repository/front_repository.dart';
import '../../data/repository/notices_repository.dart';
import '../../data/repository/orders_repository.dart';
import '../../data/repository/products_repository.dart';
import '../../enum/notification_type.dart';
import '../../enum/order_fulfillment_type.dart';
import '../../enum/order_status.dart';
import '../../enum/recommend_type.dart';
import '../../enum/sort_number.dart';
import '../../util/basic_authentication_manager.dart';
import '../../util/cart_info_manager.dart';
import '../../util/customer_manager.dart';
import '../../util/iyns_cache_manager.dart';
import '../../util/logger.dart';
import '../../util/shop_info_manager.dart';
import '../state/shop_top_page_state.dart';

class ShopTopPageViewModel extends StateNotifier<ShopTopPageState> with LocatorMixin {
  ShopTopPageViewModel() : super(const ShopTopPageState());

  CartInfoManager get _cartInfoManager => read();

  CustomerManager get _customerManager => read();

  ShopInfoManager get _shopInfoManager => read();

  Future<bool> load(bool isMember) async {
    final categoryTabs = await _getFrontCategory();
    final bannerSummaries = await _getBannerSummary();

    state = state.copyWith(categoryTabs: categoryTabs, bannerSummaries: bannerSummaries);

    // getOrderHistoriesの中で判断しているので、ここは不要になるはずなので見直しが必要
    if (isMember) {
      // 待たなくても良いが、後続処理のstate更新のタイミングとバッティングしてbuild中にbuildが走る事によるエラーを避けるためにawaitする
      await getOrderHistories();
    }

    final futureList = [
      _getProductsForSellingOff(),
      _getProductsForSevenPremium(),
      _getRecommendedProduct(),
      _getNotifications(),
      _getRecommendationRecipes(),
    ];
    await Future.wait(futureList);

    return true;
  }

  Future<bool> onRefresh(bool isMember) async {
    await _customerManager.getInfo();
    return await load(isMember);
  }

  /// カテゴリ取得
  Future<List<BaseCategoryModel>> _getFrontCategory() async {
    final response = await GetIt.I<FrontRepository>().getFrontCategory(shopCode: _cartInfoManager.info.shop.shopCode);
    final categories = response.data;
    return categories..insert(0, const FrontCategoriesModel(categoryCode: '', categoryName: '特集', categoryLevel: 0));
  }

  /// 8連バナー商品サマリ
  Future<List<BannerSummaryModel>> _getBannerSummary() async {
    final response = await GetIt.I<BannersRepository>().getBannerSummary(
      shopCode: _cartInfoManager.info.shop.shopCode,
      productCount: 4,
      cartId: _cartInfoManager.info.cartId,
    );
    return response.data;
  }

  /// 注文履歴取得
  Future<void> getOrderHistories() async {
    final fulfillmentTypes = [
      OrderFulfillmentType.homeDelivery,
      OrderFulfillmentType.shipment,
      OrderFulfillmentType.clickAndCollect,
      OrderFulfillmentType.pickup,
    ];
    if (!_customerManager.info.isMember) {
      return;
    }

    final deliveryStatuses = [
      OrderStatus.undeliveried,
      OrderStatus.creditError,
    ];
    try {
      final response = await GetIt.I<OrdersRepository>().getOrderHistories(
        fulfillmentTypes: fulfillmentTypes,
        page: 0,
        deliveryStatuses: deliveryStatuses,
      );
      final histories = response.first.histories;
      state = state.copyWith(
        hasOrders: histories.isNotEmpty,
        hasCreditError: histories.any((history) => history.status == OrderStatus.creditError),
      );
    } catch (_) {
      // 全てのエラーを握り潰す必要があるため
    }
  }

  /// お知らせ情報取得
  Future<void> _getNotifications() async {
    try {
      final response = await GetIt.I<NoticesRepository>().getNotifications(
        notificationTypes: const [NotificationType.important, NotificationType.urgent, NotificationType.shop],
        shopCode: _cartInfoManager.info.shop.shopCode,
      );
      state = state.copyWith(
        notifications: response.first.messages,
        isDeliveryRestriction: response.first.importantNotification?.isDeliveryControlOneWeek ?? false,
      );
    } catch (_) {
      // 全てのエラーを握り潰す必要があるため
    }
  }

  /// おすすめレシピ
  Future<void> _getRecommendationRecipes() async {
    try {
      final response = await GetIt.I<FrontRepository>().getRecommendations(
        date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
      );
      state = state.copyWith(recommendationRecipes: response.first.recipes);
    } catch (_) {
      // 全てのエラーを握り潰す必要があるため
    }
  }

  /// 売り切りセール商品情報取得
  Future<void> _getProductsForSellingOff() async {
    if (_shopInfoManager.isCenterShop) {
      final responseForSellingOff = await GetIt.I<ProductsRepository>().getProducts(
        page: 1,
        viewCount: 4,
        sortNumber: SortNumber.recommendation,
        shopCode: _cartInfoManager.info.shop.shopCode,
        facetDiscountType: '05',
        cartId: _cartInfoManager.info.cartId,
      );
      state = state.copyWith(sellingOff: responseForSellingOff.first.products);
    }
  }

  /// セブンプレミアム商品情報取得
  Future<void> _getProductsForSevenPremium() async {
    final responseForSevenPremium = await GetIt.I<ProductsRepository>().getProducts(
      page: 1,
      viewCount: 4,
      cartId: _cartInfoManager.info.cartId,
      sortNumber: SortNumber.recommendation,
      shopCode: _cartInfoManager.info.shop.shopCode,
      searchWord: 'セブンプレミアム',
    );
    state = state.copyWith(sevenPremium: responseForSevenPremium.first.products);
  }

  /// レコメンド情報取得
  Future<void> _getRecommendedProduct() async {
    // 見学で叩いたらエラーが発生したため
    if (_customerManager.info.isMember) {
      final response = await GetIt.I<ProductsRepository>().getRecommendedProduct(
        cartId: _cartInfoManager.info.cartId,
        shopCode: _cartInfoManager.info.shop.shopCode,
        page: 0,
        viewCount: 6,
        recommendType: RecommendType.toUser,
      );
      state = state.copyWith(toUserRecommends: response.data);
    }
  }
}

class BannerSliderViewModel extends StateNotifier<BannerSliderState> with LocatorMixin {
  BannerSliderViewModel() : super(const BannerSliderState());

  set index(int i) => state = state.copyWith(index: i);

  Iterable<BannerSummaryModel> _oldBanners = const Iterable.empty();
  Map<String, String>? _oldHeaders;

  @override
  void update(Locator watch) {
    final banners = watch<ShopTopPageState>().bannerSummaries.skip(3);
    final headers = watch<BasicAuthenticationState>().base64Header;
    // fetchImagesを何度も呼びたくないので、以前とバナー、ヘッダーが変わらないなら呼び出さない
    if (const DeepCollectionEquality().equals(banners, _oldBanners) &&
        const DeepCollectionEquality().equals(headers, _oldHeaders)) {
      return;
    }
    _fetchImages(banners, headers: headers);
    _oldBanners = banners;
    _oldHeaders = headers;
  }

  Future<void> _fetchImages(Iterable<BannerSummaryModel> banners, {Map<String, String>? headers}) async {
    final fetches = banners.where((banner) => banner.imageUrl.isNotEmpty).map(
      (banner) async {
        logger.info(banner.imageUrl);
        try {
          // キャッシュマネージャーを直接利用することで、取得とキャッシュ化を同時に行う
          return MapEntry(
            banner,
            await iynsCacheManager.getSingleFile(
              banner.imageUrl,
              headers: GetIt.I<BasicAuthenticationManager>().urlTrusted(Uri.tryParse(banner.imageUrl)) ? headers : null,
            ),
          );
        } catch (e) {
          logger.info(e);
        }
      },
    );

    final images =
        (await Future.wait(fetches)).where((fetch) => fetch != null).cast<MapEntry<BannerSummaryModel, File>>();

    final minAspectRatioSize = minBy<Size, double>(
      images.map((entry) {
        final size = ImageSizeGetter.getSize(FileInput(entry.value));
        // image_size_getterのSizeからdart:uiのSizeに詰め替え
        return Size(size.width.toDouble(), size.height.toDouble());
      }),
      (size) => size.aspectRatio,
    );
    state = state.copyWith(
      banners: images,
      minAspectRatio: minAspectRatioSize?.aspectRatio ?? 0,
    );
  }
}
