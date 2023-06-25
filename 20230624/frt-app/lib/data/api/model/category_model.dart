import 'package:freezed_annotation/freezed_annotation.dart';

import 'base_category_model.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with BaseCategoryModel, _$CategoryModel {
  @With<BaseCategoryModel>()
  const factory CategoryModel({
    /* 階層レベル */
    @Default(0) int categoryLevel,
/* カテゴリコード */
    @Default('') String categoryCode,
/* カテゴリ名称 */
    @Default('') String categoryName,
/* 表示順 */
    @Default(0) int sortNumber,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
}
