import 'package:freezed_annotation/freezed_annotation.dart';

import 'akachanhonpo_category_info_model.dart';
import 'akachanhonpo_store_info_model.dart';

part 'akachanhonpo_category_top_info_model.freezed.dart';
part 'akachanhonpo_category_top_info_model.g.dart';

@freezed
class AkachanhonpoCategoryTopInfoModel with _$AkachanhonpoCategoryTopInfoModel {
  const AkachanhonpoCategoryTopInfoModel._();

  const factory AkachanhonpoCategoryTopInfoModel({
    /* 赤ちゃん本舗カテゴリ情報モデル */
    @Default(<AkachanhonpoCategoryInfoModel>[]) List<AkachanhonpoCategoryInfoModel> categoryList,
    /* 赤ちゃん本舗実施店舗情報モデル */
    @Default(<AkachanhonpoStoreInfoModel>[]) List<AkachanhonpoStoreInfoModel> storeList,
  }) = _AkachanhonpoCategoryInfoModel;

  factory AkachanhonpoCategoryTopInfoModel.fromJson(Map<String, dynamic> json) =>
      _$AkachanhonpoCategoryTopInfoModelFromJson(json);
}
