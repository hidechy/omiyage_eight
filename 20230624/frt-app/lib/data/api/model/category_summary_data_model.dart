import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../util/access_point_info_manager.dart';
import 'base_category_model.dart';
import 'product_model.dart';

part 'category_summary_data_model.freezed.dart';

part 'category_summary_data_model.g.dart';

@freezed
class CategorySummaryDataModel with BaseCategoryModel, _$CategorySummaryDataModel {
  const CategorySummaryDataModel._();

  @With<BaseCategoryModel>()
  const factory CategorySummaryDataModel({
    /* カテゴリコード */
    @Default('') String categoryCode,
/* カテゴリ名 */
    @Default('') String categoryName,
/* カテゴリサムネイルURL（相対） */
    @Default('') String categoryThumbnail,
/* カテゴリ商品数 */
    @Default(0) int productCount,
    @Default(<ProductModel>[]) List<ProductModel> products,
  }) = _CategorySummaryDataModel;

  factory CategorySummaryDataModel.fromJson(Map<String, dynamic> json) => _$CategorySummaryDataModelFromJson(json);

  String get thumbnailUrl => '$iynsBaseUrl$categoryThumbnail';

  @override
  int get categoryLevel => 99;
}
