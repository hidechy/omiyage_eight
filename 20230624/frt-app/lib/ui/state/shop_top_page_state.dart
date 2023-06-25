import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/banner_summary_model.dart';
import '../../data/api/model/base_category_model.dart';
import '../../data/api/model/message_model.dart';
import '../../data/api/model/product_model.dart';
import '../../data/api/model/recipes_model.dart';
import '../../data/api/model/recommended_product_model.dart';

part 'shop_top_page_state.freezed.dart';

@freezed
class ShopTopPageState with _$ShopTopPageState {
  const factory ShopTopPageState({
    @Default(false) bool hasOrders,
    @Default(false) bool hasCreditError,
    @Default(<BaseCategoryModel>[]) List<BaseCategoryModel> categoryTabs,
    @Default(<BannerSummaryModel>[]) List<BannerSummaryModel> bannerSummaries,
    @Default(<RecipesModel>[]) List<RecipesModel> recommendationRecipes,
    @Default(<MessageModel>[]) List<MessageModel> notifications,
    @Default(<ProductModel>[]) List<ProductModel> sellingOff,
    @Default(<ProductModel>[]) List<ProductModel> sevenPremium,
    @Default(<RecommendedProductModel>[]) List<RecommendedProductModel> toUserRecommends,
    @Default(false) bool isDeliveryRestriction,
  }) = _ShopTopPageState;
}

@freezed
class BannerSliderState with _$BannerSliderState {
  const BannerSliderState._();

  const factory BannerSliderState({
    @Default(0.0) double minAspectRatio,
    // Tupleでもよかったが、今回は使い方的にMapEntryの方が適している
    @Default(Iterable<MapEntry<BannerSummaryModel, File>>.empty()) Iterable<MapEntry<BannerSummaryModel, File>> banners,
    @Default(0) int index,
  }) = _BannerSliderState;

  int get length => banners.length;

  bool get isNotEmpty => banners.isNotEmpty;
  bool get isEmpty => banners.isEmpty;

  MapEntry<BannerSummaryModel, File>? operator [](int index) =>
      index >= banners.length ? null : banners.elementAt(index);
}
