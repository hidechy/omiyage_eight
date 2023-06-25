import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../util/access_point_info_manager.dart';
import 'base_category_model.dart';

part 'category_overview_model.freezed.dart';

part 'category_overview_model.g.dart';

@freezed
class CategoryOverviewModel with BaseCategoryModel, _$CategoryOverviewModel {
  const CategoryOverviewModel._();

  @With<BaseCategoryModel>()
  const factory CategoryOverviewModel({
    /* カテゴリコード */
    @Default('') String categoryCode,
    /* カテゴリ名 */
    @Default('') String categoryName,
    /* カテゴリサムネイルURL（相対） */
    @Default('') String categoryThumbnail,
  }) = _CategorySummaryDataModel;

  factory CategoryOverviewModel.fromJson(Map<String, dynamic> json) => _$CategoryOverviewModelFromJson(json);

  String get thumbnailUrl => '$iynsBaseUrl$categoryThumbnail';

  @override
  int get categoryLevel => 99;
}
