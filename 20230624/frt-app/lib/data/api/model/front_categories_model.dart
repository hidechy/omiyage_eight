import 'package:freezed_annotation/freezed_annotation.dart';

import 'base_category_model.dart';
import 'front_category_model.dart';

part 'front_categories_model.freezed.dart';
part 'front_categories_model.g.dart';

@freezed
class FrontCategoriesModel with BaseCategoryModel, BaseFrontCategoryModel, _$FrontCategoriesModel {
  @With<BaseCategoryModel>()
  @With<BaseFrontCategoryModel>()
  const factory FrontCategoriesModel({
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
    /* カテゴリ詳細 */
    @Default(<FrontCategoryModel>[]) List<FrontCategoryModel> children,
  }) = _FrontCategoriesModel;

  factory FrontCategoriesModel.fromJson(Map<String, dynamic> json) => _$FrontCategoriesModelFromJson(json);
}
