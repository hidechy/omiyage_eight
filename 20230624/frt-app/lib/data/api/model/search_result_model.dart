import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_model.dart';
import 'search_category_model.dart';
import 'search_facet_model.dart';

part 'search_result_model.freezed.dart';
part 'search_result_model.g.dart';

@freezed
class SearchResultModel with _$SearchResultModel {
  const factory SearchResultModel({
    /* 検索カテゴリ情報 */
    @Default(<SearchCategoryModel>[]) List<SearchCategoryModel> categories,
/* 検索ファセット情報 */
    @Default(<SearchFacetModel>[]) List<SearchFacetModel> facets,
/* 検索商品情報 */
    @Default(<ProductModel>[]) List<ProductModel> products,
/* もしかして文言リスト */
    @Default(<String>[]) List<String> correctionSearchWords,
/* すべてカテゴリ選択判定  ``` true：すべてカテゴリ選択 false：すべてカテゴリ選択でない ``` */
    @Default(false) bool isSelectedAllCategory,
  }) = _SearchResultModel;

  factory SearchResultModel.fromJson(Map<String, dynamic> json) => _$SearchResultModelFromJson(json);
}
