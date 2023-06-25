import '../../../enum/category_type.dart';
import '../../../util/access_point_info_manager.dart';

mixin BaseCategoryModel {
  /* 階層レベル */
  int get categoryLevel;
  /* カテゴリコード */
  String get categoryCode;
  /* カテゴリ名称 */
  String get categoryName;

  int get level => categoryLevel;
  String get code => categoryCode;
  String get name => categoryName;
  CategoryType get type => CategoryTypeExt.fromString(categoryCode);
}

mixin BaseFrontCategoryModel on BaseCategoryModel {
  String get categoryThumbnail;

  String get thumbnailUrl => '$iynsBaseUrl$categoryThumbnail';
}
