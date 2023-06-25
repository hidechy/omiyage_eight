import 'package:freezed_annotation/freezed_annotation.dart';

import 'category_overview_model.dart';
import 'category_summary_data_model.dart';

part 'category_summary_model.freezed.dart';
part 'category_summary_model.g.dart';

@freezed
class CategorySummaryModel with _$CategorySummaryModel {
  const factory CategorySummaryModel({
    /* 検索対象カテゴリコード */
    @Default('') String searchCategoryCode,
    /* 検索対象カテゴリ名 */
    @Default('') String searchCategoryName,
    @Default(<CategoryOverviewModel>[]) List<CategoryOverviewModel> categoriesOverview,
    @Default(<CategorySummaryDataModel>[]) List<CategorySummaryDataModel> categorys,
  }) = _CategorySummaryModel;

  factory CategorySummaryModel.fromJson(Map<String, dynamic> json) => _$CategorySummaryModelFromJson(json);
}
