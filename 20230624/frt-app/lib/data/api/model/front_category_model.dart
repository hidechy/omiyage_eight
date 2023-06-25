import 'package:freezed_annotation/freezed_annotation.dart';

import 'base_category_model.dart';

part 'front_category_model.freezed.dart';
part 'front_category_model.g.dart';

@freezed
class FrontCategoryModel with BaseCategoryModel, BaseFrontCategoryModel, _$FrontCategoryModel {
  @With<BaseCategoryModel>()
  @With<BaseFrontCategoryModel>()
  const factory FrontCategoryModel({
    /* 階層レベル */
    @Default(0) int categoryLevel,
    /* カテゴリコード */
    @Default('') String categoryCode,
    /* カテゴリ名称 */
    @Default('') String categoryName,
    /* カテゴリサムネイルURL（相対） */
    @Default('') String categoryThumbnail,
    /* 表示順 */
    @Default(0) int sortNumber,
  }) = _FrontCategoryModel;

  factory FrontCategoryModel.fromJson(Map<String, dynamic> json) => _$FrontCategoryModelFromJson(json);
}
