// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
/* お気に入り追加済み判定 - true：お気に入り追加済み - false：お気に入り未追加 */
  bool get isFavoriteAdded =>
      throw _privateConstructorUsedError; /* 商品アイコン表示判定 - true：有効な商品アイコンあり - false：有効な商品アイコンなし */
  bool get isDisplayProductIcon =>
      throw _privateConstructorUsedError; /* 広告アイコンコード - 広告アイコン未指定又は該当マスタ無しの場合空文字 */
  String get advertisingIconCode =>
      throw _privateConstructorUsedError; /* 広告アイコンラベル - 広告アイコン未指定又は該当マスタ無しの場合空文字 */
  String get advertisingLabel =>
      throw _privateConstructorUsedError; /* 品番判定 - true：品番 - false：単品又は品番配下の単品 */
  bool get isProductNumber =>
      throw _privateConstructorUsedError; /* 「カートへ」ボタン表示判定 - true：表示可 - false：表示不可 */
  bool get isDisplayPossibleBuyButton =>
      throw _privateConstructorUsedError; /* カウンセリング商品判定 - true：カウンセリング商品 - false：非カウンセリング商品 */
  bool get isCounselingProduct => throw _privateConstructorUsedError; /* 商品ID */
  String get productId => throw _privateConstructorUsedError; /* 商品名 */
  String get productName =>
      throw _privateConstructorUsedError; /* 商品画像のファイルパス - pri1imagefileの有無で異なる */
  String get thumbnailImagePath =>
      throw _privateConstructorUsedError; /* 商品画像のファイル名
      - pri1imagefileの有無で異なる */
  String get thumbnailImageFileName =>
      throw _privateConstructorUsedError; /* 商品画像のフロント用フルパス ファイルパスまたはファイル名が無い場合：null */
  String get frontThumbnailImageFullPath =>
      throw _privateConstructorUsedError; /*
    ホワイト画像表示フラグ
    - 通常商品の場合
      true：「販促対象」かつ「画像なし」の商品​の場合
      false：「販促対象」かつ「画像なし」の商品​以外の場合
    - 予約商品の場合
      true：「画像なし」の商品​の場合
      false：「画像なし」の商品​以外の場合
    */
  bool get isDisplayWhiteImage =>
      throw _privateConstructorUsedError; /* 商品コピー文言 - 画像のtitleに使用 - 商品コピー文言が設定されていない場合、nullを返却*/
  String get productCatchphrase =>
      throw _privateConstructorUsedError; /* 広告商品判定 - true：広告商品である - false：広告商品ではない */
  bool get isAdvertisingProduct =>
      throw _privateConstructorUsedError; /* 広告掲載期間 - 広告商品でない場合、空文字を返却*/
  String get advertisingTerm =>
      throw _privateConstructorUsedError; /* 配送便限定の市商品判定 - true：配送便限定市商品である - false：配送便限定市商品ではない */
  bool get isMarketDeliveryLimitedProduct =>
      throw _privateConstructorUsedError; /* 市商品時間帯リスト */
  List<MarketTimeFromToModel> get marketTimes =>
      throw _privateConstructorUsedError; /* POS発注制限による配送日・便限定商品の判定 - true：POS発注制限による配送日・便限定の商品である - false：上記以外 */
  bool get isPosOrderLimitedProduct =>
      throw _privateConstructorUsedError; /* POS発注制限あり商品配達可能日　※YYYY-MM-DDThh:mm:ss+09:00 - is_pos_order_limited_productがfalseの場合、nullを返却*/
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'pos_order_limited_datetime')
  int? get epochPosOrderLimitedDatetime =>
      throw _privateConstructorUsedError; /* 販売内容量表示 - 表示しない場合空文字 */
  String get salesCapacity => throw _privateConstructorUsedError;
  List<CardCustomerDiscountModel> get cardMemberDiscounts =>
      throw _privateConstructorUsedError; /* nanaco付与単位ポイント - 0の場合nanacoポイントN倍メッセージを表示しない */
  int get nanacoPointUnitPoint => throw _privateConstructorUsedError; /* 本体価格 */
  int get basePrice =>
      throw _privateConstructorUsedError; /* 非課税商品判定 - true：非課税商品である - false：非課税商品ではない */
  bool get isTaxExemptProduct => throw _privateConstructorUsedError; /* 価格 */
  int get price => throw _privateConstructorUsedError; /* 単位単価 ※例「100g当たり〇円」 */
  String get unitPrice =>
      throw _privateConstructorUsedError; /* 価格が割引後であるか判定 - true：価格割引き後 - false：価格引きされていない */
  bool get isDiscountedPrice =>
      throw _privateConstructorUsedError; /* 割引除外対象商品判定 - true：割引除外対象商品である - false：割引除外対象商品ではない  ※既存の同変数は判定が逆になっているので注意  FrontProductDto#isDiscountExclusion */
  bool get isDiscountExclusionProduct =>
      throw _privateConstructorUsedError; /* ネット専用売価判定 - true：ネット専用売価商品 - false：ネット専用売価商品でない */
  bool get isNsPrice => throw _privateConstructorUsedError; /* 割引情報のModel */
  ProductDiscountModel? get productDiscount =>
      throw _privateConstructorUsedError; /*
    予約商品判定
      true：予約商品である
      false：予約商品でない
    */
  bool get isReserveProduct =>
      throw _privateConstructorUsedError; /* 医薬部外品判定 - true：医薬部外品である - false：医薬部外品ではない */
  bool get isQuasiDrugs => throw _privateConstructorUsedError; /* アイコンラベル */
  ProductLabel get topLabel =>
      throw _privateConstructorUsedError; /*
      上部ラベルリスト_BFFADD_
      以下のラベルのリスト
      対象が無い場合は空のリストを返却
      ```
      売り切りセールラベル
      広告アイコンラベル
      ```
    */
  List<ProductLabel> get topLabelList =>
      throw _privateConstructorUsedError; /*
      下部ラベル_BFFADD_
      以下のいずれかのラベルを設定
      ```
      割引条件を表示するラベル
      商品情報を表示するラベル
      対象が無い場合は各項目が空のラベルとなる(imageFullPathのみnull)
      ```
    */
  ProductLabel get bottomLabel =>
      throw _privateConstructorUsedError; /*
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
  List<ProductLabel> get bottomLabelList =>
      throw _privateConstructorUsedError; /* アイコンラベル */
  ProductLabel get liquorLabel =>
      throw _privateConstructorUsedError; /* 酒類区分 ``` \"1\"：酒 \"2\"：みりん \"3\"：ノンアルコール null：それ以外 ``` */
  LiquorType get liquorType =>
      throw _privateConstructorUsedError; /* マイルアイコン表示判定 - true：表示する - false：表示しない */
  bool get isDisplayMileIcon =>
      throw _privateConstructorUsedError; /* カウンセリング済み判定 - true：カウンセリング済み - false：未カウンセリング */
  bool get isAnsweredCounseling =>
      throw _privateConstructorUsedError; /* 限定数
      - "お一人様X点まで"
      - "先着X名様限定"
      - 商品に応じて上記どちらかの文字列が返却される（Xは可変の数字）
      - 売り切り商品ではない場合はnull
    */
  String get limitedNumber =>
      throw _privateConstructorUsedError; /* 最大購入数
      お一人様X点まで購入可能の売り切り商品である場合は、
      限定数と在庫数で少ない方が返却される
    */
  int get maxBuyPossibleNumber =>
      throw _privateConstructorUsedError; /* レコメンド商品判定 - true：レコメンド商品である - false：レコメンド商品ではない */
  bool get isRecommendProduct => throw _privateConstructorUsedError; /* 店舗コード */
  String get shopCode =>
      throw _privateConstructorUsedError; /* 税率情報のModel - 新／旧税率売価での混在販売中でのみ使用し、そうでない場合はModel自体がnullで返却される */
  TaxRateSwitchModel? get taxRateSwitch =>
      throw _privateConstructorUsedError; /* アカチャンホンポ店舗代行中判定   - true：アカチャンホンポ店舗代行中   - false：アカチャンホンポ店舗代行中でない */
  bool get isAkachanHonpoAgencyShop =>
      throw _privateConstructorUsedError; /* アカチャンホンポ商品判定    - true：アカチャンホンポ商品   - false：アカチャンホンポ商品でない */
  bool get isAkachanHonpoProduct =>
      throw _privateConstructorUsedError; /* 売り切り商品表示判定 - true：売り切り表示する - false：売り切り表示しない */
  bool get isSellOutDisplayStart =>
      throw _privateConstructorUsedError; /* お届け期間内判定 - true：お届け期間内 - false：お届け期間外 */
  bool get isInDeliveryTerm =>
      throw _privateConstructorUsedError; /* お届け開始日　※YYYY-MM-DDThh:mm:ss+09:00 - お届け開始日が設定されていない場合、nullを返却*/
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'delivery_start_datetime')
  int? get epochDeliveryStartDatetime =>
      throw _privateConstructorUsedError; /* お届け終了日　※YYYY-MM-DDThh:mm:ss+09:00 - お届け終了日が設定されていない場合、nullを返却*/
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'delivery_finish_datetime')
  int? get epochDeliveryFinishDatetime =>
      throw _privateConstructorUsedError; /*
      受発注のみ商品判定
      true：受発注のみ商品
      false：受発注のみ商品でない
    */
  bool get isOrderOnlyProduct =>
      throw _privateConstructorUsedError; /*
    納品リードタイム期間内判定
      true：納品リードタイム期間内
      false：納品リードタイム期間外
      ※is_order_only_productがfalseの場合、false
    */
  bool get isInDeliveryLeadTime =>
      throw _privateConstructorUsedError; /* 納品リードタイム日数 - is_order_only_productがfalseの場合、null*/
  int? get deliveryLeadTimeDays =>
      throw _privateConstructorUsedError; /* 内容量上限 */
  String get upperSalesCapacity =>
      throw _privateConstructorUsedError; /* 内容量下限 */
  String get lowerSalesCapacity =>
      throw _privateConstructorUsedError; /* 価格上限 */
  int get upperPrice => throw _privateConstructorUsedError; /* 価格下限 */
  int get lowerPrice => throw _privateConstructorUsedError; /* 本体価格上限 */
  int get upperBasePrice => throw _privateConstructorUsedError; /* 本体価格下限 */
  int get lowerBasePrice =>
      throw _privateConstructorUsedError; /*
    承り配達日限定あり判定

      true：承り配達日の限定あり(現在の配送日では商品が承れなくて、カートに追加できない状態)
      false：承り配達日の限定なし(現在の配送日で商品が承れて、カートに追加できる状態)
    */
  bool get isLimitedSaleDeliveryDate =>
      throw _privateConstructorUsedError; /* 注文変更中状態の判定 - true：注文変更中状態 - false：注文変更中ではない */
  bool get isOrderChangingStatus =>
      throw _privateConstructorUsedError; /* 配達便変更締め日時前の判定 - true：配達便変更締め前である - false：配達便変更締め前ではない */
  bool get isBeforeDeliveryPlanChangeClosingDatetime =>
      throw _privateConstructorUsedError; /* 当日翌日のみ承り商品判定 - true：当日翌日のみ承り商品 - false：当日翌日のみ承り商品ではない */
  bool get isTomorrowOnlySaleProduct =>
      throw _privateConstructorUsedError; /* ネットスーパー翌日日時 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'netsuper_next_datetime')
  int get epochNetsuperNextDatetime =>
      throw _privateConstructorUsedError; /* N日目以降承り商品判定 - true：N日目以降承り商品である - false：N日目以降承り商品ではない */
  bool get isAfterDaySaleProduct =>
      throw _privateConstructorUsedError; /* 承り可能配達開始日時 ※yyyy-MM-ddTHH:mm:ss+09:00 - is_after_day_sale_productがfalseの場合、nullを返却*/
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'enables_sale_delivery_datetime')
  int? get epochEnablesSaleDeliveryDatetime =>
      throw _privateConstructorUsedError; /* 商品変更締め案内表示判定 - true：表示する - false：表示しない */
  bool get isChangeDeliveryClosingGuide =>
      throw _privateConstructorUsedError; /* 商品変更締め日時 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'change_product_closing_datetime')
  int? get epochChangeProductClosingDatetime =>
      throw _privateConstructorUsedError; /* 医薬品扱い商品判定 - true：医薬品扱い - false：医薬品扱いでない */
  bool get isDrugProduct =>
      throw _privateConstructorUsedError; /* 第1類医薬品判定 - true：第1類医薬品 - false：第1類医薬品でない */
  bool get isFirstClassDrugs =>
      throw _privateConstructorUsedError; /* 指定第2類医薬品判定 - true：指定第2類医薬品 - false：指定第2類医薬品でない */
  bool get isDesignatedSecondClassDrugs =>
      throw _privateConstructorUsedError; /* 第2類医薬品判定 - true：第2類医薬品 - false：第2類医薬品でない */
  bool get isSecondClassDrugs =>
      throw _privateConstructorUsedError; /* 第3類医薬品判定 - true：第3類医薬品 - false：第3類医薬品でない */
  bool get isThirdClassDrugs =>
      throw _privateConstructorUsedError; /* 一括値引商品判定 - true：一括値引商品 - false：一括値引商品でない */
  bool get isSumDiscount =>
      throw _privateConstructorUsedError; /* 期間割引商品判定 - true：期間割引商品 - false：期間割引商品でない */
  bool get isPeriodDiscount =>
      throw _privateConstructorUsedError; /* クーポン割引商品判定 - true：クーポン割引商品 - false：クーポン割引商品でない */
  bool get isCouponDiscount =>
      throw _privateConstructorUsedError; /* 前値 - ログインステータスが予約の場合、nullを返却*/
  String get previousValue =>
      throw _privateConstructorUsedError; /* DPTコード - DPTコードが設定されていない場合、nullを返却*/
  String get departmentCode =>
      throw _privateConstructorUsedError; /* 売場コード - 売場コードが設定されていない場合、nullを返却*/
  String get salesFloorCode =>
      throw _privateConstructorUsedError; /* 品揃分類コード - 品揃分類コードが設定されていない場合、nullを返却*/
  String get productAssortmentCode =>
      throw _privateConstructorUsedError; /*
     予約セット販売商品判定 - true：セット販売商品である - false：セット販売商品でない
    */
  bool get isSetSaleProduct => throw _privateConstructorUsedError;
  List<ReserveSetSaleModel> get reserveSetSaleProducts =>
      throw _privateConstructorUsedError; /*
      商品承り中判定
      - ※販売期間終了日と現在時刻を比較結果
      - 予約商品以外の場合、null
      true：商品承り中
      false：商品承り終了
    */
  bool? get isSaleEnd =>
      throw _privateConstructorUsedError; /*
      販売期間終了日 - ※YYYY-MM-DDThh:mm:ss+09:00 - 予約商品以外の場合、null
    */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'sale_end_date_time')
  int? get epochSaleEndDateTime =>
      throw _privateConstructorUsedError; /*
    お一人様限定数有無判定
      true：限定数あり
      false：限定数なし
    */
  bool get isLimitNumberOnePerson =>
      throw _privateConstructorUsedError; /*
    お一人様限定数 - 予約商品以外の場合、null
    */
  String get limitNumberOnePerson =>
      throw _privateConstructorUsedError; /*
    最短お届け日数の表示不要判定
      true：表示不要
      false：表示必要
    */
  bool get isShortestDeliveryDays =>
      throw _privateConstructorUsedError; /* 最短お届け可能日数 - 予約商品以外の場合、null */
  String get shortestDeliveryDays =>
      throw _privateConstructorUsedError; /* お渡し可能日　※YYYY-MM-DDThh:mm:ss+09:00 - 予約商品以外の場合、null*/
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'reserve_delivery_date_time')
  int? get epochReserveDeliveryDateTime =>
      throw _privateConstructorUsedError; /*
    予約配達可能日リスト　※yyyyMMdd
      - 予約商品以外の場合、null
    */
  List<String> get reserveDeliveryDates =>
      throw _privateConstructorUsedError; /*お渡し可能日CSV文字列 - 予約商品以外の場合、null*/
  String get reserveDeliveryDateCsv =>
      throw _privateConstructorUsedError; /* 産地 - 予約商品以外の場合、null*/
  String get producingArea =>
      throw _privateConstructorUsedError; /*
    定期便取り扱い商品判定
      true：定期便取り扱い商品である
      false：定期便取り扱い商品ではない
    */
  bool get isRegularShipmentProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_not_teikan')
  bool get isSaleByMeasure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {bool isFavoriteAdded,
      bool isDisplayProductIcon,
      String advertisingIconCode,
      String advertisingLabel,
      bool isProductNumber,
      bool isDisplayPossibleBuyButton,
      bool isCounselingProduct,
      String productId,
      String productName,
      String thumbnailImagePath,
      String thumbnailImageFileName,
      String frontThumbnailImageFullPath,
      bool isDisplayWhiteImage,
      String productCatchphrase,
      bool isAdvertisingProduct,
      String advertisingTerm,
      bool isMarketDeliveryLimitedProduct,
      List<MarketTimeFromToModel> marketTimes,
      bool isPosOrderLimitedProduct,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'pos_order_limited_datetime')
          int? epochPosOrderLimitedDatetime,
      String salesCapacity,
      List<CardCustomerDiscountModel> cardMemberDiscounts,
      int nanacoPointUnitPoint,
      int basePrice,
      bool isTaxExemptProduct,
      int price,
      String unitPrice,
      bool isDiscountedPrice,
      bool isDiscountExclusionProduct,
      bool isNsPrice,
      ProductDiscountModel? productDiscount,
      bool isReserveProduct,
      bool isQuasiDrugs,
      ProductLabel topLabel,
      List<ProductLabel> topLabelList,
      ProductLabel bottomLabel,
      List<ProductLabel> bottomLabelList,
      ProductLabel liquorLabel,
      LiquorType liquorType,
      bool isDisplayMileIcon,
      bool isAnsweredCounseling,
      String limitedNumber,
      int maxBuyPossibleNumber,
      bool isRecommendProduct,
      String shopCode,
      TaxRateSwitchModel? taxRateSwitch,
      bool isAkachanHonpoAgencyShop,
      bool isAkachanHonpoProduct,
      bool isSellOutDisplayStart,
      bool isInDeliveryTerm,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'delivery_start_datetime')
          int? epochDeliveryStartDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'delivery_finish_datetime')
          int? epochDeliveryFinishDatetime,
      bool isOrderOnlyProduct,
      bool isInDeliveryLeadTime,
      int? deliveryLeadTimeDays,
      String upperSalesCapacity,
      String lowerSalesCapacity,
      int upperPrice,
      int lowerPrice,
      int upperBasePrice,
      int lowerBasePrice,
      bool isLimitedSaleDeliveryDate,
      bool isOrderChangingStatus,
      bool isBeforeDeliveryPlanChangeClosingDatetime,
      bool isTomorrowOnlySaleProduct,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'netsuper_next_datetime')
          int epochNetsuperNextDatetime,
      bool isAfterDaySaleProduct,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'enables_sale_delivery_datetime')
          int? epochEnablesSaleDeliveryDatetime,
      bool isChangeDeliveryClosingGuide,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'change_product_closing_datetime')
          int? epochChangeProductClosingDatetime,
      bool isDrugProduct,
      bool isFirstClassDrugs,
      bool isDesignatedSecondClassDrugs,
      bool isSecondClassDrugs,
      bool isThirdClassDrugs,
      bool isSumDiscount,
      bool isPeriodDiscount,
      bool isCouponDiscount,
      String previousValue,
      String departmentCode,
      String salesFloorCode,
      String productAssortmentCode,
      bool isSetSaleProduct,
      List<ReserveSetSaleModel> reserveSetSaleProducts,
      bool? isSaleEnd,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'sale_end_date_time')
          int? epochSaleEndDateTime,
      bool isLimitNumberOnePerson,
      String limitNumberOnePerson,
      bool isShortestDeliveryDays,
      String shortestDeliveryDays,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'reserve_delivery_date_time')
          int? epochReserveDeliveryDateTime,
      List<String> reserveDeliveryDates,
      String reserveDeliveryDateCsv,
      String producingArea,
      bool isRegularShipmentProduct,
      @JsonKey(name: 'is_not_teikan')
          bool isSaleByMeasure});

  $ProductDiscountModelCopyWith<$Res>? get productDiscount;
  $ProductLabelCopyWith<$Res> get topLabel;
  $ProductLabelCopyWith<$Res> get bottomLabel;
  $ProductLabelCopyWith<$Res> get liquorLabel;
  $TaxRateSwitchModelCopyWith<$Res>? get taxRateSwitch;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavoriteAdded = null,
    Object? isDisplayProductIcon = null,
    Object? advertisingIconCode = null,
    Object? advertisingLabel = null,
    Object? isProductNumber = null,
    Object? isDisplayPossibleBuyButton = null,
    Object? isCounselingProduct = null,
    Object? productId = null,
    Object? productName = null,
    Object? thumbnailImagePath = null,
    Object? thumbnailImageFileName = null,
    Object? frontThumbnailImageFullPath = null,
    Object? isDisplayWhiteImage = null,
    Object? productCatchphrase = null,
    Object? isAdvertisingProduct = null,
    Object? advertisingTerm = null,
    Object? isMarketDeliveryLimitedProduct = null,
    Object? marketTimes = null,
    Object? isPosOrderLimitedProduct = null,
    Object? epochPosOrderLimitedDatetime = freezed,
    Object? salesCapacity = null,
    Object? cardMemberDiscounts = null,
    Object? nanacoPointUnitPoint = null,
    Object? basePrice = null,
    Object? isTaxExemptProduct = null,
    Object? price = null,
    Object? unitPrice = null,
    Object? isDiscountedPrice = null,
    Object? isDiscountExclusionProduct = null,
    Object? isNsPrice = null,
    Object? productDiscount = freezed,
    Object? isReserveProduct = null,
    Object? isQuasiDrugs = null,
    Object? topLabel = null,
    Object? topLabelList = null,
    Object? bottomLabel = null,
    Object? bottomLabelList = null,
    Object? liquorLabel = null,
    Object? liquorType = null,
    Object? isDisplayMileIcon = null,
    Object? isAnsweredCounseling = null,
    Object? limitedNumber = null,
    Object? maxBuyPossibleNumber = null,
    Object? isRecommendProduct = null,
    Object? shopCode = null,
    Object? taxRateSwitch = freezed,
    Object? isAkachanHonpoAgencyShop = null,
    Object? isAkachanHonpoProduct = null,
    Object? isSellOutDisplayStart = null,
    Object? isInDeliveryTerm = null,
    Object? epochDeliveryStartDatetime = freezed,
    Object? epochDeliveryFinishDatetime = freezed,
    Object? isOrderOnlyProduct = null,
    Object? isInDeliveryLeadTime = null,
    Object? deliveryLeadTimeDays = freezed,
    Object? upperSalesCapacity = null,
    Object? lowerSalesCapacity = null,
    Object? upperPrice = null,
    Object? lowerPrice = null,
    Object? upperBasePrice = null,
    Object? lowerBasePrice = null,
    Object? isLimitedSaleDeliveryDate = null,
    Object? isOrderChangingStatus = null,
    Object? isBeforeDeliveryPlanChangeClosingDatetime = null,
    Object? isTomorrowOnlySaleProduct = null,
    Object? epochNetsuperNextDatetime = null,
    Object? isAfterDaySaleProduct = null,
    Object? epochEnablesSaleDeliveryDatetime = freezed,
    Object? isChangeDeliveryClosingGuide = null,
    Object? epochChangeProductClosingDatetime = freezed,
    Object? isDrugProduct = null,
    Object? isFirstClassDrugs = null,
    Object? isDesignatedSecondClassDrugs = null,
    Object? isSecondClassDrugs = null,
    Object? isThirdClassDrugs = null,
    Object? isSumDiscount = null,
    Object? isPeriodDiscount = null,
    Object? isCouponDiscount = null,
    Object? previousValue = null,
    Object? departmentCode = null,
    Object? salesFloorCode = null,
    Object? productAssortmentCode = null,
    Object? isSetSaleProduct = null,
    Object? reserveSetSaleProducts = null,
    Object? isSaleEnd = freezed,
    Object? epochSaleEndDateTime = freezed,
    Object? isLimitNumberOnePerson = null,
    Object? limitNumberOnePerson = null,
    Object? isShortestDeliveryDays = null,
    Object? shortestDeliveryDays = null,
    Object? epochReserveDeliveryDateTime = freezed,
    Object? reserveDeliveryDates = null,
    Object? reserveDeliveryDateCsv = null,
    Object? producingArea = null,
    Object? isRegularShipmentProduct = null,
    Object? isSaleByMeasure = null,
  }) {
    return _then(_value.copyWith(
      isFavoriteAdded: null == isFavoriteAdded
          ? _value.isFavoriteAdded
          : isFavoriteAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisplayProductIcon: null == isDisplayProductIcon
          ? _value.isDisplayProductIcon
          : isDisplayProductIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      advertisingIconCode: null == advertisingIconCode
          ? _value.advertisingIconCode
          : advertisingIconCode // ignore: cast_nullable_to_non_nullable
              as String,
      advertisingLabel: null == advertisingLabel
          ? _value.advertisingLabel
          : advertisingLabel // ignore: cast_nullable_to_non_nullable
              as String,
      isProductNumber: null == isProductNumber
          ? _value.isProductNumber
          : isProductNumber // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisplayPossibleBuyButton: null == isDisplayPossibleBuyButton
          ? _value.isDisplayPossibleBuyButton
          : isDisplayPossibleBuyButton // ignore: cast_nullable_to_non_nullable
              as bool,
      isCounselingProduct: null == isCounselingProduct
          ? _value.isCounselingProduct
          : isCounselingProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImagePath: null == thumbnailImagePath
          ? _value.thumbnailImagePath
          : thumbnailImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImageFileName: null == thumbnailImageFileName
          ? _value.thumbnailImageFileName
          : thumbnailImageFileName // ignore: cast_nullable_to_non_nullable
              as String,
      frontThumbnailImageFullPath: null == frontThumbnailImageFullPath
          ? _value.frontThumbnailImageFullPath
          : frontThumbnailImageFullPath // ignore: cast_nullable_to_non_nullable
              as String,
      isDisplayWhiteImage: null == isDisplayWhiteImage
          ? _value.isDisplayWhiteImage
          : isDisplayWhiteImage // ignore: cast_nullable_to_non_nullable
              as bool,
      productCatchphrase: null == productCatchphrase
          ? _value.productCatchphrase
          : productCatchphrase // ignore: cast_nullable_to_non_nullable
              as String,
      isAdvertisingProduct: null == isAdvertisingProduct
          ? _value.isAdvertisingProduct
          : isAdvertisingProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      advertisingTerm: null == advertisingTerm
          ? _value.advertisingTerm
          : advertisingTerm // ignore: cast_nullable_to_non_nullable
              as String,
      isMarketDeliveryLimitedProduct: null == isMarketDeliveryLimitedProduct
          ? _value.isMarketDeliveryLimitedProduct
          : isMarketDeliveryLimitedProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      marketTimes: null == marketTimes
          ? _value.marketTimes
          : marketTimes // ignore: cast_nullable_to_non_nullable
              as List<MarketTimeFromToModel>,
      isPosOrderLimitedProduct: null == isPosOrderLimitedProduct
          ? _value.isPosOrderLimitedProduct
          : isPosOrderLimitedProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      epochPosOrderLimitedDatetime: freezed == epochPosOrderLimitedDatetime
          ? _value.epochPosOrderLimitedDatetime
          : epochPosOrderLimitedDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      salesCapacity: null == salesCapacity
          ? _value.salesCapacity
          : salesCapacity // ignore: cast_nullable_to_non_nullable
              as String,
      cardMemberDiscounts: null == cardMemberDiscounts
          ? _value.cardMemberDiscounts
          : cardMemberDiscounts // ignore: cast_nullable_to_non_nullable
              as List<CardCustomerDiscountModel>,
      nanacoPointUnitPoint: null == nanacoPointUnitPoint
          ? _value.nanacoPointUnitPoint
          : nanacoPointUnitPoint // ignore: cast_nullable_to_non_nullable
              as int,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int,
      isTaxExemptProduct: null == isTaxExemptProduct
          ? _value.isTaxExemptProduct
          : isTaxExemptProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      isDiscountedPrice: null == isDiscountedPrice
          ? _value.isDiscountedPrice
          : isDiscountedPrice // ignore: cast_nullable_to_non_nullable
              as bool,
      isDiscountExclusionProduct: null == isDiscountExclusionProduct
          ? _value.isDiscountExclusionProduct
          : isDiscountExclusionProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isNsPrice: null == isNsPrice
          ? _value.isNsPrice
          : isNsPrice // ignore: cast_nullable_to_non_nullable
              as bool,
      productDiscount: freezed == productDiscount
          ? _value.productDiscount
          : productDiscount // ignore: cast_nullable_to_non_nullable
              as ProductDiscountModel?,
      isReserveProduct: null == isReserveProduct
          ? _value.isReserveProduct
          : isReserveProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isQuasiDrugs: null == isQuasiDrugs
          ? _value.isQuasiDrugs
          : isQuasiDrugs // ignore: cast_nullable_to_non_nullable
              as bool,
      topLabel: null == topLabel
          ? _value.topLabel
          : topLabel // ignore: cast_nullable_to_non_nullable
              as ProductLabel,
      topLabelList: null == topLabelList
          ? _value.topLabelList
          : topLabelList // ignore: cast_nullable_to_non_nullable
              as List<ProductLabel>,
      bottomLabel: null == bottomLabel
          ? _value.bottomLabel
          : bottomLabel // ignore: cast_nullable_to_non_nullable
              as ProductLabel,
      bottomLabelList: null == bottomLabelList
          ? _value.bottomLabelList
          : bottomLabelList // ignore: cast_nullable_to_non_nullable
              as List<ProductLabel>,
      liquorLabel: null == liquorLabel
          ? _value.liquorLabel
          : liquorLabel // ignore: cast_nullable_to_non_nullable
              as ProductLabel,
      liquorType: null == liquorType
          ? _value.liquorType
          : liquorType // ignore: cast_nullable_to_non_nullable
              as LiquorType,
      isDisplayMileIcon: null == isDisplayMileIcon
          ? _value.isDisplayMileIcon
          : isDisplayMileIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      isAnsweredCounseling: null == isAnsweredCounseling
          ? _value.isAnsweredCounseling
          : isAnsweredCounseling // ignore: cast_nullable_to_non_nullable
              as bool,
      limitedNumber: null == limitedNumber
          ? _value.limitedNumber
          : limitedNumber // ignore: cast_nullable_to_non_nullable
              as String,
      maxBuyPossibleNumber: null == maxBuyPossibleNumber
          ? _value.maxBuyPossibleNumber
          : maxBuyPossibleNumber // ignore: cast_nullable_to_non_nullable
              as int,
      isRecommendProduct: null == isRecommendProduct
          ? _value.isRecommendProduct
          : isRecommendProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      taxRateSwitch: freezed == taxRateSwitch
          ? _value.taxRateSwitch
          : taxRateSwitch // ignore: cast_nullable_to_non_nullable
              as TaxRateSwitchModel?,
      isAkachanHonpoAgencyShop: null == isAkachanHonpoAgencyShop
          ? _value.isAkachanHonpoAgencyShop
          : isAkachanHonpoAgencyShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isAkachanHonpoProduct: null == isAkachanHonpoProduct
          ? _value.isAkachanHonpoProduct
          : isAkachanHonpoProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isSellOutDisplayStart: null == isSellOutDisplayStart
          ? _value.isSellOutDisplayStart
          : isSellOutDisplayStart // ignore: cast_nullable_to_non_nullable
              as bool,
      isInDeliveryTerm: null == isInDeliveryTerm
          ? _value.isInDeliveryTerm
          : isInDeliveryTerm // ignore: cast_nullable_to_non_nullable
              as bool,
      epochDeliveryStartDatetime: freezed == epochDeliveryStartDatetime
          ? _value.epochDeliveryStartDatetime
          : epochDeliveryStartDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      epochDeliveryFinishDatetime: freezed == epochDeliveryFinishDatetime
          ? _value.epochDeliveryFinishDatetime
          : epochDeliveryFinishDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      isOrderOnlyProduct: null == isOrderOnlyProduct
          ? _value.isOrderOnlyProduct
          : isOrderOnlyProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isInDeliveryLeadTime: null == isInDeliveryLeadTime
          ? _value.isInDeliveryLeadTime
          : isInDeliveryLeadTime // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryLeadTimeDays: freezed == deliveryLeadTimeDays
          ? _value.deliveryLeadTimeDays
          : deliveryLeadTimeDays // ignore: cast_nullable_to_non_nullable
              as int?,
      upperSalesCapacity: null == upperSalesCapacity
          ? _value.upperSalesCapacity
          : upperSalesCapacity // ignore: cast_nullable_to_non_nullable
              as String,
      lowerSalesCapacity: null == lowerSalesCapacity
          ? _value.lowerSalesCapacity
          : lowerSalesCapacity // ignore: cast_nullable_to_non_nullable
              as String,
      upperPrice: null == upperPrice
          ? _value.upperPrice
          : upperPrice // ignore: cast_nullable_to_non_nullable
              as int,
      lowerPrice: null == lowerPrice
          ? _value.lowerPrice
          : lowerPrice // ignore: cast_nullable_to_non_nullable
              as int,
      upperBasePrice: null == upperBasePrice
          ? _value.upperBasePrice
          : upperBasePrice // ignore: cast_nullable_to_non_nullable
              as int,
      lowerBasePrice: null == lowerBasePrice
          ? _value.lowerBasePrice
          : lowerBasePrice // ignore: cast_nullable_to_non_nullable
              as int,
      isLimitedSaleDeliveryDate: null == isLimitedSaleDeliveryDate
          ? _value.isLimitedSaleDeliveryDate
          : isLimitedSaleDeliveryDate // ignore: cast_nullable_to_non_nullable
              as bool,
      isOrderChangingStatus: null == isOrderChangingStatus
          ? _value.isOrderChangingStatus
          : isOrderChangingStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      isBeforeDeliveryPlanChangeClosingDatetime: null ==
              isBeforeDeliveryPlanChangeClosingDatetime
          ? _value.isBeforeDeliveryPlanChangeClosingDatetime
          : isBeforeDeliveryPlanChangeClosingDatetime // ignore: cast_nullable_to_non_nullable
              as bool,
      isTomorrowOnlySaleProduct: null == isTomorrowOnlySaleProduct
          ? _value.isTomorrowOnlySaleProduct
          : isTomorrowOnlySaleProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      epochNetsuperNextDatetime: null == epochNetsuperNextDatetime
          ? _value.epochNetsuperNextDatetime
          : epochNetsuperNextDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      isAfterDaySaleProduct: null == isAfterDaySaleProduct
          ? _value.isAfterDaySaleProduct
          : isAfterDaySaleProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      epochEnablesSaleDeliveryDatetime: freezed ==
              epochEnablesSaleDeliveryDatetime
          ? _value.epochEnablesSaleDeliveryDatetime
          : epochEnablesSaleDeliveryDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      isChangeDeliveryClosingGuide: null == isChangeDeliveryClosingGuide
          ? _value.isChangeDeliveryClosingGuide
          : isChangeDeliveryClosingGuide // ignore: cast_nullable_to_non_nullable
              as bool,
      epochChangeProductClosingDatetime: freezed ==
              epochChangeProductClosingDatetime
          ? _value.epochChangeProductClosingDatetime
          : epochChangeProductClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      isDrugProduct: null == isDrugProduct
          ? _value.isDrugProduct
          : isDrugProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstClassDrugs: null == isFirstClassDrugs
          ? _value.isFirstClassDrugs
          : isFirstClassDrugs // ignore: cast_nullable_to_non_nullable
              as bool,
      isDesignatedSecondClassDrugs: null == isDesignatedSecondClassDrugs
          ? _value.isDesignatedSecondClassDrugs
          : isDesignatedSecondClassDrugs // ignore: cast_nullable_to_non_nullable
              as bool,
      isSecondClassDrugs: null == isSecondClassDrugs
          ? _value.isSecondClassDrugs
          : isSecondClassDrugs // ignore: cast_nullable_to_non_nullable
              as bool,
      isThirdClassDrugs: null == isThirdClassDrugs
          ? _value.isThirdClassDrugs
          : isThirdClassDrugs // ignore: cast_nullable_to_non_nullable
              as bool,
      isSumDiscount: null == isSumDiscount
          ? _value.isSumDiscount
          : isSumDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isPeriodDiscount: null == isPeriodDiscount
          ? _value.isPeriodDiscount
          : isPeriodDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isCouponDiscount: null == isCouponDiscount
          ? _value.isCouponDiscount
          : isCouponDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      previousValue: null == previousValue
          ? _value.previousValue
          : previousValue // ignore: cast_nullable_to_non_nullable
              as String,
      departmentCode: null == departmentCode
          ? _value.departmentCode
          : departmentCode // ignore: cast_nullable_to_non_nullable
              as String,
      salesFloorCode: null == salesFloorCode
          ? _value.salesFloorCode
          : salesFloorCode // ignore: cast_nullable_to_non_nullable
              as String,
      productAssortmentCode: null == productAssortmentCode
          ? _value.productAssortmentCode
          : productAssortmentCode // ignore: cast_nullable_to_non_nullable
              as String,
      isSetSaleProduct: null == isSetSaleProduct
          ? _value.isSetSaleProduct
          : isSetSaleProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      reserveSetSaleProducts: null == reserveSetSaleProducts
          ? _value.reserveSetSaleProducts
          : reserveSetSaleProducts // ignore: cast_nullable_to_non_nullable
              as List<ReserveSetSaleModel>,
      isSaleEnd: freezed == isSaleEnd
          ? _value.isSaleEnd
          : isSaleEnd // ignore: cast_nullable_to_non_nullable
              as bool?,
      epochSaleEndDateTime: freezed == epochSaleEndDateTime
          ? _value.epochSaleEndDateTime
          : epochSaleEndDateTime // ignore: cast_nullable_to_non_nullable
              as int?,
      isLimitNumberOnePerson: null == isLimitNumberOnePerson
          ? _value.isLimitNumberOnePerson
          : isLimitNumberOnePerson // ignore: cast_nullable_to_non_nullable
              as bool,
      limitNumberOnePerson: null == limitNumberOnePerson
          ? _value.limitNumberOnePerson
          : limitNumberOnePerson // ignore: cast_nullable_to_non_nullable
              as String,
      isShortestDeliveryDays: null == isShortestDeliveryDays
          ? _value.isShortestDeliveryDays
          : isShortestDeliveryDays // ignore: cast_nullable_to_non_nullable
              as bool,
      shortestDeliveryDays: null == shortestDeliveryDays
          ? _value.shortestDeliveryDays
          : shortestDeliveryDays // ignore: cast_nullable_to_non_nullable
              as String,
      epochReserveDeliveryDateTime: freezed == epochReserveDeliveryDateTime
          ? _value.epochReserveDeliveryDateTime
          : epochReserveDeliveryDateTime // ignore: cast_nullable_to_non_nullable
              as int?,
      reserveDeliveryDates: null == reserveDeliveryDates
          ? _value.reserveDeliveryDates
          : reserveDeliveryDates // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reserveDeliveryDateCsv: null == reserveDeliveryDateCsv
          ? _value.reserveDeliveryDateCsv
          : reserveDeliveryDateCsv // ignore: cast_nullable_to_non_nullable
              as String,
      producingArea: null == producingArea
          ? _value.producingArea
          : producingArea // ignore: cast_nullable_to_non_nullable
              as String,
      isRegularShipmentProduct: null == isRegularShipmentProduct
          ? _value.isRegularShipmentProduct
          : isRegularShipmentProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaleByMeasure: null == isSaleByMeasure
          ? _value.isSaleByMeasure
          : isSaleByMeasure // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDiscountModelCopyWith<$Res>? get productDiscount {
    if (_value.productDiscount == null) {
      return null;
    }

    return $ProductDiscountModelCopyWith<$Res>(_value.productDiscount!,
        (value) {
      return _then(_value.copyWith(productDiscount: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductLabelCopyWith<$Res> get topLabel {
    return $ProductLabelCopyWith<$Res>(_value.topLabel, (value) {
      return _then(_value.copyWith(topLabel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductLabelCopyWith<$Res> get bottomLabel {
    return $ProductLabelCopyWith<$Res>(_value.bottomLabel, (value) {
      return _then(_value.copyWith(bottomLabel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductLabelCopyWith<$Res> get liquorLabel {
    return $ProductLabelCopyWith<$Res>(_value.liquorLabel, (value) {
      return _then(_value.copyWith(liquorLabel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TaxRateSwitchModelCopyWith<$Res>? get taxRateSwitch {
    if (_value.taxRateSwitch == null) {
      return null;
    }

    return $TaxRateSwitchModelCopyWith<$Res>(_value.taxRateSwitch!, (value) {
      return _then(_value.copyWith(taxRateSwitch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$_ProductModelCopyWith(
          _$_ProductModel value, $Res Function(_$_ProductModel) then) =
      __$$_ProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isFavoriteAdded,
      bool isDisplayProductIcon,
      String advertisingIconCode,
      String advertisingLabel,
      bool isProductNumber,
      bool isDisplayPossibleBuyButton,
      bool isCounselingProduct,
      String productId,
      String productName,
      String thumbnailImagePath,
      String thumbnailImageFileName,
      String frontThumbnailImageFullPath,
      bool isDisplayWhiteImage,
      String productCatchphrase,
      bool isAdvertisingProduct,
      String advertisingTerm,
      bool isMarketDeliveryLimitedProduct,
      List<MarketTimeFromToModel> marketTimes,
      bool isPosOrderLimitedProduct,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'pos_order_limited_datetime')
          int? epochPosOrderLimitedDatetime,
      String salesCapacity,
      List<CardCustomerDiscountModel> cardMemberDiscounts,
      int nanacoPointUnitPoint,
      int basePrice,
      bool isTaxExemptProduct,
      int price,
      String unitPrice,
      bool isDiscountedPrice,
      bool isDiscountExclusionProduct,
      bool isNsPrice,
      ProductDiscountModel? productDiscount,
      bool isReserveProduct,
      bool isQuasiDrugs,
      ProductLabel topLabel,
      List<ProductLabel> topLabelList,
      ProductLabel bottomLabel,
      List<ProductLabel> bottomLabelList,
      ProductLabel liquorLabel,
      LiquorType liquorType,
      bool isDisplayMileIcon,
      bool isAnsweredCounseling,
      String limitedNumber,
      int maxBuyPossibleNumber,
      bool isRecommendProduct,
      String shopCode,
      TaxRateSwitchModel? taxRateSwitch,
      bool isAkachanHonpoAgencyShop,
      bool isAkachanHonpoProduct,
      bool isSellOutDisplayStart,
      bool isInDeliveryTerm,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'delivery_start_datetime')
          int? epochDeliveryStartDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'delivery_finish_datetime')
          int? epochDeliveryFinishDatetime,
      bool isOrderOnlyProduct,
      bool isInDeliveryLeadTime,
      int? deliveryLeadTimeDays,
      String upperSalesCapacity,
      String lowerSalesCapacity,
      int upperPrice,
      int lowerPrice,
      int upperBasePrice,
      int lowerBasePrice,
      bool isLimitedSaleDeliveryDate,
      bool isOrderChangingStatus,
      bool isBeforeDeliveryPlanChangeClosingDatetime,
      bool isTomorrowOnlySaleProduct,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'netsuper_next_datetime')
          int epochNetsuperNextDatetime,
      bool isAfterDaySaleProduct,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'enables_sale_delivery_datetime')
          int? epochEnablesSaleDeliveryDatetime,
      bool isChangeDeliveryClosingGuide,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'change_product_closing_datetime')
          int? epochChangeProductClosingDatetime,
      bool isDrugProduct,
      bool isFirstClassDrugs,
      bool isDesignatedSecondClassDrugs,
      bool isSecondClassDrugs,
      bool isThirdClassDrugs,
      bool isSumDiscount,
      bool isPeriodDiscount,
      bool isCouponDiscount,
      String previousValue,
      String departmentCode,
      String salesFloorCode,
      String productAssortmentCode,
      bool isSetSaleProduct,
      List<ReserveSetSaleModel> reserveSetSaleProducts,
      bool? isSaleEnd,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'sale_end_date_time')
          int? epochSaleEndDateTime,
      bool isLimitNumberOnePerson,
      String limitNumberOnePerson,
      bool isShortestDeliveryDays,
      String shortestDeliveryDays,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'reserve_delivery_date_time')
          int? epochReserveDeliveryDateTime,
      List<String> reserveDeliveryDates,
      String reserveDeliveryDateCsv,
      String producingArea,
      bool isRegularShipmentProduct,
      @JsonKey(name: 'is_not_teikan')
          bool isSaleByMeasure});

  @override
  $ProductDiscountModelCopyWith<$Res>? get productDiscount;
  @override
  $ProductLabelCopyWith<$Res> get topLabel;
  @override
  $ProductLabelCopyWith<$Res> get bottomLabel;
  @override
  $ProductLabelCopyWith<$Res> get liquorLabel;
  @override
  $TaxRateSwitchModelCopyWith<$Res>? get taxRateSwitch;
}

/// @nodoc
class __$$_ProductModelCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$_ProductModel>
    implements _$$_ProductModelCopyWith<$Res> {
  __$$_ProductModelCopyWithImpl(
      _$_ProductModel _value, $Res Function(_$_ProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavoriteAdded = null,
    Object? isDisplayProductIcon = null,
    Object? advertisingIconCode = null,
    Object? advertisingLabel = null,
    Object? isProductNumber = null,
    Object? isDisplayPossibleBuyButton = null,
    Object? isCounselingProduct = null,
    Object? productId = null,
    Object? productName = null,
    Object? thumbnailImagePath = null,
    Object? thumbnailImageFileName = null,
    Object? frontThumbnailImageFullPath = null,
    Object? isDisplayWhiteImage = null,
    Object? productCatchphrase = null,
    Object? isAdvertisingProduct = null,
    Object? advertisingTerm = null,
    Object? isMarketDeliveryLimitedProduct = null,
    Object? marketTimes = null,
    Object? isPosOrderLimitedProduct = null,
    Object? epochPosOrderLimitedDatetime = freezed,
    Object? salesCapacity = null,
    Object? cardMemberDiscounts = null,
    Object? nanacoPointUnitPoint = null,
    Object? basePrice = null,
    Object? isTaxExemptProduct = null,
    Object? price = null,
    Object? unitPrice = null,
    Object? isDiscountedPrice = null,
    Object? isDiscountExclusionProduct = null,
    Object? isNsPrice = null,
    Object? productDiscount = freezed,
    Object? isReserveProduct = null,
    Object? isQuasiDrugs = null,
    Object? topLabel = null,
    Object? topLabelList = null,
    Object? bottomLabel = null,
    Object? bottomLabelList = null,
    Object? liquorLabel = null,
    Object? liquorType = null,
    Object? isDisplayMileIcon = null,
    Object? isAnsweredCounseling = null,
    Object? limitedNumber = null,
    Object? maxBuyPossibleNumber = null,
    Object? isRecommendProduct = null,
    Object? shopCode = null,
    Object? taxRateSwitch = freezed,
    Object? isAkachanHonpoAgencyShop = null,
    Object? isAkachanHonpoProduct = null,
    Object? isSellOutDisplayStart = null,
    Object? isInDeliveryTerm = null,
    Object? epochDeliveryStartDatetime = freezed,
    Object? epochDeliveryFinishDatetime = freezed,
    Object? isOrderOnlyProduct = null,
    Object? isInDeliveryLeadTime = null,
    Object? deliveryLeadTimeDays = freezed,
    Object? upperSalesCapacity = null,
    Object? lowerSalesCapacity = null,
    Object? upperPrice = null,
    Object? lowerPrice = null,
    Object? upperBasePrice = null,
    Object? lowerBasePrice = null,
    Object? isLimitedSaleDeliveryDate = null,
    Object? isOrderChangingStatus = null,
    Object? isBeforeDeliveryPlanChangeClosingDatetime = null,
    Object? isTomorrowOnlySaleProduct = null,
    Object? epochNetsuperNextDatetime = null,
    Object? isAfterDaySaleProduct = null,
    Object? epochEnablesSaleDeliveryDatetime = freezed,
    Object? isChangeDeliveryClosingGuide = null,
    Object? epochChangeProductClosingDatetime = freezed,
    Object? isDrugProduct = null,
    Object? isFirstClassDrugs = null,
    Object? isDesignatedSecondClassDrugs = null,
    Object? isSecondClassDrugs = null,
    Object? isThirdClassDrugs = null,
    Object? isSumDiscount = null,
    Object? isPeriodDiscount = null,
    Object? isCouponDiscount = null,
    Object? previousValue = null,
    Object? departmentCode = null,
    Object? salesFloorCode = null,
    Object? productAssortmentCode = null,
    Object? isSetSaleProduct = null,
    Object? reserveSetSaleProducts = null,
    Object? isSaleEnd = freezed,
    Object? epochSaleEndDateTime = freezed,
    Object? isLimitNumberOnePerson = null,
    Object? limitNumberOnePerson = null,
    Object? isShortestDeliveryDays = null,
    Object? shortestDeliveryDays = null,
    Object? epochReserveDeliveryDateTime = freezed,
    Object? reserveDeliveryDates = null,
    Object? reserveDeliveryDateCsv = null,
    Object? producingArea = null,
    Object? isRegularShipmentProduct = null,
    Object? isSaleByMeasure = null,
  }) {
    return _then(_$_ProductModel(
      isFavoriteAdded: null == isFavoriteAdded
          ? _value.isFavoriteAdded
          : isFavoriteAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisplayProductIcon: null == isDisplayProductIcon
          ? _value.isDisplayProductIcon
          : isDisplayProductIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      advertisingIconCode: null == advertisingIconCode
          ? _value.advertisingIconCode
          : advertisingIconCode // ignore: cast_nullable_to_non_nullable
              as String,
      advertisingLabel: null == advertisingLabel
          ? _value.advertisingLabel
          : advertisingLabel // ignore: cast_nullable_to_non_nullable
              as String,
      isProductNumber: null == isProductNumber
          ? _value.isProductNumber
          : isProductNumber // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisplayPossibleBuyButton: null == isDisplayPossibleBuyButton
          ? _value.isDisplayPossibleBuyButton
          : isDisplayPossibleBuyButton // ignore: cast_nullable_to_non_nullable
              as bool,
      isCounselingProduct: null == isCounselingProduct
          ? _value.isCounselingProduct
          : isCounselingProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImagePath: null == thumbnailImagePath
          ? _value.thumbnailImagePath
          : thumbnailImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImageFileName: null == thumbnailImageFileName
          ? _value.thumbnailImageFileName
          : thumbnailImageFileName // ignore: cast_nullable_to_non_nullable
              as String,
      frontThumbnailImageFullPath: null == frontThumbnailImageFullPath
          ? _value.frontThumbnailImageFullPath
          : frontThumbnailImageFullPath // ignore: cast_nullable_to_non_nullable
              as String,
      isDisplayWhiteImage: null == isDisplayWhiteImage
          ? _value.isDisplayWhiteImage
          : isDisplayWhiteImage // ignore: cast_nullable_to_non_nullable
              as bool,
      productCatchphrase: null == productCatchphrase
          ? _value.productCatchphrase
          : productCatchphrase // ignore: cast_nullable_to_non_nullable
              as String,
      isAdvertisingProduct: null == isAdvertisingProduct
          ? _value.isAdvertisingProduct
          : isAdvertisingProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      advertisingTerm: null == advertisingTerm
          ? _value.advertisingTerm
          : advertisingTerm // ignore: cast_nullable_to_non_nullable
              as String,
      isMarketDeliveryLimitedProduct: null == isMarketDeliveryLimitedProduct
          ? _value.isMarketDeliveryLimitedProduct
          : isMarketDeliveryLimitedProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      marketTimes: null == marketTimes
          ? _value._marketTimes
          : marketTimes // ignore: cast_nullable_to_non_nullable
              as List<MarketTimeFromToModel>,
      isPosOrderLimitedProduct: null == isPosOrderLimitedProduct
          ? _value.isPosOrderLimitedProduct
          : isPosOrderLimitedProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      epochPosOrderLimitedDatetime: freezed == epochPosOrderLimitedDatetime
          ? _value.epochPosOrderLimitedDatetime
          : epochPosOrderLimitedDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      salesCapacity: null == salesCapacity
          ? _value.salesCapacity
          : salesCapacity // ignore: cast_nullable_to_non_nullable
              as String,
      cardMemberDiscounts: null == cardMemberDiscounts
          ? _value._cardMemberDiscounts
          : cardMemberDiscounts // ignore: cast_nullable_to_non_nullable
              as List<CardCustomerDiscountModel>,
      nanacoPointUnitPoint: null == nanacoPointUnitPoint
          ? _value.nanacoPointUnitPoint
          : nanacoPointUnitPoint // ignore: cast_nullable_to_non_nullable
              as int,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int,
      isTaxExemptProduct: null == isTaxExemptProduct
          ? _value.isTaxExemptProduct
          : isTaxExemptProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      isDiscountedPrice: null == isDiscountedPrice
          ? _value.isDiscountedPrice
          : isDiscountedPrice // ignore: cast_nullable_to_non_nullable
              as bool,
      isDiscountExclusionProduct: null == isDiscountExclusionProduct
          ? _value.isDiscountExclusionProduct
          : isDiscountExclusionProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isNsPrice: null == isNsPrice
          ? _value.isNsPrice
          : isNsPrice // ignore: cast_nullable_to_non_nullable
              as bool,
      productDiscount: freezed == productDiscount
          ? _value.productDiscount
          : productDiscount // ignore: cast_nullable_to_non_nullable
              as ProductDiscountModel?,
      isReserveProduct: null == isReserveProduct
          ? _value.isReserveProduct
          : isReserveProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isQuasiDrugs: null == isQuasiDrugs
          ? _value.isQuasiDrugs
          : isQuasiDrugs // ignore: cast_nullable_to_non_nullable
              as bool,
      topLabel: null == topLabel
          ? _value.topLabel
          : topLabel // ignore: cast_nullable_to_non_nullable
              as ProductLabel,
      topLabelList: null == topLabelList
          ? _value._topLabelList
          : topLabelList // ignore: cast_nullable_to_non_nullable
              as List<ProductLabel>,
      bottomLabel: null == bottomLabel
          ? _value.bottomLabel
          : bottomLabel // ignore: cast_nullable_to_non_nullable
              as ProductLabel,
      bottomLabelList: null == bottomLabelList
          ? _value._bottomLabelList
          : bottomLabelList // ignore: cast_nullable_to_non_nullable
              as List<ProductLabel>,
      liquorLabel: null == liquorLabel
          ? _value.liquorLabel
          : liquorLabel // ignore: cast_nullable_to_non_nullable
              as ProductLabel,
      liquorType: null == liquorType
          ? _value.liquorType
          : liquorType // ignore: cast_nullable_to_non_nullable
              as LiquorType,
      isDisplayMileIcon: null == isDisplayMileIcon
          ? _value.isDisplayMileIcon
          : isDisplayMileIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      isAnsweredCounseling: null == isAnsweredCounseling
          ? _value.isAnsweredCounseling
          : isAnsweredCounseling // ignore: cast_nullable_to_non_nullable
              as bool,
      limitedNumber: null == limitedNumber
          ? _value.limitedNumber
          : limitedNumber // ignore: cast_nullable_to_non_nullable
              as String,
      maxBuyPossibleNumber: null == maxBuyPossibleNumber
          ? _value.maxBuyPossibleNumber
          : maxBuyPossibleNumber // ignore: cast_nullable_to_non_nullable
              as int,
      isRecommendProduct: null == isRecommendProduct
          ? _value.isRecommendProduct
          : isRecommendProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      taxRateSwitch: freezed == taxRateSwitch
          ? _value.taxRateSwitch
          : taxRateSwitch // ignore: cast_nullable_to_non_nullable
              as TaxRateSwitchModel?,
      isAkachanHonpoAgencyShop: null == isAkachanHonpoAgencyShop
          ? _value.isAkachanHonpoAgencyShop
          : isAkachanHonpoAgencyShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isAkachanHonpoProduct: null == isAkachanHonpoProduct
          ? _value.isAkachanHonpoProduct
          : isAkachanHonpoProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isSellOutDisplayStart: null == isSellOutDisplayStart
          ? _value.isSellOutDisplayStart
          : isSellOutDisplayStart // ignore: cast_nullable_to_non_nullable
              as bool,
      isInDeliveryTerm: null == isInDeliveryTerm
          ? _value.isInDeliveryTerm
          : isInDeliveryTerm // ignore: cast_nullable_to_non_nullable
              as bool,
      epochDeliveryStartDatetime: freezed == epochDeliveryStartDatetime
          ? _value.epochDeliveryStartDatetime
          : epochDeliveryStartDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      epochDeliveryFinishDatetime: freezed == epochDeliveryFinishDatetime
          ? _value.epochDeliveryFinishDatetime
          : epochDeliveryFinishDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      isOrderOnlyProduct: null == isOrderOnlyProduct
          ? _value.isOrderOnlyProduct
          : isOrderOnlyProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isInDeliveryLeadTime: null == isInDeliveryLeadTime
          ? _value.isInDeliveryLeadTime
          : isInDeliveryLeadTime // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryLeadTimeDays: freezed == deliveryLeadTimeDays
          ? _value.deliveryLeadTimeDays
          : deliveryLeadTimeDays // ignore: cast_nullable_to_non_nullable
              as int?,
      upperSalesCapacity: null == upperSalesCapacity
          ? _value.upperSalesCapacity
          : upperSalesCapacity // ignore: cast_nullable_to_non_nullable
              as String,
      lowerSalesCapacity: null == lowerSalesCapacity
          ? _value.lowerSalesCapacity
          : lowerSalesCapacity // ignore: cast_nullable_to_non_nullable
              as String,
      upperPrice: null == upperPrice
          ? _value.upperPrice
          : upperPrice // ignore: cast_nullable_to_non_nullable
              as int,
      lowerPrice: null == lowerPrice
          ? _value.lowerPrice
          : lowerPrice // ignore: cast_nullable_to_non_nullable
              as int,
      upperBasePrice: null == upperBasePrice
          ? _value.upperBasePrice
          : upperBasePrice // ignore: cast_nullable_to_non_nullable
              as int,
      lowerBasePrice: null == lowerBasePrice
          ? _value.lowerBasePrice
          : lowerBasePrice // ignore: cast_nullable_to_non_nullable
              as int,
      isLimitedSaleDeliveryDate: null == isLimitedSaleDeliveryDate
          ? _value.isLimitedSaleDeliveryDate
          : isLimitedSaleDeliveryDate // ignore: cast_nullable_to_non_nullable
              as bool,
      isOrderChangingStatus: null == isOrderChangingStatus
          ? _value.isOrderChangingStatus
          : isOrderChangingStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      isBeforeDeliveryPlanChangeClosingDatetime: null ==
              isBeforeDeliveryPlanChangeClosingDatetime
          ? _value.isBeforeDeliveryPlanChangeClosingDatetime
          : isBeforeDeliveryPlanChangeClosingDatetime // ignore: cast_nullable_to_non_nullable
              as bool,
      isTomorrowOnlySaleProduct: null == isTomorrowOnlySaleProduct
          ? _value.isTomorrowOnlySaleProduct
          : isTomorrowOnlySaleProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      epochNetsuperNextDatetime: null == epochNetsuperNextDatetime
          ? _value.epochNetsuperNextDatetime
          : epochNetsuperNextDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      isAfterDaySaleProduct: null == isAfterDaySaleProduct
          ? _value.isAfterDaySaleProduct
          : isAfterDaySaleProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      epochEnablesSaleDeliveryDatetime: freezed ==
              epochEnablesSaleDeliveryDatetime
          ? _value.epochEnablesSaleDeliveryDatetime
          : epochEnablesSaleDeliveryDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      isChangeDeliveryClosingGuide: null == isChangeDeliveryClosingGuide
          ? _value.isChangeDeliveryClosingGuide
          : isChangeDeliveryClosingGuide // ignore: cast_nullable_to_non_nullable
              as bool,
      epochChangeProductClosingDatetime: freezed ==
              epochChangeProductClosingDatetime
          ? _value.epochChangeProductClosingDatetime
          : epochChangeProductClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      isDrugProduct: null == isDrugProduct
          ? _value.isDrugProduct
          : isDrugProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstClassDrugs: null == isFirstClassDrugs
          ? _value.isFirstClassDrugs
          : isFirstClassDrugs // ignore: cast_nullable_to_non_nullable
              as bool,
      isDesignatedSecondClassDrugs: null == isDesignatedSecondClassDrugs
          ? _value.isDesignatedSecondClassDrugs
          : isDesignatedSecondClassDrugs // ignore: cast_nullable_to_non_nullable
              as bool,
      isSecondClassDrugs: null == isSecondClassDrugs
          ? _value.isSecondClassDrugs
          : isSecondClassDrugs // ignore: cast_nullable_to_non_nullable
              as bool,
      isThirdClassDrugs: null == isThirdClassDrugs
          ? _value.isThirdClassDrugs
          : isThirdClassDrugs // ignore: cast_nullable_to_non_nullable
              as bool,
      isSumDiscount: null == isSumDiscount
          ? _value.isSumDiscount
          : isSumDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isPeriodDiscount: null == isPeriodDiscount
          ? _value.isPeriodDiscount
          : isPeriodDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isCouponDiscount: null == isCouponDiscount
          ? _value.isCouponDiscount
          : isCouponDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      previousValue: null == previousValue
          ? _value.previousValue
          : previousValue // ignore: cast_nullable_to_non_nullable
              as String,
      departmentCode: null == departmentCode
          ? _value.departmentCode
          : departmentCode // ignore: cast_nullable_to_non_nullable
              as String,
      salesFloorCode: null == salesFloorCode
          ? _value.salesFloorCode
          : salesFloorCode // ignore: cast_nullable_to_non_nullable
              as String,
      productAssortmentCode: null == productAssortmentCode
          ? _value.productAssortmentCode
          : productAssortmentCode // ignore: cast_nullable_to_non_nullable
              as String,
      isSetSaleProduct: null == isSetSaleProduct
          ? _value.isSetSaleProduct
          : isSetSaleProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      reserveSetSaleProducts: null == reserveSetSaleProducts
          ? _value._reserveSetSaleProducts
          : reserveSetSaleProducts // ignore: cast_nullable_to_non_nullable
              as List<ReserveSetSaleModel>,
      isSaleEnd: freezed == isSaleEnd
          ? _value.isSaleEnd
          : isSaleEnd // ignore: cast_nullable_to_non_nullable
              as bool?,
      epochSaleEndDateTime: freezed == epochSaleEndDateTime
          ? _value.epochSaleEndDateTime
          : epochSaleEndDateTime // ignore: cast_nullable_to_non_nullable
              as int?,
      isLimitNumberOnePerson: null == isLimitNumberOnePerson
          ? _value.isLimitNumberOnePerson
          : isLimitNumberOnePerson // ignore: cast_nullable_to_non_nullable
              as bool,
      limitNumberOnePerson: null == limitNumberOnePerson
          ? _value.limitNumberOnePerson
          : limitNumberOnePerson // ignore: cast_nullable_to_non_nullable
              as String,
      isShortestDeliveryDays: null == isShortestDeliveryDays
          ? _value.isShortestDeliveryDays
          : isShortestDeliveryDays // ignore: cast_nullable_to_non_nullable
              as bool,
      shortestDeliveryDays: null == shortestDeliveryDays
          ? _value.shortestDeliveryDays
          : shortestDeliveryDays // ignore: cast_nullable_to_non_nullable
              as String,
      epochReserveDeliveryDateTime: freezed == epochReserveDeliveryDateTime
          ? _value.epochReserveDeliveryDateTime
          : epochReserveDeliveryDateTime // ignore: cast_nullable_to_non_nullable
              as int?,
      reserveDeliveryDates: null == reserveDeliveryDates
          ? _value._reserveDeliveryDates
          : reserveDeliveryDates // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reserveDeliveryDateCsv: null == reserveDeliveryDateCsv
          ? _value.reserveDeliveryDateCsv
          : reserveDeliveryDateCsv // ignore: cast_nullable_to_non_nullable
              as String,
      producingArea: null == producingArea
          ? _value.producingArea
          : producingArea // ignore: cast_nullable_to_non_nullable
              as String,
      isRegularShipmentProduct: null == isRegularShipmentProduct
          ? _value.isRegularShipmentProduct
          : isRegularShipmentProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaleByMeasure: null == isSaleByMeasure
          ? _value.isSaleByMeasure
          : isSaleByMeasure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel extends _ProductModel {
  const _$_ProductModel(
      {this.isFavoriteAdded = false,
      this.isDisplayProductIcon = false,
      this.advertisingIconCode = '',
      this.advertisingLabel = '',
      this.isProductNumber = false,
      this.isDisplayPossibleBuyButton = false,
      this.isCounselingProduct = false,
      this.productId = '',
      this.productName = '',
      this.thumbnailImagePath = '',
      this.thumbnailImageFileName = '',
      this.frontThumbnailImageFullPath = '',
      this.isDisplayWhiteImage = false,
      this.productCatchphrase = '',
      this.isAdvertisingProduct = false,
      this.advertisingTerm = '',
      this.isMarketDeliveryLimitedProduct = false,
      final List<MarketTimeFromToModel> marketTimes =
          const <MarketTimeFromToModel>[],
      this.isPosOrderLimitedProduct = false,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'pos_order_limited_datetime')
          this.epochPosOrderLimitedDatetime,
      this.salesCapacity = '',
      final List<CardCustomerDiscountModel> cardMemberDiscounts =
          const <CardCustomerDiscountModel>[],
      this.nanacoPointUnitPoint = 0,
      this.basePrice = 0,
      this.isTaxExemptProduct = false,
      this.price = 0,
      this.unitPrice = '',
      this.isDiscountedPrice = false,
      this.isDiscountExclusionProduct = false,
      this.isNsPrice = false,
      this.productDiscount,
      this.isReserveProduct = false,
      this.isQuasiDrugs = false,
      this.topLabel = const ProductLabel(),
      final List<ProductLabel> topLabelList = const <ProductLabel>[],
      this.bottomLabel = const ProductLabel(),
      final List<ProductLabel> bottomLabelList = const <ProductLabel>[],
      this.liquorLabel = const ProductLabel(),
      this.liquorType = LiquorType.other,
      this.isDisplayMileIcon = false,
      this.isAnsweredCounseling = false,
      this.limitedNumber = '',
      this.maxBuyPossibleNumber = 0,
      this.isRecommendProduct = false,
      this.shopCode = '',
      this.taxRateSwitch,
      this.isAkachanHonpoAgencyShop = false,
      this.isAkachanHonpoProduct = false,
      this.isSellOutDisplayStart = false,
      this.isInDeliveryTerm = false,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'delivery_start_datetime')
          this.epochDeliveryStartDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'delivery_finish_datetime')
          this.epochDeliveryFinishDatetime,
      this.isOrderOnlyProduct = false,
      this.isInDeliveryLeadTime = false,
      this.deliveryLeadTimeDays,
      this.upperSalesCapacity = '',
      this.lowerSalesCapacity = '',
      this.upperPrice = 0,
      this.lowerPrice = 0,
      this.upperBasePrice = 0,
      this.lowerBasePrice = 0,
      this.isLimitedSaleDeliveryDate = false,
      this.isOrderChangingStatus = false,
      this.isBeforeDeliveryPlanChangeClosingDatetime = false,
      this.isTomorrowOnlySaleProduct = false,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'netsuper_next_datetime')
          this.epochNetsuperNextDatetime = 0,
      this.isAfterDaySaleProduct = false,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'enables_sale_delivery_datetime')
          this.epochEnablesSaleDeliveryDatetime,
      this.isChangeDeliveryClosingGuide = false,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'change_product_closing_datetime')
          this.epochChangeProductClosingDatetime,
      this.isDrugProduct = false,
      this.isFirstClassDrugs = false,
      this.isDesignatedSecondClassDrugs = false,
      this.isSecondClassDrugs = false,
      this.isThirdClassDrugs = false,
      this.isSumDiscount = false,
      this.isPeriodDiscount = false,
      this.isCouponDiscount = false,
      this.previousValue = '',
      this.departmentCode = '',
      this.salesFloorCode = '',
      this.productAssortmentCode = '',
      this.isSetSaleProduct = false,
      final List<ReserveSetSaleModel> reserveSetSaleProducts =
          const <ReserveSetSaleModel>[],
      this.isSaleEnd = false,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'sale_end_date_time')
          this.epochSaleEndDateTime,
      this.isLimitNumberOnePerson = false,
      this.limitNumberOnePerson = '',
      this.isShortestDeliveryDays = false,
      this.shortestDeliveryDays = '',
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'reserve_delivery_date_time')
          this.epochReserveDeliveryDateTime,
      final List<String> reserveDeliveryDates = const <String>[],
      this.reserveDeliveryDateCsv = '',
      this.producingArea = '',
      this.isRegularShipmentProduct = false,
      @JsonKey(name: 'is_not_teikan')
          this.isSaleByMeasure = false})
      : _marketTimes = marketTimes,
        _cardMemberDiscounts = cardMemberDiscounts,
        _topLabelList = topLabelList,
        _bottomLabelList = bottomLabelList,
        _reserveSetSaleProducts = reserveSetSaleProducts,
        _reserveDeliveryDates = reserveDeliveryDates,
        super._();

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

/* お気に入り追加済み判定 - true：お気に入り追加済み - false：お気に入り未追加 */
  @override
  @JsonKey()
  final bool isFavoriteAdded;
/* 商品アイコン表示判定 - true：有効な商品アイコンあり - false：有効な商品アイコンなし */
  @override
  @JsonKey()
  final bool isDisplayProductIcon;
/* 広告アイコンコード - 広告アイコン未指定又は該当マスタ無しの場合空文字 */
  @override
  @JsonKey()
  final String advertisingIconCode;
/* 広告アイコンラベル - 広告アイコン未指定又は該当マスタ無しの場合空文字 */
  @override
  @JsonKey()
  final String advertisingLabel;
/* 品番判定 - true：品番 - false：単品又は品番配下の単品 */
  @override
  @JsonKey()
  final bool isProductNumber;
/* 「カートへ」ボタン表示判定 - true：表示可 - false：表示不可 */
  @override
  @JsonKey()
  final bool isDisplayPossibleBuyButton;
/* カウンセリング商品判定 - true：カウンセリング商品 - false：非カウンセリング商品 */
  @override
  @JsonKey()
  final bool isCounselingProduct;
/* 商品ID */
  @override
  @JsonKey()
  final String productId;
/* 商品名 */
  @override
  @JsonKey()
  final String productName;
/* 商品画像のファイルパス - pri1imagefileの有無で異なる */
  @override
  @JsonKey()
  final String thumbnailImagePath;
/* 商品画像のファイル名
      - pri1imagefileの有無で異なる */
  @override
  @JsonKey()
  final String thumbnailImageFileName;
/* 商品画像のフロント用フルパス ファイルパスまたはファイル名が無い場合：null */
  @override
  @JsonKey()
  final String frontThumbnailImageFullPath;
/*
    ホワイト画像表示フラグ
    - 通常商品の場合
      true：「販促対象」かつ「画像なし」の商品​の場合
      false：「販促対象」かつ「画像なし」の商品​以外の場合
    - 予約商品の場合
      true：「画像なし」の商品​の場合
      false：「画像なし」の商品​以外の場合
    */
  @override
  @JsonKey()
  final bool isDisplayWhiteImage;
/* 商品コピー文言 - 画像のtitleに使用 - 商品コピー文言が設定されていない場合、nullを返却*/
  @override
  @JsonKey()
  final String productCatchphrase;
/* 広告商品判定 - true：広告商品である - false：広告商品ではない */
  @override
  @JsonKey()
  final bool isAdvertisingProduct;
/* 広告掲載期間 - 広告商品でない場合、空文字を返却*/
  @override
  @JsonKey()
  final String advertisingTerm;
/* 配送便限定の市商品判定 - true：配送便限定市商品である - false：配送便限定市商品ではない */
  @override
  @JsonKey()
  final bool isMarketDeliveryLimitedProduct;
/* 市商品時間帯リスト */
  final List<MarketTimeFromToModel> _marketTimes;
/* 市商品時間帯リスト */
  @override
  @JsonKey()
  List<MarketTimeFromToModel> get marketTimes {
    if (_marketTimes is EqualUnmodifiableListView) return _marketTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_marketTimes);
  }

/* POS発注制限による配送日・便限定商品の判定 - true：POS発注制限による配送日・便限定の商品である - false：上記以外 */
  @override
  @JsonKey()
  final bool isPosOrderLimitedProduct;
/* POS発注制限あり商品配達可能日　※YYYY-MM-DDThh:mm:ss+09:00 - is_pos_order_limited_productがfalseの場合、nullを返却*/
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'pos_order_limited_datetime')
  final int? epochPosOrderLimitedDatetime;
/* 販売内容量表示 - 表示しない場合空文字 */
  @override
  @JsonKey()
  final String salesCapacity;
  final List<CardCustomerDiscountModel> _cardMemberDiscounts;
  @override
  @JsonKey()
  List<CardCustomerDiscountModel> get cardMemberDiscounts {
    if (_cardMemberDiscounts is EqualUnmodifiableListView)
      return _cardMemberDiscounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cardMemberDiscounts);
  }

/* nanaco付与単位ポイント - 0の場合nanacoポイントN倍メッセージを表示しない */
  @override
  @JsonKey()
  final int nanacoPointUnitPoint;
/* 本体価格 */
  @override
  @JsonKey()
  final int basePrice;
/* 非課税商品判定 - true：非課税商品である - false：非課税商品ではない */
  @override
  @JsonKey()
  final bool isTaxExemptProduct;
/* 価格 */
  @override
  @JsonKey()
  final int price;
/* 単位単価 ※例「100g当たり〇円」 */
  @override
  @JsonKey()
  final String unitPrice;
/* 価格が割引後であるか判定 - true：価格割引き後 - false：価格引きされていない */
  @override
  @JsonKey()
  final bool isDiscountedPrice;
/* 割引除外対象商品判定 - true：割引除外対象商品である - false：割引除外対象商品ではない  ※既存の同変数は判定が逆になっているので注意  FrontProductDto#isDiscountExclusion */
  @override
  @JsonKey()
  final bool isDiscountExclusionProduct;
/* ネット専用売価判定 - true：ネット専用売価商品 - false：ネット専用売価商品でない */
  @override
  @JsonKey()
  final bool isNsPrice;
/* 割引情報のModel */
  @override
  final ProductDiscountModel? productDiscount;
/*
    予約商品判定
      true：予約商品である
      false：予約商品でない
    */
  @override
  @JsonKey()
  final bool isReserveProduct;
/* 医薬部外品判定 - true：医薬部外品である - false：医薬部外品ではない */
  @override
  @JsonKey()
  final bool isQuasiDrugs;
/* アイコンラベル */
  @override
  @JsonKey()
  final ProductLabel topLabel;
/*
      上部ラベルリスト_BFFADD_
      以下のラベルのリスト
      対象が無い場合は空のリストを返却
      ```
      売り切りセールラベル
      広告アイコンラベル
      ```
    */
  final List<ProductLabel> _topLabelList;
/*
      上部ラベルリスト_BFFADD_
      以下のラベルのリスト
      対象が無い場合は空のリストを返却
      ```
      売り切りセールラベル
      広告アイコンラベル
      ```
    */
  @override
  @JsonKey()
  List<ProductLabel> get topLabelList {
    if (_topLabelList is EqualUnmodifiableListView) return _topLabelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topLabelList);
  }

/*
      下部ラベル_BFFADD_
      以下のいずれかのラベルを設定
      ```
      割引条件を表示するラベル
      商品情報を表示するラベル
      対象が無い場合は各項目が空のラベルとなる(imageFullPathのみnull)
      ```
    */
  @override
  @JsonKey()
  final ProductLabel bottomLabel;
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
  final List<ProductLabel> _bottomLabelList;
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
  @override
  @JsonKey()
  List<ProductLabel> get bottomLabelList {
    if (_bottomLabelList is EqualUnmodifiableListView) return _bottomLabelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bottomLabelList);
  }

/* アイコンラベル */
  @override
  @JsonKey()
  final ProductLabel liquorLabel;
/* 酒類区分 ``` \"1\"：酒 \"2\"：みりん \"3\"：ノンアルコール null：それ以外 ``` */
  @override
  @JsonKey()
  final LiquorType liquorType;
/* マイルアイコン表示判定 - true：表示する - false：表示しない */
  @override
  @JsonKey()
  final bool isDisplayMileIcon;
/* カウンセリング済み判定 - true：カウンセリング済み - false：未カウンセリング */
  @override
  @JsonKey()
  final bool isAnsweredCounseling;
/* 限定数
      - "お一人様X点まで"
      - "先着X名様限定"
      - 商品に応じて上記どちらかの文字列が返却される（Xは可変の数字）
      - 売り切り商品ではない場合はnull
    */
  @override
  @JsonKey()
  final String limitedNumber;
/* 最大購入数
      お一人様X点まで購入可能の売り切り商品である場合は、
      限定数と在庫数で少ない方が返却される
    */
  @override
  @JsonKey()
  final int maxBuyPossibleNumber;
/* レコメンド商品判定 - true：レコメンド商品である - false：レコメンド商品ではない */
  @override
  @JsonKey()
  final bool isRecommendProduct;
/* 店舗コード */
  @override
  @JsonKey()
  final String shopCode;
/* 税率情報のModel - 新／旧税率売価での混在販売中でのみ使用し、そうでない場合はModel自体がnullで返却される */
  @override
  final TaxRateSwitchModel? taxRateSwitch;
/* アカチャンホンポ店舗代行中判定   - true：アカチャンホンポ店舗代行中   - false：アカチャンホンポ店舗代行中でない */
  @override
  @JsonKey()
  final bool isAkachanHonpoAgencyShop;
/* アカチャンホンポ商品判定    - true：アカチャンホンポ商品   - false：アカチャンホンポ商品でない */
  @override
  @JsonKey()
  final bool isAkachanHonpoProduct;
/* 売り切り商品表示判定 - true：売り切り表示する - false：売り切り表示しない */
  @override
  @JsonKey()
  final bool isSellOutDisplayStart;
/* お届け期間内判定 - true：お届け期間内 - false：お届け期間外 */
  @override
  @JsonKey()
  final bool isInDeliveryTerm;
/* お届け開始日　※YYYY-MM-DDThh:mm:ss+09:00 - お届け開始日が設定されていない場合、nullを返却*/
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'delivery_start_datetime')
  final int? epochDeliveryStartDatetime;
/* お届け終了日　※YYYY-MM-DDThh:mm:ss+09:00 - お届け終了日が設定されていない場合、nullを返却*/
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'delivery_finish_datetime')
  final int? epochDeliveryFinishDatetime;
/*
      受発注のみ商品判定
      true：受発注のみ商品
      false：受発注のみ商品でない
    */
  @override
  @JsonKey()
  final bool isOrderOnlyProduct;
/*
    納品リードタイム期間内判定
      true：納品リードタイム期間内
      false：納品リードタイム期間外
      ※is_order_only_productがfalseの場合、false
    */
  @override
  @JsonKey()
  final bool isInDeliveryLeadTime;
/* 納品リードタイム日数 - is_order_only_productがfalseの場合、null*/
  @override
  final int? deliveryLeadTimeDays;
/* 内容量上限 */
  @override
  @JsonKey()
  final String upperSalesCapacity;
/* 内容量下限 */
  @override
  @JsonKey()
  final String lowerSalesCapacity;
/* 価格上限 */
  @override
  @JsonKey()
  final int upperPrice;
/* 価格下限 */
  @override
  @JsonKey()
  final int lowerPrice;
/* 本体価格上限 */
  @override
  @JsonKey()
  final int upperBasePrice;
/* 本体価格下限 */
  @override
  @JsonKey()
  final int lowerBasePrice;
/*
    承り配達日限定あり判定

      true：承り配達日の限定あり(現在の配送日では商品が承れなくて、カートに追加できない状態)
      false：承り配達日の限定なし(現在の配送日で商品が承れて、カートに追加できる状態)
    */
  @override
  @JsonKey()
  final bool isLimitedSaleDeliveryDate;
/* 注文変更中状態の判定 - true：注文変更中状態 - false：注文変更中ではない */
  @override
  @JsonKey()
  final bool isOrderChangingStatus;
/* 配達便変更締め日時前の判定 - true：配達便変更締め前である - false：配達便変更締め前ではない */
  @override
  @JsonKey()
  final bool isBeforeDeliveryPlanChangeClosingDatetime;
/* 当日翌日のみ承り商品判定 - true：当日翌日のみ承り商品 - false：当日翌日のみ承り商品ではない */
  @override
  @JsonKey()
  final bool isTomorrowOnlySaleProduct;
/* ネットスーパー翌日日時 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'netsuper_next_datetime')
  final int epochNetsuperNextDatetime;
/* N日目以降承り商品判定 - true：N日目以降承り商品である - false：N日目以降承り商品ではない */
  @override
  @JsonKey()
  final bool isAfterDaySaleProduct;
/* 承り可能配達開始日時 ※yyyy-MM-ddTHH:mm:ss+09:00 - is_after_day_sale_productがfalseの場合、nullを返却*/
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'enables_sale_delivery_datetime')
  final int? epochEnablesSaleDeliveryDatetime;
/* 商品変更締め案内表示判定 - true：表示する - false：表示しない */
  @override
  @JsonKey()
  final bool isChangeDeliveryClosingGuide;
/* 商品変更締め日時 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'change_product_closing_datetime')
  final int? epochChangeProductClosingDatetime;
/* 医薬品扱い商品判定 - true：医薬品扱い - false：医薬品扱いでない */
  @override
  @JsonKey()
  final bool isDrugProduct;
/* 第1類医薬品判定 - true：第1類医薬品 - false：第1類医薬品でない */
  @override
  @JsonKey()
  final bool isFirstClassDrugs;
/* 指定第2類医薬品判定 - true：指定第2類医薬品 - false：指定第2類医薬品でない */
  @override
  @JsonKey()
  final bool isDesignatedSecondClassDrugs;
/* 第2類医薬品判定 - true：第2類医薬品 - false：第2類医薬品でない */
  @override
  @JsonKey()
  final bool isSecondClassDrugs;
/* 第3類医薬品判定 - true：第3類医薬品 - false：第3類医薬品でない */
  @override
  @JsonKey()
  final bool isThirdClassDrugs;
/* 一括値引商品判定 - true：一括値引商品 - false：一括値引商品でない */
  @override
  @JsonKey()
  final bool isSumDiscount;
/* 期間割引商品判定 - true：期間割引商品 - false：期間割引商品でない */
  @override
  @JsonKey()
  final bool isPeriodDiscount;
/* クーポン割引商品判定 - true：クーポン割引商品 - false：クーポン割引商品でない */
  @override
  @JsonKey()
  final bool isCouponDiscount;
/* 前値 - ログインステータスが予約の場合、nullを返却*/
  @override
  @JsonKey()
  final String previousValue;
/* DPTコード - DPTコードが設定されていない場合、nullを返却*/
  @override
  @JsonKey()
  final String departmentCode;
/* 売場コード - 売場コードが設定されていない場合、nullを返却*/
  @override
  @JsonKey()
  final String salesFloorCode;
/* 品揃分類コード - 品揃分類コードが設定されていない場合、nullを返却*/
  @override
  @JsonKey()
  final String productAssortmentCode;
/*
     予約セット販売商品判定 - true：セット販売商品である - false：セット販売商品でない
    */
  @override
  @JsonKey()
  final bool isSetSaleProduct;
  final List<ReserveSetSaleModel> _reserveSetSaleProducts;
  @override
  @JsonKey()
  List<ReserveSetSaleModel> get reserveSetSaleProducts {
    if (_reserveSetSaleProducts is EqualUnmodifiableListView)
      return _reserveSetSaleProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reserveSetSaleProducts);
  }

/*
      商品承り中判定
      - ※販売期間終了日と現在時刻を比較結果
      - 予約商品以外の場合、null
      true：商品承り中
      false：商品承り終了
    */
  @override
  @JsonKey()
  final bool? isSaleEnd;
/*
      販売期間終了日 - ※YYYY-MM-DDThh:mm:ss+09:00 - 予約商品以外の場合、null
    */
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'sale_end_date_time')
  final int? epochSaleEndDateTime;
/*
    お一人様限定数有無判定
      true：限定数あり
      false：限定数なし
    */
  @override
  @JsonKey()
  final bool isLimitNumberOnePerson;
/*
    お一人様限定数 - 予約商品以外の場合、null
    */
  @override
  @JsonKey()
  final String limitNumberOnePerson;
/*
    最短お届け日数の表示不要判定
      true：表示不要
      false：表示必要
    */
  @override
  @JsonKey()
  final bool isShortestDeliveryDays;
/* 最短お届け可能日数 - 予約商品以外の場合、null */
  @override
  @JsonKey()
  final String shortestDeliveryDays;
/* お渡し可能日　※YYYY-MM-DDThh:mm:ss+09:00 - 予約商品以外の場合、null*/
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'reserve_delivery_date_time')
  final int? epochReserveDeliveryDateTime;
/*
    予約配達可能日リスト　※yyyyMMdd
      - 予約商品以外の場合、null
    */
  final List<String> _reserveDeliveryDates;
/*
    予約配達可能日リスト　※yyyyMMdd
      - 予約商品以外の場合、null
    */
  @override
  @JsonKey()
  List<String> get reserveDeliveryDates {
    if (_reserveDeliveryDates is EqualUnmodifiableListView)
      return _reserveDeliveryDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reserveDeliveryDates);
  }

/*お渡し可能日CSV文字列 - 予約商品以外の場合、null*/
  @override
  @JsonKey()
  final String reserveDeliveryDateCsv;
/* 産地 - 予約商品以外の場合、null*/
  @override
  @JsonKey()
  final String producingArea;
/*
    定期便取り扱い商品判定
      true：定期便取り扱い商品である
      false：定期便取り扱い商品ではない
    */
  @override
  @JsonKey()
  final bool isRegularShipmentProduct;
  @override
  @JsonKey(name: 'is_not_teikan')
  final bool isSaleByMeasure;

  @override
  String toString() {
    return 'ProductModel(isFavoriteAdded: $isFavoriteAdded, isDisplayProductIcon: $isDisplayProductIcon, advertisingIconCode: $advertisingIconCode, advertisingLabel: $advertisingLabel, isProductNumber: $isProductNumber, isDisplayPossibleBuyButton: $isDisplayPossibleBuyButton, isCounselingProduct: $isCounselingProduct, productId: $productId, productName: $productName, thumbnailImagePath: $thumbnailImagePath, thumbnailImageFileName: $thumbnailImageFileName, frontThumbnailImageFullPath: $frontThumbnailImageFullPath, isDisplayWhiteImage: $isDisplayWhiteImage, productCatchphrase: $productCatchphrase, isAdvertisingProduct: $isAdvertisingProduct, advertisingTerm: $advertisingTerm, isMarketDeliveryLimitedProduct: $isMarketDeliveryLimitedProduct, marketTimes: $marketTimes, isPosOrderLimitedProduct: $isPosOrderLimitedProduct, epochPosOrderLimitedDatetime: $epochPosOrderLimitedDatetime, salesCapacity: $salesCapacity, cardMemberDiscounts: $cardMemberDiscounts, nanacoPointUnitPoint: $nanacoPointUnitPoint, basePrice: $basePrice, isTaxExemptProduct: $isTaxExemptProduct, price: $price, unitPrice: $unitPrice, isDiscountedPrice: $isDiscountedPrice, isDiscountExclusionProduct: $isDiscountExclusionProduct, isNsPrice: $isNsPrice, productDiscount: $productDiscount, isReserveProduct: $isReserveProduct, isQuasiDrugs: $isQuasiDrugs, topLabel: $topLabel, topLabelList: $topLabelList, bottomLabel: $bottomLabel, bottomLabelList: $bottomLabelList, liquorLabel: $liquorLabel, liquorType: $liquorType, isDisplayMileIcon: $isDisplayMileIcon, isAnsweredCounseling: $isAnsweredCounseling, limitedNumber: $limitedNumber, maxBuyPossibleNumber: $maxBuyPossibleNumber, isRecommendProduct: $isRecommendProduct, shopCode: $shopCode, taxRateSwitch: $taxRateSwitch, isAkachanHonpoAgencyShop: $isAkachanHonpoAgencyShop, isAkachanHonpoProduct: $isAkachanHonpoProduct, isSellOutDisplayStart: $isSellOutDisplayStart, isInDeliveryTerm: $isInDeliveryTerm, epochDeliveryStartDatetime: $epochDeliveryStartDatetime, epochDeliveryFinishDatetime: $epochDeliveryFinishDatetime, isOrderOnlyProduct: $isOrderOnlyProduct, isInDeliveryLeadTime: $isInDeliveryLeadTime, deliveryLeadTimeDays: $deliveryLeadTimeDays, upperSalesCapacity: $upperSalesCapacity, lowerSalesCapacity: $lowerSalesCapacity, upperPrice: $upperPrice, lowerPrice: $lowerPrice, upperBasePrice: $upperBasePrice, lowerBasePrice: $lowerBasePrice, isLimitedSaleDeliveryDate: $isLimitedSaleDeliveryDate, isOrderChangingStatus: $isOrderChangingStatus, isBeforeDeliveryPlanChangeClosingDatetime: $isBeforeDeliveryPlanChangeClosingDatetime, isTomorrowOnlySaleProduct: $isTomorrowOnlySaleProduct, epochNetsuperNextDatetime: $epochNetsuperNextDatetime, isAfterDaySaleProduct: $isAfterDaySaleProduct, epochEnablesSaleDeliveryDatetime: $epochEnablesSaleDeliveryDatetime, isChangeDeliveryClosingGuide: $isChangeDeliveryClosingGuide, epochChangeProductClosingDatetime: $epochChangeProductClosingDatetime, isDrugProduct: $isDrugProduct, isFirstClassDrugs: $isFirstClassDrugs, isDesignatedSecondClassDrugs: $isDesignatedSecondClassDrugs, isSecondClassDrugs: $isSecondClassDrugs, isThirdClassDrugs: $isThirdClassDrugs, isSumDiscount: $isSumDiscount, isPeriodDiscount: $isPeriodDiscount, isCouponDiscount: $isCouponDiscount, previousValue: $previousValue, departmentCode: $departmentCode, salesFloorCode: $salesFloorCode, productAssortmentCode: $productAssortmentCode, isSetSaleProduct: $isSetSaleProduct, reserveSetSaleProducts: $reserveSetSaleProducts, isSaleEnd: $isSaleEnd, epochSaleEndDateTime: $epochSaleEndDateTime, isLimitNumberOnePerson: $isLimitNumberOnePerson, limitNumberOnePerson: $limitNumberOnePerson, isShortestDeliveryDays: $isShortestDeliveryDays, shortestDeliveryDays: $shortestDeliveryDays, epochReserveDeliveryDateTime: $epochReserveDeliveryDateTime, reserveDeliveryDates: $reserveDeliveryDates, reserveDeliveryDateCsv: $reserveDeliveryDateCsv, producingArea: $producingArea, isRegularShipmentProduct: $isRegularShipmentProduct, isSaleByMeasure: $isSaleByMeasure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModel &&
            (identical(other.isFavoriteAdded, isFavoriteAdded) ||
                other.isFavoriteAdded == isFavoriteAdded) &&
            (identical(other.isDisplayProductIcon, isDisplayProductIcon) ||
                other.isDisplayProductIcon == isDisplayProductIcon) &&
            (identical(other.advertisingIconCode, advertisingIconCode) ||
                other.advertisingIconCode == advertisingIconCode) &&
            (identical(other.advertisingLabel, advertisingLabel) ||
                other.advertisingLabel == advertisingLabel) &&
            (identical(other.isProductNumber, isProductNumber) ||
                other.isProductNumber == isProductNumber) &&
            (identical(other.isDisplayPossibleBuyButton, isDisplayPossibleBuyButton) ||
                other.isDisplayPossibleBuyButton ==
                    isDisplayPossibleBuyButton) &&
            (identical(other.isCounselingProduct, isCounselingProduct) ||
                other.isCounselingProduct == isCounselingProduct) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.thumbnailImagePath, thumbnailImagePath) ||
                other.thumbnailImagePath == thumbnailImagePath) &&
            (identical(other.thumbnailImageFileName, thumbnailImageFileName) ||
                other.thumbnailImageFileName == thumbnailImageFileName) &&
            (identical(other.frontThumbnailImageFullPath, frontThumbnailImageFullPath) ||
                other.frontThumbnailImageFullPath ==
                    frontThumbnailImageFullPath) &&
            (identical(other.isDisplayWhiteImage, isDisplayWhiteImage) ||
                other.isDisplayWhiteImage == isDisplayWhiteImage) &&
            (identical(other.productCatchphrase, productCatchphrase) ||
                other.productCatchphrase == productCatchphrase) &&
            (identical(other.isAdvertisingProduct, isAdvertisingProduct) ||
                other.isAdvertisingProduct == isAdvertisingProduct) &&
            (identical(other.advertisingTerm, advertisingTerm) ||
                other.advertisingTerm == advertisingTerm) &&
            (identical(other.isMarketDeliveryLimitedProduct, isMarketDeliveryLimitedProduct) ||
                other.isMarketDeliveryLimitedProduct ==
                    isMarketDeliveryLimitedProduct) &&
            const DeepCollectionEquality()
                .equals(other._marketTimes, _marketTimes) &&
            (identical(other.isPosOrderLimitedProduct, isPosOrderLimitedProduct) ||
                other.isPosOrderLimitedProduct == isPosOrderLimitedProduct) &&
            (identical(other.epochPosOrderLimitedDatetime, epochPosOrderLimitedDatetime) ||
                other.epochPosOrderLimitedDatetime ==
                    epochPosOrderLimitedDatetime) &&
            (identical(other.salesCapacity, salesCapacity) ||
                other.salesCapacity == salesCapacity) &&
            const DeepCollectionEquality()
                .equals(other._cardMemberDiscounts, _cardMemberDiscounts) &&
            (identical(other.nanacoPointUnitPoint, nanacoPointUnitPoint) ||
                other.nanacoPointUnitPoint == nanacoPointUnitPoint) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.isTaxExemptProduct, isTaxExemptProduct) ||
                other.isTaxExemptProduct == isTaxExemptProduct) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.isDiscountedPrice, isDiscountedPrice) || other.isDiscountedPrice == isDiscountedPrice) &&
            (identical(other.isDiscountExclusionProduct, isDiscountExclusionProduct) || other.isDiscountExclusionProduct == isDiscountExclusionProduct) &&
            (identical(other.isNsPrice, isNsPrice) || other.isNsPrice == isNsPrice) &&
            (identical(other.productDiscount, productDiscount) || other.productDiscount == productDiscount) &&
            (identical(other.isReserveProduct, isReserveProduct) || other.isReserveProduct == isReserveProduct) &&
            (identical(other.isQuasiDrugs, isQuasiDrugs) || other.isQuasiDrugs == isQuasiDrugs) &&
            (identical(other.topLabel, topLabel) || other.topLabel == topLabel) &&
            const DeepCollectionEquality().equals(other._topLabelList, _topLabelList) &&
            (identical(other.bottomLabel, bottomLabel) || other.bottomLabel == bottomLabel) &&
            const DeepCollectionEquality().equals(other._bottomLabelList, _bottomLabelList) &&
            (identical(other.liquorLabel, liquorLabel) || other.liquorLabel == liquorLabel) &&
            (identical(other.liquorType, liquorType) || other.liquorType == liquorType) &&
            (identical(other.isDisplayMileIcon, isDisplayMileIcon) || other.isDisplayMileIcon == isDisplayMileIcon) &&
            (identical(other.isAnsweredCounseling, isAnsweredCounseling) || other.isAnsweredCounseling == isAnsweredCounseling) &&
            (identical(other.limitedNumber, limitedNumber) || other.limitedNumber == limitedNumber) &&
            (identical(other.maxBuyPossibleNumber, maxBuyPossibleNumber) || other.maxBuyPossibleNumber == maxBuyPossibleNumber) &&
            (identical(other.isRecommendProduct, isRecommendProduct) || other.isRecommendProduct == isRecommendProduct) &&
            (identical(other.shopCode, shopCode) || other.shopCode == shopCode) &&
            (identical(other.taxRateSwitch, taxRateSwitch) || other.taxRateSwitch == taxRateSwitch) &&
            (identical(other.isAkachanHonpoAgencyShop, isAkachanHonpoAgencyShop) || other.isAkachanHonpoAgencyShop == isAkachanHonpoAgencyShop) &&
            (identical(other.isAkachanHonpoProduct, isAkachanHonpoProduct) || other.isAkachanHonpoProduct == isAkachanHonpoProduct) &&
            (identical(other.isSellOutDisplayStart, isSellOutDisplayStart) || other.isSellOutDisplayStart == isSellOutDisplayStart) &&
            (identical(other.isInDeliveryTerm, isInDeliveryTerm) || other.isInDeliveryTerm == isInDeliveryTerm) &&
            (identical(other.epochDeliveryStartDatetime, epochDeliveryStartDatetime) || other.epochDeliveryStartDatetime == epochDeliveryStartDatetime) &&
            (identical(other.epochDeliveryFinishDatetime, epochDeliveryFinishDatetime) || other.epochDeliveryFinishDatetime == epochDeliveryFinishDatetime) &&
            (identical(other.isOrderOnlyProduct, isOrderOnlyProduct) || other.isOrderOnlyProduct == isOrderOnlyProduct) &&
            (identical(other.isInDeliveryLeadTime, isInDeliveryLeadTime) || other.isInDeliveryLeadTime == isInDeliveryLeadTime) &&
            (identical(other.deliveryLeadTimeDays, deliveryLeadTimeDays) || other.deliveryLeadTimeDays == deliveryLeadTimeDays) &&
            (identical(other.upperSalesCapacity, upperSalesCapacity) || other.upperSalesCapacity == upperSalesCapacity) &&
            (identical(other.lowerSalesCapacity, lowerSalesCapacity) || other.lowerSalesCapacity == lowerSalesCapacity) &&
            (identical(other.upperPrice, upperPrice) || other.upperPrice == upperPrice) &&
            (identical(other.lowerPrice, lowerPrice) || other.lowerPrice == lowerPrice) &&
            (identical(other.upperBasePrice, upperBasePrice) || other.upperBasePrice == upperBasePrice) &&
            (identical(other.lowerBasePrice, lowerBasePrice) || other.lowerBasePrice == lowerBasePrice) &&
            (identical(other.isLimitedSaleDeliveryDate, isLimitedSaleDeliveryDate) || other.isLimitedSaleDeliveryDate == isLimitedSaleDeliveryDate) &&
            (identical(other.isOrderChangingStatus, isOrderChangingStatus) || other.isOrderChangingStatus == isOrderChangingStatus) &&
            (identical(other.isBeforeDeliveryPlanChangeClosingDatetime, isBeforeDeliveryPlanChangeClosingDatetime) || other.isBeforeDeliveryPlanChangeClosingDatetime == isBeforeDeliveryPlanChangeClosingDatetime) &&
            (identical(other.isTomorrowOnlySaleProduct, isTomorrowOnlySaleProduct) || other.isTomorrowOnlySaleProduct == isTomorrowOnlySaleProduct) &&
            (identical(other.epochNetsuperNextDatetime, epochNetsuperNextDatetime) || other.epochNetsuperNextDatetime == epochNetsuperNextDatetime) &&
            (identical(other.isAfterDaySaleProduct, isAfterDaySaleProduct) || other.isAfterDaySaleProduct == isAfterDaySaleProduct) &&
            (identical(other.epochEnablesSaleDeliveryDatetime, epochEnablesSaleDeliveryDatetime) || other.epochEnablesSaleDeliveryDatetime == epochEnablesSaleDeliveryDatetime) &&
            (identical(other.isChangeDeliveryClosingGuide, isChangeDeliveryClosingGuide) || other.isChangeDeliveryClosingGuide == isChangeDeliveryClosingGuide) &&
            (identical(other.epochChangeProductClosingDatetime, epochChangeProductClosingDatetime) || other.epochChangeProductClosingDatetime == epochChangeProductClosingDatetime) &&
            (identical(other.isDrugProduct, isDrugProduct) || other.isDrugProduct == isDrugProduct) &&
            (identical(other.isFirstClassDrugs, isFirstClassDrugs) || other.isFirstClassDrugs == isFirstClassDrugs) &&
            (identical(other.isDesignatedSecondClassDrugs, isDesignatedSecondClassDrugs) || other.isDesignatedSecondClassDrugs == isDesignatedSecondClassDrugs) &&
            (identical(other.isSecondClassDrugs, isSecondClassDrugs) || other.isSecondClassDrugs == isSecondClassDrugs) &&
            (identical(other.isThirdClassDrugs, isThirdClassDrugs) || other.isThirdClassDrugs == isThirdClassDrugs) &&
            (identical(other.isSumDiscount, isSumDiscount) || other.isSumDiscount == isSumDiscount) &&
            (identical(other.isPeriodDiscount, isPeriodDiscount) || other.isPeriodDiscount == isPeriodDiscount) &&
            (identical(other.isCouponDiscount, isCouponDiscount) || other.isCouponDiscount == isCouponDiscount) &&
            (identical(other.previousValue, previousValue) || other.previousValue == previousValue) &&
            (identical(other.departmentCode, departmentCode) || other.departmentCode == departmentCode) &&
            (identical(other.salesFloorCode, salesFloorCode) || other.salesFloorCode == salesFloorCode) &&
            (identical(other.productAssortmentCode, productAssortmentCode) || other.productAssortmentCode == productAssortmentCode) &&
            (identical(other.isSetSaleProduct, isSetSaleProduct) || other.isSetSaleProduct == isSetSaleProduct) &&
            const DeepCollectionEquality().equals(other._reserveSetSaleProducts, _reserveSetSaleProducts) &&
            (identical(other.isSaleEnd, isSaleEnd) || other.isSaleEnd == isSaleEnd) &&
            (identical(other.epochSaleEndDateTime, epochSaleEndDateTime) || other.epochSaleEndDateTime == epochSaleEndDateTime) &&
            (identical(other.isLimitNumberOnePerson, isLimitNumberOnePerson) || other.isLimitNumberOnePerson == isLimitNumberOnePerson) &&
            (identical(other.limitNumberOnePerson, limitNumberOnePerson) || other.limitNumberOnePerson == limitNumberOnePerson) &&
            (identical(other.isShortestDeliveryDays, isShortestDeliveryDays) || other.isShortestDeliveryDays == isShortestDeliveryDays) &&
            (identical(other.shortestDeliveryDays, shortestDeliveryDays) || other.shortestDeliveryDays == shortestDeliveryDays) &&
            (identical(other.epochReserveDeliveryDateTime, epochReserveDeliveryDateTime) || other.epochReserveDeliveryDateTime == epochReserveDeliveryDateTime) &&
            const DeepCollectionEquality().equals(other._reserveDeliveryDates, _reserveDeliveryDates) &&
            (identical(other.reserveDeliveryDateCsv, reserveDeliveryDateCsv) || other.reserveDeliveryDateCsv == reserveDeliveryDateCsv) &&
            (identical(other.producingArea, producingArea) || other.producingArea == producingArea) &&
            (identical(other.isRegularShipmentProduct, isRegularShipmentProduct) || other.isRegularShipmentProduct == isRegularShipmentProduct) &&
            (identical(other.isSaleByMeasure, isSaleByMeasure) || other.isSaleByMeasure == isSaleByMeasure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isFavoriteAdded,
        isDisplayProductIcon,
        advertisingIconCode,
        advertisingLabel,
        isProductNumber,
        isDisplayPossibleBuyButton,
        isCounselingProduct,
        productId,
        productName,
        thumbnailImagePath,
        thumbnailImageFileName,
        frontThumbnailImageFullPath,
        isDisplayWhiteImage,
        productCatchphrase,
        isAdvertisingProduct,
        advertisingTerm,
        isMarketDeliveryLimitedProduct,
        const DeepCollectionEquality().hash(_marketTimes),
        isPosOrderLimitedProduct,
        epochPosOrderLimitedDatetime,
        salesCapacity,
        const DeepCollectionEquality().hash(_cardMemberDiscounts),
        nanacoPointUnitPoint,
        basePrice,
        isTaxExemptProduct,
        price,
        unitPrice,
        isDiscountedPrice,
        isDiscountExclusionProduct,
        isNsPrice,
        productDiscount,
        isReserveProduct,
        isQuasiDrugs,
        topLabel,
        const DeepCollectionEquality().hash(_topLabelList),
        bottomLabel,
        const DeepCollectionEquality().hash(_bottomLabelList),
        liquorLabel,
        liquorType,
        isDisplayMileIcon,
        isAnsweredCounseling,
        limitedNumber,
        maxBuyPossibleNumber,
        isRecommendProduct,
        shopCode,
        taxRateSwitch,
        isAkachanHonpoAgencyShop,
        isAkachanHonpoProduct,
        isSellOutDisplayStart,
        isInDeliveryTerm,
        epochDeliveryStartDatetime,
        epochDeliveryFinishDatetime,
        isOrderOnlyProduct,
        isInDeliveryLeadTime,
        deliveryLeadTimeDays,
        upperSalesCapacity,
        lowerSalesCapacity,
        upperPrice,
        lowerPrice,
        upperBasePrice,
        lowerBasePrice,
        isLimitedSaleDeliveryDate,
        isOrderChangingStatus,
        isBeforeDeliveryPlanChangeClosingDatetime,
        isTomorrowOnlySaleProduct,
        epochNetsuperNextDatetime,
        isAfterDaySaleProduct,
        epochEnablesSaleDeliveryDatetime,
        isChangeDeliveryClosingGuide,
        epochChangeProductClosingDatetime,
        isDrugProduct,
        isFirstClassDrugs,
        isDesignatedSecondClassDrugs,
        isSecondClassDrugs,
        isThirdClassDrugs,
        isSumDiscount,
        isPeriodDiscount,
        isCouponDiscount,
        previousValue,
        departmentCode,
        salesFloorCode,
        productAssortmentCode,
        isSetSaleProduct,
        const DeepCollectionEquality().hash(_reserveSetSaleProducts),
        isSaleEnd,
        epochSaleEndDateTime,
        isLimitNumberOnePerson,
        limitNumberOnePerson,
        isShortestDeliveryDays,
        shortestDeliveryDays,
        epochReserveDeliveryDateTime,
        const DeepCollectionEquality().hash(_reserveDeliveryDates),
        reserveDeliveryDateCsv,
        producingArea,
        isRegularShipmentProduct,
        isSaleByMeasure
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      __$$_ProductModelCopyWithImpl<_$_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(
      this,
    );
  }
}

abstract class _ProductModel extends ProductModel {
  const factory _ProductModel(
      {final bool isFavoriteAdded,
      final bool isDisplayProductIcon,
      final String advertisingIconCode,
      final String advertisingLabel,
      final bool isProductNumber,
      final bool isDisplayPossibleBuyButton,
      final bool isCounselingProduct,
      final String productId,
      final String productName,
      final String thumbnailImagePath,
      final String thumbnailImageFileName,
      final String frontThumbnailImageFullPath,
      final bool isDisplayWhiteImage,
      final String productCatchphrase,
      final bool isAdvertisingProduct,
      final String advertisingTerm,
      final bool isMarketDeliveryLimitedProduct,
      final List<MarketTimeFromToModel> marketTimes,
      final bool isPosOrderLimitedProduct,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'pos_order_limited_datetime')
          final int? epochPosOrderLimitedDatetime,
      final String salesCapacity,
      final List<CardCustomerDiscountModel> cardMemberDiscounts,
      final int nanacoPointUnitPoint,
      final int basePrice,
      final bool isTaxExemptProduct,
      final int price,
      final String unitPrice,
      final bool isDiscountedPrice,
      final bool isDiscountExclusionProduct,
      final bool isNsPrice,
      final ProductDiscountModel? productDiscount,
      final bool isReserveProduct,
      final bool isQuasiDrugs,
      final ProductLabel topLabel,
      final List<ProductLabel> topLabelList,
      final ProductLabel bottomLabel,
      final List<ProductLabel> bottomLabelList,
      final ProductLabel liquorLabel,
      final LiquorType liquorType,
      final bool isDisplayMileIcon,
      final bool isAnsweredCounseling,
      final String limitedNumber,
      final int maxBuyPossibleNumber,
      final bool isRecommendProduct,
      final String shopCode,
      final TaxRateSwitchModel? taxRateSwitch,
      final bool isAkachanHonpoAgencyShop,
      final bool isAkachanHonpoProduct,
      final bool isSellOutDisplayStart,
      final bool isInDeliveryTerm,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'delivery_start_datetime')
          final int? epochDeliveryStartDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'delivery_finish_datetime')
          final int? epochDeliveryFinishDatetime,
      final bool isOrderOnlyProduct,
      final bool isInDeliveryLeadTime,
      final int? deliveryLeadTimeDays,
      final String upperSalesCapacity,
      final String lowerSalesCapacity,
      final int upperPrice,
      final int lowerPrice,
      final int upperBasePrice,
      final int lowerBasePrice,
      final bool isLimitedSaleDeliveryDate,
      final bool isOrderChangingStatus,
      final bool isBeforeDeliveryPlanChangeClosingDatetime,
      final bool isTomorrowOnlySaleProduct,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'netsuper_next_datetime')
          final int epochNetsuperNextDatetime,
      final bool isAfterDaySaleProduct,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'enables_sale_delivery_datetime')
          final int? epochEnablesSaleDeliveryDatetime,
      final bool isChangeDeliveryClosingGuide,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'change_product_closing_datetime')
          final int? epochChangeProductClosingDatetime,
      final bool isDrugProduct,
      final bool isFirstClassDrugs,
      final bool isDesignatedSecondClassDrugs,
      final bool isSecondClassDrugs,
      final bool isThirdClassDrugs,
      final bool isSumDiscount,
      final bool isPeriodDiscount,
      final bool isCouponDiscount,
      final String previousValue,
      final String departmentCode,
      final String salesFloorCode,
      final String productAssortmentCode,
      final bool isSetSaleProduct,
      final List<ReserveSetSaleModel> reserveSetSaleProducts,
      final bool? isSaleEnd,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'sale_end_date_time')
          final int? epochSaleEndDateTime,
      final bool isLimitNumberOnePerson,
      final String limitNumberOnePerson,
      final bool isShortestDeliveryDays,
      final String shortestDeliveryDays,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'reserve_delivery_date_time')
          final int? epochReserveDeliveryDateTime,
      final List<String> reserveDeliveryDates,
      final String reserveDeliveryDateCsv,
      final String producingArea,
      final bool isRegularShipmentProduct,
      @JsonKey(name: 'is_not_teikan')
          final bool isSaleByMeasure}) = _$_ProductModel;
  const _ProductModel._() : super._();

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override /* お気に入り追加済み判定 - true：お気に入り追加済み - false：お気に入り未追加 */
  bool get isFavoriteAdded;
  @override /* 商品アイコン表示判定 - true：有効な商品アイコンあり - false：有効な商品アイコンなし */
  bool get isDisplayProductIcon;
  @override /* 広告アイコンコード - 広告アイコン未指定又は該当マスタ無しの場合空文字 */
  String get advertisingIconCode;
  @override /* 広告アイコンラベル - 広告アイコン未指定又は該当マスタ無しの場合空文字 */
  String get advertisingLabel;
  @override /* 品番判定 - true：品番 - false：単品又は品番配下の単品 */
  bool get isProductNumber;
  @override /* 「カートへ」ボタン表示判定 - true：表示可 - false：表示不可 */
  bool get isDisplayPossibleBuyButton;
  @override /* カウンセリング商品判定 - true：カウンセリング商品 - false：非カウンセリング商品 */
  bool get isCounselingProduct;
  @override /* 商品ID */
  String get productId;
  @override /* 商品名 */
  String get productName;
  @override /* 商品画像のファイルパス - pri1imagefileの有無で異なる */
  String get thumbnailImagePath;
  @override /* 商品画像のファイル名
      - pri1imagefileの有無で異なる */
  String get thumbnailImageFileName;
  @override /* 商品画像のフロント用フルパス ファイルパスまたはファイル名が無い場合：null */
  String get frontThumbnailImageFullPath;
  @override /*
    ホワイト画像表示フラグ
    - 通常商品の場合
      true：「販促対象」かつ「画像なし」の商品​の場合
      false：「販促対象」かつ「画像なし」の商品​以外の場合
    - 予約商品の場合
      true：「画像なし」の商品​の場合
      false：「画像なし」の商品​以外の場合
    */
  bool get isDisplayWhiteImage;
  @override /* 商品コピー文言 - 画像のtitleに使用 - 商品コピー文言が設定されていない場合、nullを返却*/
  String get productCatchphrase;
  @override /* 広告商品判定 - true：広告商品である - false：広告商品ではない */
  bool get isAdvertisingProduct;
  @override /* 広告掲載期間 - 広告商品でない場合、空文字を返却*/
  String get advertisingTerm;
  @override /* 配送便限定の市商品判定 - true：配送便限定市商品である - false：配送便限定市商品ではない */
  bool get isMarketDeliveryLimitedProduct;
  @override /* 市商品時間帯リスト */
  List<MarketTimeFromToModel> get marketTimes;
  @override /* POS発注制限による配送日・便限定商品の判定 - true：POS発注制限による配送日・便限定の商品である - false：上記以外 */
  bool get isPosOrderLimitedProduct;
  @override /* POS発注制限あり商品配達可能日　※YYYY-MM-DDThh:mm:ss+09:00 - is_pos_order_limited_productがfalseの場合、nullを返却*/
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'pos_order_limited_datetime')
  int? get epochPosOrderLimitedDatetime;
  @override /* 販売内容量表示 - 表示しない場合空文字 */
  String get salesCapacity;
  @override
  List<CardCustomerDiscountModel> get cardMemberDiscounts;
  @override /* nanaco付与単位ポイント - 0の場合nanacoポイントN倍メッセージを表示しない */
  int get nanacoPointUnitPoint;
  @override /* 本体価格 */
  int get basePrice;
  @override /* 非課税商品判定 - true：非課税商品である - false：非課税商品ではない */
  bool get isTaxExemptProduct;
  @override /* 価格 */
  int get price;
  @override /* 単位単価 ※例「100g当たり〇円」 */
  String get unitPrice;
  @override /* 価格が割引後であるか判定 - true：価格割引き後 - false：価格引きされていない */
  bool get isDiscountedPrice;
  @override /* 割引除外対象商品判定 - true：割引除外対象商品である - false：割引除外対象商品ではない  ※既存の同変数は判定が逆になっているので注意  FrontProductDto#isDiscountExclusion */
  bool get isDiscountExclusionProduct;
  @override /* ネット専用売価判定 - true：ネット専用売価商品 - false：ネット専用売価商品でない */
  bool get isNsPrice;
  @override /* 割引情報のModel */
  ProductDiscountModel? get productDiscount;
  @override /*
    予約商品判定
      true：予約商品である
      false：予約商品でない
    */
  bool get isReserveProduct;
  @override /* 医薬部外品判定 - true：医薬部外品である - false：医薬部外品ではない */
  bool get isQuasiDrugs;
  @override /* アイコンラベル */
  ProductLabel get topLabel;
  @override /*
      上部ラベルリスト_BFFADD_
      以下のラベルのリスト
      対象が無い場合は空のリストを返却
      ```
      売り切りセールラベル
      広告アイコンラベル
      ```
    */
  List<ProductLabel> get topLabelList;
  @override /*
      下部ラベル_BFFADD_
      以下のいずれかのラベルを設定
      ```
      割引条件を表示するラベル
      商品情報を表示するラベル
      対象が無い場合は各項目が空のラベルとなる(imageFullPathのみnull)
      ```
    */
  ProductLabel get bottomLabel;
  @override /*
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
  List<ProductLabel> get bottomLabelList;
  @override /* アイコンラベル */
  ProductLabel get liquorLabel;
  @override /* 酒類区分 ``` \"1\"：酒 \"2\"：みりん \"3\"：ノンアルコール null：それ以外 ``` */
  LiquorType get liquorType;
  @override /* マイルアイコン表示判定 - true：表示する - false：表示しない */
  bool get isDisplayMileIcon;
  @override /* カウンセリング済み判定 - true：カウンセリング済み - false：未カウンセリング */
  bool get isAnsweredCounseling;
  @override /* 限定数
      - "お一人様X点まで"
      - "先着X名様限定"
      - 商品に応じて上記どちらかの文字列が返却される（Xは可変の数字）
      - 売り切り商品ではない場合はnull
    */
  String get limitedNumber;
  @override /* 最大購入数
      お一人様X点まで購入可能の売り切り商品である場合は、
      限定数と在庫数で少ない方が返却される
    */
  int get maxBuyPossibleNumber;
  @override /* レコメンド商品判定 - true：レコメンド商品である - false：レコメンド商品ではない */
  bool get isRecommendProduct;
  @override /* 店舗コード */
  String get shopCode;
  @override /* 税率情報のModel - 新／旧税率売価での混在販売中でのみ使用し、そうでない場合はModel自体がnullで返却される */
  TaxRateSwitchModel? get taxRateSwitch;
  @override /* アカチャンホンポ店舗代行中判定   - true：アカチャンホンポ店舗代行中   - false：アカチャンホンポ店舗代行中でない */
  bool get isAkachanHonpoAgencyShop;
  @override /* アカチャンホンポ商品判定    - true：アカチャンホンポ商品   - false：アカチャンホンポ商品でない */
  bool get isAkachanHonpoProduct;
  @override /* 売り切り商品表示判定 - true：売り切り表示する - false：売り切り表示しない */
  bool get isSellOutDisplayStart;
  @override /* お届け期間内判定 - true：お届け期間内 - false：お届け期間外 */
  bool get isInDeliveryTerm;
  @override /* お届け開始日　※YYYY-MM-DDThh:mm:ss+09:00 - お届け開始日が設定されていない場合、nullを返却*/
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'delivery_start_datetime')
  int? get epochDeliveryStartDatetime;
  @override /* お届け終了日　※YYYY-MM-DDThh:mm:ss+09:00 - お届け終了日が設定されていない場合、nullを返却*/
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'delivery_finish_datetime')
  int? get epochDeliveryFinishDatetime;
  @override /*
      受発注のみ商品判定
      true：受発注のみ商品
      false：受発注のみ商品でない
    */
  bool get isOrderOnlyProduct;
  @override /*
    納品リードタイム期間内判定
      true：納品リードタイム期間内
      false：納品リードタイム期間外
      ※is_order_only_productがfalseの場合、false
    */
  bool get isInDeliveryLeadTime;
  @override /* 納品リードタイム日数 - is_order_only_productがfalseの場合、null*/
  int? get deliveryLeadTimeDays;
  @override /* 内容量上限 */
  String get upperSalesCapacity;
  @override /* 内容量下限 */
  String get lowerSalesCapacity;
  @override /* 価格上限 */
  int get upperPrice;
  @override /* 価格下限 */
  int get lowerPrice;
  @override /* 本体価格上限 */
  int get upperBasePrice;
  @override /* 本体価格下限 */
  int get lowerBasePrice;
  @override /*
    承り配達日限定あり判定

      true：承り配達日の限定あり(現在の配送日では商品が承れなくて、カートに追加できない状態)
      false：承り配達日の限定なし(現在の配送日で商品が承れて、カートに追加できる状態)
    */
  bool get isLimitedSaleDeliveryDate;
  @override /* 注文変更中状態の判定 - true：注文変更中状態 - false：注文変更中ではない */
  bool get isOrderChangingStatus;
  @override /* 配達便変更締め日時前の判定 - true：配達便変更締め前である - false：配達便変更締め前ではない */
  bool get isBeforeDeliveryPlanChangeClosingDatetime;
  @override /* 当日翌日のみ承り商品判定 - true：当日翌日のみ承り商品 - false：当日翌日のみ承り商品ではない */
  bool get isTomorrowOnlySaleProduct;
  @override /* ネットスーパー翌日日時 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'netsuper_next_datetime')
  int get epochNetsuperNextDatetime;
  @override /* N日目以降承り商品判定 - true：N日目以降承り商品である - false：N日目以降承り商品ではない */
  bool get isAfterDaySaleProduct;
  @override /* 承り可能配達開始日時 ※yyyy-MM-ddTHH:mm:ss+09:00 - is_after_day_sale_productがfalseの場合、nullを返却*/
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'enables_sale_delivery_datetime')
  int? get epochEnablesSaleDeliveryDatetime;
  @override /* 商品変更締め案内表示判定 - true：表示する - false：表示しない */
  bool get isChangeDeliveryClosingGuide;
  @override /* 商品変更締め日時 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'change_product_closing_datetime')
  int? get epochChangeProductClosingDatetime;
  @override /* 医薬品扱い商品判定 - true：医薬品扱い - false：医薬品扱いでない */
  bool get isDrugProduct;
  @override /* 第1類医薬品判定 - true：第1類医薬品 - false：第1類医薬品でない */
  bool get isFirstClassDrugs;
  @override /* 指定第2類医薬品判定 - true：指定第2類医薬品 - false：指定第2類医薬品でない */
  bool get isDesignatedSecondClassDrugs;
  @override /* 第2類医薬品判定 - true：第2類医薬品 - false：第2類医薬品でない */
  bool get isSecondClassDrugs;
  @override /* 第3類医薬品判定 - true：第3類医薬品 - false：第3類医薬品でない */
  bool get isThirdClassDrugs;
  @override /* 一括値引商品判定 - true：一括値引商品 - false：一括値引商品でない */
  bool get isSumDiscount;
  @override /* 期間割引商品判定 - true：期間割引商品 - false：期間割引商品でない */
  bool get isPeriodDiscount;
  @override /* クーポン割引商品判定 - true：クーポン割引商品 - false：クーポン割引商品でない */
  bool get isCouponDiscount;
  @override /* 前値 - ログインステータスが予約の場合、nullを返却*/
  String get previousValue;
  @override /* DPTコード - DPTコードが設定されていない場合、nullを返却*/
  String get departmentCode;
  @override /* 売場コード - 売場コードが設定されていない場合、nullを返却*/
  String get salesFloorCode;
  @override /* 品揃分類コード - 品揃分類コードが設定されていない場合、nullを返却*/
  String get productAssortmentCode;
  @override /*
     予約セット販売商品判定 - true：セット販売商品である - false：セット販売商品でない
    */
  bool get isSetSaleProduct;
  @override
  List<ReserveSetSaleModel> get reserveSetSaleProducts;
  @override /*
      商品承り中判定
      - ※販売期間終了日と現在時刻を比較結果
      - 予約商品以外の場合、null
      true：商品承り中
      false：商品承り終了
    */
  bool? get isSaleEnd;
  @override /*
      販売期間終了日 - ※YYYY-MM-DDThh:mm:ss+09:00 - 予約商品以外の場合、null
    */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'sale_end_date_time')
  int? get epochSaleEndDateTime;
  @override /*
    お一人様限定数有無判定
      true：限定数あり
      false：限定数なし
    */
  bool get isLimitNumberOnePerson;
  @override /*
    お一人様限定数 - 予約商品以外の場合、null
    */
  String get limitNumberOnePerson;
  @override /*
    最短お届け日数の表示不要判定
      true：表示不要
      false：表示必要
    */
  bool get isShortestDeliveryDays;
  @override /* 最短お届け可能日数 - 予約商品以外の場合、null */
  String get shortestDeliveryDays;
  @override /* お渡し可能日　※YYYY-MM-DDThh:mm:ss+09:00 - 予約商品以外の場合、null*/
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'reserve_delivery_date_time')
  int? get epochReserveDeliveryDateTime;
  @override /*
    予約配達可能日リスト　※yyyyMMdd
      - 予約商品以外の場合、null
    */
  List<String> get reserveDeliveryDates;
  @override /*お渡し可能日CSV文字列 - 予約商品以外の場合、null*/
  String get reserveDeliveryDateCsv;
  @override /* 産地 - 予約商品以外の場合、null*/
  String get producingArea;
  @override /*
    定期便取り扱い商品判定
      true：定期便取り扱い商品である
      false：定期便取り扱い商品ではない
    */
  bool get isRegularShipmentProduct;
  @override
  @JsonKey(name: 'is_not_teikan')
  bool get isSaleByMeasure;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
