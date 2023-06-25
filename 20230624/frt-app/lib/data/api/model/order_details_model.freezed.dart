// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDetailsModel _$OrderDetailsModelFromJson(Map<String, dynamic> json) {
  return _OrderDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailsModel {
/* 梱包手数料-徴収対象会員判定 */
  bool get isPackPriceTargetCustomer =>
      throw _privateConstructorUsedError; /* 会員種別の返却 */
  String get customerType => throw _privateConstructorUsedError; /* 店舗名を返す */
  String get shopName =>
      throw _privateConstructorUsedError; /* 赤ちゃん本舗対応店舗(リーステナント)判定  - true：赤ちゃん本舗対応店舗(リーステナント)である  - false：赤ちゃん本舗対応店舗(リーステナント)ではない */
  bool get isAkachanHonpoShop =>
      throw _privateConstructorUsedError; /* 赤ちゃん本舗対応店舗(リーステナント)代行実施中判定 - true：ちゃん本舗対応店舗(リーステナント)代行実施中 - false：自営 */
  bool get isAkachanHonpoAgencyShop =>
      throw _privateConstructorUsedError; /* 変更締め日時前判定 - true：変更締め日時前である - false：変更締め日時超過 */
  bool get isBeforeChangeClosingDatetime =>
      throw _privateConstructorUsedError; /* 注文追加期間内判定 - true：注文追加期間内である - false：注文追加期間超過 */
  bool get isAdditionalOrderTerm =>
      throw _privateConstructorUsedError; /* 企業・団体会員判定 - true：企業・団体会員 - false：個人会員 */
  bool get isCorporateCustomer =>
      throw _privateConstructorUsedError; /* 非接触受取り判定を返却 - true：非接触受取りを希望する - false：非接触受取りを希望しない */
  bool get isNoContact =>
      throw _privateConstructorUsedError; /* セット販売割引が成立している受注セットグループの存在判定 - true：セット販売割引が成立している受注セットグループあり - false：セット販売割引が成立している受注セットグループなし */
  bool get isFixSetSale =>
      throw _privateConstructorUsedError; /* 配送料無料判定 - true：配送料無料 - false：配送料あり */
  bool get isDeliveryPriceFree =>
      throw _privateConstructorUsedError; /* キャンセル料徴収受注判定 - true：キャンセル料徴収対象の受注 - false：キャンセル料徴収対象外の受注 */
  bool get isCancelPriceLevyOrder =>
      throw _privateConstructorUsedError; /* クーポン「nanaco付与ポイントプラス」適用あり判定 - true：適用あり - false：適用無し */
  bool get isCouponNanacoPointPlus =>
      throw _privateConstructorUsedError; /* クーポン「nanaco付与ポイントN倍」適用あり判定を返却 - true：適用あり - false：適用なし */
  bool get isCouponNanacoPointTimes =>
      throw _privateConstructorUsedError; /* この受注商品が締め時間前か判定する - true：締め時間前である - false：締め時間超過 */
  bool get isBeforeClosingDatetime =>
      throw _privateConstructorUsedError; /* ログイン店舗による注文変更可能判定 - true：注文変更可能 - false：注文変更不可 */
  bool get isChangeOrderLoginShop =>
      throw _privateConstructorUsedError; /* 予約注文であるかどうか判定する - true：予約注文(＝通常商品が混在している場合も含む)である - false：予約注文ではない */
  bool get isReserveOrder =>
      throw _privateConstructorUsedError; /* ログイン店舗による注文追加可能判定 - true：注文追加可能 - false：注文追加不可 */
  bool get isAdditionalOrderLoginShop =>
      throw _privateConstructorUsedError; /* カード割引判定 - true：カード割引対象である - false：カード割引対象外である */
  bool get isCardDiscount =>
      throw _privateConstructorUsedError; /* 適用済みクーポン対象商品あり判定 - true：適用済みクーポン対象商品あり - false：適用済みクーポン対象商品なし */
  bool get hasDiscountCouponProduct =>
      throw _privateConstructorUsedError; /* 受注商品の中にIYカード対応商品があるか判定する - true：受注商品の中にIIYカード対応商品あり - false：受注商品の中にIIYカード対応商品なし */
  bool get hasApplyIyCardProduct =>
      throw _privateConstructorUsedError; /* 欠品時連絡必要判定 - true：欠品時連絡必要 - false：欠品時連絡不要 */
  bool get needNoStockContact =>
      throw _privateConstructorUsedError; /* 「割引対象」列の表示判定 以下1～6の値のいずれかが0より多い場合はtrueを返却 1. IYカード：割引額 2. カード会員割引-合計値引額 3. ミックスマッチ合計割引額 4. セット販売合計割引額 5. 累進割引-合計値引額 6. 適用クーポン指定商品値引額 - true：表示する - false：非表示 */
  bool get isDisplayDiscountColumn =>
      throw _privateConstructorUsedError; /* 注文IDを取得 */
  int get orderId =>
      throw _privateConstructorUsedError; /* 受注年月日を取得 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'order_date')
  int get epochOrderDate =>
      throw _privateConstructorUsedError; /* 配送予定日時FROM ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_plan_start_datetime')
  int get epochDeliveryPlanStartDatetime =>
      throw _privateConstructorUsedError; /* 配送予定日時TO ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_plan_finish_datetime')
  int get epochDeliveryPlanFinishDatetime =>
      throw _privateConstructorUsedError; /* 配送便種別 ``` \"01\"：通常 \"02\"：通常（遠隔） \"03\"：店舗受取 \"04\"：置き配 \"05\"：7&iロッカー受取 \"06\"：店舗ロッカー受取 ``` */
  ResponseFulfillmentType get fulfillmentType =>
      throw _privateConstructorUsedError; /* 欠品時連絡種別 ``` \"0\"：連絡不要 \"1\"：連絡必要 ``` */
  @StringToBooleanConverter()
  bool get noStockContactType =>
      throw _privateConstructorUsedError; /* 注文変更締日時を計算し返却 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'change_order_closing_datetime')
  int? get epochChangeOrderClosingDatetime =>
      throw _privateConstructorUsedError; /* 注文キャンセル締日時を計算し返却 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'cancel_order_closing_datetime')
  int? get epochCancelOrderClosingDatetime =>
      throw _privateConstructorUsedError; /* 注文追加締日時を計算し返却 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'additional_order_closing_datetime')
  int? get epochAdditionalOrderClosingDatetime =>
      throw _privateConstructorUsedError; /*
    注文追加期間開始日時までの残り時間
      - 注文追加が可能になる日時と業務時間で残り日時を計算し返却する
      - 注文追加が可能になる日時を超えた場合空で返却する
      - 形式は「あとN日とHH時間MM分で追加可能」とし差分がない日時/時間は表記しない
    */
  String get additionalOrderStartDatetime =>
      throw _privateConstructorUsedError; /* 便変更締日時を計算し返却 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'change_delivery_plan_closing_datetime')
  int? get epochChangeDeliveryPlanClosingDatetime =>
      throw _privateConstructorUsedError; /* 注文変更締め残り時間 - 締め日時と業務時間で残り日時を計算し返却する  - 残り日時を超えた場合空で返却する  - 形式は「残りN日とHH時間MM分」とし差分がない日時/時間は表記しない */
  String get remainingDatetimeChangeOrderClosing =>
      throw _privateConstructorUsedError; /* 注文キャンセル締め残り時間 - 締め日時と業務時間で残り日時を計算し返却する  - 残り日時を超えた場合空で返却する  - 形式は「残りN日とHH時間MM分」とし差分がない日時/時間は表記しない */
  String get remainingDatetimeCancelOrderClosing =>
      throw _privateConstructorUsedError; /* 注文追加締め残り時間 - 締め日時と業務時間で残り日時を計算し返却する  - 残り日時を超えた場合空で返却する  - 形式は「残りN日とHH時間MM分」とし差分がない日時/時間は表記しない */
  String get remainingDatetimeAdditionalOrderClosing =>
      throw _privateConstructorUsedError; /* 便変更締め残り時間 - 締め日時と業務時間で残り日時を計算し返却する  - 残り日時を超えた場合空で返却する  - 形式は「残りN日とHH時間MM分」とし差分がない日時/時間は表記しない */
  String get remainingDatetimeChangeDeliveryPlanClosing =>
      throw _privateConstructorUsedError; /* 支払方法とnanacoポイント利用額 ``` \"1\"：代金引換 \"2\"：クレジットカード \"3\"：クレジットカードとポイント利用：クレジットカードとnanacoポイント併用の場合 \"4\"：全額ポイント利用 \"5\"：代金引換とポイント利用：代金引換とnanacoポイント併用の場合 ``` */
  NanacoPaymentMethod get nanacoPaymentMethod =>
      throw _privateConstructorUsedError; /* 宛名 */
  String get nameOfReceipt =>
      throw _privateConstructorUsedError; /* - お買い物カゴ梱包の名称を取得する ``` \"0\"：レジ袋をご利用 \"1\"：エコｄｅバスケットをご利用 ``` */
  PackMaterialType get packMaterialType =>
      throw _privateConstructorUsedError; /* - 複数注文梱包まとめ方法種別を返却 ``` \"0\"：個別注文 \"1\"：複数注文(個別梱包) \"2\"：複数注文(まとめ梱包) ``` */
  String get packMethodType => throw _privateConstructorUsedError; /* メモを返却する */
  String get memo =>
      throw _privateConstructorUsedError; /* 配達状況の文字列を返却 ``` \"0\"：未配達  \"1\"：未受取り \"2\"：配達中 \"3\"：お渡し済 \"4\"：お受取り済  ```*/
  DeliveryStatus get deliveryStatus =>
      throw _privateConstructorUsedError; /* IYカード：割引額を返却 */
  int get iyCardDiscountPrice =>
      throw _privateConstructorUsedError; /* カード会員割引-合計値引額の返却 */
  int get totalCardMemberDiscountPrice =>
      throw _privateConstructorUsedError; /* ミックスマッチ合計割引額を返却 */
  int get totalMixMatchDiscountPrice =>
      throw _privateConstructorUsedError; /* セット販売合計割引額を返却 */
  int get totalSetSaleDiscountPrice =>
      throw _privateConstructorUsedError; /* 累進割引-合計値引額の返却 */
  int get totalProgressiveDiscountPrice =>
      throw _privateConstructorUsedError; /* 適用クーポン指定商品値引額を返却 */
  int get couponProductTotalPrice =>
      throw _privateConstructorUsedError; /* 売り切りセール割引-合計値引額の返却 */
  int get totalSellingOffPrice =>
      throw _privateConstructorUsedError; /* レジ袋利用料の返却 */
  int get shoppingBagPrice => throw _privateConstructorUsedError; /* 再配達料を返却 */
  int get redeliveryPrice => throw _privateConstructorUsedError; /* 配送料金を返却 */
  int get deliveryPrice => throw _privateConstructorUsedError; /* 梱包手数料を返却 */
  int get packPrice => throw _privateConstructorUsedError; /* 代引手数料(税込)を返却 */
  int get cashDeliveryPrice =>
      throw _privateConstructorUsedError; /* IYカードフラグを返却 ``` \"1\"：IYカード \"2\"：nanacoカード \"3\"：シニアナナコカード \"4\"：ポイントカード \"0\"：無効(未) ``` */
  IyCardFlag get iyCardFlag =>
      throw _privateConstructorUsedError; /* 適用クーポン買上総額値引額を返却 */
  int get couponPrice => throw _privateConstructorUsedError; /* 商品総額(税込)を返却 */
  int get productTotalPrice =>
      throw _privateConstructorUsedError; /* 最終的な合計金額を返却(配送料金/レジ袋利用料/代引き手数料/各種値引、割引額) */
  int get totalPrice => throw _privateConstructorUsedError; /* ポイント利用額を返却 */
  int get nanacoPointUsePoint =>
      throw _privateConstructorUsedError; /* 支払額を返却 */
  int get paymentAmount =>
      throw _privateConstructorUsedError; /* nanacoポイント計を返却 */
  int get totalNanacoPoints =>
      throw _privateConstructorUsedError; /* 適用nanacoボーナスポイントを返却 */
  int get bonusPoint =>
      throw _privateConstructorUsedError; /* 適用nanacoクーポン付与ポイントを返却 */
  int get couponPoint =>
      throw _privateConstructorUsedError; /* nanacoポイントクーポン適用時の区分 ```\"1\"：nanacoポイントプラスクーポン適用 \"2\"：nanacoポイントN倍クーポン適用``` - クーポン適用無し、またはnanacoポイント以外のクーポン適用の場合、nullを返却 */
  CouponPointDiv get couponPointDiv =>
      throw _privateConstructorUsedError; /* nanacoポイント付与ステータス ``` \"0\"：未送信 \"1\"：送信済 \"2\"：結果受信済（正常） \"3\"：結果受信済（エラー） \"4\"：再付与依頼 \"5\"：再付与依頼済 ``` */
  NanacoPointStatus get nanacoPointStatus =>
      throw _privateConstructorUsedError; /* nanacoポイント付与結果受信日時 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'nanaco_point_result_datetime')
  int get epochNanacoPointResultDatetime =>
      throw _privateConstructorUsedError; /* 配達便変更開始-無効フラグ文字列 ``` \"0\"：有効(済) \"1\"：無効(未) ``` */
  @StringToBooleanConverter()
  bool get disableDeliveryPlanChangeStartFlag =>
      throw _privateConstructorUsedError; /* 受注作成時点の申込種別を返却する ``` \"0\"：非予約受注 \"1\"：予約のみ受注 \"2\"：予約含む受注 ``` */
  ReserveStatus get reserveStatus =>
      throw _privateConstructorUsedError; /* キャンセル制限判定 - true：キャンセルを制限する - false：キャンセルを制限しない */
  bool get isOrderLimit => throw _privateConstructorUsedError; /* 総商品点数 */
  int get productCount =>
      throw _privateConstructorUsedError; /* 受注商品ID順にソートされたJANごとの受注商品のリストを取得 */
  List<OrderDetailsListModel> get details =>
      throw _privateConstructorUsedError; /* セット販売割引が成立している受注セットグループリストの取得 */
  List<OrderSetSaleGroupListModel> get orderSetSaleGroups =>
      throw _privateConstructorUsedError; /* キャンセル料情報 */
  List<CancelPriceInformationModel> get cancels =>
      throw _privateConstructorUsedError; /* 受注税額情報リストの返却 */
  List<TaxPriceInformationModel> get taxPrices =>
      throw _privateConstructorUsedError; /* nanacoポイント明細を取得 */
  List<NanacoPointModel> get nanacoPointInformations =>
      throw _privateConstructorUsedError;
  List<ProductModel> get products =>
      throw _privateConstructorUsedError; /* 定期便注文判定 - true：定期便注文 - false：定期便注文でない */
  bool get isRegularShipmentOrder =>
      throw _privateConstructorUsedError; /* 注文キャンセル可能判定 - true：キャンセル可能 - false：キャンセル不可 */
  bool get isEnableOrderCancel =>
      throw _privateConstructorUsedError; /* 定期便割引額 */
  int get regularShipmentDiscountPrice =>
      throw _privateConstructorUsedError; /* 商品総額（定期便割引後） */
  int? get productTotalPriceAfterRegularShipmentDiscount =>
      throw _privateConstructorUsedError; /* 配送状況確認画面URL */
  String get deliveryStatusConfirmationScreenUrl =>
      throw _privateConstructorUsedError; /* 個別配達料種別 */
  IndividualDeliveryPriceType get individualDeliveryPriceDiv =>
      throw _privateConstructorUsedError; /* 個別配達料名 */
  String get individualDeliveryName =>
      throw _privateConstructorUsedError; /* 個別配達料 */
  int get individualDeliveryPrice =>
      throw _privateConstructorUsedError; /* 配送アンケートの回答有効期限内か否を判定 */
  bool get isBeforeDeliveryQuestionAnswerExpired =>
      throw _privateConstructorUsedError; /* 配送アンケートURL */
  String get deliveryQuestionUrl =>
      throw _privateConstructorUsedError; /* 定期便割引率 */
  int get regularShipmentDiscountRate =>
      throw _privateConstructorUsedError; /* 定期便割引前合計金額 - total_price に定期便割引額を加算したものが返却される */
  int get regularShipmentDiscountBeforeTotalPrice =>
      throw _privateConstructorUsedError; /* ステータス */
  OrderStatus get status => throw _privateConstructorUsedError; /* 定期便割引予定額 */
  int? get regularShipmentDiscountPlanPrice =>
      throw _privateConstructorUsedError; /* 置き配切替済みフラグ */
  @StringToBooleanConverter()
  bool get switchedPackageDropFlag =>
      throw _privateConstructorUsedError; /* 置き配場所 ``` \"1\"：玄関向かって右, \"2\"：玄関向かって左, \"3\"：インターフォン下, \"9\"：その他, null: 未指定```  */
  PackageDropPlace get packageDropPlace =>
      throw _privateConstructorUsedError; /* 置き配場所の詳細 */
  String get packageDropPlaceDetail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailsModelCopyWith<OrderDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsModelCopyWith<$Res> {
  factory $OrderDetailsModelCopyWith(
          OrderDetailsModel value, $Res Function(OrderDetailsModel) then) =
      _$OrderDetailsModelCopyWithImpl<$Res, OrderDetailsModel>;
  @useResult
  $Res call(
      {bool isPackPriceTargetCustomer,
      String customerType,
      String shopName,
      bool isAkachanHonpoShop,
      bool isAkachanHonpoAgencyShop,
      bool isBeforeChangeClosingDatetime,
      bool isAdditionalOrderTerm,
      bool isCorporateCustomer,
      bool isNoContact,
      bool isFixSetSale,
      bool isDeliveryPriceFree,
      bool isCancelPriceLevyOrder,
      bool isCouponNanacoPointPlus,
      bool isCouponNanacoPointTimes,
      bool isBeforeClosingDatetime,
      bool isChangeOrderLoginShop,
      bool isReserveOrder,
      bool isAdditionalOrderLoginShop,
      bool isCardDiscount,
      bool hasDiscountCouponProduct,
      bool hasApplyIyCardProduct,
      bool needNoStockContact,
      bool isDisplayDiscountColumn,
      int orderId,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'order_date')
          int epochOrderDate,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_start_datetime')
          int epochDeliveryPlanStartDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_finish_datetime')
          int epochDeliveryPlanFinishDatetime,
      ResponseFulfillmentType fulfillmentType,
      @StringToBooleanConverter()
          bool noStockContactType,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'change_order_closing_datetime')
          int? epochChangeOrderClosingDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'cancel_order_closing_datetime')
          int? epochCancelOrderClosingDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'additional_order_closing_datetime')
          int? epochAdditionalOrderClosingDatetime,
      String additionalOrderStartDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'change_delivery_plan_closing_datetime')
          int? epochChangeDeliveryPlanClosingDatetime,
      String remainingDatetimeChangeOrderClosing,
      String remainingDatetimeCancelOrderClosing,
      String remainingDatetimeAdditionalOrderClosing,
      String remainingDatetimeChangeDeliveryPlanClosing,
      NanacoPaymentMethod nanacoPaymentMethod,
      String nameOfReceipt,
      PackMaterialType packMaterialType,
      String packMethodType,
      String memo,
      DeliveryStatus deliveryStatus,
      int iyCardDiscountPrice,
      int totalCardMemberDiscountPrice,
      int totalMixMatchDiscountPrice,
      int totalSetSaleDiscountPrice,
      int totalProgressiveDiscountPrice,
      int couponProductTotalPrice,
      int totalSellingOffPrice,
      int shoppingBagPrice,
      int redeliveryPrice,
      int deliveryPrice,
      int packPrice,
      int cashDeliveryPrice,
      IyCardFlag iyCardFlag,
      int couponPrice,
      int productTotalPrice,
      int totalPrice,
      int nanacoPointUsePoint,
      int paymentAmount,
      int totalNanacoPoints,
      int bonusPoint,
      int couponPoint,
      CouponPointDiv couponPointDiv,
      NanacoPointStatus nanacoPointStatus,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'nanaco_point_result_datetime')
          int epochNanacoPointResultDatetime,
      @StringToBooleanConverter()
          bool disableDeliveryPlanChangeStartFlag,
      ReserveStatus reserveStatus,
      bool isOrderLimit,
      int productCount,
      List<OrderDetailsListModel> details,
      List<OrderSetSaleGroupListModel> orderSetSaleGroups,
      List<CancelPriceInformationModel> cancels,
      List<TaxPriceInformationModel> taxPrices,
      List<NanacoPointModel> nanacoPointInformations,
      List<ProductModel> products,
      bool isRegularShipmentOrder,
      bool isEnableOrderCancel,
      int regularShipmentDiscountPrice,
      int? productTotalPriceAfterRegularShipmentDiscount,
      String deliveryStatusConfirmationScreenUrl,
      IndividualDeliveryPriceType individualDeliveryPriceDiv,
      String individualDeliveryName,
      int individualDeliveryPrice,
      bool isBeforeDeliveryQuestionAnswerExpired,
      String deliveryQuestionUrl,
      int regularShipmentDiscountRate,
      int regularShipmentDiscountBeforeTotalPrice,
      OrderStatus status,
      int? regularShipmentDiscountPlanPrice,
      @StringToBooleanConverter()
          bool switchedPackageDropFlag,
      PackageDropPlace packageDropPlace,
      String packageDropPlaceDetail});
}

/// @nodoc
class _$OrderDetailsModelCopyWithImpl<$Res, $Val extends OrderDetailsModel>
    implements $OrderDetailsModelCopyWith<$Res> {
  _$OrderDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPackPriceTargetCustomer = null,
    Object? customerType = null,
    Object? shopName = null,
    Object? isAkachanHonpoShop = null,
    Object? isAkachanHonpoAgencyShop = null,
    Object? isBeforeChangeClosingDatetime = null,
    Object? isAdditionalOrderTerm = null,
    Object? isCorporateCustomer = null,
    Object? isNoContact = null,
    Object? isFixSetSale = null,
    Object? isDeliveryPriceFree = null,
    Object? isCancelPriceLevyOrder = null,
    Object? isCouponNanacoPointPlus = null,
    Object? isCouponNanacoPointTimes = null,
    Object? isBeforeClosingDatetime = null,
    Object? isChangeOrderLoginShop = null,
    Object? isReserveOrder = null,
    Object? isAdditionalOrderLoginShop = null,
    Object? isCardDiscount = null,
    Object? hasDiscountCouponProduct = null,
    Object? hasApplyIyCardProduct = null,
    Object? needNoStockContact = null,
    Object? isDisplayDiscountColumn = null,
    Object? orderId = null,
    Object? epochOrderDate = null,
    Object? epochDeliveryPlanStartDatetime = null,
    Object? epochDeliveryPlanFinishDatetime = null,
    Object? fulfillmentType = null,
    Object? noStockContactType = null,
    Object? epochChangeOrderClosingDatetime = freezed,
    Object? epochCancelOrderClosingDatetime = freezed,
    Object? epochAdditionalOrderClosingDatetime = freezed,
    Object? additionalOrderStartDatetime = null,
    Object? epochChangeDeliveryPlanClosingDatetime = freezed,
    Object? remainingDatetimeChangeOrderClosing = null,
    Object? remainingDatetimeCancelOrderClosing = null,
    Object? remainingDatetimeAdditionalOrderClosing = null,
    Object? remainingDatetimeChangeDeliveryPlanClosing = null,
    Object? nanacoPaymentMethod = null,
    Object? nameOfReceipt = null,
    Object? packMaterialType = null,
    Object? packMethodType = null,
    Object? memo = null,
    Object? deliveryStatus = null,
    Object? iyCardDiscountPrice = null,
    Object? totalCardMemberDiscountPrice = null,
    Object? totalMixMatchDiscountPrice = null,
    Object? totalSetSaleDiscountPrice = null,
    Object? totalProgressiveDiscountPrice = null,
    Object? couponProductTotalPrice = null,
    Object? totalSellingOffPrice = null,
    Object? shoppingBagPrice = null,
    Object? redeliveryPrice = null,
    Object? deliveryPrice = null,
    Object? packPrice = null,
    Object? cashDeliveryPrice = null,
    Object? iyCardFlag = null,
    Object? couponPrice = null,
    Object? productTotalPrice = null,
    Object? totalPrice = null,
    Object? nanacoPointUsePoint = null,
    Object? paymentAmount = null,
    Object? totalNanacoPoints = null,
    Object? bonusPoint = null,
    Object? couponPoint = null,
    Object? couponPointDiv = null,
    Object? nanacoPointStatus = null,
    Object? epochNanacoPointResultDatetime = null,
    Object? disableDeliveryPlanChangeStartFlag = null,
    Object? reserveStatus = null,
    Object? isOrderLimit = null,
    Object? productCount = null,
    Object? details = null,
    Object? orderSetSaleGroups = null,
    Object? cancels = null,
    Object? taxPrices = null,
    Object? nanacoPointInformations = null,
    Object? products = null,
    Object? isRegularShipmentOrder = null,
    Object? isEnableOrderCancel = null,
    Object? regularShipmentDiscountPrice = null,
    Object? productTotalPriceAfterRegularShipmentDiscount = freezed,
    Object? deliveryStatusConfirmationScreenUrl = null,
    Object? individualDeliveryPriceDiv = null,
    Object? individualDeliveryName = null,
    Object? individualDeliveryPrice = null,
    Object? isBeforeDeliveryQuestionAnswerExpired = null,
    Object? deliveryQuestionUrl = null,
    Object? regularShipmentDiscountRate = null,
    Object? regularShipmentDiscountBeforeTotalPrice = null,
    Object? status = null,
    Object? regularShipmentDiscountPlanPrice = freezed,
    Object? switchedPackageDropFlag = null,
    Object? packageDropPlace = null,
    Object? packageDropPlaceDetail = null,
  }) {
    return _then(_value.copyWith(
      isPackPriceTargetCustomer: null == isPackPriceTargetCustomer
          ? _value.isPackPriceTargetCustomer
          : isPackPriceTargetCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      customerType: null == customerType
          ? _value.customerType
          : customerType // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      isAkachanHonpoShop: null == isAkachanHonpoShop
          ? _value.isAkachanHonpoShop
          : isAkachanHonpoShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isAkachanHonpoAgencyShop: null == isAkachanHonpoAgencyShop
          ? _value.isAkachanHonpoAgencyShop
          : isAkachanHonpoAgencyShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isBeforeChangeClosingDatetime: null == isBeforeChangeClosingDatetime
          ? _value.isBeforeChangeClosingDatetime
          : isBeforeChangeClosingDatetime // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdditionalOrderTerm: null == isAdditionalOrderTerm
          ? _value.isAdditionalOrderTerm
          : isAdditionalOrderTerm // ignore: cast_nullable_to_non_nullable
              as bool,
      isCorporateCustomer: null == isCorporateCustomer
          ? _value.isCorporateCustomer
          : isCorporateCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      isNoContact: null == isNoContact
          ? _value.isNoContact
          : isNoContact // ignore: cast_nullable_to_non_nullable
              as bool,
      isFixSetSale: null == isFixSetSale
          ? _value.isFixSetSale
          : isFixSetSale // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeliveryPriceFree: null == isDeliveryPriceFree
          ? _value.isDeliveryPriceFree
          : isDeliveryPriceFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isCancelPriceLevyOrder: null == isCancelPriceLevyOrder
          ? _value.isCancelPriceLevyOrder
          : isCancelPriceLevyOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isCouponNanacoPointPlus: null == isCouponNanacoPointPlus
          ? _value.isCouponNanacoPointPlus
          : isCouponNanacoPointPlus // ignore: cast_nullable_to_non_nullable
              as bool,
      isCouponNanacoPointTimes: null == isCouponNanacoPointTimes
          ? _value.isCouponNanacoPointTimes
          : isCouponNanacoPointTimes // ignore: cast_nullable_to_non_nullable
              as bool,
      isBeforeClosingDatetime: null == isBeforeClosingDatetime
          ? _value.isBeforeClosingDatetime
          : isBeforeClosingDatetime // ignore: cast_nullable_to_non_nullable
              as bool,
      isChangeOrderLoginShop: null == isChangeOrderLoginShop
          ? _value.isChangeOrderLoginShop
          : isChangeOrderLoginShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isReserveOrder: null == isReserveOrder
          ? _value.isReserveOrder
          : isReserveOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdditionalOrderLoginShop: null == isAdditionalOrderLoginShop
          ? _value.isAdditionalOrderLoginShop
          : isAdditionalOrderLoginShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isCardDiscount: null == isCardDiscount
          ? _value.isCardDiscount
          : isCardDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      hasDiscountCouponProduct: null == hasDiscountCouponProduct
          ? _value.hasDiscountCouponProduct
          : hasDiscountCouponProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      hasApplyIyCardProduct: null == hasApplyIyCardProduct
          ? _value.hasApplyIyCardProduct
          : hasApplyIyCardProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      needNoStockContact: null == needNoStockContact
          ? _value.needNoStockContact
          : needNoStockContact // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisplayDiscountColumn: null == isDisplayDiscountColumn
          ? _value.isDisplayDiscountColumn
          : isDisplayDiscountColumn // ignore: cast_nullable_to_non_nullable
              as bool,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      epochOrderDate: null == epochOrderDate
          ? _value.epochOrderDate
          : epochOrderDate // ignore: cast_nullable_to_non_nullable
              as int,
      epochDeliveryPlanStartDatetime: null == epochDeliveryPlanStartDatetime
          ? _value.epochDeliveryPlanStartDatetime
          : epochDeliveryPlanStartDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochDeliveryPlanFinishDatetime: null == epochDeliveryPlanFinishDatetime
          ? _value.epochDeliveryPlanFinishDatetime
          : epochDeliveryPlanFinishDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      fulfillmentType: null == fulfillmentType
          ? _value.fulfillmentType
          : fulfillmentType // ignore: cast_nullable_to_non_nullable
              as ResponseFulfillmentType,
      noStockContactType: null == noStockContactType
          ? _value.noStockContactType
          : noStockContactType // ignore: cast_nullable_to_non_nullable
              as bool,
      epochChangeOrderClosingDatetime: freezed ==
              epochChangeOrderClosingDatetime
          ? _value.epochChangeOrderClosingDatetime
          : epochChangeOrderClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      epochCancelOrderClosingDatetime: freezed ==
              epochCancelOrderClosingDatetime
          ? _value.epochCancelOrderClosingDatetime
          : epochCancelOrderClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      epochAdditionalOrderClosingDatetime: freezed ==
              epochAdditionalOrderClosingDatetime
          ? _value.epochAdditionalOrderClosingDatetime
          : epochAdditionalOrderClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalOrderStartDatetime: null == additionalOrderStartDatetime
          ? _value.additionalOrderStartDatetime
          : additionalOrderStartDatetime // ignore: cast_nullable_to_non_nullable
              as String,
      epochChangeDeliveryPlanClosingDatetime: freezed ==
              epochChangeDeliveryPlanClosingDatetime
          ? _value.epochChangeDeliveryPlanClosingDatetime
          : epochChangeDeliveryPlanClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      remainingDatetimeChangeOrderClosing: null ==
              remainingDatetimeChangeOrderClosing
          ? _value.remainingDatetimeChangeOrderClosing
          : remainingDatetimeChangeOrderClosing // ignore: cast_nullable_to_non_nullable
              as String,
      remainingDatetimeCancelOrderClosing: null ==
              remainingDatetimeCancelOrderClosing
          ? _value.remainingDatetimeCancelOrderClosing
          : remainingDatetimeCancelOrderClosing // ignore: cast_nullable_to_non_nullable
              as String,
      remainingDatetimeAdditionalOrderClosing: null ==
              remainingDatetimeAdditionalOrderClosing
          ? _value.remainingDatetimeAdditionalOrderClosing
          : remainingDatetimeAdditionalOrderClosing // ignore: cast_nullable_to_non_nullable
              as String,
      remainingDatetimeChangeDeliveryPlanClosing: null ==
              remainingDatetimeChangeDeliveryPlanClosing
          ? _value.remainingDatetimeChangeDeliveryPlanClosing
          : remainingDatetimeChangeDeliveryPlanClosing // ignore: cast_nullable_to_non_nullable
              as String,
      nanacoPaymentMethod: null == nanacoPaymentMethod
          ? _value.nanacoPaymentMethod
          : nanacoPaymentMethod // ignore: cast_nullable_to_non_nullable
              as NanacoPaymentMethod,
      nameOfReceipt: null == nameOfReceipt
          ? _value.nameOfReceipt
          : nameOfReceipt // ignore: cast_nullable_to_non_nullable
              as String,
      packMaterialType: null == packMaterialType
          ? _value.packMaterialType
          : packMaterialType // ignore: cast_nullable_to_non_nullable
              as PackMaterialType,
      packMethodType: null == packMethodType
          ? _value.packMethodType
          : packMethodType // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus,
      iyCardDiscountPrice: null == iyCardDiscountPrice
          ? _value.iyCardDiscountPrice
          : iyCardDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalCardMemberDiscountPrice: null == totalCardMemberDiscountPrice
          ? _value.totalCardMemberDiscountPrice
          : totalCardMemberDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalMixMatchDiscountPrice: null == totalMixMatchDiscountPrice
          ? _value.totalMixMatchDiscountPrice
          : totalMixMatchDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalSetSaleDiscountPrice: null == totalSetSaleDiscountPrice
          ? _value.totalSetSaleDiscountPrice
          : totalSetSaleDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalProgressiveDiscountPrice: null == totalProgressiveDiscountPrice
          ? _value.totalProgressiveDiscountPrice
          : totalProgressiveDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      couponProductTotalPrice: null == couponProductTotalPrice
          ? _value.couponProductTotalPrice
          : couponProductTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalSellingOffPrice: null == totalSellingOffPrice
          ? _value.totalSellingOffPrice
          : totalSellingOffPrice // ignore: cast_nullable_to_non_nullable
              as int,
      shoppingBagPrice: null == shoppingBagPrice
          ? _value.shoppingBagPrice
          : shoppingBagPrice // ignore: cast_nullable_to_non_nullable
              as int,
      redeliveryPrice: null == redeliveryPrice
          ? _value.redeliveryPrice
          : redeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryPrice: null == deliveryPrice
          ? _value.deliveryPrice
          : deliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      packPrice: null == packPrice
          ? _value.packPrice
          : packPrice // ignore: cast_nullable_to_non_nullable
              as int,
      cashDeliveryPrice: null == cashDeliveryPrice
          ? _value.cashDeliveryPrice
          : cashDeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      iyCardFlag: null == iyCardFlag
          ? _value.iyCardFlag
          : iyCardFlag // ignore: cast_nullable_to_non_nullable
              as IyCardFlag,
      couponPrice: null == couponPrice
          ? _value.couponPrice
          : couponPrice // ignore: cast_nullable_to_non_nullable
              as int,
      productTotalPrice: null == productTotalPrice
          ? _value.productTotalPrice
          : productTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      nanacoPointUsePoint: null == nanacoPointUsePoint
          ? _value.nanacoPointUsePoint
          : nanacoPointUsePoint // ignore: cast_nullable_to_non_nullable
              as int,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as int,
      totalNanacoPoints: null == totalNanacoPoints
          ? _value.totalNanacoPoints
          : totalNanacoPoints // ignore: cast_nullable_to_non_nullable
              as int,
      bonusPoint: null == bonusPoint
          ? _value.bonusPoint
          : bonusPoint // ignore: cast_nullable_to_non_nullable
              as int,
      couponPoint: null == couponPoint
          ? _value.couponPoint
          : couponPoint // ignore: cast_nullable_to_non_nullable
              as int,
      couponPointDiv: null == couponPointDiv
          ? _value.couponPointDiv
          : couponPointDiv // ignore: cast_nullable_to_non_nullable
              as CouponPointDiv,
      nanacoPointStatus: null == nanacoPointStatus
          ? _value.nanacoPointStatus
          : nanacoPointStatus // ignore: cast_nullable_to_non_nullable
              as NanacoPointStatus,
      epochNanacoPointResultDatetime: null == epochNanacoPointResultDatetime
          ? _value.epochNanacoPointResultDatetime
          : epochNanacoPointResultDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      disableDeliveryPlanChangeStartFlag: null ==
              disableDeliveryPlanChangeStartFlag
          ? _value.disableDeliveryPlanChangeStartFlag
          : disableDeliveryPlanChangeStartFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      reserveStatus: null == reserveStatus
          ? _value.reserveStatus
          : reserveStatus // ignore: cast_nullable_to_non_nullable
              as ReserveStatus,
      isOrderLimit: null == isOrderLimit
          ? _value.isOrderLimit
          : isOrderLimit // ignore: cast_nullable_to_non_nullable
              as bool,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsListModel>,
      orderSetSaleGroups: null == orderSetSaleGroups
          ? _value.orderSetSaleGroups
          : orderSetSaleGroups // ignore: cast_nullable_to_non_nullable
              as List<OrderSetSaleGroupListModel>,
      cancels: null == cancels
          ? _value.cancels
          : cancels // ignore: cast_nullable_to_non_nullable
              as List<CancelPriceInformationModel>,
      taxPrices: null == taxPrices
          ? _value.taxPrices
          : taxPrices // ignore: cast_nullable_to_non_nullable
              as List<TaxPriceInformationModel>,
      nanacoPointInformations: null == nanacoPointInformations
          ? _value.nanacoPointInformations
          : nanacoPointInformations // ignore: cast_nullable_to_non_nullable
              as List<NanacoPointModel>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isRegularShipmentOrder: null == isRegularShipmentOrder
          ? _value.isRegularShipmentOrder
          : isRegularShipmentOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableOrderCancel: null == isEnableOrderCancel
          ? _value.isEnableOrderCancel
          : isEnableOrderCancel // ignore: cast_nullable_to_non_nullable
              as bool,
      regularShipmentDiscountPrice: null == regularShipmentDiscountPrice
          ? _value.regularShipmentDiscountPrice
          : regularShipmentDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      productTotalPriceAfterRegularShipmentDiscount: freezed ==
              productTotalPriceAfterRegularShipmentDiscount
          ? _value.productTotalPriceAfterRegularShipmentDiscount
          : productTotalPriceAfterRegularShipmentDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryStatusConfirmationScreenUrl: null ==
              deliveryStatusConfirmationScreenUrl
          ? _value.deliveryStatusConfirmationScreenUrl
          : deliveryStatusConfirmationScreenUrl // ignore: cast_nullable_to_non_nullable
              as String,
      individualDeliveryPriceDiv: null == individualDeliveryPriceDiv
          ? _value.individualDeliveryPriceDiv
          : individualDeliveryPriceDiv // ignore: cast_nullable_to_non_nullable
              as IndividualDeliveryPriceType,
      individualDeliveryName: null == individualDeliveryName
          ? _value.individualDeliveryName
          : individualDeliveryName // ignore: cast_nullable_to_non_nullable
              as String,
      individualDeliveryPrice: null == individualDeliveryPrice
          ? _value.individualDeliveryPrice
          : individualDeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      isBeforeDeliveryQuestionAnswerExpired: null ==
              isBeforeDeliveryQuestionAnswerExpired
          ? _value.isBeforeDeliveryQuestionAnswerExpired
          : isBeforeDeliveryQuestionAnswerExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryQuestionUrl: null == deliveryQuestionUrl
          ? _value.deliveryQuestionUrl
          : deliveryQuestionUrl // ignore: cast_nullable_to_non_nullable
              as String,
      regularShipmentDiscountRate: null == regularShipmentDiscountRate
          ? _value.regularShipmentDiscountRate
          : regularShipmentDiscountRate // ignore: cast_nullable_to_non_nullable
              as int,
      regularShipmentDiscountBeforeTotalPrice: null ==
              regularShipmentDiscountBeforeTotalPrice
          ? _value.regularShipmentDiscountBeforeTotalPrice
          : regularShipmentDiscountBeforeTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      regularShipmentDiscountPlanPrice: freezed ==
              regularShipmentDiscountPlanPrice
          ? _value.regularShipmentDiscountPlanPrice
          : regularShipmentDiscountPlanPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      switchedPackageDropFlag: null == switchedPackageDropFlag
          ? _value.switchedPackageDropFlag
          : switchedPackageDropFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      packageDropPlace: null == packageDropPlace
          ? _value.packageDropPlace
          : packageDropPlace // ignore: cast_nullable_to_non_nullable
              as PackageDropPlace,
      packageDropPlaceDetail: null == packageDropPlaceDetail
          ? _value.packageDropPlaceDetail
          : packageDropPlaceDetail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderDetailsModelCopyWith<$Res>
    implements $OrderDetailsModelCopyWith<$Res> {
  factory _$$_OrderDetailsModelCopyWith(_$_OrderDetailsModel value,
          $Res Function(_$_OrderDetailsModel) then) =
      __$$_OrderDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isPackPriceTargetCustomer,
      String customerType,
      String shopName,
      bool isAkachanHonpoShop,
      bool isAkachanHonpoAgencyShop,
      bool isBeforeChangeClosingDatetime,
      bool isAdditionalOrderTerm,
      bool isCorporateCustomer,
      bool isNoContact,
      bool isFixSetSale,
      bool isDeliveryPriceFree,
      bool isCancelPriceLevyOrder,
      bool isCouponNanacoPointPlus,
      bool isCouponNanacoPointTimes,
      bool isBeforeClosingDatetime,
      bool isChangeOrderLoginShop,
      bool isReserveOrder,
      bool isAdditionalOrderLoginShop,
      bool isCardDiscount,
      bool hasDiscountCouponProduct,
      bool hasApplyIyCardProduct,
      bool needNoStockContact,
      bool isDisplayDiscountColumn,
      int orderId,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'order_date')
          int epochOrderDate,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_start_datetime')
          int epochDeliveryPlanStartDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_finish_datetime')
          int epochDeliveryPlanFinishDatetime,
      ResponseFulfillmentType fulfillmentType,
      @StringToBooleanConverter()
          bool noStockContactType,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'change_order_closing_datetime')
          int? epochChangeOrderClosingDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'cancel_order_closing_datetime')
          int? epochCancelOrderClosingDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'additional_order_closing_datetime')
          int? epochAdditionalOrderClosingDatetime,
      String additionalOrderStartDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'change_delivery_plan_closing_datetime')
          int? epochChangeDeliveryPlanClosingDatetime,
      String remainingDatetimeChangeOrderClosing,
      String remainingDatetimeCancelOrderClosing,
      String remainingDatetimeAdditionalOrderClosing,
      String remainingDatetimeChangeDeliveryPlanClosing,
      NanacoPaymentMethod nanacoPaymentMethod,
      String nameOfReceipt,
      PackMaterialType packMaterialType,
      String packMethodType,
      String memo,
      DeliveryStatus deliveryStatus,
      int iyCardDiscountPrice,
      int totalCardMemberDiscountPrice,
      int totalMixMatchDiscountPrice,
      int totalSetSaleDiscountPrice,
      int totalProgressiveDiscountPrice,
      int couponProductTotalPrice,
      int totalSellingOffPrice,
      int shoppingBagPrice,
      int redeliveryPrice,
      int deliveryPrice,
      int packPrice,
      int cashDeliveryPrice,
      IyCardFlag iyCardFlag,
      int couponPrice,
      int productTotalPrice,
      int totalPrice,
      int nanacoPointUsePoint,
      int paymentAmount,
      int totalNanacoPoints,
      int bonusPoint,
      int couponPoint,
      CouponPointDiv couponPointDiv,
      NanacoPointStatus nanacoPointStatus,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'nanaco_point_result_datetime')
          int epochNanacoPointResultDatetime,
      @StringToBooleanConverter()
          bool disableDeliveryPlanChangeStartFlag,
      ReserveStatus reserveStatus,
      bool isOrderLimit,
      int productCount,
      List<OrderDetailsListModel> details,
      List<OrderSetSaleGroupListModel> orderSetSaleGroups,
      List<CancelPriceInformationModel> cancels,
      List<TaxPriceInformationModel> taxPrices,
      List<NanacoPointModel> nanacoPointInformations,
      List<ProductModel> products,
      bool isRegularShipmentOrder,
      bool isEnableOrderCancel,
      int regularShipmentDiscountPrice,
      int? productTotalPriceAfterRegularShipmentDiscount,
      String deliveryStatusConfirmationScreenUrl,
      IndividualDeliveryPriceType individualDeliveryPriceDiv,
      String individualDeliveryName,
      int individualDeliveryPrice,
      bool isBeforeDeliveryQuestionAnswerExpired,
      String deliveryQuestionUrl,
      int regularShipmentDiscountRate,
      int regularShipmentDiscountBeforeTotalPrice,
      OrderStatus status,
      int? regularShipmentDiscountPlanPrice,
      @StringToBooleanConverter()
          bool switchedPackageDropFlag,
      PackageDropPlace packageDropPlace,
      String packageDropPlaceDetail});
}

/// @nodoc
class __$$_OrderDetailsModelCopyWithImpl<$Res>
    extends _$OrderDetailsModelCopyWithImpl<$Res, _$_OrderDetailsModel>
    implements _$$_OrderDetailsModelCopyWith<$Res> {
  __$$_OrderDetailsModelCopyWithImpl(
      _$_OrderDetailsModel _value, $Res Function(_$_OrderDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPackPriceTargetCustomer = null,
    Object? customerType = null,
    Object? shopName = null,
    Object? isAkachanHonpoShop = null,
    Object? isAkachanHonpoAgencyShop = null,
    Object? isBeforeChangeClosingDatetime = null,
    Object? isAdditionalOrderTerm = null,
    Object? isCorporateCustomer = null,
    Object? isNoContact = null,
    Object? isFixSetSale = null,
    Object? isDeliveryPriceFree = null,
    Object? isCancelPriceLevyOrder = null,
    Object? isCouponNanacoPointPlus = null,
    Object? isCouponNanacoPointTimes = null,
    Object? isBeforeClosingDatetime = null,
    Object? isChangeOrderLoginShop = null,
    Object? isReserveOrder = null,
    Object? isAdditionalOrderLoginShop = null,
    Object? isCardDiscount = null,
    Object? hasDiscountCouponProduct = null,
    Object? hasApplyIyCardProduct = null,
    Object? needNoStockContact = null,
    Object? isDisplayDiscountColumn = null,
    Object? orderId = null,
    Object? epochOrderDate = null,
    Object? epochDeliveryPlanStartDatetime = null,
    Object? epochDeliveryPlanFinishDatetime = null,
    Object? fulfillmentType = null,
    Object? noStockContactType = null,
    Object? epochChangeOrderClosingDatetime = freezed,
    Object? epochCancelOrderClosingDatetime = freezed,
    Object? epochAdditionalOrderClosingDatetime = freezed,
    Object? additionalOrderStartDatetime = null,
    Object? epochChangeDeliveryPlanClosingDatetime = freezed,
    Object? remainingDatetimeChangeOrderClosing = null,
    Object? remainingDatetimeCancelOrderClosing = null,
    Object? remainingDatetimeAdditionalOrderClosing = null,
    Object? remainingDatetimeChangeDeliveryPlanClosing = null,
    Object? nanacoPaymentMethod = null,
    Object? nameOfReceipt = null,
    Object? packMaterialType = null,
    Object? packMethodType = null,
    Object? memo = null,
    Object? deliveryStatus = null,
    Object? iyCardDiscountPrice = null,
    Object? totalCardMemberDiscountPrice = null,
    Object? totalMixMatchDiscountPrice = null,
    Object? totalSetSaleDiscountPrice = null,
    Object? totalProgressiveDiscountPrice = null,
    Object? couponProductTotalPrice = null,
    Object? totalSellingOffPrice = null,
    Object? shoppingBagPrice = null,
    Object? redeliveryPrice = null,
    Object? deliveryPrice = null,
    Object? packPrice = null,
    Object? cashDeliveryPrice = null,
    Object? iyCardFlag = null,
    Object? couponPrice = null,
    Object? productTotalPrice = null,
    Object? totalPrice = null,
    Object? nanacoPointUsePoint = null,
    Object? paymentAmount = null,
    Object? totalNanacoPoints = null,
    Object? bonusPoint = null,
    Object? couponPoint = null,
    Object? couponPointDiv = null,
    Object? nanacoPointStatus = null,
    Object? epochNanacoPointResultDatetime = null,
    Object? disableDeliveryPlanChangeStartFlag = null,
    Object? reserveStatus = null,
    Object? isOrderLimit = null,
    Object? productCount = null,
    Object? details = null,
    Object? orderSetSaleGroups = null,
    Object? cancels = null,
    Object? taxPrices = null,
    Object? nanacoPointInformations = null,
    Object? products = null,
    Object? isRegularShipmentOrder = null,
    Object? isEnableOrderCancel = null,
    Object? regularShipmentDiscountPrice = null,
    Object? productTotalPriceAfterRegularShipmentDiscount = freezed,
    Object? deliveryStatusConfirmationScreenUrl = null,
    Object? individualDeliveryPriceDiv = null,
    Object? individualDeliveryName = null,
    Object? individualDeliveryPrice = null,
    Object? isBeforeDeliveryQuestionAnswerExpired = null,
    Object? deliveryQuestionUrl = null,
    Object? regularShipmentDiscountRate = null,
    Object? regularShipmentDiscountBeforeTotalPrice = null,
    Object? status = null,
    Object? regularShipmentDiscountPlanPrice = freezed,
    Object? switchedPackageDropFlag = null,
    Object? packageDropPlace = null,
    Object? packageDropPlaceDetail = null,
  }) {
    return _then(_$_OrderDetailsModel(
      isPackPriceTargetCustomer: null == isPackPriceTargetCustomer
          ? _value.isPackPriceTargetCustomer
          : isPackPriceTargetCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      customerType: null == customerType
          ? _value.customerType
          : customerType // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      isAkachanHonpoShop: null == isAkachanHonpoShop
          ? _value.isAkachanHonpoShop
          : isAkachanHonpoShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isAkachanHonpoAgencyShop: null == isAkachanHonpoAgencyShop
          ? _value.isAkachanHonpoAgencyShop
          : isAkachanHonpoAgencyShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isBeforeChangeClosingDatetime: null == isBeforeChangeClosingDatetime
          ? _value.isBeforeChangeClosingDatetime
          : isBeforeChangeClosingDatetime // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdditionalOrderTerm: null == isAdditionalOrderTerm
          ? _value.isAdditionalOrderTerm
          : isAdditionalOrderTerm // ignore: cast_nullable_to_non_nullable
              as bool,
      isCorporateCustomer: null == isCorporateCustomer
          ? _value.isCorporateCustomer
          : isCorporateCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      isNoContact: null == isNoContact
          ? _value.isNoContact
          : isNoContact // ignore: cast_nullable_to_non_nullable
              as bool,
      isFixSetSale: null == isFixSetSale
          ? _value.isFixSetSale
          : isFixSetSale // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeliveryPriceFree: null == isDeliveryPriceFree
          ? _value.isDeliveryPriceFree
          : isDeliveryPriceFree // ignore: cast_nullable_to_non_nullable
              as bool,
      isCancelPriceLevyOrder: null == isCancelPriceLevyOrder
          ? _value.isCancelPriceLevyOrder
          : isCancelPriceLevyOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isCouponNanacoPointPlus: null == isCouponNanacoPointPlus
          ? _value.isCouponNanacoPointPlus
          : isCouponNanacoPointPlus // ignore: cast_nullable_to_non_nullable
              as bool,
      isCouponNanacoPointTimes: null == isCouponNanacoPointTimes
          ? _value.isCouponNanacoPointTimes
          : isCouponNanacoPointTimes // ignore: cast_nullable_to_non_nullable
              as bool,
      isBeforeClosingDatetime: null == isBeforeClosingDatetime
          ? _value.isBeforeClosingDatetime
          : isBeforeClosingDatetime // ignore: cast_nullable_to_non_nullable
              as bool,
      isChangeOrderLoginShop: null == isChangeOrderLoginShop
          ? _value.isChangeOrderLoginShop
          : isChangeOrderLoginShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isReserveOrder: null == isReserveOrder
          ? _value.isReserveOrder
          : isReserveOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdditionalOrderLoginShop: null == isAdditionalOrderLoginShop
          ? _value.isAdditionalOrderLoginShop
          : isAdditionalOrderLoginShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isCardDiscount: null == isCardDiscount
          ? _value.isCardDiscount
          : isCardDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      hasDiscountCouponProduct: null == hasDiscountCouponProduct
          ? _value.hasDiscountCouponProduct
          : hasDiscountCouponProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      hasApplyIyCardProduct: null == hasApplyIyCardProduct
          ? _value.hasApplyIyCardProduct
          : hasApplyIyCardProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      needNoStockContact: null == needNoStockContact
          ? _value.needNoStockContact
          : needNoStockContact // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisplayDiscountColumn: null == isDisplayDiscountColumn
          ? _value.isDisplayDiscountColumn
          : isDisplayDiscountColumn // ignore: cast_nullable_to_non_nullable
              as bool,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      epochOrderDate: null == epochOrderDate
          ? _value.epochOrderDate
          : epochOrderDate // ignore: cast_nullable_to_non_nullable
              as int,
      epochDeliveryPlanStartDatetime: null == epochDeliveryPlanStartDatetime
          ? _value.epochDeliveryPlanStartDatetime
          : epochDeliveryPlanStartDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochDeliveryPlanFinishDatetime: null == epochDeliveryPlanFinishDatetime
          ? _value.epochDeliveryPlanFinishDatetime
          : epochDeliveryPlanFinishDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      fulfillmentType: null == fulfillmentType
          ? _value.fulfillmentType
          : fulfillmentType // ignore: cast_nullable_to_non_nullable
              as ResponseFulfillmentType,
      noStockContactType: null == noStockContactType
          ? _value.noStockContactType
          : noStockContactType // ignore: cast_nullable_to_non_nullable
              as bool,
      epochChangeOrderClosingDatetime: freezed ==
              epochChangeOrderClosingDatetime
          ? _value.epochChangeOrderClosingDatetime
          : epochChangeOrderClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      epochCancelOrderClosingDatetime: freezed ==
              epochCancelOrderClosingDatetime
          ? _value.epochCancelOrderClosingDatetime
          : epochCancelOrderClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      epochAdditionalOrderClosingDatetime: freezed ==
              epochAdditionalOrderClosingDatetime
          ? _value.epochAdditionalOrderClosingDatetime
          : epochAdditionalOrderClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalOrderStartDatetime: null == additionalOrderStartDatetime
          ? _value.additionalOrderStartDatetime
          : additionalOrderStartDatetime // ignore: cast_nullable_to_non_nullable
              as String,
      epochChangeDeliveryPlanClosingDatetime: freezed ==
              epochChangeDeliveryPlanClosingDatetime
          ? _value.epochChangeDeliveryPlanClosingDatetime
          : epochChangeDeliveryPlanClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      remainingDatetimeChangeOrderClosing: null ==
              remainingDatetimeChangeOrderClosing
          ? _value.remainingDatetimeChangeOrderClosing
          : remainingDatetimeChangeOrderClosing // ignore: cast_nullable_to_non_nullable
              as String,
      remainingDatetimeCancelOrderClosing: null ==
              remainingDatetimeCancelOrderClosing
          ? _value.remainingDatetimeCancelOrderClosing
          : remainingDatetimeCancelOrderClosing // ignore: cast_nullable_to_non_nullable
              as String,
      remainingDatetimeAdditionalOrderClosing: null ==
              remainingDatetimeAdditionalOrderClosing
          ? _value.remainingDatetimeAdditionalOrderClosing
          : remainingDatetimeAdditionalOrderClosing // ignore: cast_nullable_to_non_nullable
              as String,
      remainingDatetimeChangeDeliveryPlanClosing: null ==
              remainingDatetimeChangeDeliveryPlanClosing
          ? _value.remainingDatetimeChangeDeliveryPlanClosing
          : remainingDatetimeChangeDeliveryPlanClosing // ignore: cast_nullable_to_non_nullable
              as String,
      nanacoPaymentMethod: null == nanacoPaymentMethod
          ? _value.nanacoPaymentMethod
          : nanacoPaymentMethod // ignore: cast_nullable_to_non_nullable
              as NanacoPaymentMethod,
      nameOfReceipt: null == nameOfReceipt
          ? _value.nameOfReceipt
          : nameOfReceipt // ignore: cast_nullable_to_non_nullable
              as String,
      packMaterialType: null == packMaterialType
          ? _value.packMaterialType
          : packMaterialType // ignore: cast_nullable_to_non_nullable
              as PackMaterialType,
      packMethodType: null == packMethodType
          ? _value.packMethodType
          : packMethodType // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus,
      iyCardDiscountPrice: null == iyCardDiscountPrice
          ? _value.iyCardDiscountPrice
          : iyCardDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalCardMemberDiscountPrice: null == totalCardMemberDiscountPrice
          ? _value.totalCardMemberDiscountPrice
          : totalCardMemberDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalMixMatchDiscountPrice: null == totalMixMatchDiscountPrice
          ? _value.totalMixMatchDiscountPrice
          : totalMixMatchDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalSetSaleDiscountPrice: null == totalSetSaleDiscountPrice
          ? _value.totalSetSaleDiscountPrice
          : totalSetSaleDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalProgressiveDiscountPrice: null == totalProgressiveDiscountPrice
          ? _value.totalProgressiveDiscountPrice
          : totalProgressiveDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      couponProductTotalPrice: null == couponProductTotalPrice
          ? _value.couponProductTotalPrice
          : couponProductTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalSellingOffPrice: null == totalSellingOffPrice
          ? _value.totalSellingOffPrice
          : totalSellingOffPrice // ignore: cast_nullable_to_non_nullable
              as int,
      shoppingBagPrice: null == shoppingBagPrice
          ? _value.shoppingBagPrice
          : shoppingBagPrice // ignore: cast_nullable_to_non_nullable
              as int,
      redeliveryPrice: null == redeliveryPrice
          ? _value.redeliveryPrice
          : redeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryPrice: null == deliveryPrice
          ? _value.deliveryPrice
          : deliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      packPrice: null == packPrice
          ? _value.packPrice
          : packPrice // ignore: cast_nullable_to_non_nullable
              as int,
      cashDeliveryPrice: null == cashDeliveryPrice
          ? _value.cashDeliveryPrice
          : cashDeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      iyCardFlag: null == iyCardFlag
          ? _value.iyCardFlag
          : iyCardFlag // ignore: cast_nullable_to_non_nullable
              as IyCardFlag,
      couponPrice: null == couponPrice
          ? _value.couponPrice
          : couponPrice // ignore: cast_nullable_to_non_nullable
              as int,
      productTotalPrice: null == productTotalPrice
          ? _value.productTotalPrice
          : productTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      nanacoPointUsePoint: null == nanacoPointUsePoint
          ? _value.nanacoPointUsePoint
          : nanacoPointUsePoint // ignore: cast_nullable_to_non_nullable
              as int,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as int,
      totalNanacoPoints: null == totalNanacoPoints
          ? _value.totalNanacoPoints
          : totalNanacoPoints // ignore: cast_nullable_to_non_nullable
              as int,
      bonusPoint: null == bonusPoint
          ? _value.bonusPoint
          : bonusPoint // ignore: cast_nullable_to_non_nullable
              as int,
      couponPoint: null == couponPoint
          ? _value.couponPoint
          : couponPoint // ignore: cast_nullable_to_non_nullable
              as int,
      couponPointDiv: null == couponPointDiv
          ? _value.couponPointDiv
          : couponPointDiv // ignore: cast_nullable_to_non_nullable
              as CouponPointDiv,
      nanacoPointStatus: null == nanacoPointStatus
          ? _value.nanacoPointStatus
          : nanacoPointStatus // ignore: cast_nullable_to_non_nullable
              as NanacoPointStatus,
      epochNanacoPointResultDatetime: null == epochNanacoPointResultDatetime
          ? _value.epochNanacoPointResultDatetime
          : epochNanacoPointResultDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      disableDeliveryPlanChangeStartFlag: null ==
              disableDeliveryPlanChangeStartFlag
          ? _value.disableDeliveryPlanChangeStartFlag
          : disableDeliveryPlanChangeStartFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      reserveStatus: null == reserveStatus
          ? _value.reserveStatus
          : reserveStatus // ignore: cast_nullable_to_non_nullable
              as ReserveStatus,
      isOrderLimit: null == isOrderLimit
          ? _value.isOrderLimit
          : isOrderLimit // ignore: cast_nullable_to_non_nullable
              as bool,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsListModel>,
      orderSetSaleGroups: null == orderSetSaleGroups
          ? _value._orderSetSaleGroups
          : orderSetSaleGroups // ignore: cast_nullable_to_non_nullable
              as List<OrderSetSaleGroupListModel>,
      cancels: null == cancels
          ? _value._cancels
          : cancels // ignore: cast_nullable_to_non_nullable
              as List<CancelPriceInformationModel>,
      taxPrices: null == taxPrices
          ? _value._taxPrices
          : taxPrices // ignore: cast_nullable_to_non_nullable
              as List<TaxPriceInformationModel>,
      nanacoPointInformations: null == nanacoPointInformations
          ? _value._nanacoPointInformations
          : nanacoPointInformations // ignore: cast_nullable_to_non_nullable
              as List<NanacoPointModel>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isRegularShipmentOrder: null == isRegularShipmentOrder
          ? _value.isRegularShipmentOrder
          : isRegularShipmentOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableOrderCancel: null == isEnableOrderCancel
          ? _value.isEnableOrderCancel
          : isEnableOrderCancel // ignore: cast_nullable_to_non_nullable
              as bool,
      regularShipmentDiscountPrice: null == regularShipmentDiscountPrice
          ? _value.regularShipmentDiscountPrice
          : regularShipmentDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      productTotalPriceAfterRegularShipmentDiscount: freezed ==
              productTotalPriceAfterRegularShipmentDiscount
          ? _value.productTotalPriceAfterRegularShipmentDiscount
          : productTotalPriceAfterRegularShipmentDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryStatusConfirmationScreenUrl: null ==
              deliveryStatusConfirmationScreenUrl
          ? _value.deliveryStatusConfirmationScreenUrl
          : deliveryStatusConfirmationScreenUrl // ignore: cast_nullable_to_non_nullable
              as String,
      individualDeliveryPriceDiv: null == individualDeliveryPriceDiv
          ? _value.individualDeliveryPriceDiv
          : individualDeliveryPriceDiv // ignore: cast_nullable_to_non_nullable
              as IndividualDeliveryPriceType,
      individualDeliveryName: null == individualDeliveryName
          ? _value.individualDeliveryName
          : individualDeliveryName // ignore: cast_nullable_to_non_nullable
              as String,
      individualDeliveryPrice: null == individualDeliveryPrice
          ? _value.individualDeliveryPrice
          : individualDeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      isBeforeDeliveryQuestionAnswerExpired: null ==
              isBeforeDeliveryQuestionAnswerExpired
          ? _value.isBeforeDeliveryQuestionAnswerExpired
          : isBeforeDeliveryQuestionAnswerExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryQuestionUrl: null == deliveryQuestionUrl
          ? _value.deliveryQuestionUrl
          : deliveryQuestionUrl // ignore: cast_nullable_to_non_nullable
              as String,
      regularShipmentDiscountRate: null == regularShipmentDiscountRate
          ? _value.regularShipmentDiscountRate
          : regularShipmentDiscountRate // ignore: cast_nullable_to_non_nullable
              as int,
      regularShipmentDiscountBeforeTotalPrice: null ==
              regularShipmentDiscountBeforeTotalPrice
          ? _value.regularShipmentDiscountBeforeTotalPrice
          : regularShipmentDiscountBeforeTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      regularShipmentDiscountPlanPrice: freezed ==
              regularShipmentDiscountPlanPrice
          ? _value.regularShipmentDiscountPlanPrice
          : regularShipmentDiscountPlanPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      switchedPackageDropFlag: null == switchedPackageDropFlag
          ? _value.switchedPackageDropFlag
          : switchedPackageDropFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      packageDropPlace: null == packageDropPlace
          ? _value.packageDropPlace
          : packageDropPlace // ignore: cast_nullable_to_non_nullable
              as PackageDropPlace,
      packageDropPlaceDetail: null == packageDropPlaceDetail
          ? _value.packageDropPlaceDetail
          : packageDropPlaceDetail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDetailsModel extends _OrderDetailsModel {
  const _$_OrderDetailsModel(
      {this.isPackPriceTargetCustomer = false,
      this.customerType = '',
      this.shopName = '',
      this.isAkachanHonpoShop = false,
      this.isAkachanHonpoAgencyShop = false,
      this.isBeforeChangeClosingDatetime = false,
      this.isAdditionalOrderTerm = false,
      this.isCorporateCustomer = false,
      this.isNoContact = false,
      this.isFixSetSale = false,
      this.isDeliveryPriceFree = false,
      this.isCancelPriceLevyOrder = false,
      this.isCouponNanacoPointPlus = false,
      this.isCouponNanacoPointTimes = false,
      this.isBeforeClosingDatetime = false,
      this.isChangeOrderLoginShop = false,
      this.isReserveOrder = false,
      this.isAdditionalOrderLoginShop = false,
      this.isCardDiscount = false,
      this.hasDiscountCouponProduct = false,
      this.hasApplyIyCardProduct = false,
      this.needNoStockContact = false,
      this.isDisplayDiscountColumn = false,
      this.orderId = 0,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'order_date')
          this.epochOrderDate = 0,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_start_datetime')
          this.epochDeliveryPlanStartDatetime = 0,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_finish_datetime')
          this.epochDeliveryPlanFinishDatetime = 0,
      this.fulfillmentType = ResponseFulfillmentType.common,
      @StringToBooleanConverter()
          this.noStockContactType = false,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'change_order_closing_datetime')
          this.epochChangeOrderClosingDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'cancel_order_closing_datetime')
          this.epochCancelOrderClosingDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'additional_order_closing_datetime')
          this.epochAdditionalOrderClosingDatetime,
      this.additionalOrderStartDatetime = '',
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'change_delivery_plan_closing_datetime')
          this.epochChangeDeliveryPlanClosingDatetime,
      this.remainingDatetimeChangeOrderClosing = '',
      this.remainingDatetimeCancelOrderClosing = '',
      this.remainingDatetimeAdditionalOrderClosing = '',
      this.remainingDatetimeChangeDeliveryPlanClosing = '',
      this.nanacoPaymentMethod = NanacoPaymentMethod.cashOnDelivery,
      this.nameOfReceipt = '',
      this.packMaterialType = PackMaterialType.plasticBag,
      this.packMethodType = '',
      this.memo = '',
      this.deliveryStatus = DeliveryStatus.undelivered,
      this.iyCardDiscountPrice = 0,
      this.totalCardMemberDiscountPrice = 0,
      this.totalMixMatchDiscountPrice = 0,
      this.totalSetSaleDiscountPrice = 0,
      this.totalProgressiveDiscountPrice = 0,
      this.couponProductTotalPrice = 0,
      this.totalSellingOffPrice = 0,
      this.shoppingBagPrice = 0,
      this.redeliveryPrice = 0,
      this.deliveryPrice = 0,
      this.packPrice = 0,
      this.cashDeliveryPrice = 0,
      this.iyCardFlag = IyCardFlag.invalid,
      this.couponPrice = 0,
      this.productTotalPrice = 0,
      this.totalPrice = 0,
      this.nanacoPointUsePoint = 0,
      this.paymentAmount = 0,
      this.totalNanacoPoints = 0,
      this.bonusPoint = 0,
      this.couponPoint = 0,
      this.couponPointDiv = CouponPointDiv.none,
      this.nanacoPointStatus = NanacoPointStatus.unsent,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'nanaco_point_result_datetime')
          this.epochNanacoPointResultDatetime = 0,
      @StringToBooleanConverter()
          this.disableDeliveryPlanChangeStartFlag = false,
      this.reserveStatus = ReserveStatus.notReservedOrder,
      this.isOrderLimit = false,
      this.productCount = 0,
      final List<OrderDetailsListModel> details =
          const <OrderDetailsListModel>[],
      final List<OrderSetSaleGroupListModel> orderSetSaleGroups =
          const <OrderSetSaleGroupListModel>[],
      final List<CancelPriceInformationModel> cancels =
          const <CancelPriceInformationModel>[],
      final List<TaxPriceInformationModel> taxPrices =
          const <TaxPriceInformationModel>[],
      final List<NanacoPointModel> nanacoPointInformations =
          const <NanacoPointModel>[],
      final List<ProductModel> products = const <ProductModel>[],
      this.isRegularShipmentOrder = false,
      this.isEnableOrderCancel = false,
      this.regularShipmentDiscountPrice = 0,
      this.productTotalPriceAfterRegularShipmentDiscount,
      this.deliveryStatusConfirmationScreenUrl = '',
      this.individualDeliveryPriceDiv = IndividualDeliveryPriceType.fixedAmount,
      this.individualDeliveryName = '',
      this.individualDeliveryPrice = 0,
      this.isBeforeDeliveryQuestionAnswerExpired = false,
      this.deliveryQuestionUrl = '',
      this.regularShipmentDiscountRate = 0,
      this.regularShipmentDiscountBeforeTotalPrice = 0,
      this.status = OrderStatus.undeliveried,
      this.regularShipmentDiscountPlanPrice,
      @StringToBooleanConverter()
          this.switchedPackageDropFlag = false,
      this.packageDropPlace = PackageDropPlace.notPackageDropPlace,
      this.packageDropPlaceDetail = ''})
      : _details = details,
        _orderSetSaleGroups = orderSetSaleGroups,
        _cancels = cancels,
        _taxPrices = taxPrices,
        _nanacoPointInformations = nanacoPointInformations,
        _products = products,
        super._();

  factory _$_OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDetailsModelFromJson(json);

/* 梱包手数料-徴収対象会員判定 */
  @override
  @JsonKey()
  final bool isPackPriceTargetCustomer;
/* 会員種別の返却 */
  @override
  @JsonKey()
  final String customerType;
/* 店舗名を返す */
  @override
  @JsonKey()
  final String shopName;
/* 赤ちゃん本舗対応店舗(リーステナント)判定  - true：赤ちゃん本舗対応店舗(リーステナント)である  - false：赤ちゃん本舗対応店舗(リーステナント)ではない */
  @override
  @JsonKey()
  final bool isAkachanHonpoShop;
/* 赤ちゃん本舗対応店舗(リーステナント)代行実施中判定 - true：ちゃん本舗対応店舗(リーステナント)代行実施中 - false：自営 */
  @override
  @JsonKey()
  final bool isAkachanHonpoAgencyShop;
/* 変更締め日時前判定 - true：変更締め日時前である - false：変更締め日時超過 */
  @override
  @JsonKey()
  final bool isBeforeChangeClosingDatetime;
/* 注文追加期間内判定 - true：注文追加期間内である - false：注文追加期間超過 */
  @override
  @JsonKey()
  final bool isAdditionalOrderTerm;
/* 企業・団体会員判定 - true：企業・団体会員 - false：個人会員 */
  @override
  @JsonKey()
  final bool isCorporateCustomer;
/* 非接触受取り判定を返却 - true：非接触受取りを希望する - false：非接触受取りを希望しない */
  @override
  @JsonKey()
  final bool isNoContact;
/* セット販売割引が成立している受注セットグループの存在判定 - true：セット販売割引が成立している受注セットグループあり - false：セット販売割引が成立している受注セットグループなし */
  @override
  @JsonKey()
  final bool isFixSetSale;
/* 配送料無料判定 - true：配送料無料 - false：配送料あり */
  @override
  @JsonKey()
  final bool isDeliveryPriceFree;
/* キャンセル料徴収受注判定 - true：キャンセル料徴収対象の受注 - false：キャンセル料徴収対象外の受注 */
  @override
  @JsonKey()
  final bool isCancelPriceLevyOrder;
/* クーポン「nanaco付与ポイントプラス」適用あり判定 - true：適用あり - false：適用無し */
  @override
  @JsonKey()
  final bool isCouponNanacoPointPlus;
/* クーポン「nanaco付与ポイントN倍」適用あり判定を返却 - true：適用あり - false：適用なし */
  @override
  @JsonKey()
  final bool isCouponNanacoPointTimes;
/* この受注商品が締め時間前か判定する - true：締め時間前である - false：締め時間超過 */
  @override
  @JsonKey()
  final bool isBeforeClosingDatetime;
/* ログイン店舗による注文変更可能判定 - true：注文変更可能 - false：注文変更不可 */
  @override
  @JsonKey()
  final bool isChangeOrderLoginShop;
/* 予約注文であるかどうか判定する - true：予約注文(＝通常商品が混在している場合も含む)である - false：予約注文ではない */
  @override
  @JsonKey()
  final bool isReserveOrder;
/* ログイン店舗による注文追加可能判定 - true：注文追加可能 - false：注文追加不可 */
  @override
  @JsonKey()
  final bool isAdditionalOrderLoginShop;
/* カード割引判定 - true：カード割引対象である - false：カード割引対象外である */
  @override
  @JsonKey()
  final bool isCardDiscount;
/* 適用済みクーポン対象商品あり判定 - true：適用済みクーポン対象商品あり - false：適用済みクーポン対象商品なし */
  @override
  @JsonKey()
  final bool hasDiscountCouponProduct;
/* 受注商品の中にIYカード対応商品があるか判定する - true：受注商品の中にIIYカード対応商品あり - false：受注商品の中にIIYカード対応商品なし */
  @override
  @JsonKey()
  final bool hasApplyIyCardProduct;
/* 欠品時連絡必要判定 - true：欠品時連絡必要 - false：欠品時連絡不要 */
  @override
  @JsonKey()
  final bool needNoStockContact;
/* 「割引対象」列の表示判定 以下1～6の値のいずれかが0より多い場合はtrueを返却 1. IYカード：割引額 2. カード会員割引-合計値引額 3. ミックスマッチ合計割引額 4. セット販売合計割引額 5. 累進割引-合計値引額 6. 適用クーポン指定商品値引額 - true：表示する - false：非表示 */
  @override
  @JsonKey()
  final bool isDisplayDiscountColumn;
/* 注文IDを取得 */
  @override
  @JsonKey()
  final int orderId;
/* 受注年月日を取得 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'order_date')
  final int epochOrderDate;
/* 配送予定日時FROM ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_plan_start_datetime')
  final int epochDeliveryPlanStartDatetime;
/* 配送予定日時TO ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_plan_finish_datetime')
  final int epochDeliveryPlanFinishDatetime;
/* 配送便種別 ``` \"01\"：通常 \"02\"：通常（遠隔） \"03\"：店舗受取 \"04\"：置き配 \"05\"：7&iロッカー受取 \"06\"：店舗ロッカー受取 ``` */
  @override
  @JsonKey()
  final ResponseFulfillmentType fulfillmentType;
/* 欠品時連絡種別 ``` \"0\"：連絡不要 \"1\"：連絡必要 ``` */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool noStockContactType;
/* 注文変更締日時を計算し返却 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'change_order_closing_datetime')
  final int? epochChangeOrderClosingDatetime;
/* 注文キャンセル締日時を計算し返却 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'cancel_order_closing_datetime')
  final int? epochCancelOrderClosingDatetime;
/* 注文追加締日時を計算し返却 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'additional_order_closing_datetime')
  final int? epochAdditionalOrderClosingDatetime;
/*
    注文追加期間開始日時までの残り時間
      - 注文追加が可能になる日時と業務時間で残り日時を計算し返却する
      - 注文追加が可能になる日時を超えた場合空で返却する
      - 形式は「あとN日とHH時間MM分で追加可能」とし差分がない日時/時間は表記しない
    */
  @override
  @JsonKey()
  final String additionalOrderStartDatetime;
/* 便変更締日時を計算し返却 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'change_delivery_plan_closing_datetime')
  final int? epochChangeDeliveryPlanClosingDatetime;
/* 注文変更締め残り時間 - 締め日時と業務時間で残り日時を計算し返却する  - 残り日時を超えた場合空で返却する  - 形式は「残りN日とHH時間MM分」とし差分がない日時/時間は表記しない */
  @override
  @JsonKey()
  final String remainingDatetimeChangeOrderClosing;
/* 注文キャンセル締め残り時間 - 締め日時と業務時間で残り日時を計算し返却する  - 残り日時を超えた場合空で返却する  - 形式は「残りN日とHH時間MM分」とし差分がない日時/時間は表記しない */
  @override
  @JsonKey()
  final String remainingDatetimeCancelOrderClosing;
/* 注文追加締め残り時間 - 締め日時と業務時間で残り日時を計算し返却する  - 残り日時を超えた場合空で返却する  - 形式は「残りN日とHH時間MM分」とし差分がない日時/時間は表記しない */
  @override
  @JsonKey()
  final String remainingDatetimeAdditionalOrderClosing;
/* 便変更締め残り時間 - 締め日時と業務時間で残り日時を計算し返却する  - 残り日時を超えた場合空で返却する  - 形式は「残りN日とHH時間MM分」とし差分がない日時/時間は表記しない */
  @override
  @JsonKey()
  final String remainingDatetimeChangeDeliveryPlanClosing;
/* 支払方法とnanacoポイント利用額 ``` \"1\"：代金引換 \"2\"：クレジットカード \"3\"：クレジットカードとポイント利用：クレジットカードとnanacoポイント併用の場合 \"4\"：全額ポイント利用 \"5\"：代金引換とポイント利用：代金引換とnanacoポイント併用の場合 ``` */
  @override
  @JsonKey()
  final NanacoPaymentMethod nanacoPaymentMethod;
/* 宛名 */
  @override
  @JsonKey()
  final String nameOfReceipt;
/* - お買い物カゴ梱包の名称を取得する ``` \"0\"：レジ袋をご利用 \"1\"：エコｄｅバスケットをご利用 ``` */
  @override
  @JsonKey()
  final PackMaterialType packMaterialType;
/* - 複数注文梱包まとめ方法種別を返却 ``` \"0\"：個別注文 \"1\"：複数注文(個別梱包) \"2\"：複数注文(まとめ梱包) ``` */
  @override
  @JsonKey()
  final String packMethodType;
/* メモを返却する */
  @override
  @JsonKey()
  final String memo;
/* 配達状況の文字列を返却 ``` \"0\"：未配達  \"1\"：未受取り \"2\"：配達中 \"3\"：お渡し済 \"4\"：お受取り済  ```*/
  @override
  @JsonKey()
  final DeliveryStatus deliveryStatus;
/* IYカード：割引額を返却 */
  @override
  @JsonKey()
  final int iyCardDiscountPrice;
/* カード会員割引-合計値引額の返却 */
  @override
  @JsonKey()
  final int totalCardMemberDiscountPrice;
/* ミックスマッチ合計割引額を返却 */
  @override
  @JsonKey()
  final int totalMixMatchDiscountPrice;
/* セット販売合計割引額を返却 */
  @override
  @JsonKey()
  final int totalSetSaleDiscountPrice;
/* 累進割引-合計値引額の返却 */
  @override
  @JsonKey()
  final int totalProgressiveDiscountPrice;
/* 適用クーポン指定商品値引額を返却 */
  @override
  @JsonKey()
  final int couponProductTotalPrice;
/* 売り切りセール割引-合計値引額の返却 */
  @override
  @JsonKey()
  final int totalSellingOffPrice;
/* レジ袋利用料の返却 */
  @override
  @JsonKey()
  final int shoppingBagPrice;
/* 再配達料を返却 */
  @override
  @JsonKey()
  final int redeliveryPrice;
/* 配送料金を返却 */
  @override
  @JsonKey()
  final int deliveryPrice;
/* 梱包手数料を返却 */
  @override
  @JsonKey()
  final int packPrice;
/* 代引手数料(税込)を返却 */
  @override
  @JsonKey()
  final int cashDeliveryPrice;
/* IYカードフラグを返却 ``` \"1\"：IYカード \"2\"：nanacoカード \"3\"：シニアナナコカード \"4\"：ポイントカード \"0\"：無効(未) ``` */
  @override
  @JsonKey()
  final IyCardFlag iyCardFlag;
/* 適用クーポン買上総額値引額を返却 */
  @override
  @JsonKey()
  final int couponPrice;
/* 商品総額(税込)を返却 */
  @override
  @JsonKey()
  final int productTotalPrice;
/* 最終的な合計金額を返却(配送料金/レジ袋利用料/代引き手数料/各種値引、割引額) */
  @override
  @JsonKey()
  final int totalPrice;
/* ポイント利用額を返却 */
  @override
  @JsonKey()
  final int nanacoPointUsePoint;
/* 支払額を返却 */
  @override
  @JsonKey()
  final int paymentAmount;
/* nanacoポイント計を返却 */
  @override
  @JsonKey()
  final int totalNanacoPoints;
/* 適用nanacoボーナスポイントを返却 */
  @override
  @JsonKey()
  final int bonusPoint;
/* 適用nanacoクーポン付与ポイントを返却 */
  @override
  @JsonKey()
  final int couponPoint;
/* nanacoポイントクーポン適用時の区分 ```\"1\"：nanacoポイントプラスクーポン適用 \"2\"：nanacoポイントN倍クーポン適用``` - クーポン適用無し、またはnanacoポイント以外のクーポン適用の場合、nullを返却 */
  @override
  @JsonKey()
  final CouponPointDiv couponPointDiv;
/* nanacoポイント付与ステータス ``` \"0\"：未送信 \"1\"：送信済 \"2\"：結果受信済（正常） \"3\"：結果受信済（エラー） \"4\"：再付与依頼 \"5\"：再付与依頼済 ``` */
  @override
  @JsonKey()
  final NanacoPointStatus nanacoPointStatus;
/* nanacoポイント付与結果受信日時 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'nanaco_point_result_datetime')
  final int epochNanacoPointResultDatetime;
/* 配達便変更開始-無効フラグ文字列 ``` \"0\"：有効(済) \"1\"：無効(未) ``` */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool disableDeliveryPlanChangeStartFlag;
/* 受注作成時点の申込種別を返却する ``` \"0\"：非予約受注 \"1\"：予約のみ受注 \"2\"：予約含む受注 ``` */
  @override
  @JsonKey()
  final ReserveStatus reserveStatus;
/* キャンセル制限判定 - true：キャンセルを制限する - false：キャンセルを制限しない */
  @override
  @JsonKey()
  final bool isOrderLimit;
/* 総商品点数 */
  @override
  @JsonKey()
  final int productCount;
/* 受注商品ID順にソートされたJANごとの受注商品のリストを取得 */
  final List<OrderDetailsListModel> _details;
/* 受注商品ID順にソートされたJANごとの受注商品のリストを取得 */
  @override
  @JsonKey()
  List<OrderDetailsListModel> get details {
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

/* セット販売割引が成立している受注セットグループリストの取得 */
  final List<OrderSetSaleGroupListModel> _orderSetSaleGroups;
/* セット販売割引が成立している受注セットグループリストの取得 */
  @override
  @JsonKey()
  List<OrderSetSaleGroupListModel> get orderSetSaleGroups {
    if (_orderSetSaleGroups is EqualUnmodifiableListView)
      return _orderSetSaleGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderSetSaleGroups);
  }

/* キャンセル料情報 */
  final List<CancelPriceInformationModel> _cancels;
/* キャンセル料情報 */
  @override
  @JsonKey()
  List<CancelPriceInformationModel> get cancels {
    if (_cancels is EqualUnmodifiableListView) return _cancels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cancels);
  }

/* 受注税額情報リストの返却 */
  final List<TaxPriceInformationModel> _taxPrices;
/* 受注税額情報リストの返却 */
  @override
  @JsonKey()
  List<TaxPriceInformationModel> get taxPrices {
    if (_taxPrices is EqualUnmodifiableListView) return _taxPrices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taxPrices);
  }

/* nanacoポイント明細を取得 */
  final List<NanacoPointModel> _nanacoPointInformations;
/* nanacoポイント明細を取得 */
  @override
  @JsonKey()
  List<NanacoPointModel> get nanacoPointInformations {
    if (_nanacoPointInformations is EqualUnmodifiableListView)
      return _nanacoPointInformations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nanacoPointInformations);
  }

  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

/* 定期便注文判定 - true：定期便注文 - false：定期便注文でない */
  @override
  @JsonKey()
  final bool isRegularShipmentOrder;
/* 注文キャンセル可能判定 - true：キャンセル可能 - false：キャンセル不可 */
  @override
  @JsonKey()
  final bool isEnableOrderCancel;
/* 定期便割引額 */
  @override
  @JsonKey()
  final int regularShipmentDiscountPrice;
/* 商品総額（定期便割引後） */
  @override
  final int? productTotalPriceAfterRegularShipmentDiscount;
/* 配送状況確認画面URL */
  @override
  @JsonKey()
  final String deliveryStatusConfirmationScreenUrl;
/* 個別配達料種別 */
  @override
  @JsonKey()
  final IndividualDeliveryPriceType individualDeliveryPriceDiv;
/* 個別配達料名 */
  @override
  @JsonKey()
  final String individualDeliveryName;
/* 個別配達料 */
  @override
  @JsonKey()
  final int individualDeliveryPrice;
/* 配送アンケートの回答有効期限内か否を判定 */
  @override
  @JsonKey()
  final bool isBeforeDeliveryQuestionAnswerExpired;
/* 配送アンケートURL */
  @override
  @JsonKey()
  final String deliveryQuestionUrl;
/* 定期便割引率 */
  @override
  @JsonKey()
  final int regularShipmentDiscountRate;
/* 定期便割引前合計金額 - total_price に定期便割引額を加算したものが返却される */
  @override
  @JsonKey()
  final int regularShipmentDiscountBeforeTotalPrice;
/* ステータス */
  @override
  @JsonKey()
  final OrderStatus status;
/* 定期便割引予定額 */
  @override
  final int? regularShipmentDiscountPlanPrice;
/* 置き配切替済みフラグ */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool switchedPackageDropFlag;
/* 置き配場所 ``` \"1\"：玄関向かって右, \"2\"：玄関向かって左, \"3\"：インターフォン下, \"9\"：その他, null: 未指定```  */
  @override
  @JsonKey()
  final PackageDropPlace packageDropPlace;
/* 置き配場所の詳細 */
  @override
  @JsonKey()
  final String packageDropPlaceDetail;

  @override
  String toString() {
    return 'OrderDetailsModel(isPackPriceTargetCustomer: $isPackPriceTargetCustomer, customerType: $customerType, shopName: $shopName, isAkachanHonpoShop: $isAkachanHonpoShop, isAkachanHonpoAgencyShop: $isAkachanHonpoAgencyShop, isBeforeChangeClosingDatetime: $isBeforeChangeClosingDatetime, isAdditionalOrderTerm: $isAdditionalOrderTerm, isCorporateCustomer: $isCorporateCustomer, isNoContact: $isNoContact, isFixSetSale: $isFixSetSale, isDeliveryPriceFree: $isDeliveryPriceFree, isCancelPriceLevyOrder: $isCancelPriceLevyOrder, isCouponNanacoPointPlus: $isCouponNanacoPointPlus, isCouponNanacoPointTimes: $isCouponNanacoPointTimes, isBeforeClosingDatetime: $isBeforeClosingDatetime, isChangeOrderLoginShop: $isChangeOrderLoginShop, isReserveOrder: $isReserveOrder, isAdditionalOrderLoginShop: $isAdditionalOrderLoginShop, isCardDiscount: $isCardDiscount, hasDiscountCouponProduct: $hasDiscountCouponProduct, hasApplyIyCardProduct: $hasApplyIyCardProduct, needNoStockContact: $needNoStockContact, isDisplayDiscountColumn: $isDisplayDiscountColumn, orderId: $orderId, epochOrderDate: $epochOrderDate, epochDeliveryPlanStartDatetime: $epochDeliveryPlanStartDatetime, epochDeliveryPlanFinishDatetime: $epochDeliveryPlanFinishDatetime, fulfillmentType: $fulfillmentType, noStockContactType: $noStockContactType, epochChangeOrderClosingDatetime: $epochChangeOrderClosingDatetime, epochCancelOrderClosingDatetime: $epochCancelOrderClosingDatetime, epochAdditionalOrderClosingDatetime: $epochAdditionalOrderClosingDatetime, additionalOrderStartDatetime: $additionalOrderStartDatetime, epochChangeDeliveryPlanClosingDatetime: $epochChangeDeliveryPlanClosingDatetime, remainingDatetimeChangeOrderClosing: $remainingDatetimeChangeOrderClosing, remainingDatetimeCancelOrderClosing: $remainingDatetimeCancelOrderClosing, remainingDatetimeAdditionalOrderClosing: $remainingDatetimeAdditionalOrderClosing, remainingDatetimeChangeDeliveryPlanClosing: $remainingDatetimeChangeDeliveryPlanClosing, nanacoPaymentMethod: $nanacoPaymentMethod, nameOfReceipt: $nameOfReceipt, packMaterialType: $packMaterialType, packMethodType: $packMethodType, memo: $memo, deliveryStatus: $deliveryStatus, iyCardDiscountPrice: $iyCardDiscountPrice, totalCardMemberDiscountPrice: $totalCardMemberDiscountPrice, totalMixMatchDiscountPrice: $totalMixMatchDiscountPrice, totalSetSaleDiscountPrice: $totalSetSaleDiscountPrice, totalProgressiveDiscountPrice: $totalProgressiveDiscountPrice, couponProductTotalPrice: $couponProductTotalPrice, totalSellingOffPrice: $totalSellingOffPrice, shoppingBagPrice: $shoppingBagPrice, redeliveryPrice: $redeliveryPrice, deliveryPrice: $deliveryPrice, packPrice: $packPrice, cashDeliveryPrice: $cashDeliveryPrice, iyCardFlag: $iyCardFlag, couponPrice: $couponPrice, productTotalPrice: $productTotalPrice, totalPrice: $totalPrice, nanacoPointUsePoint: $nanacoPointUsePoint, paymentAmount: $paymentAmount, totalNanacoPoints: $totalNanacoPoints, bonusPoint: $bonusPoint, couponPoint: $couponPoint, couponPointDiv: $couponPointDiv, nanacoPointStatus: $nanacoPointStatus, epochNanacoPointResultDatetime: $epochNanacoPointResultDatetime, disableDeliveryPlanChangeStartFlag: $disableDeliveryPlanChangeStartFlag, reserveStatus: $reserveStatus, isOrderLimit: $isOrderLimit, productCount: $productCount, details: $details, orderSetSaleGroups: $orderSetSaleGroups, cancels: $cancels, taxPrices: $taxPrices, nanacoPointInformations: $nanacoPointInformations, products: $products, isRegularShipmentOrder: $isRegularShipmentOrder, isEnableOrderCancel: $isEnableOrderCancel, regularShipmentDiscountPrice: $regularShipmentDiscountPrice, productTotalPriceAfterRegularShipmentDiscount: $productTotalPriceAfterRegularShipmentDiscount, deliveryStatusConfirmationScreenUrl: $deliveryStatusConfirmationScreenUrl, individualDeliveryPriceDiv: $individualDeliveryPriceDiv, individualDeliveryName: $individualDeliveryName, individualDeliveryPrice: $individualDeliveryPrice, isBeforeDeliveryQuestionAnswerExpired: $isBeforeDeliveryQuestionAnswerExpired, deliveryQuestionUrl: $deliveryQuestionUrl, regularShipmentDiscountRate: $regularShipmentDiscountRate, regularShipmentDiscountBeforeTotalPrice: $regularShipmentDiscountBeforeTotalPrice, status: $status, regularShipmentDiscountPlanPrice: $regularShipmentDiscountPlanPrice, switchedPackageDropFlag: $switchedPackageDropFlag, packageDropPlace: $packageDropPlace, packageDropPlaceDetail: $packageDropPlaceDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDetailsModel &&
            (identical(other.isPackPriceTargetCustomer, isPackPriceTargetCustomer) ||
                other.isPackPriceTargetCustomer == isPackPriceTargetCustomer) &&
            (identical(other.customerType, customerType) ||
                other.customerType == customerType) &&
            (identical(other.shopName, shopName) ||
                other.shopName == shopName) &&
            (identical(other.isAkachanHonpoShop, isAkachanHonpoShop) ||
                other.isAkachanHonpoShop == isAkachanHonpoShop) &&
            (identical(other.isAkachanHonpoAgencyShop, isAkachanHonpoAgencyShop) ||
                other.isAkachanHonpoAgencyShop == isAkachanHonpoAgencyShop) &&
            (identical(other.isBeforeChangeClosingDatetime, isBeforeChangeClosingDatetime) ||
                other.isBeforeChangeClosingDatetime ==
                    isBeforeChangeClosingDatetime) &&
            (identical(other.isAdditionalOrderTerm, isAdditionalOrderTerm) ||
                other.isAdditionalOrderTerm == isAdditionalOrderTerm) &&
            (identical(other.isCorporateCustomer, isCorporateCustomer) ||
                other.isCorporateCustomer == isCorporateCustomer) &&
            (identical(other.isNoContact, isNoContact) ||
                other.isNoContact == isNoContact) &&
            (identical(other.isFixSetSale, isFixSetSale) ||
                other.isFixSetSale == isFixSetSale) &&
            (identical(other.isDeliveryPriceFree, isDeliveryPriceFree) ||
                other.isDeliveryPriceFree == isDeliveryPriceFree) &&
            (identical(other.isCancelPriceLevyOrder, isCancelPriceLevyOrder) ||
                other.isCancelPriceLevyOrder == isCancelPriceLevyOrder) &&
            (identical(other.isCouponNanacoPointPlus, isCouponNanacoPointPlus) ||
                other.isCouponNanacoPointPlus == isCouponNanacoPointPlus) &&
            (identical(other.isCouponNanacoPointTimes, isCouponNanacoPointTimes) ||
                other.isCouponNanacoPointTimes == isCouponNanacoPointTimes) &&
            (identical(other.isBeforeClosingDatetime, isBeforeClosingDatetime) ||
                other.isBeforeClosingDatetime == isBeforeClosingDatetime) &&
            (identical(other.isChangeOrderLoginShop, isChangeOrderLoginShop) ||
                other.isChangeOrderLoginShop == isChangeOrderLoginShop) &&
            (identical(other.isReserveOrder, isReserveOrder) ||
                other.isReserveOrder == isReserveOrder) &&
            (identical(other.isAdditionalOrderLoginShop, isAdditionalOrderLoginShop) ||
                other.isAdditionalOrderLoginShop ==
                    isAdditionalOrderLoginShop) &&
            (identical(other.isCardDiscount, isCardDiscount) ||
                other.isCardDiscount == isCardDiscount) &&
            (identical(other.hasDiscountCouponProduct, hasDiscountCouponProduct) ||
                other.hasDiscountCouponProduct == hasDiscountCouponProduct) &&
            (identical(other.hasApplyIyCardProduct, hasApplyIyCardProduct) ||
                other.hasApplyIyCardProduct == hasApplyIyCardProduct) &&
            (identical(other.needNoStockContact, needNoStockContact) || other.needNoStockContact == needNoStockContact) &&
            (identical(other.isDisplayDiscountColumn, isDisplayDiscountColumn) || other.isDisplayDiscountColumn == isDisplayDiscountColumn) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.epochOrderDate, epochOrderDate) || other.epochOrderDate == epochOrderDate) &&
            (identical(other.epochDeliveryPlanStartDatetime, epochDeliveryPlanStartDatetime) || other.epochDeliveryPlanStartDatetime == epochDeliveryPlanStartDatetime) &&
            (identical(other.epochDeliveryPlanFinishDatetime, epochDeliveryPlanFinishDatetime) || other.epochDeliveryPlanFinishDatetime == epochDeliveryPlanFinishDatetime) &&
            (identical(other.fulfillmentType, fulfillmentType) || other.fulfillmentType == fulfillmentType) &&
            (identical(other.noStockContactType, noStockContactType) || other.noStockContactType == noStockContactType) &&
            (identical(other.epochChangeOrderClosingDatetime, epochChangeOrderClosingDatetime) || other.epochChangeOrderClosingDatetime == epochChangeOrderClosingDatetime) &&
            (identical(other.epochCancelOrderClosingDatetime, epochCancelOrderClosingDatetime) || other.epochCancelOrderClosingDatetime == epochCancelOrderClosingDatetime) &&
            (identical(other.epochAdditionalOrderClosingDatetime, epochAdditionalOrderClosingDatetime) || other.epochAdditionalOrderClosingDatetime == epochAdditionalOrderClosingDatetime) &&
            (identical(other.additionalOrderStartDatetime, additionalOrderStartDatetime) || other.additionalOrderStartDatetime == additionalOrderStartDatetime) &&
            (identical(other.epochChangeDeliveryPlanClosingDatetime, epochChangeDeliveryPlanClosingDatetime) || other.epochChangeDeliveryPlanClosingDatetime == epochChangeDeliveryPlanClosingDatetime) &&
            (identical(other.remainingDatetimeChangeOrderClosing, remainingDatetimeChangeOrderClosing) || other.remainingDatetimeChangeOrderClosing == remainingDatetimeChangeOrderClosing) &&
            (identical(other.remainingDatetimeCancelOrderClosing, remainingDatetimeCancelOrderClosing) || other.remainingDatetimeCancelOrderClosing == remainingDatetimeCancelOrderClosing) &&
            (identical(other.remainingDatetimeAdditionalOrderClosing, remainingDatetimeAdditionalOrderClosing) || other.remainingDatetimeAdditionalOrderClosing == remainingDatetimeAdditionalOrderClosing) &&
            (identical(other.remainingDatetimeChangeDeliveryPlanClosing, remainingDatetimeChangeDeliveryPlanClosing) || other.remainingDatetimeChangeDeliveryPlanClosing == remainingDatetimeChangeDeliveryPlanClosing) &&
            (identical(other.nanacoPaymentMethod, nanacoPaymentMethod) || other.nanacoPaymentMethod == nanacoPaymentMethod) &&
            (identical(other.nameOfReceipt, nameOfReceipt) || other.nameOfReceipt == nameOfReceipt) &&
            (identical(other.packMaterialType, packMaterialType) || other.packMaterialType == packMaterialType) &&
            (identical(other.packMethodType, packMethodType) || other.packMethodType == packMethodType) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus) &&
            (identical(other.iyCardDiscountPrice, iyCardDiscountPrice) || other.iyCardDiscountPrice == iyCardDiscountPrice) &&
            (identical(other.totalCardMemberDiscountPrice, totalCardMemberDiscountPrice) || other.totalCardMemberDiscountPrice == totalCardMemberDiscountPrice) &&
            (identical(other.totalMixMatchDiscountPrice, totalMixMatchDiscountPrice) || other.totalMixMatchDiscountPrice == totalMixMatchDiscountPrice) &&
            (identical(other.totalSetSaleDiscountPrice, totalSetSaleDiscountPrice) || other.totalSetSaleDiscountPrice == totalSetSaleDiscountPrice) &&
            (identical(other.totalProgressiveDiscountPrice, totalProgressiveDiscountPrice) || other.totalProgressiveDiscountPrice == totalProgressiveDiscountPrice) &&
            (identical(other.couponProductTotalPrice, couponProductTotalPrice) || other.couponProductTotalPrice == couponProductTotalPrice) &&
            (identical(other.totalSellingOffPrice, totalSellingOffPrice) || other.totalSellingOffPrice == totalSellingOffPrice) &&
            (identical(other.shoppingBagPrice, shoppingBagPrice) || other.shoppingBagPrice == shoppingBagPrice) &&
            (identical(other.redeliveryPrice, redeliveryPrice) || other.redeliveryPrice == redeliveryPrice) &&
            (identical(other.deliveryPrice, deliveryPrice) || other.deliveryPrice == deliveryPrice) &&
            (identical(other.packPrice, packPrice) || other.packPrice == packPrice) &&
            (identical(other.cashDeliveryPrice, cashDeliveryPrice) || other.cashDeliveryPrice == cashDeliveryPrice) &&
            (identical(other.iyCardFlag, iyCardFlag) || other.iyCardFlag == iyCardFlag) &&
            (identical(other.couponPrice, couponPrice) || other.couponPrice == couponPrice) &&
            (identical(other.productTotalPrice, productTotalPrice) || other.productTotalPrice == productTotalPrice) &&
            (identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice) &&
            (identical(other.nanacoPointUsePoint, nanacoPointUsePoint) || other.nanacoPointUsePoint == nanacoPointUsePoint) &&
            (identical(other.paymentAmount, paymentAmount) || other.paymentAmount == paymentAmount) &&
            (identical(other.totalNanacoPoints, totalNanacoPoints) || other.totalNanacoPoints == totalNanacoPoints) &&
            (identical(other.bonusPoint, bonusPoint) || other.bonusPoint == bonusPoint) &&
            (identical(other.couponPoint, couponPoint) || other.couponPoint == couponPoint) &&
            (identical(other.couponPointDiv, couponPointDiv) || other.couponPointDiv == couponPointDiv) &&
            (identical(other.nanacoPointStatus, nanacoPointStatus) || other.nanacoPointStatus == nanacoPointStatus) &&
            (identical(other.epochNanacoPointResultDatetime, epochNanacoPointResultDatetime) || other.epochNanacoPointResultDatetime == epochNanacoPointResultDatetime) &&
            (identical(other.disableDeliveryPlanChangeStartFlag, disableDeliveryPlanChangeStartFlag) || other.disableDeliveryPlanChangeStartFlag == disableDeliveryPlanChangeStartFlag) &&
            (identical(other.reserveStatus, reserveStatus) || other.reserveStatus == reserveStatus) &&
            (identical(other.isOrderLimit, isOrderLimit) || other.isOrderLimit == isOrderLimit) &&
            (identical(other.productCount, productCount) || other.productCount == productCount) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            const DeepCollectionEquality().equals(other._orderSetSaleGroups, _orderSetSaleGroups) &&
            const DeepCollectionEquality().equals(other._cancels, _cancels) &&
            const DeepCollectionEquality().equals(other._taxPrices, _taxPrices) &&
            const DeepCollectionEquality().equals(other._nanacoPointInformations, _nanacoPointInformations) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.isRegularShipmentOrder, isRegularShipmentOrder) || other.isRegularShipmentOrder == isRegularShipmentOrder) &&
            (identical(other.isEnableOrderCancel, isEnableOrderCancel) || other.isEnableOrderCancel == isEnableOrderCancel) &&
            (identical(other.regularShipmentDiscountPrice, regularShipmentDiscountPrice) || other.regularShipmentDiscountPrice == regularShipmentDiscountPrice) &&
            (identical(other.productTotalPriceAfterRegularShipmentDiscount, productTotalPriceAfterRegularShipmentDiscount) || other.productTotalPriceAfterRegularShipmentDiscount == productTotalPriceAfterRegularShipmentDiscount) &&
            (identical(other.deliveryStatusConfirmationScreenUrl, deliveryStatusConfirmationScreenUrl) || other.deliveryStatusConfirmationScreenUrl == deliveryStatusConfirmationScreenUrl) &&
            (identical(other.individualDeliveryPriceDiv, individualDeliveryPriceDiv) || other.individualDeliveryPriceDiv == individualDeliveryPriceDiv) &&
            (identical(other.individualDeliveryName, individualDeliveryName) || other.individualDeliveryName == individualDeliveryName) &&
            (identical(other.individualDeliveryPrice, individualDeliveryPrice) || other.individualDeliveryPrice == individualDeliveryPrice) &&
            (identical(other.isBeforeDeliveryQuestionAnswerExpired, isBeforeDeliveryQuestionAnswerExpired) || other.isBeforeDeliveryQuestionAnswerExpired == isBeforeDeliveryQuestionAnswerExpired) &&
            (identical(other.deliveryQuestionUrl, deliveryQuestionUrl) || other.deliveryQuestionUrl == deliveryQuestionUrl) &&
            (identical(other.regularShipmentDiscountRate, regularShipmentDiscountRate) || other.regularShipmentDiscountRate == regularShipmentDiscountRate) &&
            (identical(other.regularShipmentDiscountBeforeTotalPrice, regularShipmentDiscountBeforeTotalPrice) || other.regularShipmentDiscountBeforeTotalPrice == regularShipmentDiscountBeforeTotalPrice) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.regularShipmentDiscountPlanPrice, regularShipmentDiscountPlanPrice) || other.regularShipmentDiscountPlanPrice == regularShipmentDiscountPlanPrice) &&
            (identical(other.switchedPackageDropFlag, switchedPackageDropFlag) || other.switchedPackageDropFlag == switchedPackageDropFlag) &&
            (identical(other.packageDropPlace, packageDropPlace) || other.packageDropPlace == packageDropPlace) &&
            (identical(other.packageDropPlaceDetail, packageDropPlaceDetail) || other.packageDropPlaceDetail == packageDropPlaceDetail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isPackPriceTargetCustomer,
        customerType,
        shopName,
        isAkachanHonpoShop,
        isAkachanHonpoAgencyShop,
        isBeforeChangeClosingDatetime,
        isAdditionalOrderTerm,
        isCorporateCustomer,
        isNoContact,
        isFixSetSale,
        isDeliveryPriceFree,
        isCancelPriceLevyOrder,
        isCouponNanacoPointPlus,
        isCouponNanacoPointTimes,
        isBeforeClosingDatetime,
        isChangeOrderLoginShop,
        isReserveOrder,
        isAdditionalOrderLoginShop,
        isCardDiscount,
        hasDiscountCouponProduct,
        hasApplyIyCardProduct,
        needNoStockContact,
        isDisplayDiscountColumn,
        orderId,
        epochOrderDate,
        epochDeliveryPlanStartDatetime,
        epochDeliveryPlanFinishDatetime,
        fulfillmentType,
        noStockContactType,
        epochChangeOrderClosingDatetime,
        epochCancelOrderClosingDatetime,
        epochAdditionalOrderClosingDatetime,
        additionalOrderStartDatetime,
        epochChangeDeliveryPlanClosingDatetime,
        remainingDatetimeChangeOrderClosing,
        remainingDatetimeCancelOrderClosing,
        remainingDatetimeAdditionalOrderClosing,
        remainingDatetimeChangeDeliveryPlanClosing,
        nanacoPaymentMethod,
        nameOfReceipt,
        packMaterialType,
        packMethodType,
        memo,
        deliveryStatus,
        iyCardDiscountPrice,
        totalCardMemberDiscountPrice,
        totalMixMatchDiscountPrice,
        totalSetSaleDiscountPrice,
        totalProgressiveDiscountPrice,
        couponProductTotalPrice,
        totalSellingOffPrice,
        shoppingBagPrice,
        redeliveryPrice,
        deliveryPrice,
        packPrice,
        cashDeliveryPrice,
        iyCardFlag,
        couponPrice,
        productTotalPrice,
        totalPrice,
        nanacoPointUsePoint,
        paymentAmount,
        totalNanacoPoints,
        bonusPoint,
        couponPoint,
        couponPointDiv,
        nanacoPointStatus,
        epochNanacoPointResultDatetime,
        disableDeliveryPlanChangeStartFlag,
        reserveStatus,
        isOrderLimit,
        productCount,
        const DeepCollectionEquality().hash(_details),
        const DeepCollectionEquality().hash(_orderSetSaleGroups),
        const DeepCollectionEquality().hash(_cancels),
        const DeepCollectionEquality().hash(_taxPrices),
        const DeepCollectionEquality().hash(_nanacoPointInformations),
        const DeepCollectionEquality().hash(_products),
        isRegularShipmentOrder,
        isEnableOrderCancel,
        regularShipmentDiscountPrice,
        productTotalPriceAfterRegularShipmentDiscount,
        deliveryStatusConfirmationScreenUrl,
        individualDeliveryPriceDiv,
        individualDeliveryName,
        individualDeliveryPrice,
        isBeforeDeliveryQuestionAnswerExpired,
        deliveryQuestionUrl,
        regularShipmentDiscountRate,
        regularShipmentDiscountBeforeTotalPrice,
        status,
        regularShipmentDiscountPlanPrice,
        switchedPackageDropFlag,
        packageDropPlace,
        packageDropPlaceDetail
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDetailsModelCopyWith<_$_OrderDetailsModel> get copyWith =>
      __$$_OrderDetailsModelCopyWithImpl<_$_OrderDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDetailsModelToJson(
      this,
    );
  }
}

abstract class _OrderDetailsModel extends OrderDetailsModel {
  const factory _OrderDetailsModel(
      {final bool isPackPriceTargetCustomer,
      final String customerType,
      final String shopName,
      final bool isAkachanHonpoShop,
      final bool isAkachanHonpoAgencyShop,
      final bool isBeforeChangeClosingDatetime,
      final bool isAdditionalOrderTerm,
      final bool isCorporateCustomer,
      final bool isNoContact,
      final bool isFixSetSale,
      final bool isDeliveryPriceFree,
      final bool isCancelPriceLevyOrder,
      final bool isCouponNanacoPointPlus,
      final bool isCouponNanacoPointTimes,
      final bool isBeforeClosingDatetime,
      final bool isChangeOrderLoginShop,
      final bool isReserveOrder,
      final bool isAdditionalOrderLoginShop,
      final bool isCardDiscount,
      final bool hasDiscountCouponProduct,
      final bool hasApplyIyCardProduct,
      final bool needNoStockContact,
      final bool isDisplayDiscountColumn,
      final int orderId,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'order_date')
          final int epochOrderDate,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_start_datetime')
          final int epochDeliveryPlanStartDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_finish_datetime')
          final int epochDeliveryPlanFinishDatetime,
      final ResponseFulfillmentType fulfillmentType,
      @StringToBooleanConverter()
          final bool noStockContactType,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'change_order_closing_datetime')
          final int? epochChangeOrderClosingDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'cancel_order_closing_datetime')
          final int? epochCancelOrderClosingDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'additional_order_closing_datetime')
          final int? epochAdditionalOrderClosingDatetime,
      final String additionalOrderStartDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'change_delivery_plan_closing_datetime')
          final int? epochChangeDeliveryPlanClosingDatetime,
      final String remainingDatetimeChangeOrderClosing,
      final String remainingDatetimeCancelOrderClosing,
      final String remainingDatetimeAdditionalOrderClosing,
      final String remainingDatetimeChangeDeliveryPlanClosing,
      final NanacoPaymentMethod nanacoPaymentMethod,
      final String nameOfReceipt,
      final PackMaterialType packMaterialType,
      final String packMethodType,
      final String memo,
      final DeliveryStatus deliveryStatus,
      final int iyCardDiscountPrice,
      final int totalCardMemberDiscountPrice,
      final int totalMixMatchDiscountPrice,
      final int totalSetSaleDiscountPrice,
      final int totalProgressiveDiscountPrice,
      final int couponProductTotalPrice,
      final int totalSellingOffPrice,
      final int shoppingBagPrice,
      final int redeliveryPrice,
      final int deliveryPrice,
      final int packPrice,
      final int cashDeliveryPrice,
      final IyCardFlag iyCardFlag,
      final int couponPrice,
      final int productTotalPrice,
      final int totalPrice,
      final int nanacoPointUsePoint,
      final int paymentAmount,
      final int totalNanacoPoints,
      final int bonusPoint,
      final int couponPoint,
      final CouponPointDiv couponPointDiv,
      final NanacoPointStatus nanacoPointStatus,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'nanaco_point_result_datetime')
          final int epochNanacoPointResultDatetime,
      @StringToBooleanConverter()
          final bool disableDeliveryPlanChangeStartFlag,
      final ReserveStatus reserveStatus,
      final bool isOrderLimit,
      final int productCount,
      final List<OrderDetailsListModel> details,
      final List<OrderSetSaleGroupListModel> orderSetSaleGroups,
      final List<CancelPriceInformationModel> cancels,
      final List<TaxPriceInformationModel> taxPrices,
      final List<NanacoPointModel> nanacoPointInformations,
      final List<ProductModel> products,
      final bool isRegularShipmentOrder,
      final bool isEnableOrderCancel,
      final int regularShipmentDiscountPrice,
      final int? productTotalPriceAfterRegularShipmentDiscount,
      final String deliveryStatusConfirmationScreenUrl,
      final IndividualDeliveryPriceType individualDeliveryPriceDiv,
      final String individualDeliveryName,
      final int individualDeliveryPrice,
      final bool isBeforeDeliveryQuestionAnswerExpired,
      final String deliveryQuestionUrl,
      final int regularShipmentDiscountRate,
      final int regularShipmentDiscountBeforeTotalPrice,
      final OrderStatus status,
      final int? regularShipmentDiscountPlanPrice,
      @StringToBooleanConverter()
          final bool switchedPackageDropFlag,
      final PackageDropPlace packageDropPlace,
      final String packageDropPlaceDetail}) = _$_OrderDetailsModel;
  const _OrderDetailsModel._() : super._();

  factory _OrderDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_OrderDetailsModel.fromJson;

  @override /* 梱包手数料-徴収対象会員判定 */
  bool get isPackPriceTargetCustomer;
  @override /* 会員種別の返却 */
  String get customerType;
  @override /* 店舗名を返す */
  String get shopName;
  @override /* 赤ちゃん本舗対応店舗(リーステナント)判定  - true：赤ちゃん本舗対応店舗(リーステナント)である  - false：赤ちゃん本舗対応店舗(リーステナント)ではない */
  bool get isAkachanHonpoShop;
  @override /* 赤ちゃん本舗対応店舗(リーステナント)代行実施中判定 - true：ちゃん本舗対応店舗(リーステナント)代行実施中 - false：自営 */
  bool get isAkachanHonpoAgencyShop;
  @override /* 変更締め日時前判定 - true：変更締め日時前である - false：変更締め日時超過 */
  bool get isBeforeChangeClosingDatetime;
  @override /* 注文追加期間内判定 - true：注文追加期間内である - false：注文追加期間超過 */
  bool get isAdditionalOrderTerm;
  @override /* 企業・団体会員判定 - true：企業・団体会員 - false：個人会員 */
  bool get isCorporateCustomer;
  @override /* 非接触受取り判定を返却 - true：非接触受取りを希望する - false：非接触受取りを希望しない */
  bool get isNoContact;
  @override /* セット販売割引が成立している受注セットグループの存在判定 - true：セット販売割引が成立している受注セットグループあり - false：セット販売割引が成立している受注セットグループなし */
  bool get isFixSetSale;
  @override /* 配送料無料判定 - true：配送料無料 - false：配送料あり */
  bool get isDeliveryPriceFree;
  @override /* キャンセル料徴収受注判定 - true：キャンセル料徴収対象の受注 - false：キャンセル料徴収対象外の受注 */
  bool get isCancelPriceLevyOrder;
  @override /* クーポン「nanaco付与ポイントプラス」適用あり判定 - true：適用あり - false：適用無し */
  bool get isCouponNanacoPointPlus;
  @override /* クーポン「nanaco付与ポイントN倍」適用あり判定を返却 - true：適用あり - false：適用なし */
  bool get isCouponNanacoPointTimes;
  @override /* この受注商品が締め時間前か判定する - true：締め時間前である - false：締め時間超過 */
  bool get isBeforeClosingDatetime;
  @override /* ログイン店舗による注文変更可能判定 - true：注文変更可能 - false：注文変更不可 */
  bool get isChangeOrderLoginShop;
  @override /* 予約注文であるかどうか判定する - true：予約注文(＝通常商品が混在している場合も含む)である - false：予約注文ではない */
  bool get isReserveOrder;
  @override /* ログイン店舗による注文追加可能判定 - true：注文追加可能 - false：注文追加不可 */
  bool get isAdditionalOrderLoginShop;
  @override /* カード割引判定 - true：カード割引対象である - false：カード割引対象外である */
  bool get isCardDiscount;
  @override /* 適用済みクーポン対象商品あり判定 - true：適用済みクーポン対象商品あり - false：適用済みクーポン対象商品なし */
  bool get hasDiscountCouponProduct;
  @override /* 受注商品の中にIYカード対応商品があるか判定する - true：受注商品の中にIIYカード対応商品あり - false：受注商品の中にIIYカード対応商品なし */
  bool get hasApplyIyCardProduct;
  @override /* 欠品時連絡必要判定 - true：欠品時連絡必要 - false：欠品時連絡不要 */
  bool get needNoStockContact;
  @override /* 「割引対象」列の表示判定 以下1～6の値のいずれかが0より多い場合はtrueを返却 1. IYカード：割引額 2. カード会員割引-合計値引額 3. ミックスマッチ合計割引額 4. セット販売合計割引額 5. 累進割引-合計値引額 6. 適用クーポン指定商品値引額 - true：表示する - false：非表示 */
  bool get isDisplayDiscountColumn;
  @override /* 注文IDを取得 */
  int get orderId;
  @override /* 受注年月日を取得 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'order_date')
  int get epochOrderDate;
  @override /* 配送予定日時FROM ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_plan_start_datetime')
  int get epochDeliveryPlanStartDatetime;
  @override /* 配送予定日時TO ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_plan_finish_datetime')
  int get epochDeliveryPlanFinishDatetime;
  @override /* 配送便種別 ``` \"01\"：通常 \"02\"：通常（遠隔） \"03\"：店舗受取 \"04\"：置き配 \"05\"：7&iロッカー受取 \"06\"：店舗ロッカー受取 ``` */
  ResponseFulfillmentType get fulfillmentType;
  @override /* 欠品時連絡種別 ``` \"0\"：連絡不要 \"1\"：連絡必要 ``` */
  @StringToBooleanConverter()
  bool get noStockContactType;
  @override /* 注文変更締日時を計算し返却 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'change_order_closing_datetime')
  int? get epochChangeOrderClosingDatetime;
  @override /* 注文キャンセル締日時を計算し返却 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'cancel_order_closing_datetime')
  int? get epochCancelOrderClosingDatetime;
  @override /* 注文追加締日時を計算し返却 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'additional_order_closing_datetime')
  int? get epochAdditionalOrderClosingDatetime;
  @override /*
    注文追加期間開始日時までの残り時間
      - 注文追加が可能になる日時と業務時間で残り日時を計算し返却する
      - 注文追加が可能になる日時を超えた場合空で返却する
      - 形式は「あとN日とHH時間MM分で追加可能」とし差分がない日時/時間は表記しない
    */
  String get additionalOrderStartDatetime;
  @override /* 便変更締日時を計算し返却 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'change_delivery_plan_closing_datetime')
  int? get epochChangeDeliveryPlanClosingDatetime;
  @override /* 注文変更締め残り時間 - 締め日時と業務時間で残り日時を計算し返却する  - 残り日時を超えた場合空で返却する  - 形式は「残りN日とHH時間MM分」とし差分がない日時/時間は表記しない */
  String get remainingDatetimeChangeOrderClosing;
  @override /* 注文キャンセル締め残り時間 - 締め日時と業務時間で残り日時を計算し返却する  - 残り日時を超えた場合空で返却する  - 形式は「残りN日とHH時間MM分」とし差分がない日時/時間は表記しない */
  String get remainingDatetimeCancelOrderClosing;
  @override /* 注文追加締め残り時間 - 締め日時と業務時間で残り日時を計算し返却する  - 残り日時を超えた場合空で返却する  - 形式は「残りN日とHH時間MM分」とし差分がない日時/時間は表記しない */
  String get remainingDatetimeAdditionalOrderClosing;
  @override /* 便変更締め残り時間 - 締め日時と業務時間で残り日時を計算し返却する  - 残り日時を超えた場合空で返却する  - 形式は「残りN日とHH時間MM分」とし差分がない日時/時間は表記しない */
  String get remainingDatetimeChangeDeliveryPlanClosing;
  @override /* 支払方法とnanacoポイント利用額 ``` \"1\"：代金引換 \"2\"：クレジットカード \"3\"：クレジットカードとポイント利用：クレジットカードとnanacoポイント併用の場合 \"4\"：全額ポイント利用 \"5\"：代金引換とポイント利用：代金引換とnanacoポイント併用の場合 ``` */
  NanacoPaymentMethod get nanacoPaymentMethod;
  @override /* 宛名 */
  String get nameOfReceipt;
  @override /* - お買い物カゴ梱包の名称を取得する ``` \"0\"：レジ袋をご利用 \"1\"：エコｄｅバスケットをご利用 ``` */
  PackMaterialType get packMaterialType;
  @override /* - 複数注文梱包まとめ方法種別を返却 ``` \"0\"：個別注文 \"1\"：複数注文(個別梱包) \"2\"：複数注文(まとめ梱包) ``` */
  String get packMethodType;
  @override /* メモを返却する */
  String get memo;
  @override /* 配達状況の文字列を返却 ``` \"0\"：未配達  \"1\"：未受取り \"2\"：配達中 \"3\"：お渡し済 \"4\"：お受取り済  ```*/
  DeliveryStatus get deliveryStatus;
  @override /* IYカード：割引額を返却 */
  int get iyCardDiscountPrice;
  @override /* カード会員割引-合計値引額の返却 */
  int get totalCardMemberDiscountPrice;
  @override /* ミックスマッチ合計割引額を返却 */
  int get totalMixMatchDiscountPrice;
  @override /* セット販売合計割引額を返却 */
  int get totalSetSaleDiscountPrice;
  @override /* 累進割引-合計値引額の返却 */
  int get totalProgressiveDiscountPrice;
  @override /* 適用クーポン指定商品値引額を返却 */
  int get couponProductTotalPrice;
  @override /* 売り切りセール割引-合計値引額の返却 */
  int get totalSellingOffPrice;
  @override /* レジ袋利用料の返却 */
  int get shoppingBagPrice;
  @override /* 再配達料を返却 */
  int get redeliveryPrice;
  @override /* 配送料金を返却 */
  int get deliveryPrice;
  @override /* 梱包手数料を返却 */
  int get packPrice;
  @override /* 代引手数料(税込)を返却 */
  int get cashDeliveryPrice;
  @override /* IYカードフラグを返却 ``` \"1\"：IYカード \"2\"：nanacoカード \"3\"：シニアナナコカード \"4\"：ポイントカード \"0\"：無効(未) ``` */
  IyCardFlag get iyCardFlag;
  @override /* 適用クーポン買上総額値引額を返却 */
  int get couponPrice;
  @override /* 商品総額(税込)を返却 */
  int get productTotalPrice;
  @override /* 最終的な合計金額を返却(配送料金/レジ袋利用料/代引き手数料/各種値引、割引額) */
  int get totalPrice;
  @override /* ポイント利用額を返却 */
  int get nanacoPointUsePoint;
  @override /* 支払額を返却 */
  int get paymentAmount;
  @override /* nanacoポイント計を返却 */
  int get totalNanacoPoints;
  @override /* 適用nanacoボーナスポイントを返却 */
  int get bonusPoint;
  @override /* 適用nanacoクーポン付与ポイントを返却 */
  int get couponPoint;
  @override /* nanacoポイントクーポン適用時の区分 ```\"1\"：nanacoポイントプラスクーポン適用 \"2\"：nanacoポイントN倍クーポン適用``` - クーポン適用無し、またはnanacoポイント以外のクーポン適用の場合、nullを返却 */
  CouponPointDiv get couponPointDiv;
  @override /* nanacoポイント付与ステータス ``` \"0\"：未送信 \"1\"：送信済 \"2\"：結果受信済（正常） \"3\"：結果受信済（エラー） \"4\"：再付与依頼 \"5\"：再付与依頼済 ``` */
  NanacoPointStatus get nanacoPointStatus;
  @override /* nanacoポイント付与結果受信日時 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'nanaco_point_result_datetime')
  int get epochNanacoPointResultDatetime;
  @override /* 配達便変更開始-無効フラグ文字列 ``` \"0\"：有効(済) \"1\"：無効(未) ``` */
  @StringToBooleanConverter()
  bool get disableDeliveryPlanChangeStartFlag;
  @override /* 受注作成時点の申込種別を返却する ``` \"0\"：非予約受注 \"1\"：予約のみ受注 \"2\"：予約含む受注 ``` */
  ReserveStatus get reserveStatus;
  @override /* キャンセル制限判定 - true：キャンセルを制限する - false：キャンセルを制限しない */
  bool get isOrderLimit;
  @override /* 総商品点数 */
  int get productCount;
  @override /* 受注商品ID順にソートされたJANごとの受注商品のリストを取得 */
  List<OrderDetailsListModel> get details;
  @override /* セット販売割引が成立している受注セットグループリストの取得 */
  List<OrderSetSaleGroupListModel> get orderSetSaleGroups;
  @override /* キャンセル料情報 */
  List<CancelPriceInformationModel> get cancels;
  @override /* 受注税額情報リストの返却 */
  List<TaxPriceInformationModel> get taxPrices;
  @override /* nanacoポイント明細を取得 */
  List<NanacoPointModel> get nanacoPointInformations;
  @override
  List<ProductModel> get products;
  @override /* 定期便注文判定 - true：定期便注文 - false：定期便注文でない */
  bool get isRegularShipmentOrder;
  @override /* 注文キャンセル可能判定 - true：キャンセル可能 - false：キャンセル不可 */
  bool get isEnableOrderCancel;
  @override /* 定期便割引額 */
  int get regularShipmentDiscountPrice;
  @override /* 商品総額（定期便割引後） */
  int? get productTotalPriceAfterRegularShipmentDiscount;
  @override /* 配送状況確認画面URL */
  String get deliveryStatusConfirmationScreenUrl;
  @override /* 個別配達料種別 */
  IndividualDeliveryPriceType get individualDeliveryPriceDiv;
  @override /* 個別配達料名 */
  String get individualDeliveryName;
  @override /* 個別配達料 */
  int get individualDeliveryPrice;
  @override /* 配送アンケートの回答有効期限内か否を判定 */
  bool get isBeforeDeliveryQuestionAnswerExpired;
  @override /* 配送アンケートURL */
  String get deliveryQuestionUrl;
  @override /* 定期便割引率 */
  int get regularShipmentDiscountRate;
  @override /* 定期便割引前合計金額 - total_price に定期便割引額を加算したものが返却される */
  int get regularShipmentDiscountBeforeTotalPrice;
  @override /* ステータス */
  OrderStatus get status;
  @override /* 定期便割引予定額 */
  int? get regularShipmentDiscountPlanPrice;
  @override /* 置き配切替済みフラグ */
  @StringToBooleanConverter()
  bool get switchedPackageDropFlag;
  @override /* 置き配場所 ``` \"1\"：玄関向かって右, \"2\"：玄関向かって左, \"3\"：インターフォン下, \"9\"：その他, null: 未指定```  */
  PackageDropPlace get packageDropPlace;
  @override /* 置き配場所の詳細 */
  String get packageDropPlaceDetail;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDetailsModelCopyWith<_$_OrderDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
