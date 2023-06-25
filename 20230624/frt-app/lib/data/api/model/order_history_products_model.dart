import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_history_products_model.freezed.dart';
part 'order_history_products_model.g.dart';

@freezed
class OrderHistoryProductsModel with _$OrderHistoryProductsModel {
  const factory OrderHistoryProductsModel({
    /* 商品ID */
    @Default('') String productId,
/* 商品名 */
    @Default('') String productName,
/* 商品画像連携用パス */
    @Default('') String thumbnailImagePath,
/* 商品画像ファイル名 */
    @Default('') String thumbnailImageName,
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
/* 商品画像のフロント用フルパス - ファイルパスまたはファイル名が無い場合：null */
    @Default('') String frontThumbnailImageFullPath,
  }) = _OrderHistoryProductsModel;

  factory OrderHistoryProductsModel.fromJson(Map<String, dynamic> json) => _$OrderHistoryProductsModelFromJson(json);
}
