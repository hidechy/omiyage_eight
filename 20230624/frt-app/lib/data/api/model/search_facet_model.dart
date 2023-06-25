import 'package:freezed_annotation/freezed_annotation.dart';

import 'selectable_facet_model.dart';

part 'search_facet_model.freezed.dart';
part 'search_facet_model.g.dart';

@freezed
class SearchFacetModel with _$SearchFacetModel {
  const factory SearchFacetModel({
    /* カテゴリ */
    @Default(<SelectableFacetModel>[]) List<SelectableFacetModel> categories,
/* 広告掲載日 */
    @Default(<SelectableFacetModel>[]) List<SelectableFacetModel> saleTerms,
/* 価格 */
    @Default(<SelectableFacetModel>[]) List<SelectableFacetModel> prices,
/* メーカー */
    @Default(<SelectableFacetModel>[]) List<SelectableFacetModel> makers,
/* ブランド */
    @Default(<SelectableFacetModel>[]) List<SelectableFacetModel> brands,
/* 色 */
    @Default(<SelectableFacetModel>[]) List<SelectableFacetModel> colors,
/* サイズ */
    @Default(<SelectableFacetModel>[]) List<SelectableFacetModel> sizes,
/* 内容量 */
    @Default(<SelectableFacetModel>[]) List<SelectableFacetModel> volumes,
/* 値引・ボーナスポイント */
    @Default(<SelectableFacetModel>[]) List<SelectableFacetModel> discount,
  }) = _SearchFacetModel;

  factory SearchFacetModel.fromJson(Map<String, dynamic> json) => _$SearchFacetModelFromJson(json);
}
