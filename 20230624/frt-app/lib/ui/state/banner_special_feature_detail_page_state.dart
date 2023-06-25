import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/banner_advertising_model.dart';

part 'banner_special_feature_detail_page_state.freezed.dart';

@freezed
class BannerSpecialFeatureDetailPageState with _$BannerSpecialFeatureDetailPageState {
  factory BannerSpecialFeatureDetailPageState({
    @Default(<BannerAdvertisingModel>[]) List<BannerAdvertisingModel> bannerAdvertisingModel,
    @Default(<String, String>{}) Map<String, String> categoriesMap,
  }) = _BannerSpecialFeatureDetailPageState;
}
