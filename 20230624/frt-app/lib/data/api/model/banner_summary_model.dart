import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../util/access_point_info_manager.dart';
import 'product_model.dart';

part 'banner_summary_model.freezed.dart';

part 'banner_summary_model.g.dart';

@freezed
class BannerSummaryModel with _$BannerSummaryModel {
  const BannerSummaryModel._();

  const factory BannerSummaryModel({
    /* バナー広告ID */
    @Default('') String bannerAdvertisingId,
    /* バナー広告名 */
    @Default('') String bannerAdvertisingName,
    /* 特設売場カテゴリコード1 */
    @Default('') String departmentCategoryCode1,
    /* 第１カテゴリコード */
    @Default('') String category1Code,
    /* バナー画像パス */
    @Default('') String bannerStaticImagePath,
    /* バナー画像ファイル名 */
    @Default('') String bannerStaticImageFileName,
    /* 商品数 */
    @Default(0) int productCount,
    /* 商品 */
    @Default(<ProductModel>[]) List<ProductModel> products,
  }) = _BannerSummaryModel;

  factory BannerSummaryModel.fromJson(Map<String, dynamic> json) => _$BannerSummaryModelFromJson(json);

  String get imageUrl => bannerStaticImagePath.isEmpty || bannerStaticImageFileName.isEmpty
      ? ''
      : '$iynsBaseUrl$bannerStaticImagePath$bannerStaticImageFileName';
}
