// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/drug_type.dart';
import '../../../enum/temperature_zone.dart';
import '../../../util/access_point_info_manager.dart';
import '../../../util/datetime_json_converter.dart';
import 'medicine_checksheet_model.dart';
import 'product_model.dart';
import 'product_number_model.dart';
import 'search_category_model.dart';

part 'product_detail_model.freezed.dart';

part 'product_detail_model.g.dart';

@freezed
class ProductDetailModel with _$ProductDetailModel {
  const ProductDetailModel._();

  const factory ProductDetailModel({
/* 商品画像パス - 画像登録なしの場合、nullを返却 */
    @Default('') String imagePath,
/* 商品画像ファイル名１ - 画像登録なしの場合、nullを返却 */
    @Default('') String imageFileName1,
/* 商品画像ファイル名２ - 画像登録なしの場合、nullを返却 */
    @Default('') String imageFileName2,
/* 商品画像ファイル名３ - 画像登録なしの場合、nullを返却 */
    @Default('') String imageFileName3,
/* 商品画像ファイル名４ - 画像登録なしの場合、nullを返却 */
    @Default('') String imageFileName4,
/* 商品画像ファイル名５ - 画像登録なしの場合、nullを返却 */
    @Default('') String imageFileName5,
/* 商品画像ファイル名６ - 画像登録なしの場合、nullを返却 */
    @Default('') String imageFileName6,
/* 商品画像のフロント用フルパス1 - ファイルパスまたはファイル名が無い場合：null */
    @Default('') String frontImageFullPath1,
/* 商品画像のフロント用フルパス2 - ファイルパスまたはファイル名が無い場合：null */
    @Default('') String frontImageFullPath2,
/* 商品画像のフロント用フルパス3 - ファイルパスまたはファイル名が無い場合：null */
    @Default('') String frontImageFullPath3,
/* 商品画像のフロント用フルパス4 - ファイルパスまたはファイル名が無い場合：null */
    @Default('') String frontImageFullPath4,
/* 商品画像のフロント用フルパス5 - ファイルパスまたはファイル名が無い場合：null */
    @Default('') String frontImageFullPath5,
/* 商品画像のフロント用フルパス6 - ファイルパスまたはファイル名が無い場合：null */
    @Default('') String frontImageFullPath6,
/* 商品画像サムネイルパス - 画像登録なしの場合、nullを返却 */
    @Default('') String thumbnailImagePath,
/* 商品画像サムネイルファイル名１ - 画像登録なしの場合、nullを返却 */
    @Default('') String thumbnailImageFileName1,
/* 商品画像サムネイルファイル名２ - 画像登録なしの場合、nullを返却 */
    @Default('') String thumbnailImageFileName2,
/* 商品画像サムネイルファイル名３ - 画像登録なしの場合、nullを返却 */
    @Default('') String thumbnailImageFileName3,
/* 商品画像サムネイルファイル名４ - 画像登録なしの場合、nullを返却 */
    @Default('') String thumbnailImageFileName4,
/* 商品画像サムネイルファイル名５ - 画像登録なしの場合、nullを返却 */
    @Default('') String thumbnailImageFileName5,
/* 商品画像サムネイルファイル名６ - 画像登録なしの場合、nullを返却 */
    @Default('') String thumbnailImageFileName6,
/* 商品画像サムネイルのフロント用フルパス1 - ファイルパスまたはファイル名が無い場合：null */
    @Default('') String frontThumbnailImageFullPath1,
/* 商品画像サムネイルのフロント用フルパス2 - ファイルパスまたはファイル名が無い場合：null */
    @Default('') String frontThumbnailImageFullPath2,
/* 商品画像サムネイルのフロント用フルパス3 - ファイルパスまたはファイル名が無い場合：null */
    @Default('') String frontThumbnailImageFullPath3,
/* 商品画像サムネイルのフロント用フルパス4 - ファイルパスまたはファイル名が無い場合：null */
    @Default('') String frontThumbnailImageFullPath4,
/* 商品画像サムネイルのフロント用フルパス5 - ファイルパスまたはファイル名が無い場合：null */
    @Default('') String frontThumbnailImageFullPath5,
/* 商品画像サムネイルのフロント用フルパス6 - ファイルパスまたはファイル名が無い場合：null */
    @Default('') String frontThumbnailImageFullPath6,
/*
ホワイト画像表示フラグ
- 通常商品の場合
  true：「販促対象」かつ「画像なし」の商品​の場合
  false：「販促対象」かつ「画像なし」の商品​以外の場合
- 予約商品の場合
  true：「画像なし」の商品​の場合
  false：「画像なし」の商品​以外の場合
*/
    @Default(false) bool isDisplayWhiteImage,
/* 登録画像個数 */
    @Default(0) int countImages,
/* 商品PR文言 - 商品PR文言設定無しの場合、nullを返却 */
    @Default('') String iconPrWord,
/* 商品アイコン表示判定  ``` true：商品アイコン表示する false：商品アイコン表示しない ``` */
    @Default(false) bool isIconProduct,
/* 広告アイコン画像パス - 商品アイコンが設定されていない場合、nullを返却 */
    @Default('') String advertisingIconImagePath,
/* 広告アイコン画像ファイル名 - 商品アイコンが設定されていない場合、nullを返却 */
    @Default('') String advertisingIconImageFileName,
/* 医薬品の種別 ``` \"all\"：すべて \"A\"：第一類医薬品 \"B\"：指定第２類医薬品 \"C\"：第２類医薬品 \"D\"：第３医薬品 \"E\"：医薬部外品 ``` */
    @Default(DrugType.all) DrugType drugType,
/* 市商品の期間 ``` フロント区分による出力変換 　PC/SPの場合：「hh～hh時」 　MBの場合：「hh時からhh時までの」 その他 　期間が複数ある場合：区切り文字「・」で連結 　期間がない場合：「限定」　←運用ミス対策（市時間帯登録漏れ） ``` */
    @Default('') String marketProductTimeTerm,
/* 商品変更締め案内表示判定 - true：商品変更締め案内表示する - false：商品変更締め案内表示しない */
    @Default(false) bool isChangeDeadlineGuide,
/* 商品変更締め日時　※YYYY-MM-DDThh:mm:ss+09:00 - 商品変更締め日時が設定されていない場合、nullを返却 */
    @NullableStringToEpochTimeConverter() @JsonKey(name: 'change_deadline_dateTime') int? epochChangeDeadlineDateTime,
/* 温度帯 - 店別商品で温度帯が設定されていない、かつ単品で温度帯が設定されていない場合、nullを返却 ``` \"0\"：常温 \"1\"：大物常温 \"2\"：冷蔵 \"3\"：冷凍 ``` */
    @Default(TemperatureZone.none) TemperatureZone temperatureZone,
/* 前値 - ログインステータスが予約の場合、nullを返却 */
    @Default('') String previousValue,
/* nanaco販促ポイント対象商品判定 - true：nanaco販促ポイント対象商品である - false：nanaco販促ポイント対象商品でない */
    @Default(false) bool isNanacoPromoteProduct,
/* 本体価格表示判定 - true：本体価格で表示する - false：本体価格で表示しない */
    @Default(false) bool isDisplayNoTaxPriceView,
/* 一括値引商品判定 - true：一括値引商品である - false：一括値引商品でない */
    @Default(false) bool isSumDiscount,
/* 期間割引商品判定 - true：期間割引商品である - false：期間割引商品でない */
    @Default(false) bool isPeriodDiscount,
/* NS日付翌日　※yyyyMMdd */
    @Default('') String nsDateNext,
/* N日目以降承り商品判定  ``` true：N日目以降承り商品である false：N日目以降承り商品でない ``` */
    @Default(false) bool isFromDaySaleProduct,
/* フロント配達便変更締め日時前判定  ``` true：フロント配達便変更締め日時前である false：フロント配達便変更締め日時前でない ``` */
    @Default(false) bool isBeforeChangingDeliveryDeadline,
/* 商品コメント```改行コードで分け配列で保持``` - 商品コメントが設定されていない場合、空の配列が返却 */
    @Default(<String>[]) List<String> productComments,
/* メーカー名 - メーカー名が設定されていない場合、nullを返却 */
    @Default('') String makerName,
/* 型番 - 型番が設定されていない場合、nullを返却 */
    @Default('') String modelNumber,
/* ソーダストリームの確認事項表示判定 ``` true：確認事項を表示する false：確認事項を表示しない ``` */
    @Default(false) bool isConfirmSodastream,
    @Default(ProductModel()) ProductModel product,
    @Default(<ProductNumberModel>[]) List<ProductNumberModel> productNumbers,
    @Default(<SearchCategoryModel>[]) List<SearchCategoryModel> relatedCategories,
    MedicineChecksheetModel? medicineQuestion,
  }) = _ProductDetailModel;

  factory ProductDetailModel.fromJson(Map<String, dynamic> json) => _$ProductDetailModelFromJson(json);

  DateTime? get changeDeadlineDateTime =>
      const NullableStringToEpochTimeConverter().toDateTime(epochChangeDeadlineDateTime);

  List<String> get imagePaths => [
        if (frontImageFullPath1.isNotEmpty) '$iynsBaseUrl$frontImageFullPath1',
        if (frontImageFullPath2.isNotEmpty) '$iynsBaseUrl$frontImageFullPath2',
        if (frontImageFullPath3.isNotEmpty) '$iynsBaseUrl$frontImageFullPath3',
        if (frontImageFullPath4.isNotEmpty) '$iynsBaseUrl$frontImageFullPath4',
        if (frontImageFullPath5.isNotEmpty) '$iynsBaseUrl$frontImageFullPath5',
        if (frontImageFullPath6.isNotEmpty) '$iynsBaseUrl$frontImageFullPath6',
      ];
}
