import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../data/api/model/card_customer_discount_model.dart';
import '../../data/api/model/product_model.dart';
import '../../data/repository/carts_repository.dart';
import '../../data/repository/favorite_repository.dart';
import '../../data/repository/products_repository.dart';
import '../../enum/analytics_event_type.dart';
import '../../enum/event_parameter_type.dart';
import '../../enum/recommend_type.dart';
import '../../util/analytics_manager.dart';
import '../../util/cart_info_manager.dart';
import '../../util/customer_manager.dart';
import '../../util/shop_info_manager.dart';
import '../common/cart_button.dart';
import '../state/product_detail_page_state.dart';

class ProductDetailPageViewModel extends StateNotifier<ProductDetailPageState> with LocatorMixin {
  ProductDetailPageViewModel(this._cartButtonKey, [this.tabooCheckList, this.consultCheckList])
      : super(ProductDetailPageState());

  final GlobalKey<CartButtonState> _cartButtonKey;
  final List<bool>? tabooCheckList;
  final List<bool>? consultCheckList;

  late ScrollController controller;
  final topGlobalKey = GlobalKey();
  final targetGlobalKey = GlobalKey();

  CartInfoManager get cartInfoManager => read();
  ShopInfoManager get shopInfoManager => read();

  /// ログイン確認の実行フラグ
  ///
  /// ProductDetailAkachanHonpoPageでログイン状態のチェックをaddPostFrameCallback内で実行している為、
  /// ログイン成功時に発生するリビルドでaddPostFrameCallbackの再呼び出しを抑制する為のフラグ
  bool isLoginCheck = false;

  set canReload(bool value) {
    state = state.copyWith(canReload: value);
  }

  // 画像スライド状態管理
  set imageIndex(int index) => state = state.copyWith(imageIndex: index);

  int get imageIndex => state.imageIndex;

  set noItem(bool value) => state = state.copyWith(noItem: value);

  /// 購入確認画面の表示中フラグ
  ///
  /// 「rootNavigator: true」で購入確認画面に遷移した際にStackに積まれてる画面が全てリビルドされるので、
  /// 購入確認画面が複数回pushされてしまうのを回避するため表示状態をフラグで管理する。
  set isConfirmationsView(bool value) => state = state.copyWith(isConfirmationsView: value);
  bool get isConfirmationsView => state.isConfirmationsView;

  @override
  void initState() {
    super.initState();
    controller = ScrollController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // 画面遷移時
  Future<bool> load(String productId) async {
    if (read<CustomerManager>().info.isMember) {
      await _getRelatedRecommend(productId);
      await _getResembledRecommend();
    }
    return true;
  }

  // お気に入りボタンタップ
  Future<bool> changeFavoriteState(String productId) async {
    final isFavoriteAdded = state.isFavoriteAdded;
    final analyticsManager = GetIt.I<AnalyticsManager>();
    if (!isFavoriteAdded) {
      await GetIt.I<FavoriteRepository>().addItem(
        productId: productId,
        cartId: read<CartInfoState>().cartId,
      );
      analyticsManager.sendEvent(
        eventType: AnalyticsEventType.addToWishlist,
        parameters: {EventParameterType.productId: productId},
      );
    } else {
      await GetIt.I<FavoriteRepository>().deleteItems(
        productIds: [productId],
        cartId: read<CartInfoState>().cartId,
      );
      analyticsManager.sendEvent(
        eventType: AnalyticsEventType.deleteFavorite,
        parameters: {EventParameterType.productId: productId},
      );
    }
    setFavoriteStateIntoProductDetailPageState();
    return true;
  }

  // productDetailModelとのデータ不整合が発生するが、
  // 全体的なstate使用箇所のwidget分離は修正範囲が大きいので、対応しない
  void setFavoriteStateIntoProductDetailPageState() {
    state = state.copyWith(
      isFavoriteAdded: !state.isFavoriteAdded,
    );
  }

  Future<void> _getRelatedRecommend(String productId) async {
    final response = await GetIt.I<ProductsRepository>().getRecommendedProduct(
        shopCode: read<CartInfoState>().shop.shopCode,
        recommendType: RecommendType.concurrentSelling,
        productId: productId,
        cartId: read<CartInfoState>().cartId,
        viewCount: 4,
        page: 1);
    state = state.copyWith(relatedRecommendedProducts: response.data);
  }

  Future<void> _getResembledRecommend() async {
    final response = await GetIt.I<ProductsRepository>().getRecommendedProduct(
      shopCode: read<CartInfoState>().shop.shopCode,
      recommendType: RecommendType.inCart,
      cartId: read<CartInfoState>().cartId,
      viewCount: 4,
      page: 1,
    );
    state = state.copyWith(resembledRecommendedProducts: response.data);
  }

  // 品番商品の状態管理（プルダウンの文字列と選択されているかを確認）
  Future<void> setProductNumberObject({
    String? color,
    String? size,
  }) async {
    final selectedColorSizeProductModel = _getColorSizeProductModel(color, size);
    state = state.copyWith(
      productNumberState: ProductNumberState(
        color: color,
        size: size,
        productId: selectedColorSizeProductModel?.productId,
        productName: selectedColorSizeProductModel?.productName,
        maxBuyPossibleNumber: selectedColorSizeProductModel?.maxBuyPossibleNumber,
        basePrice: selectedColorSizeProductModel?.basePrice == 0 ? null : selectedColorSizeProductModel?.basePrice,
        price: selectedColorSizeProductModel?.price == 0 ? null : selectedColorSizeProductModel?.price,
        cardMemberDiscounts: selectedColorSizeProductModel?.cardMemberDiscounts,
      ),
    );
  }

  // Color-Size選択状態に対応したProductModelの返却
  ProductModel? _getColorSizeProductModel(String? colorName, String? sizeName) {
    if (colorName != null && sizeName != null) {
      // productNumbersに格納されている全てのcolor/size/productを抽出し、選択しているcolor/sizeと合致するものを返す
      final index = state.productDetailModel.productNumbers
          .indexWhere((element) => element.colorName == colorName && element.sizeName == sizeName);
      if (index >= 0) {
        return state.productDetailModel.productNumbers[index].product;
      }
    }
    return const ProductModel();
  }

  // 品番商品の選択組み合わせ返却：{'黒': ['S', 'M', 'L'], '白': ['S', 'M'], ....}
  Map<String?, List<String>?> getColorSizeCombination() {
    final colorList = state.productDetailModel.productNumbers.map((productNumber) => productNumber.colorName).toList();
    final uniqueColorSizeLists = state.productDetailModel.productNumbers
        .map((productNumber) => [
              productNumber.colorName,
              productNumber.sizeName,
            ])
        .toList();

    final Map<String, List<String>> colorSizeSet = {};

    for (final colorName in colorList) {
      final List<String> sizeList = [];
      for (final uniqueSet in uniqueColorSizeLists) {
        if (uniqueSet.contains(colorName)) {
          sizeList.add(uniqueSet.last);
        }
        colorSizeSet.addAll({colorName: sizeList});
      }
    }
    return colorSizeSet;
  }

  // カートへ追加ボタン処理
  Future<bool> addToCart(String productId, String imageUrl) async {
    final response = await GetIt.I<CartsRepository>().addItems(
      cartId: read<CartInfoState>().cartId,
      productId: productId,
    );
    cartInfoManager.info = response.first.cart;
    _cartButtonKey.currentState?.afterAddToCart(imageUrl);
    return true;
  }

  // 商品詳細取得API
  Future<void> getProductDetail(String productId) async {
    final response = await GetIt.I<ProductsRepository>().getProductDetail(
      productId: productId,
      shopCode: read<CartInfoState>().shop.shopCode,
      cartId: read<CartInfoState>().cartId,
    );

    if (response.data.isEmpty) {
      noItem = true;
    } else {
      if (response.data.first.product.isDrugProduct) {
        final tabooCheckList =
            List.generate(response.data.first.medicineQuestion?.medicineTaboos.length ?? 0, (_) => false);
        final consultCheckList =
            List.generate(response.data.first.medicineQuestion?.medicineConsuls.length ?? 0, (_) => false);

        state = state.copyWith(
          tabooCheckList: tabooCheckList,
          consultCheckList: consultCheckList,
          productDetailModel: response.data.first,
        );
      } else {
        state = state.copyWith(
          productDetailModel: response.data.first,
          isFavoriteAdded: response.data.first.product.isFavoriteAdded,
        );
      }

      final isProductNumber = state.productDetailModel.product.isProductNumber;
      if (isProductNumber) {
        final uniqueColorSizeSet = getColorSizeCombination();
        final colorList = List.of(uniqueColorSizeSet.keys);
        // 品番商品のカラーが1種類であれば、それを選択状態にする
        if (colorList.length == 1) {
          final sizeList = uniqueColorSizeSet[colorList.first];
          // サイズも1種類しかなければ、そのサイズを選択する
          if (sizeList?.length == 1) {
            setProductNumberObject(color: colorList.first, size: sizeList?.first);
            return;
          }
          setProductNumberObject(color: colorList.first, size: null);
          return;
        }
      }
    }
  }

  void switchTabooCheckList(int index) {
    var copiedList = [...state.tabooCheckList];
    copiedList[index] = !copiedList[index];
    state = state.copyWith(tabooCheckList: copiedList);
  }

  void switchConsultCheckList(int index) {
    var copiedList = [...state.consultCheckList];
    copiedList[index] = !copiedList[index];
    state = state.copyWith(consultCheckList: copiedList);
  }

  void scrollToWarning() {
    final topRenderBox = topGlobalKey.currentContext?.findRenderObject() as RenderBox;
    final topOffset = topRenderBox.globalToLocal(Offset.zero);

    final targetRenderBox = targetGlobalKey.currentContext?.findRenderObject() as RenderBox;
    final targetOffset = targetRenderBox.globalToLocal(Offset.zero);

    final target = (topOffset.dy - targetOffset.dy).abs();

    controller.animateTo(
      target,
      duration: const Duration(milliseconds: 200),
      curve: Curves.linear,
    );
  }

  void switchReadWarning() => state = state.copyWith(isReadWarning: !state.isReadWarning);
}

@immutable
class ProductNumberState {
  const ProductNumberState({
    this.color,
    this.size,
    this.productId,
    this.productName,
    this.maxBuyPossibleNumber,
    this.basePrice,
    this.price,
    this.cardMemberDiscounts,
  });

  final String? color;
  final String? size;
  final String? productId;
  final String? productName;
  final int? maxBuyPossibleNumber;
  final int? basePrice;
  final int? price;
  final List<CardCustomerDiscountModel>? cardMemberDiscounts;
}
