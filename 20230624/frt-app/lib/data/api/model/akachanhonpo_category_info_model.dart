import 'package:freezed_annotation/freezed_annotation.dart';

import 'base_category_model.dart';

part 'akachanhonpo_category_info_model.freezed.dart';
part 'akachanhonpo_category_info_model.g.dart';

@freezed
class AkachanhonpoCategoryInfoModel with BaseCategoryModel, _$AkachanhonpoCategoryInfoModel {
  const AkachanhonpoCategoryInfoModel._();

  @With<BaseCategoryModel>()
  const factory AkachanhonpoCategoryInfoModel({
    /* カテゴリコード */
    @Default('') String categoryCode,
    /* カテゴリ名 */
    @Default('') String categoryName,
    /* 画像ファイル名 */
    @Default('') String fileName,
  }) = _AkachanhonpoCategoryInfoModel;

  factory AkachanhonpoCategoryInfoModel.fromJson(Map<String, dynamic> json) =>
      _$AkachanhonpoCategoryInfoModelFromJson(json);

  @override
  int get categoryLevel => 3;
}
