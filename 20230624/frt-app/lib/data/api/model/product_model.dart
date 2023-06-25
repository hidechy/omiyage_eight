// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/liquor_type.dart';
import '../../../util/access_point_info_manager.dart';
import '../../../util/datetime_formatter.dart';
import '../../../util/datetime_json_converter.dart';
import 'card_customer_discount_model.dart';
import 'market_time_from_to_model.dart';
import 'product_discount_model.dart';
import 'product_label.dart';
import 'reserve_set_sale_model.dart';
import 'tax_rate_switch_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

/// 商品情報のModel
@freezed
class ProductModel with _$ProductModel {
  const ProductModel._();

  const factory ProductModel({
    /* お気に入り追加済み判定 - true：お気に入り追加済み - false：お気に入り未追加 */
    @Default(false) bool isFavoriteAdded,
    /* 商品アイコン表示判定 - true：有効な商品アイコンあり - false：有効な商品アイコンなし */
    @Default(false) bool isDisplayProductIcon,
    /* 広告アイコンコード - 広告アイコン未指定又は該当マスタ無しの場合空文字 */
    @Default('') String advertisingIconCode,
    /* 広告アイコンラベル - 広告アイコン未指定又は該当マスタ無しの場合空文字 */
    @Default('') String advertisingLabel,
    /* 品番判定 - true：品番 - false：単品又は品番配下の単品 */
    @Default(false) bool isProductNumber,
    /* 「カートへ」ボタン表示判定 - true：表示可 - false：表示不可 */
    @Default(false) bool isDisplayPossibleBuyButton,
    /* カウンセリング商品判定 - true：カウンセリング商品 - false：非カウンセリング商品 */
    @Default(false) bool isCounselingProduct,
    /* 商品ID */
    @Default('') String productId,
    /* 商品名 */
    @Default('') String productName,
    /* 商品画像のファイルパス - pri1imagefileの有無で異なる */
    @Default('') String thumbnailImagePath,
    /* 商品画像のファイル名
      - pri1imagefileの有無で異なる */
    @Default('') String thumbnailImageFileName,
    /* 商品画像のフロント用フルパス ファイルパスまたはファイル名が無い場合：null */
    @Default('') String frontThumbnailImageFullPath,
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
    /* 商品コピー文言 - 画像のtitleに使用 - 商品コピー文言が設定されていない場合、nullを返却*/
    @Default('') String productCatchphrase,
    /* 広告商品判定 - true：広告商品である - false：広告商品ではない */
    @Default(false) bool isAdvertisingProduct,
    /* 広告掲載期間 - 広告商品でない場合、空文字を返却*/
    @Default('') String advertisingTerm,
    /* 配送便限定の市商品判定 - true：配送便限定市商品である - false：配送便限定市商品ではない */
    @Default(false) bool isMarketDeliveryLimitedProduct,
    /* 市商品時間帯リスト */
    @Default(<MarketTimeFromToModel>[]) List<MarketTimeFromToModel> marketTimes,
    /* POS発注制限による配送日・便限定商品の判定 - true：POS発注制限による配送日・便限定の商品である - false：上記以外 */
    @Default(false) bool isPosOrderLimitedProduct,
    /* POS発注制限あり商品配達可能日　※YYYY-MM-DDThh:mm:ss+09:00 - is_pos_order_limited_productがfalseの場合、nullを返却*/
    @NullableStringToEpochTimeConverter()
    @JsonKey(name: 'pos_order_limited_datetime')
        int? epochPosOrderLimitedDatetime,
    /* 販売内容量表示 - 表示しない場合空文字 */
    @Default('') String salesCapacity,
    @Default(<CardCustomerDiscountModel>[]) List<CardCustomerDiscountModel> cardMemberDiscounts,
    /* nanaco付与単位ポイント - 0の場合nanacoポイントN倍メッセージを表示しない */
    @Default(0) int nanacoPointUnitPoint,
    /* 本体価格 */
    @Default(0) int basePrice,
    /* 非課税商品判定 - true：非課税商品である - false：非課税商品ではない */
    @Default(false) bool isTaxExemptProduct,
    /* 価格 */
    @Default(0) int price,
    /* 単位単価 ※例「100g当たり〇円」 */
    @Default('') String unitPrice,
    /* 価格が割引後であるか判定 - true：価格割引き後 - false：価格引きされていない */
    @Default(false) bool isDiscountedPrice,
    /* 割引除外対象商品判定 - true：割引除外対象商品である - false：割引除外対象商品ではない  ※既存の同変数は判定が逆になっているので注意  FrontProductDto#isDiscountExclusion */
    @Default(false) bool isDiscountExclusionProduct,
    /* ネット専用売価判定 - true：ネット専用売価商品 - false：ネット専用売価商品でない */
    @Default(false) bool isNsPrice,
    /* 割引情報のModel */
    ProductDiscountModel? productDiscount,
    /*
    予約商品判定
      true：予約商品である
      false：予約商品でない
    */
    @Default(false) bool isReserveProduct,
    /* 医薬部外品判定 - true：医薬部外品である - false：医薬部外品ではない */
    @Default(false) bool isQuasiDrugs,
    /* アイコンラベル */
    @Default(ProductLabel()) ProductLabel topLabel,
    /*
      上部ラベルリスト_BFFADD_
      以下のラベルのリスト
      対象が無い場合は空のリストを返却
      ```
      売り切りセールラベル
      広告アイコンラベル
      ```
    */
    @Default(<ProductLabel>[]) List<ProductLabel> topLabelList,
    /*
      下部ラベル_BFFADD_
      以下のいずれかのラベルを設定
      ```
      割引条件を表示するラベル
      商品情報を表示するラベル
      対象が無い場合は各項目が空のラベルとなる(imageFullPathのみnull)
      ```
    */
    @Default(ProductLabel()) ProductLabel bottomLabel,
    /*
      下部ラベルリスト_BFFADD_
      以下のラベルのリスト
      対象が無い場合は空のリストを返却
      ```
      医薬品・医薬部外品ラベル
      割引条件を表示するラベル
      商品情報を表示するラベル
      酒ラベル
      ```
    */
    @Default(<ProductLabel>[]) List<ProductLabel> bottomLabelList,
    /* アイコンラベル */
    @Default(ProductLabel()) ProductLabel liquorLabel,
    /* 酒類区分 ``` \"1\"：酒 \"2\"：みりん \"3\"：ノンアルコール null：それ以外 ``` */
    @Default(LiquorType.other) LiquorType liquorType,
    /* マイルアイコン表示判定 - true：表示する - false：表示しない */
    @Default(false) bool isDisplayMileIcon,
    /* カウンセリング済み判定 - true：カウンセリング済み - false：未カウンセリング */
    @Default(false) bool isAnsweredCounseling,
    /* 限定数
      - "お一人様X点まで"
      - "先着X名様限定"
      - 商品に応じて上記どちらかの文字列が返却される（Xは可変の数字）
      - 売り切り商品ではない場合はnull
    */
    @Default('') String limitedNumber,
    /* 最大購入数
      お一人様X点まで購入可能の売り切り商品である場合は、
      限定数と在庫数で少ない方が返却される
    */
    @Default(0) int maxBuyPossibleNumber,
    /* レコメンド商品判定 - true：レコメンド商品である - false：レコメンド商品ではない */
    @Default(false) bool isRecommendProduct,
    /* 店舗コード */
    @Default('') String shopCode,
    /* 税率情報のModel - 新／旧税率売価での混在販売中でのみ使用し、そうでない場合はModel自体がnullで返却される */
    TaxRateSwitchModel? taxRateSwitch,
    /* アカチャンホンポ店舗代行中判定   - true：アカチャンホンポ店舗代行中   - false：アカチャンホンポ店舗代行中でない */
    @Default(false) bool isAkachanHonpoAgencyShop,
    /* アカチャンホンポ商品判定    - true：アカチャンホンポ商品   - false：アカチャンホンポ商品でない */
    @Default(false) bool isAkachanHonpoProduct,
    /* 売り切り商品表示判定 - true：売り切り表示する - false：売り切り表示しない */
    @Default(false) bool isSellOutDisplayStart,
    /* お届け期間内判定 - true：お届け期間内 - false：お届け期間外 */
    @Default(false) bool isInDeliveryTerm,
    /* お届け開始日　※YYYY-MM-DDThh:mm:ss+09:00 - お届け開始日が設定されていない場合、nullを返却*/
    @NullableStringToEpochTimeConverter() @JsonKey(name: 'delivery_start_datetime') int? epochDeliveryStartDatetime,
    /* お届け終了日　※YYYY-MM-DDThh:mm:ss+09:00 - お届け終了日が設定されていない場合、nullを返却*/
    @NullableStringToEpochTimeConverter() @JsonKey(name: 'delivery_finish_datetime') int? epochDeliveryFinishDatetime,
    /*
      受発注のみ商品判定
      true：受発注のみ商品
      false：受発注のみ商品でない
    */
    @Default(false) bool isOrderOnlyProduct,
    /*
    納品リードタイム期間内判定
      true：納品リードタイム期間内
      false：納品リードタイム期間外
      ※is_order_only_productがfalseの場合、false
    */
    @Default(false) bool isInDeliveryLeadTime,
    /* 納品リードタイム日数 - is_order_only_productがfalseの場合、null*/
    int? deliveryLeadTimeDays,
    /* 内容量上限 */
    @Default('') String upperSalesCapacity,
    /* 内容量下限 */
    @Default('') String lowerSalesCapacity,
    /* 価格上限 */
    @Default(0) int upperPrice,
    /* 価格下限 */
    @Default(0) int lowerPrice,
    /* 本体価格上限 */
    @Default(0) int upperBasePrice,
    /* 本体価格下限 */
    @Default(0) int lowerBasePrice,
    /*
    承り配達日限定あり判定

      true：承り配達日の限定あり(現在の配送日では商品が承れなくて、カートに追加できない状態)
      false：承り配達日の限定なし(現在の配送日で商品が承れて、カートに追加できる状態)
    */
    @Default(false) bool isLimitedSaleDeliveryDate,
    /* 注文変更中状態の判定 - true：注文変更中状態 - false：注文変更中ではない */
    @Default(false) bool isOrderChangingStatus,
    /* 配達便変更締め日時前の判定 - true：配達便変更締め前である - false：配達便変更締め前ではない */
    @Default(false) bool isBeforeDeliveryPlanChangeClosingDatetime,
    /* 当日翌日のみ承り商品判定 - true：当日翌日のみ承り商品 - false：当日翌日のみ承り商品ではない */
    @Default(false) bool isTomorrowOnlySaleProduct,
    /* ネットスーパー翌日日時 ※yyyy-MM-ddTHH:mm:ss+09:00 */
    @StringToEpochTimeConverter() @Default(0) @JsonKey(name: 'netsuper_next_datetime') int epochNetsuperNextDatetime,
    /* N日目以降承り商品判定 - true：N日目以降承り商品である - false：N日目以降承り商品ではない */
    @Default(false) bool isAfterDaySaleProduct,
    /* 承り可能配達開始日時 ※yyyy-MM-ddTHH:mm:ss+09:00 - is_after_day_sale_productがfalseの場合、nullを返却*/
    @NullableStringToEpochTimeConverter()
    @JsonKey(name: 'enables_sale_delivery_datetime')
        int? epochEnablesSaleDeliveryDatetime,
    /* 商品変更締め案内表示判定 - true：表示する - false：表示しない */
    @Default(false) bool isChangeDeliveryClosingGuide,
    /* 商品変更締め日時 ※yyyy-MM-ddTHH:mm:ss+09:00 */
    @NullableStringToEpochTimeConverter()
    @JsonKey(name: 'change_product_closing_datetime')
        int? epochChangeProductClosingDatetime,
    /* 医薬品扱い商品判定 - true：医薬品扱い - false：医薬品扱いでない */
    @Default(false) bool isDrugProduct,
    /* 第1類医薬品判定 - true：第1類医薬品 - false：第1類医薬品でない */
    @Default(false) bool isFirstClassDrugs,
    /* 指定第2類医薬品判定 - true：指定第2類医薬品 - false：指定第2類医薬品でない */
    @Default(false) bool isDesignatedSecondClassDrugs,
    /* 第2類医薬品判定 - true：第2類医薬品 - false：第2類医薬品でない */
    @Default(false) bool isSecondClassDrugs,
    /* 第3類医薬品判定 - true：第3類医薬品 - false：第3類医薬品でない */
    @Default(false) bool isThirdClassDrugs,
    /* 一括値引商品判定 - true：一括値引商品 - false：一括値引商品でない */
    @Default(false) bool isSumDiscount,
    /* 期間割引商品判定 - true：期間割引商品 - false：期間割引商品でない */
    @Default(false) bool isPeriodDiscount,
    /* クーポン割引商品判定 - true：クーポン割引商品 - false：クーポン割引商品でない */
    @Default(false) bool isCouponDiscount,
    /* 前値 - ログインステータスが予約の場合、nullを返却*/
    @Default('') String previousValue,
    /* DPTコード - DPTコードが設定されていない場合、nullを返却*/
    @Default('') String departmentCode,
    /* 売場コード - 売場コードが設定されていない場合、nullを返却*/
    @Default('') String salesFloorCode,
    /* 品揃分類コード - 品揃分類コードが設定されていない場合、nullを返却*/
    @Default('') String productAssortmentCode,
    /*
     予約セット販売商品判定 - true：セット販売商品である - false：セット販売商品でない
    */
    @Default(false) bool isSetSaleProduct,
    @Default(<ReserveSetSaleModel>[]) List<ReserveSetSaleModel> reserveSetSaleProducts,
    /*
      商品承り中判定
      - ※販売期間終了日と現在時刻を比較結果
      - 予約商品以外の場合、null
      true：商品承り中
      false：商品承り終了
    */
    @Default(false) bool? isSaleEnd,
    /*
      販売期間終了日 - ※YYYY-MM-DDThh:mm:ss+09:00 - 予約商品以外の場合、null
    */
    @NullableStringToEpochTimeConverter() @JsonKey(name: 'sale_end_date_time') int? epochSaleEndDateTime,
    /*
    お一人様限定数有無判定
      true：限定数あり
      false：限定数なし
    */
    @Default(false) bool isLimitNumberOnePerson,
    /*
    お一人様限定数 - 予約商品以外の場合、null
    */
    @Default('') String limitNumberOnePerson,
    /*
    最短お届け日数の表示不要判定
      true：表示不要
      false：表示必要
    */
    @Default(false) bool isShortestDeliveryDays,
    /* 最短お届け可能日数 - 予約商品以外の場合、null */
    @Default('') String shortestDeliveryDays,
    /* お渡し可能日　※YYYY-MM-DDThh:mm:ss+09:00 - 予約商品以外の場合、null*/
    @NullableStringToEpochTimeConverter()
    @JsonKey(name: 'reserve_delivery_date_time')
        int? epochReserveDeliveryDateTime,
    /*
    予約配達可能日リスト　※yyyyMMdd
      - 予約商品以外の場合、null
    */
    @Default(<String>[]) List<String> reserveDeliveryDates,
    /*お渡し可能日CSV文字列 - 予約商品以外の場合、null*/
    @Default('') String reserveDeliveryDateCsv,
    /* 産地 - 予約商品以外の場合、null*/
    @Default('') String producingArea,
    /*
    定期便取り扱い商品判定
      true：定期便取り扱い商品である
      false：定期便取り扱い商品ではない
    */
    @Default(false) bool isRegularShipmentProduct,
    @Default(false) @JsonKey(name: 'is_not_teikan') bool isSaleByMeasure,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

  String get thumbnailUrl => '$iynsBaseUrl$frontThumbnailImageFullPath';

  DateTime get netsuperNextDatetime => const StringToEpochTimeConverter().toDateTime(epochNetsuperNextDatetime);

  DateTime? get posOrderLimitedDatetime =>
      const NullableStringToEpochTimeConverter().toDateTime(epochPosOrderLimitedDatetime);
  DateTime? get deliveryStartDatetime =>
      const NullableStringToEpochTimeConverter().toDateTime(epochDeliveryStartDatetime);
  DateTime? get deliveryFinishDatetime =>
      const NullableStringToEpochTimeConverter().toDateTime(epochDeliveryFinishDatetime);
  DateTime? get enablesSaleDeliveryDatetime =>
      const NullableStringToEpochTimeConverter().toDateTime(epochEnablesSaleDeliveryDatetime);
  DateTime? get changeProductClosingDatetime =>
      const NullableStringToEpochTimeConverter().toDateTime(epochChangeProductClosingDatetime);
  DateTime? get saleEndDateTime => const NullableStringToEpochTimeConverter().toDateTime(epochSaleEndDateTime);
  DateTime? get reserveDeliveryDateTime =>
      const NullableStringToEpochTimeConverter().toDateTime(epochReserveDeliveryDateTime);

  // TODO: ProductModel内の文字列を返すメソッドをUtilに移動させる
  // https://task.7andi-digital.com/browse/IYNS-11868

  /// お届け日MM/DD(EEE)まで承りますの日付部分のみ取得
  /// 承り可能、当日翌日のみ承り商品でない場合、空文字列を返す
  String untilLimitedDeliveryDate({
    required bool visitorCartFlag,
    required bool deemedDeliveryCartFlag,
  }) {
    if (!isTomorrowOnlySaleProduct) {
      return '';
    }
    if (isLimitedSaleDeliveryDate || visitorCartFlag || deemedDeliveryCartFlag) {
      return formatDateTimeMonthDay(netsuperNextDatetime);
    }
    return '';
  }

  /// お届け日MM/DD(EEE)以降で承りますの日付部分のみ取得
  /// 承り可能な場合、空文字列を返す
  String afterLimitedDeliveryDate({
    required bool visitorCartFlag,
    required bool deemedDeliveryCartFlag,
  }) {
    if ((enablesSaleDeliveryDatetime ?? '') == '' || !isAfterDaySaleProduct) {
      return '';
    }
    if (isLimitedSaleDeliveryDate || visitorCartFlag || deemedDeliveryCartFlag) {
      return formatDateTimeMonthDay(enablesSaleDeliveryDatetime!);
    }
    return '';
  }

  /// 選択している便がお届け開始と終了の期間外の場合、お届け日文字列を返す
  String sellOutDate({
    required bool visitorCartFlag,
    required bool deemedDeliveryCartFlag,
  }) {
    if (!isSellOutDisplayStart || deliveryStartDatetime == null || deliveryFinishDatetime == null) {
      return '';
    }
    final deliveryStartDatetimeYmd = toYmd(deliveryStartDatetime!.toLocal());
    final deliveryFinishDatetimeYmd = toYmd(deliveryFinishDatetime!.toLocal());
    if (!isInDeliveryTerm || visitorCartFlag || deemedDeliveryCartFlag) {
      if (deliveryStartDatetimeYmd == deliveryFinishDatetimeYmd) {
        return formatDateTimeMonthDay(deliveryStartDatetime!);
      }
      return '${formatDateTimeMonthDay(deliveryStartDatetime!)}～${formatDateTimeMonthDay(deliveryFinishDatetime!)}';
    }
    return '';
  }

  /// 在庫数の表示条件を満たす時、在庫数を返す
  int? get stockQuantity {
    if ((productDiscount?.sellingOffCode.isNotEmpty ?? false) && maxBuyPossibleNumber >= 1) {
      return maxBuyPossibleNumber;
    }
    return null;
  }
}
