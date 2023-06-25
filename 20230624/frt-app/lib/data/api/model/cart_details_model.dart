// ignore_for_file: invalid_annotation_target

import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../util/datetime_json_converter.dart';
import '../model/market_time_from_to_model.dart';

part 'cart_details_model.freezed.dart';
part 'cart_details_model.g.dart';

@freezed
class CartDetailsModel with _$CartDetailsModel {
  const CartDetailsModel._();

  const factory CartDetailsModel({
    /* 予約コード */
    @Default('') String reserveCode,
    /* 商品コード */
    @Default('') String productId,
    /* 数量 */
    @Default(0) int quantity,
    /* 医薬品扱い商品判定 ``` true：医薬品扱い false：医薬品扱いでない ``` */
    @Default(false) bool isDrugProduct,
    /* お気に入り追加済み判定 ``` true：お気に入り追加済み false：お気に入り未追加 ``` */
    @Default(false) bool isFavoriteAdded,
    /* 商品画像パス（コンテキストルートは含まない） */
    @Default('') String productImagePath,
    /* 商品画像のフロント用フルパス */
    @Default('') String frontProductImageFullPath,
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
    /* 商品画像-商品名 */
    @Default('') String productImageAlt,
    /* 軽減税率商品判定 ``` true：軽減税率商品 false：軽減税率商品でない ``` */
    @Default(false) bool isReducedTaxRateProduct,
    /* 当日配送限り商品判定 ``` true：当日配送限り商品 false：当日配送限り商品でない ``` */
    @Default(false) bool isTodayDeliveryLimitedProduct,
    /* 当日配送限り商品有効期間 YYYY-MM-DDThh:mm:ss+09:00 */
    @Default('') String todayDeliveryLimitedDatetime,
    /* 配送便限定市商品判定 ``` true：配送便限定市商品 false：配送便限定市商品でない ``` */
    @Default(false) bool isMarketDeliveryLimitedProduct,
    /* 市商品時間帯リスト */
    @Default(<MarketTimeFromToModel>[]) List<MarketTimeFromToModel> marketTimes,
    /* POS発注制限あり商品判定 ``` true：POS発注制限あり商品 false：POS発注制限あり商品でない ``` */
    @Default(false) bool isPosOrderLimitedProduct,
    /* 全配送日・全便のPOS発注制限あり商品判定 ``` true：全配送日・全便のPOS発注制限あり商品 false：全配送日・全便のPOS発注制限あり商品でない ``` */
    @Default(false) bool isPosOrderAllLimitedProduct,
    /* POS発注制限あり商品配達可能日　※YYYY-MM-DDThh:mm:ss+09:00 */
    @Default('') String posOrderLimitedDatetime,
    /* nanaco販促ポイント対象商品判定 ``` true：nanaco販促ポイント対象商品 false：nanaco販促ポイント対象商品でない ``` */
    @Default(false) bool isNanacoPointPromotionDetails,
    /* nanaco付与単位ポイント */
    @Default(0) int nanacoPointUnitPoint,
    /* 注文時在庫数超過判定 ``` true：注文時在庫数超過 false：注文時在庫数超過でない ``` */
    @Default(false) bool isExceedStock,
    /* 商品名 */
    @Default('') String productName,
    /* よりどりまとめて値引判定 ``` true：よりどりまとめて値引対象商品 false：よりどりまとめて値引対象外 ``` */
    @Default(false) bool isMixMatchDiscount,
    /* セット販売等割引判定 ``` true：セット販売・セット値引・予約セット割引のいずれかの対象商品 false：上記割引対象外 ``` */
    @Default(false) bool isSetSaleDiscount,
    /* 点数まとめて値引判定 ``` true：点数まとめて値引対象商品 false：点数まとめて値引対象外 ``` */
    @Default(false) bool isProgressiveDiscount,
    /* カード会員割引判定 ``` true：カード会員割引対象商品 false：カード会員割引対象外 ``` */
    @Default(false) bool isCardMemberDiscount,
    /* アイワイ/セブンカード割引判定 ``` true：アイワイ/セブンカード割引対象商品 false：アイワイ/セブンカード割引対象外 ``` */
    @Default(false) bool isIyCardDiscount,
    /* クーポン指定商品値引判定 ``` true：クーポン指定商品値引対象商品 false：クーポン指定商品値引対象外 ``` */
    @Default(false) bool isCouponDiscount,
    /* 売り切りセール値引判定 ``` true：売り切りセール値引対象商品 false：売り切りセール値引対象外 ``` */
    @Default(false) bool isSellingOffDiscount,
    /* 売価(税込) */
    @Default(0) int price,
    /* 売価(税抜) */
    @Default(0) int noTaxPrice,
    /* 購入可能数 */
    @Default(0) int maxBuyCount,
    /* JAN明細分割キー */
    @Default('') String productDetailKey,
    /* 販売額小計 */
    @Default(0) int salePrice,
    /* 税込判定 ``` true：税込である false：税込みでない ``` */
    @Default(false) bool isTaxIncluded,
    /* 納品リードタイム期間内判定 ``` true：納品リードタイム期間内 false：納品リードタイム期間外 ``` */
    @Default(false) bool isInDeliveryLeadTime,
    /* 予約商品判定 ``` true：予約商品 false：予約商品でない ``` */
    @Default(false) bool isReserveProduct,
    /* フロント商品変更締め日時前の判定 ``` true：締め日時前 false：締め日時を過ぎている ``` */
    @Default(false) bool isBeforeChangeProductClosingDatetime,
    /* 商品変更締め日時 - ※yyyy-MM-ddTHH:mm:ss+09:00 - カートのフロント変更締日時とカート商品のフロント商品変更締日時が同じ場合、nullを返却 */
    @NullableStringToEpochTimeConverter()
    @JsonKey(name: 'change_product_closing_datetime')
        int? epochChangeProductClosingDatetime,
    /* 定期便申込商品判定 - true：定期便申込商品 - false：定期便申込商品でない */
    @Default(false) bool isRegularShipmentApplyProduct,
    /* 定期便割引判定 - true：割引あり - false：割引なし */
    @Default(false) bool isRegularShipmentDiscount,
  }) = _CartDetailsModel;

  factory CartDetailsModel.fromJson(Map<String, dynamic> json) => _$CartDetailsModelFromJson(json);

  DateTime? get changeProductClosingDatetime =>
      const NullableStringToEpochTimeConverter().toDateTime(epochChangeProductClosingDatetime);
}
