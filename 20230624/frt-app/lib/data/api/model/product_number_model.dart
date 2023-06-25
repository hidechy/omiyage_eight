import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_model.dart';

part 'product_number_model.freezed.dart';

part 'product_number_model.g.dart';

@freezed
class ProductNumberModel with _$ProductNumberModel {
  const factory ProductNumberModel({
    /* カラー名称 */
    @Default('') String colorName,
    /* サイズ名称 */
    @Default('') String sizeName,
    /* 商品PR文言 */
    @Default('') String iconPrWord,
    /* 広告アイコン画像パス */
    @Default('') String advertisingIconImagePath,
    /* 広告アイコン画像ファイル名 */
    @Default('') String advertisingIconImageFileName,
    /* nanaco販促ポイント対象商品判定 - true：nanaco販促ポイント対象である - false：nanaco販促ポイント対象でない */
    @Default(false) bool isNanacoPromoteProduct,
    /* 本体価格表示判定 - true：本体価格で表示する - false：本体価格で表示しない */
    @Default(false) bool isDisplayNoTaxPriceView,
    /* 前値 */
    @Default('') String previousValue,
    /* 期間割引商品判定 */
    @Default(false) bool isPeriodDiscount,
    /* セット販売商品一覧リンク表示判定 - true：セット販売商品一覧へリンク表示する - false：セット販売商品一覧へリンク表示しない */
    @Default(false) bool isViewSetSaleLink,
    @Default(ProductModel()) ProductModel product,
  }) = _ProductNumberModel;

  factory ProductNumberModel.fromJson(Map<String, dynamic> json) => _$ProductNumberModelFromJson(json);
}
