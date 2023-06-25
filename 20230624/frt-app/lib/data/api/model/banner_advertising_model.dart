import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../util/access_point_info_manager.dart';
import 'product_model.dart';

part 'banner_advertising_model.freezed.dart';

part 'banner_advertising_model.g.dart';

@freezed
class BannerAdvertisingModel with _$BannerAdvertisingModel {
  const BannerAdvertisingModel._();

  const factory BannerAdvertisingModel({
    /* バナー広告ID */
    @Default('') String bannerAdvertisingId,
    /* バナー広告名 */
    @Default('') String bannerAdvertisingName,
    /* スタティック画像パス */
    @Default('') String staticImagePath,
    /* スタティック画像ファイル名1 */
    @Default('') String staticImageFileName1,
    /* スタティック画像URL1 */
    @Default('') String staticImageUrl1,
    /* スタティック画像ファイル名2 */
    @Default('') String staticImageFileName2,
    /* スタティック画像URL2 */
    @Default('') String staticImageUrl2,
    /* スタティック画像ファイル名3 */
    @Default('') String staticImageFileName3,
    /* スタティック画像URL3 */
    @Default('') String staticImageUrl3,
    /* スタティック画像ファイル名4 */
    @Default('') String staticImageFileName4,
    /* スタティック画像URL4 */
    @Default('') String staticImageUrl4,
    /* スタティック動画状態フラグ4*/
    @Default(false) bool staticMovieFlag4,
    /* スタティック画像ファイル名5 */
    @Default('') String staticImageFileName5,
    /* スタティック画像URL5 */
    @Default('') String staticImageUrl5,
    /* スタティック動画状態フラグ5*/
    @Default(false) bool staticMovieFlag5,
    /* 第１カテゴリコード */
    @Default('') String category1CategoryCode,
    /* 特設売場名1 */
    @Default('') String departmentName1,
    /* 特設売場カテゴリコード1 */
    @Default('') String departmentCategoryCode1,
    /* 特設売場名2 */
    @Default('') String departmentName2,
    /* 特設売場カテゴリコード2 */
    @Default('') String departmentCategoryCode2,
    /* 広告ページNo */
    @Default(0) int bannerPageNo,
    @Default(<ProductModel>[]) List<ProductModel> products,
  }) = _BannerAdvertisingModel;

  factory BannerAdvertisingModel.fromJson(Map<String, dynamic> json) => _$BannerAdvertisingModelFromJson(json);

  List<String> get imageUrls => [
        staticImageFileName1.isNotEmpty ? '$iynsBaseUrl$staticImagePath/$staticImageFileName1' : '',
        staticImageFileName2.isNotEmpty ? '$iynsBaseUrl$staticImagePath/$staticImageFileName2' : '',
        staticImageFileName3.isNotEmpty ? '$iynsBaseUrl$staticImagePath/$staticImageFileName3' : '',
        staticImageFileName4.isNotEmpty ? '$iynsBaseUrl$staticImagePath/$staticImageFileName4' : '',
        staticImageFileName5.isNotEmpty ? '$iynsBaseUrl$staticImagePath/$staticImageFileName5' : '',
      ];
}
