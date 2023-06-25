// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'category_model.dart';

part 'categories_model.freezed.dart';
part 'categories_model.g.dart';

@freezed
class CategoriesModel with _$CategoriesModel {
  const factory CategoriesModel({
    @Default(CategoryModel()) @JsonKey() CategoryModel target,
    @Default(CategoryModel()) @JsonKey() CategoryModel parent,
/* 再起的に配下のカテゴリを取得する */
    @Default(<CategoryModel>[]) List<CategoryModel> children,
  }) = _CategoriesModel;

  factory CategoriesModel.fromJson(Map<String, dynamic> json) => _$CategoriesModelFromJson(json);
}
