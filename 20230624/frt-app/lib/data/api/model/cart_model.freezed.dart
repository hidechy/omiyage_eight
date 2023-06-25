// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return _CartModel.fromJson(json);
}

/// @nodoc
mixin _$CartModel {
/* カートID */
  int get cartId => throw _privateConstructorUsedError; /* カート状態 */
  CartStatus get cartStatus => throw _privateConstructorUsedError; /* 店舗情報モデル */
  ShopModel get shop => throw _privateConstructorUsedError; /* メモ */
  String get memo =>
      throw _privateConstructorUsedError; /* 予約注文判定 - true：予約注文 - false：予約注文でない */
  bool get isReserveOrder =>
      throw _privateConstructorUsedError; /* 注文追加期間内判定 - true：注文追加期間内 - false：注文追加期間外 */
  bool get isAdditionalOrderTerm =>
      throw _privateConstructorUsedError; /* 予約締日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'reserve_closing_datetime')
  int get epochReserveClosingDatetime =>
      throw _privateConstructorUsedError; /* 配達不在者警告ポップアップ表示判定 - true：配達不在者警告ポップアップ表示要 - false：配達不在者警告ポップアップ表示不要 */
  bool get isDisplayAbsent =>
      throw _privateConstructorUsedError; /* 自宅外受取注文判定 - true：自宅外受取注文 - false：自宅外受取注文でない */
  bool get isPointReceiptOrder =>
      throw _privateConstructorUsedError; /* カート内商品リスト */
  List<CartDetailsModel> get cartDetails =>
      throw _privateConstructorUsedError; /* 警告メッセージリスト */
  @JsonKey(fromJson: _warnMessagesFromJson)
  List<WarnMessageModel> get warnMessages =>
      throw _privateConstructorUsedError; /* 売価変更あり判定 - true：売価変更あり - false：売価変更なし */
  bool get isDeliveryPriceChange =>
      throw _privateConstructorUsedError; /* 配送時間帯選択済み判定 - true：配送時間帯選択済み - false：配送時間帯未選択 */
  bool get isSelectedDeliveryTime =>
      throw _privateConstructorUsedError; /* 配送予定日時FROM　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_plan_from_datetime')
  int get epochDeliveryPlanFromDatetime =>
      throw _privateConstructorUsedError; /* 配送予定日時TO　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_plan_to_datetime')
  int get epochDeliveryPlanToDatetime =>
      throw _privateConstructorUsedError; /* 予約受注日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'reserve_delivery_datetime')
  int get epochReserveDeliveryDatetime =>
      throw _privateConstructorUsedError; /* 配送時間帯ID */
  String get deliveryTimeId =>
      throw _privateConstructorUsedError; /* 変更締め日時前判定 - true：変更締め日時前 - false：変更締め日時超過 */
  bool get isBeforeChangeClosingDatetime =>
      throw _privateConstructorUsedError; /* 便引き当て有効カート判定 - true：便引き当て有効 - false：便引き当て無効 */
  bool get isCartAllocationValid =>
      throw _privateConstructorUsedError; /* 配送便種別 - \"01\"：通常 \"02\"：通常(遠隔) \"03\"：店舗受取 \"04\"：置き配 \"05\"：7&iロッカー受取 \"06\"：店舗ロッカー受取 null：便未選択 - */
  CartFulfillmentType get fulfillmentType =>
      throw _privateConstructorUsedError; /* 配達住所モデル */
  CartDeliveryAddressModel? get deliveryAddress =>
      throw _privateConstructorUsedError; /* 受取地点名称 - 自宅受取の場合、nullを返却 */
  String get receiptPointName =>
      throw _privateConstructorUsedError; /* 位置ID - 自宅受取の場合、nullを返却 */
  String get receiptPointId =>
      throw _privateConstructorUsedError; /* 法人会員判定 - true：法人会員 - false：法人会員でない */
  bool get isCorporateCustomer =>
      throw _privateConstructorUsedError; /* - お買い物カゴ梱包の名称を取得する - \"0\"：レジ袋をご利用 \"1\"：エコｄｅバスケットをご利用 \"2\"：簡易包装をご利用 null：梱包方法未設定 */
  PackMaterialType get packMaterialType =>
      throw _privateConstructorUsedError; /* バスケット回収希望判定 - true：バスケット回収希望 - false：バスケット回収希望でない */
  bool get isRequestEcoBasketReturn =>
      throw _privateConstructorUsedError; /* レジ袋利用料 */
  int get shoppingBagPrice => throw _privateConstructorUsedError; /* 宛名 */
  String get nameOfReceipt =>
      throw _privateConstructorUsedError; /* 梱包手数料-徴収対象会員判定 - true：梱包手数料-徴収対象会員 - false：梱包手数料-徴収対象会員でない */
  bool get isPackPriceTargetCustomer =>
      throw _privateConstructorUsedError; /* 梱包まとめ方法種別 - \"0\"：個別注文 \"1\"：複数注文(注文毎に個別梱包する) \"2\"：複数注文(まとめて梱包する) */
  PackMethodType get packMethodType =>
      throw _privateConstructorUsedError; /* 梱包まとめ方法リスト */
  List<PackMethodInformationModel> get packMethodInformations =>
      throw _privateConstructorUsedError; /* 支払い方法 - \"1\"：代金引換 \"2\"：クレジットカード \"4\"：全額ポイント利用  null：未設定 - */
  PaymentMethodType get paymentMethod =>
      throw _privateConstructorUsedError; /* nanaco番号あり判定 - true：nanaco番号あり - false：nanaco番号なし */
  bool get hasNanacoNumber =>
      throw _privateConstructorUsedError; /* 今回限りカード使用判定 - true：今回限りカード使用 - false：今回限りカード使用でない */
  bool get isLimitedCreditCardUse =>
      throw _privateConstructorUsedError; /* クレジットカード下4桁 */
  String get creditCardLastFourDigits =>
      throw _privateConstructorUsedError; /* nanacoポイント利用判定 - true：nanacoポイントを利用する - false：nanacoポイントを利用しない */
  bool get isNanacoPointUse =>
      throw _privateConstructorUsedError; /* nanacoポイント利用額 */
  int get nanacoPointUsePoint =>
      throw _privateConstructorUsedError; /* 利用可能ポイント残高 */
  int get canUseNanacoPoint =>
      throw _privateConstructorUsedError; /* nanacoポイント利用種別 - \"1\"：全てのポイントを利用する \"2\"：nポイントを利用する \"9\"：ポイントを利用しない - */
  NanacoPointUseType get nanacoPointUseType =>
      throw _privateConstructorUsedError; /* クーポン名 */
  String get couponName =>
      throw _privateConstructorUsedError; /* 適用済みクーポン対象商品あり判定 - true：適用済みクーポン対象商品あり - false：適用済みクーポン対象商品なし */
  bool get hasDiscountCouponProduct =>
      throw _privateConstructorUsedError; /* クーポン利用判定 - true：クーポン利用 - false：クーポン未使用 */
  bool get isCouponUse => throw _privateConstructorUsedError; /* クーポンコード */
  String get couponCode =>
      throw _privateConstructorUsedError; /* 残り使用回数 - クーポン無し：null 残り使用回数なし：-1 残り使用回数あり：n */
  int? get couponUseRemainingNumber =>
      throw _privateConstructorUsedError; /* クーポン適用開始配達日 - ※YYYY-MM-DDThh:mm:ss+09:00 - クーポン無しの場合、nullを返却 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'coupon_use_delivery_start_date')
  int? get epochCouponUseDeliveryStartDate =>
      throw _privateConstructorUsedError; /* クーポン適用終了配達日 - ※YYYY-MM-DDThh:mm:ss+09:00 - クーポン無しの場合、nullを返却 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'coupon_use_delivery_finish_datetime')
  int? get epochCouponUseDeliveryFinishDatetime =>
      throw _privateConstructorUsedError; /* クーポン注意事項 - クーポン無しの場合、nullを返却 */
  String get couponGuide =>
      throw _privateConstructorUsedError; /* 欠品時連絡要判定 - true：欠品時連絡要 - false：欠品時連絡不要 */
  bool get needNoStockContact =>
      throw _privateConstructorUsedError; /* 非接触お届け利用可能判定 - true：非接触お届け利用可能 - false：非接触お届け利用不可 */
  bool get canUseNoContact =>
      throw _privateConstructorUsedError; /* メインメールアドレス */
  String get mainMailAddress =>
      throw _privateConstructorUsedError; /* サブメールアドレス */
  String get subMailAddress =>
      throw _privateConstructorUsedError; /* よりどりまとめて値引額 */
  int get totalMixMatchDiscountPrice =>
      throw _privateConstructorUsedError; /* セット販売等割引額 - セット値引、セット販売、予約セット割引のうち適用されている割引の割引額 */
  int get totalSetSaleDiscountPrice =>
      throw _privateConstructorUsedError; /* 点数まとめて値引額 */
  int get totalProgressiveDiscountPrice =>
      throw _privateConstructorUsedError; /* カード会員値引額 */
  int get totalCardMemberDiscountPrice =>
      throw _privateConstructorUsedError; /* クーポン指定商品値引額 */
  int get couponProductTotalPrice =>
      throw _privateConstructorUsedError; /* 売り切りセール値引額 */
  int get totalSellingOffDiscountPrice =>
      throw _privateConstructorUsedError; /* 配達料 */
  int get deliveryPrice =>
      throw _privateConstructorUsedError; /* 配達料キャンペーン適用中判定 - true：配達料キャンペーン適用中 - false：配達料キャンペーン適用中でない */
  bool get isDeliveryPriceCampaign =>
      throw _privateConstructorUsedError; /* 次段階までの差額 */
  int get nextDifferenceDeliveryPrice =>
      throw _privateConstructorUsedError; /* 次段階配達料 */
  int get nextDeliveryPrice =>
      throw _privateConstructorUsedError; /* 配達料無料までの差額 */
  int get differenceDeliveryFree =>
      throw _privateConstructorUsedError; /* 最安配達料 */
  int get maxDeliveryPrice =>
      throw _privateConstructorUsedError; /* 配達料種別 - \"0\"：通常配達料 \"1\"：個別配達料 \"2\"：固定配達料 \"3\"：エリア配送料 \"4\"：便別配送料 \"5\"：キャンペーン配送料 \"6\"：複数注文配送料 \"7\"：定期便配送料 - */
  DeliveryFeeType get deliveryType =>
      throw _privateConstructorUsedError; /* 個別配達料適用会員判定 - true：個別配達料適用会員 - false：個別配達料適用会員でない */
  bool get isIndividualDeliveryPriceTargetCustomer =>
      throw _privateConstructorUsedError; /* 個別配達料種別 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 - \"1\"：固定額 \"2\"：％割引 - */
  IndividualDeliveryPriceType get individualDeliveryPriceType =>
      throw _privateConstructorUsedError; /* 個別配達料名 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 */
  String get individualDeliveryName =>
      throw _privateConstructorUsedError; /* 個別配達料 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 */
  int? get individualDeliveryPrice =>
      throw _privateConstructorUsedError; /* 配送種別開始日 - ※YYYY-MM-DDThh:mm:ss+09:00 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'delivery_type_start_datetime')
  int? get epochDeliveryTypeStartDatetime =>
      throw _privateConstructorUsedError; /* 配送種別終了日 - ※YYYY-MM-DDThh:mm:ss+09:00 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'delivery_type_finish_datetime')
  int? get epochDeliveryTypeFinishDatetime =>
      throw _privateConstructorUsedError; /* 個別配達料割引率 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 */
  int? get individualDeliveryDiscountRate =>
      throw _privateConstructorUsedError; /* 梱包手数料 */
  int get packPrice => throw _privateConstructorUsedError; /* 代引手数料 */
  int get cashDeliveryPrice =>
      throw _privateConstructorUsedError; /* キャンセル料情報リスト*/
  List<CancelPriceInformationModel> get cancelPriceInformations =>
      throw _privateConstructorUsedError; /* アイワイカード割引額 */
  int get iyCardDiscountPrice =>
      throw _privateConstructorUsedError; /* クーポン買上総額値引額 */
  int get couponPrice => throw _privateConstructorUsedError; /* 合計金額(税込) */
  int get totalPrice => throw _privateConstructorUsedError; /* 合計金額(税抜) */
  int get noTaxTotalPrice => throw _privateConstructorUsedError; /* 受注税額情報リスト */
  List<TaxPriceInformationModel> get taxPriceInformations =>
      throw _privateConstructorUsedError; /* 支払額 合計金額から利用ポイントを引いた額 */
  int get paymentAmount => throw _privateConstructorUsedError; /* 商品券獲得枚数 */
  int get ticketCount => throw _privateConstructorUsedError; /* nanaco付与ポイント */
  int get totalNanacoPoints =>
      throw _privateConstructorUsedError; /* nanacoポイント明細リスト */
  List<NanacoPointModel> get nanacoPointInformations =>
      throw _privateConstructorUsedError; /* 適用nanacoボーナスポイント */
  int get bonusPoint =>
      throw _privateConstructorUsedError; /* クーポン「nanaco付与ポイントプラス」適用あり判定 - true：クーポン「nanaco付与ポイントプラス」適用あり - false：クーポン「nanaco付与ポイントプラス」適用なし */
  bool get isCouponNanacoPointPlus =>
      throw _privateConstructorUsedError; /* 適用nanacoクーポン付与ポイント */
  int get couponPoint =>
      throw _privateConstructorUsedError; /* クーポン「nanaco付与ポイントN倍」適用あり判定 - true：クーポン「nanaco付与ポイントN倍」適用あり false：クーポン「nanaco付与ポイントN倍」適用なし - */
  bool get isCouponNanacoPointTimes =>
      throw _privateConstructorUsedError; /* 非接触お届け利用判定 - true：非接触お届けを利用する false：非接触お届けを利用しない - */
  bool get isNoContact => throw _privateConstructorUsedError; /* 店舗-代引手数料 */
  int get shopCashDeliveryPrice =>
      throw _privateConstructorUsedError; /* 選択中のクレジットカード識別キー */
  String get creditCardInformationKey =>
      throw _privateConstructorUsedError; /* ロックアウト済みクレジットカードあり判定 - true：ロックアウト済みクレジットカードあり - false：ロックアウト済みクレジットカードなし */
  bool get hasLockoutCreditCard =>
      throw _privateConstructorUsedError; /* セキュリティコード入力欄判定 - security_code_input_flagと合わせ、どちらか1つでもtrueならばセキュリティコード入力欄を表示する。 - true：セキュリティコード入力欄要 false：セキュリティコード入力欄不要 - */
  bool get isDisplaySecurityCodeInput =>
      throw _privateConstructorUsedError; /* クレジットカード障害情報 */
  String get creditCardNewsText =>
      throw _privateConstructorUsedError; /* マスク・nanaco番号 */
  String get maskedNanacoNumber =>
      throw _privateConstructorUsedError; /* 受注状況 - \"3\"：未受注 \"4\"：変更中 - */
  CartOrderStatusType get orderStatus =>
      throw _privateConstructorUsedError; /* nanacoポイント利用対象額 ※「合計金額」-「代引手数料」 */
  int get nanacoPointUseTargetPrice =>
      throw _privateConstructorUsedError; /* 旧受注モデル */
  OldOrderModel? get oldOrder =>
      throw _privateConstructorUsedError; /* nanacoポイント付与対象判定 - true：nanacoポイント付与対象 false：nanacoポイント付与対象外 - */
  bool get isApplyNanacoPoint =>
      throw _privateConstructorUsedError; /* セブンカード割引orカード会員割引対象商品あり判定 - true：セブンカード割引orカード会員割引対象商品あり false：セブンカード割引orカード会員割引対象商品なし - */
  bool get hasApplyIyCardMemberDiscountProduct =>
      throw _privateConstructorUsedError; /* セブンCS認証種別 - \"0\"：未認証(セゾン以外も含む) \"1\"：クラブ・オン/ミレニアムID認証済み \"2\"：クラブ・オン/ミレニアムIDなし(セブンCS以外のセゾン) - */
  SevenCSCertificationType get sevenCsFlag =>
      throw _privateConstructorUsedError; /* 商品点数 */
  int get productCount =>
      throw _privateConstructorUsedError; /* 割引適用後の商品総額(税込) */
  int get productTotalPrice =>
      throw _privateConstructorUsedError; /* 割引適用前の商品総額(税込) */
  int get subProductTotalPrice =>
      throw _privateConstructorUsedError; /* 割引適用前の商品総額(税抜) */
  int get noTaxSubProductTotalPrice =>
      throw _privateConstructorUsedError; /* 割引適用後の商品総額(税抜) */
  int get noTaxProductTotalPrice =>
      throw _privateConstructorUsedError; /* nanacoポイント付与対象商品あり判定 - true：nanacoポイント付与対象商品あり - false：nanacoポイント付与対象商品なし */
  bool get hasNanacoPointProduct =>
      throw _privateConstructorUsedError; /* クーポン選択欄判定 - true：クーポン選択欄要 - false：クーポン選択欄不要 */
  bool get isDisplayCouponSelect =>
      throw _privateConstructorUsedError; /* 再配達料 */
  int get redeliveryPrice =>
      throw _privateConstructorUsedError; /* デビット／プリペイドカード払い警告判定 - true：デビット／プリペイドカード払い警告要 false：デビット／プリペイドカード払い警告不要 - */
  bool get isDebitPrepaidCardPayWarn =>
      throw _privateConstructorUsedError; /* nanaco番号認証済判定 - true：nanaco番号認証済 false：nanaco番号認証済でない - */
  bool get isNanacoNumberAuthentication =>
      throw _privateConstructorUsedError; /* nanacoポイント認証種別 - \"1\"：セキュリティコード認証 \"2\"：パスワード認証 - */
  NanacoConfirmType get nanacoConfirmType =>
      throw _privateConstructorUsedError; /* 予約ステータス - \"0\"：非予約受注 \"1\"：予約のみ受注 \"2\"：予約含む受注 - */
  CartReserveStatusType get reserveStatus =>
      throw _privateConstructorUsedError; /* 予約配達可能日リスト　※yyyyMMdd */
  List<String> get reserveDeliveryDates =>
      throw _privateConstructorUsedError; /* 定期便申込カート判定 - true：定期便申込カート false：定期便申込カートでない - */
  bool get isRegularShipmentApplyCart =>
      throw _privateConstructorUsedError; /* 定期便割引率 - 定期便申込カート、定期便受注のどちらでもない場合、nullを返却 */
  int? get regularShipmentDiscountRate =>
      throw _privateConstructorUsedError; /* 定期便割引額 - 定期便申込カート、定期便受注のどちらでもない場合、nullを返却 */
  int? get regularShipmentDiscountPrice =>
      throw _privateConstructorUsedError; /* 定期便配達曜日区分 - 定期便申込カート以外の場合、nullを返却 -`` \"01_MON\":月曜日 \"02_TUE\":火曜日 \"03_WED\":水曜日 \"04_THU\":木曜日 \"05_FRI\":金曜日 \"06_SAT\":土曜日 \"07_SUN\":日曜日 -`` */
  RegularShipmentDeliveryWeekDiv get regularShipmentDeliveryWeekDiv =>
      throw _privateConstructorUsedError; /* 定期便配送日 - ※yyyyMMdd - 定期便申込カート以外の場合、nullを返却 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'regular_shipment_delivery_date')
  int? get epochRegularShipmentDeliveryDate =>
      throw _privateConstructorUsedError; /* 定期便配送時間From - ※hh:mm - 定期便申込カート以外の場合、nullを返却 */
  String? get regularShipmentDeliveryStartTime =>
      throw _privateConstructorUsedError; /* 定期便配送時間To - ※hh:mm - 定期便申込カート以外の場合、nullを返却 */
  String? get regularShipmentDeliveryFinishTime =>
      throw _privateConstructorUsedError; /* 定期便注文判定 - true：定期便注文 false：定期便注文でない - */
  bool get isRegularShipmentOrder =>
      throw _privateConstructorUsedError; /* 商品総額（定期便割引後） - 定期便申込カート、定期便受注のどちらでもない場合、nullを返却 */
  int? get productTotalPriceAfterRegularShipmentDiscount =>
      throw _privateConstructorUsedError; /* 医薬品事前購入確認承認判定 - true：承認済み false：未承認 - */
  bool get isConsentMedicine =>
      throw _privateConstructorUsedError; /* アカチャンホンポ事前承認判定 - true：承認済み false：未承認 - */
  bool get isConsentAkachanHonpo =>
      throw _privateConstructorUsedError; /* 早期キャンセル締め注文判定 - true：早期キャンセル締め注文である false：早期キャンセル締め注文ではない - */
  bool get isEarlyCancelOrderClosing =>
      throw _privateConstructorUsedError; /* 注文キャンセル締日時を計算し返却 - ※yyyy-MM-ddTHH:mm:ss+09:00 - 便未選択の場合、nullを返却 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'cancel_order_closing_datetime')
  int? get epochCancelOrderClosingDatetime =>
      throw _privateConstructorUsedError; /* 見学カートフラグ - \"1\"：見学カートである - \"0\"：見学カートではない */
  @StringToBooleanConverter()
  bool get visitorCartFlag =>
      throw _privateConstructorUsedError; /* みなし便設定カートフラグ - \"1\"：みなし便設定カートである - \"0\"：みなし便設定カートではない */
  @StringToBooleanConverter()
  bool get deemedDeliveryCartFlag =>
      throw _privateConstructorUsedError; /* 置き配場所 - 置き配利用以外の場合、nullを返却 - \"1\"：玄関向かって右 \"2\"：玄関向かって左 \"3\"：インターフォン下 \"9\"：その他 - */
  PackageDropPlace get packageDropPlace =>
      throw _privateConstructorUsedError; /* 置き配場所詳細 - 置き配利用以外の場合、nullを返却 */
  String get packageDropPlaceDetail =>
      throw _privateConstructorUsedError; /* 更新日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'update_datetime')
  int get epochUpdateDatetime =>
      throw _privateConstructorUsedError; /* 置き配切替済みフラグ - \"0\"：切替未設定 \"1\"：切替設定済み - */
  @StringToBooleanConverter()
  bool get switchedPackageDropFlag =>
      throw _privateConstructorUsedError; /* 不在置き配切替可否フラグ  - \"0\"：不在置き配不可 \"1\"：不在置き配可能 - */
  @StringToBooleanConverter()
  bool get switchablePackageDropFlag =>
      throw _privateConstructorUsedError; /* カートクリア日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'cart_delete_datetime')
  int get epochCartDeleteDatetime =>
      throw _privateConstructorUsedError; /* カートクリア残時間, HH:MM:SS_BFFADD_ カートクリア日時が取得できない場合、またはカートクリア日時が過去の場合はnullを返却 */
  String get remainingTimeUntilCartDelete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res, CartModel>;
  @useResult
  $Res call(
      {int cartId,
      CartStatus cartStatus,
      ShopModel shop,
      String memo,
      bool isReserveOrder,
      bool isAdditionalOrderTerm,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'reserve_closing_datetime')
          int epochReserveClosingDatetime,
      bool isDisplayAbsent,
      bool isPointReceiptOrder,
      List<CartDetailsModel> cartDetails,
      @JsonKey(fromJson: _warnMessagesFromJson)
          List<WarnMessageModel> warnMessages,
      bool isDeliveryPriceChange,
      bool isSelectedDeliveryTime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_from_datetime')
          int epochDeliveryPlanFromDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_to_datetime')
          int epochDeliveryPlanToDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'reserve_delivery_datetime')
          int epochReserveDeliveryDatetime,
      String deliveryTimeId,
      bool isBeforeChangeClosingDatetime,
      bool isCartAllocationValid,
      CartFulfillmentType fulfillmentType,
      CartDeliveryAddressModel? deliveryAddress,
      String receiptPointName,
      String receiptPointId,
      bool isCorporateCustomer,
      PackMaterialType packMaterialType,
      bool isRequestEcoBasketReturn,
      int shoppingBagPrice,
      String nameOfReceipt,
      bool isPackPriceTargetCustomer,
      PackMethodType packMethodType,
      List<PackMethodInformationModel> packMethodInformations,
      PaymentMethodType paymentMethod,
      bool hasNanacoNumber,
      bool isLimitedCreditCardUse,
      String creditCardLastFourDigits,
      bool isNanacoPointUse,
      int nanacoPointUsePoint,
      int canUseNanacoPoint,
      NanacoPointUseType nanacoPointUseType,
      String couponName,
      bool hasDiscountCouponProduct,
      bool isCouponUse,
      String couponCode,
      int? couponUseRemainingNumber,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'coupon_use_delivery_start_date')
          int? epochCouponUseDeliveryStartDate,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'coupon_use_delivery_finish_datetime')
          int? epochCouponUseDeliveryFinishDatetime,
      String couponGuide,
      bool needNoStockContact,
      bool canUseNoContact,
      String mainMailAddress,
      String subMailAddress,
      int totalMixMatchDiscountPrice,
      int totalSetSaleDiscountPrice,
      int totalProgressiveDiscountPrice,
      int totalCardMemberDiscountPrice,
      int couponProductTotalPrice,
      int totalSellingOffDiscountPrice,
      int deliveryPrice,
      bool isDeliveryPriceCampaign,
      int nextDifferenceDeliveryPrice,
      int nextDeliveryPrice,
      int differenceDeliveryFree,
      int maxDeliveryPrice,
      DeliveryFeeType deliveryType,
      bool isIndividualDeliveryPriceTargetCustomer,
      IndividualDeliveryPriceType individualDeliveryPriceType,
      String individualDeliveryName,
      int? individualDeliveryPrice,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'delivery_type_start_datetime')
          int? epochDeliveryTypeStartDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'delivery_type_finish_datetime')
          int? epochDeliveryTypeFinishDatetime,
      int? individualDeliveryDiscountRate,
      int packPrice,
      int cashDeliveryPrice,
      List<CancelPriceInformationModel> cancelPriceInformations,
      int iyCardDiscountPrice,
      int couponPrice,
      int totalPrice,
      int noTaxTotalPrice,
      List<TaxPriceInformationModel> taxPriceInformations,
      int paymentAmount,
      int ticketCount,
      int totalNanacoPoints,
      List<NanacoPointModel> nanacoPointInformations,
      int bonusPoint,
      bool isCouponNanacoPointPlus,
      int couponPoint,
      bool isCouponNanacoPointTimes,
      bool isNoContact,
      int shopCashDeliveryPrice,
      String creditCardInformationKey,
      bool hasLockoutCreditCard,
      bool isDisplaySecurityCodeInput,
      String creditCardNewsText,
      String maskedNanacoNumber,
      CartOrderStatusType orderStatus,
      int nanacoPointUseTargetPrice,
      OldOrderModel? oldOrder,
      bool isApplyNanacoPoint,
      bool hasApplyIyCardMemberDiscountProduct,
      SevenCSCertificationType sevenCsFlag,
      int productCount,
      int productTotalPrice,
      int subProductTotalPrice,
      int noTaxSubProductTotalPrice,
      int noTaxProductTotalPrice,
      bool hasNanacoPointProduct,
      bool isDisplayCouponSelect,
      int redeliveryPrice,
      bool isDebitPrepaidCardPayWarn,
      bool isNanacoNumberAuthentication,
      NanacoConfirmType nanacoConfirmType,
      CartReserveStatusType reserveStatus,
      List<String> reserveDeliveryDates,
      bool isRegularShipmentApplyCart,
      int? regularShipmentDiscountRate,
      int? regularShipmentDiscountPrice,
      RegularShipmentDeliveryWeekDiv regularShipmentDeliveryWeekDiv,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'regular_shipment_delivery_date')
          int? epochRegularShipmentDeliveryDate,
      String? regularShipmentDeliveryStartTime,
      String? regularShipmentDeliveryFinishTime,
      bool isRegularShipmentOrder,
      int? productTotalPriceAfterRegularShipmentDiscount,
      bool isConsentMedicine,
      bool isConsentAkachanHonpo,
      bool isEarlyCancelOrderClosing,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'cancel_order_closing_datetime')
          int? epochCancelOrderClosingDatetime,
      @StringToBooleanConverter()
          bool visitorCartFlag,
      @StringToBooleanConverter()
          bool deemedDeliveryCartFlag,
      PackageDropPlace packageDropPlace,
      String packageDropPlaceDetail,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'update_datetime')
          int epochUpdateDatetime,
      @StringToBooleanConverter()
          bool switchedPackageDropFlag,
      @StringToBooleanConverter()
          bool switchablePackageDropFlag,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'cart_delete_datetime')
          int epochCartDeleteDatetime,
      String remainingTimeUntilCartDelete});

  $ShopModelCopyWith<$Res> get shop;
  $CartDeliveryAddressModelCopyWith<$Res>? get deliveryAddress;
  $OldOrderModelCopyWith<$Res>? get oldOrder;
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res, $Val extends CartModel>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
    Object? cartStatus = null,
    Object? shop = null,
    Object? memo = null,
    Object? isReserveOrder = null,
    Object? isAdditionalOrderTerm = null,
    Object? epochReserveClosingDatetime = null,
    Object? isDisplayAbsent = null,
    Object? isPointReceiptOrder = null,
    Object? cartDetails = null,
    Object? warnMessages = null,
    Object? isDeliveryPriceChange = null,
    Object? isSelectedDeliveryTime = null,
    Object? epochDeliveryPlanFromDatetime = null,
    Object? epochDeliveryPlanToDatetime = null,
    Object? epochReserveDeliveryDatetime = null,
    Object? deliveryTimeId = null,
    Object? isBeforeChangeClosingDatetime = null,
    Object? isCartAllocationValid = null,
    Object? fulfillmentType = null,
    Object? deliveryAddress = freezed,
    Object? receiptPointName = null,
    Object? receiptPointId = null,
    Object? isCorporateCustomer = null,
    Object? packMaterialType = null,
    Object? isRequestEcoBasketReturn = null,
    Object? shoppingBagPrice = null,
    Object? nameOfReceipt = null,
    Object? isPackPriceTargetCustomer = null,
    Object? packMethodType = null,
    Object? packMethodInformations = null,
    Object? paymentMethod = null,
    Object? hasNanacoNumber = null,
    Object? isLimitedCreditCardUse = null,
    Object? creditCardLastFourDigits = null,
    Object? isNanacoPointUse = null,
    Object? nanacoPointUsePoint = null,
    Object? canUseNanacoPoint = null,
    Object? nanacoPointUseType = null,
    Object? couponName = null,
    Object? hasDiscountCouponProduct = null,
    Object? isCouponUse = null,
    Object? couponCode = null,
    Object? couponUseRemainingNumber = freezed,
    Object? epochCouponUseDeliveryStartDate = freezed,
    Object? epochCouponUseDeliveryFinishDatetime = freezed,
    Object? couponGuide = null,
    Object? needNoStockContact = null,
    Object? canUseNoContact = null,
    Object? mainMailAddress = null,
    Object? subMailAddress = null,
    Object? totalMixMatchDiscountPrice = null,
    Object? totalSetSaleDiscountPrice = null,
    Object? totalProgressiveDiscountPrice = null,
    Object? totalCardMemberDiscountPrice = null,
    Object? couponProductTotalPrice = null,
    Object? totalSellingOffDiscountPrice = null,
    Object? deliveryPrice = null,
    Object? isDeliveryPriceCampaign = null,
    Object? nextDifferenceDeliveryPrice = null,
    Object? nextDeliveryPrice = null,
    Object? differenceDeliveryFree = null,
    Object? maxDeliveryPrice = null,
    Object? deliveryType = null,
    Object? isIndividualDeliveryPriceTargetCustomer = null,
    Object? individualDeliveryPriceType = null,
    Object? individualDeliveryName = null,
    Object? individualDeliveryPrice = freezed,
    Object? epochDeliveryTypeStartDatetime = freezed,
    Object? epochDeliveryTypeFinishDatetime = freezed,
    Object? individualDeliveryDiscountRate = freezed,
    Object? packPrice = null,
    Object? cashDeliveryPrice = null,
    Object? cancelPriceInformations = null,
    Object? iyCardDiscountPrice = null,
    Object? couponPrice = null,
    Object? totalPrice = null,
    Object? noTaxTotalPrice = null,
    Object? taxPriceInformations = null,
    Object? paymentAmount = null,
    Object? ticketCount = null,
    Object? totalNanacoPoints = null,
    Object? nanacoPointInformations = null,
    Object? bonusPoint = null,
    Object? isCouponNanacoPointPlus = null,
    Object? couponPoint = null,
    Object? isCouponNanacoPointTimes = null,
    Object? isNoContact = null,
    Object? shopCashDeliveryPrice = null,
    Object? creditCardInformationKey = null,
    Object? hasLockoutCreditCard = null,
    Object? isDisplaySecurityCodeInput = null,
    Object? creditCardNewsText = null,
    Object? maskedNanacoNumber = null,
    Object? orderStatus = null,
    Object? nanacoPointUseTargetPrice = null,
    Object? oldOrder = freezed,
    Object? isApplyNanacoPoint = null,
    Object? hasApplyIyCardMemberDiscountProduct = null,
    Object? sevenCsFlag = null,
    Object? productCount = null,
    Object? productTotalPrice = null,
    Object? subProductTotalPrice = null,
    Object? noTaxSubProductTotalPrice = null,
    Object? noTaxProductTotalPrice = null,
    Object? hasNanacoPointProduct = null,
    Object? isDisplayCouponSelect = null,
    Object? redeliveryPrice = null,
    Object? isDebitPrepaidCardPayWarn = null,
    Object? isNanacoNumberAuthentication = null,
    Object? nanacoConfirmType = null,
    Object? reserveStatus = null,
    Object? reserveDeliveryDates = null,
    Object? isRegularShipmentApplyCart = null,
    Object? regularShipmentDiscountRate = freezed,
    Object? regularShipmentDiscountPrice = freezed,
    Object? regularShipmentDeliveryWeekDiv = null,
    Object? epochRegularShipmentDeliveryDate = freezed,
    Object? regularShipmentDeliveryStartTime = freezed,
    Object? regularShipmentDeliveryFinishTime = freezed,
    Object? isRegularShipmentOrder = null,
    Object? productTotalPriceAfterRegularShipmentDiscount = freezed,
    Object? isConsentMedicine = null,
    Object? isConsentAkachanHonpo = null,
    Object? isEarlyCancelOrderClosing = null,
    Object? epochCancelOrderClosingDatetime = freezed,
    Object? visitorCartFlag = null,
    Object? deemedDeliveryCartFlag = null,
    Object? packageDropPlace = null,
    Object? packageDropPlaceDetail = null,
    Object? epochUpdateDatetime = null,
    Object? switchedPackageDropFlag = null,
    Object? switchablePackageDropFlag = null,
    Object? epochCartDeleteDatetime = null,
    Object? remainingTimeUntilCartDelete = null,
  }) {
    return _then(_value.copyWith(
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as int,
      cartStatus: null == cartStatus
          ? _value.cartStatus
          : cartStatus // ignore: cast_nullable_to_non_nullable
              as CartStatus,
      shop: null == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopModel,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      isReserveOrder: null == isReserveOrder
          ? _value.isReserveOrder
          : isReserveOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdditionalOrderTerm: null == isAdditionalOrderTerm
          ? _value.isAdditionalOrderTerm
          : isAdditionalOrderTerm // ignore: cast_nullable_to_non_nullable
              as bool,
      epochReserveClosingDatetime: null == epochReserveClosingDatetime
          ? _value.epochReserveClosingDatetime
          : epochReserveClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      isDisplayAbsent: null == isDisplayAbsent
          ? _value.isDisplayAbsent
          : isDisplayAbsent // ignore: cast_nullable_to_non_nullable
              as bool,
      isPointReceiptOrder: null == isPointReceiptOrder
          ? _value.isPointReceiptOrder
          : isPointReceiptOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      cartDetails: null == cartDetails
          ? _value.cartDetails
          : cartDetails // ignore: cast_nullable_to_non_nullable
              as List<CartDetailsModel>,
      warnMessages: null == warnMessages
          ? _value.warnMessages
          : warnMessages // ignore: cast_nullable_to_non_nullable
              as List<WarnMessageModel>,
      isDeliveryPriceChange: null == isDeliveryPriceChange
          ? _value.isDeliveryPriceChange
          : isDeliveryPriceChange // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelectedDeliveryTime: null == isSelectedDeliveryTime
          ? _value.isSelectedDeliveryTime
          : isSelectedDeliveryTime // ignore: cast_nullable_to_non_nullable
              as bool,
      epochDeliveryPlanFromDatetime: null == epochDeliveryPlanFromDatetime
          ? _value.epochDeliveryPlanFromDatetime
          : epochDeliveryPlanFromDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochDeliveryPlanToDatetime: null == epochDeliveryPlanToDatetime
          ? _value.epochDeliveryPlanToDatetime
          : epochDeliveryPlanToDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochReserveDeliveryDatetime: null == epochReserveDeliveryDatetime
          ? _value.epochReserveDeliveryDatetime
          : epochReserveDeliveryDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryTimeId: null == deliveryTimeId
          ? _value.deliveryTimeId
          : deliveryTimeId // ignore: cast_nullable_to_non_nullable
              as String,
      isBeforeChangeClosingDatetime: null == isBeforeChangeClosingDatetime
          ? _value.isBeforeChangeClosingDatetime
          : isBeforeChangeClosingDatetime // ignore: cast_nullable_to_non_nullable
              as bool,
      isCartAllocationValid: null == isCartAllocationValid
          ? _value.isCartAllocationValid
          : isCartAllocationValid // ignore: cast_nullable_to_non_nullable
              as bool,
      fulfillmentType: null == fulfillmentType
          ? _value.fulfillmentType
          : fulfillmentType // ignore: cast_nullable_to_non_nullable
              as CartFulfillmentType,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as CartDeliveryAddressModel?,
      receiptPointName: null == receiptPointName
          ? _value.receiptPointName
          : receiptPointName // ignore: cast_nullable_to_non_nullable
              as String,
      receiptPointId: null == receiptPointId
          ? _value.receiptPointId
          : receiptPointId // ignore: cast_nullable_to_non_nullable
              as String,
      isCorporateCustomer: null == isCorporateCustomer
          ? _value.isCorporateCustomer
          : isCorporateCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      packMaterialType: null == packMaterialType
          ? _value.packMaterialType
          : packMaterialType // ignore: cast_nullable_to_non_nullable
              as PackMaterialType,
      isRequestEcoBasketReturn: null == isRequestEcoBasketReturn
          ? _value.isRequestEcoBasketReturn
          : isRequestEcoBasketReturn // ignore: cast_nullable_to_non_nullable
              as bool,
      shoppingBagPrice: null == shoppingBagPrice
          ? _value.shoppingBagPrice
          : shoppingBagPrice // ignore: cast_nullable_to_non_nullable
              as int,
      nameOfReceipt: null == nameOfReceipt
          ? _value.nameOfReceipt
          : nameOfReceipt // ignore: cast_nullable_to_non_nullable
              as String,
      isPackPriceTargetCustomer: null == isPackPriceTargetCustomer
          ? _value.isPackPriceTargetCustomer
          : isPackPriceTargetCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      packMethodType: null == packMethodType
          ? _value.packMethodType
          : packMethodType // ignore: cast_nullable_to_non_nullable
              as PackMethodType,
      packMethodInformations: null == packMethodInformations
          ? _value.packMethodInformations
          : packMethodInformations // ignore: cast_nullable_to_non_nullable
              as List<PackMethodInformationModel>,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodType,
      hasNanacoNumber: null == hasNanacoNumber
          ? _value.hasNanacoNumber
          : hasNanacoNumber // ignore: cast_nullable_to_non_nullable
              as bool,
      isLimitedCreditCardUse: null == isLimitedCreditCardUse
          ? _value.isLimitedCreditCardUse
          : isLimitedCreditCardUse // ignore: cast_nullable_to_non_nullable
              as bool,
      creditCardLastFourDigits: null == creditCardLastFourDigits
          ? _value.creditCardLastFourDigits
          : creditCardLastFourDigits // ignore: cast_nullable_to_non_nullable
              as String,
      isNanacoPointUse: null == isNanacoPointUse
          ? _value.isNanacoPointUse
          : isNanacoPointUse // ignore: cast_nullable_to_non_nullable
              as bool,
      nanacoPointUsePoint: null == nanacoPointUsePoint
          ? _value.nanacoPointUsePoint
          : nanacoPointUsePoint // ignore: cast_nullable_to_non_nullable
              as int,
      canUseNanacoPoint: null == canUseNanacoPoint
          ? _value.canUseNanacoPoint
          : canUseNanacoPoint // ignore: cast_nullable_to_non_nullable
              as int,
      nanacoPointUseType: null == nanacoPointUseType
          ? _value.nanacoPointUseType
          : nanacoPointUseType // ignore: cast_nullable_to_non_nullable
              as NanacoPointUseType,
      couponName: null == couponName
          ? _value.couponName
          : couponName // ignore: cast_nullable_to_non_nullable
              as String,
      hasDiscountCouponProduct: null == hasDiscountCouponProduct
          ? _value.hasDiscountCouponProduct
          : hasDiscountCouponProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isCouponUse: null == isCouponUse
          ? _value.isCouponUse
          : isCouponUse // ignore: cast_nullable_to_non_nullable
              as bool,
      couponCode: null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      couponUseRemainingNumber: freezed == couponUseRemainingNumber
          ? _value.couponUseRemainingNumber
          : couponUseRemainingNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      epochCouponUseDeliveryStartDate: freezed ==
              epochCouponUseDeliveryStartDate
          ? _value.epochCouponUseDeliveryStartDate
          : epochCouponUseDeliveryStartDate // ignore: cast_nullable_to_non_nullable
              as int?,
      epochCouponUseDeliveryFinishDatetime: freezed ==
              epochCouponUseDeliveryFinishDatetime
          ? _value.epochCouponUseDeliveryFinishDatetime
          : epochCouponUseDeliveryFinishDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      couponGuide: null == couponGuide
          ? _value.couponGuide
          : couponGuide // ignore: cast_nullable_to_non_nullable
              as String,
      needNoStockContact: null == needNoStockContact
          ? _value.needNoStockContact
          : needNoStockContact // ignore: cast_nullable_to_non_nullable
              as bool,
      canUseNoContact: null == canUseNoContact
          ? _value.canUseNoContact
          : canUseNoContact // ignore: cast_nullable_to_non_nullable
              as bool,
      mainMailAddress: null == mainMailAddress
          ? _value.mainMailAddress
          : mainMailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      subMailAddress: null == subMailAddress
          ? _value.subMailAddress
          : subMailAddress // ignore: cast_nullable_to_non_nullable
              as String,
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
      totalCardMemberDiscountPrice: null == totalCardMemberDiscountPrice
          ? _value.totalCardMemberDiscountPrice
          : totalCardMemberDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      couponProductTotalPrice: null == couponProductTotalPrice
          ? _value.couponProductTotalPrice
          : couponProductTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalSellingOffDiscountPrice: null == totalSellingOffDiscountPrice
          ? _value.totalSellingOffDiscountPrice
          : totalSellingOffDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryPrice: null == deliveryPrice
          ? _value.deliveryPrice
          : deliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      isDeliveryPriceCampaign: null == isDeliveryPriceCampaign
          ? _value.isDeliveryPriceCampaign
          : isDeliveryPriceCampaign // ignore: cast_nullable_to_non_nullable
              as bool,
      nextDifferenceDeliveryPrice: null == nextDifferenceDeliveryPrice
          ? _value.nextDifferenceDeliveryPrice
          : nextDifferenceDeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      nextDeliveryPrice: null == nextDeliveryPrice
          ? _value.nextDeliveryPrice
          : nextDeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      differenceDeliveryFree: null == differenceDeliveryFree
          ? _value.differenceDeliveryFree
          : differenceDeliveryFree // ignore: cast_nullable_to_non_nullable
              as int,
      maxDeliveryPrice: null == maxDeliveryPrice
          ? _value.maxDeliveryPrice
          : maxDeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as DeliveryFeeType,
      isIndividualDeliveryPriceTargetCustomer: null ==
              isIndividualDeliveryPriceTargetCustomer
          ? _value.isIndividualDeliveryPriceTargetCustomer
          : isIndividualDeliveryPriceTargetCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      individualDeliveryPriceType: null == individualDeliveryPriceType
          ? _value.individualDeliveryPriceType
          : individualDeliveryPriceType // ignore: cast_nullable_to_non_nullable
              as IndividualDeliveryPriceType,
      individualDeliveryName: null == individualDeliveryName
          ? _value.individualDeliveryName
          : individualDeliveryName // ignore: cast_nullable_to_non_nullable
              as String,
      individualDeliveryPrice: freezed == individualDeliveryPrice
          ? _value.individualDeliveryPrice
          : individualDeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      epochDeliveryTypeStartDatetime: freezed == epochDeliveryTypeStartDatetime
          ? _value.epochDeliveryTypeStartDatetime
          : epochDeliveryTypeStartDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      epochDeliveryTypeFinishDatetime: freezed ==
              epochDeliveryTypeFinishDatetime
          ? _value.epochDeliveryTypeFinishDatetime
          : epochDeliveryTypeFinishDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      individualDeliveryDiscountRate: freezed == individualDeliveryDiscountRate
          ? _value.individualDeliveryDiscountRate
          : individualDeliveryDiscountRate // ignore: cast_nullable_to_non_nullable
              as int?,
      packPrice: null == packPrice
          ? _value.packPrice
          : packPrice // ignore: cast_nullable_to_non_nullable
              as int,
      cashDeliveryPrice: null == cashDeliveryPrice
          ? _value.cashDeliveryPrice
          : cashDeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      cancelPriceInformations: null == cancelPriceInformations
          ? _value.cancelPriceInformations
          : cancelPriceInformations // ignore: cast_nullable_to_non_nullable
              as List<CancelPriceInformationModel>,
      iyCardDiscountPrice: null == iyCardDiscountPrice
          ? _value.iyCardDiscountPrice
          : iyCardDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      couponPrice: null == couponPrice
          ? _value.couponPrice
          : couponPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      noTaxTotalPrice: null == noTaxTotalPrice
          ? _value.noTaxTotalPrice
          : noTaxTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      taxPriceInformations: null == taxPriceInformations
          ? _value.taxPriceInformations
          : taxPriceInformations // ignore: cast_nullable_to_non_nullable
              as List<TaxPriceInformationModel>,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as int,
      ticketCount: null == ticketCount
          ? _value.ticketCount
          : ticketCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalNanacoPoints: null == totalNanacoPoints
          ? _value.totalNanacoPoints
          : totalNanacoPoints // ignore: cast_nullable_to_non_nullable
              as int,
      nanacoPointInformations: null == nanacoPointInformations
          ? _value.nanacoPointInformations
          : nanacoPointInformations // ignore: cast_nullable_to_non_nullable
              as List<NanacoPointModel>,
      bonusPoint: null == bonusPoint
          ? _value.bonusPoint
          : bonusPoint // ignore: cast_nullable_to_non_nullable
              as int,
      isCouponNanacoPointPlus: null == isCouponNanacoPointPlus
          ? _value.isCouponNanacoPointPlus
          : isCouponNanacoPointPlus // ignore: cast_nullable_to_non_nullable
              as bool,
      couponPoint: null == couponPoint
          ? _value.couponPoint
          : couponPoint // ignore: cast_nullable_to_non_nullable
              as int,
      isCouponNanacoPointTimes: null == isCouponNanacoPointTimes
          ? _value.isCouponNanacoPointTimes
          : isCouponNanacoPointTimes // ignore: cast_nullable_to_non_nullable
              as bool,
      isNoContact: null == isNoContact
          ? _value.isNoContact
          : isNoContact // ignore: cast_nullable_to_non_nullable
              as bool,
      shopCashDeliveryPrice: null == shopCashDeliveryPrice
          ? _value.shopCashDeliveryPrice
          : shopCashDeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      creditCardInformationKey: null == creditCardInformationKey
          ? _value.creditCardInformationKey
          : creditCardInformationKey // ignore: cast_nullable_to_non_nullable
              as String,
      hasLockoutCreditCard: null == hasLockoutCreditCard
          ? _value.hasLockoutCreditCard
          : hasLockoutCreditCard // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisplaySecurityCodeInput: null == isDisplaySecurityCodeInput
          ? _value.isDisplaySecurityCodeInput
          : isDisplaySecurityCodeInput // ignore: cast_nullable_to_non_nullable
              as bool,
      creditCardNewsText: null == creditCardNewsText
          ? _value.creditCardNewsText
          : creditCardNewsText // ignore: cast_nullable_to_non_nullable
              as String,
      maskedNanacoNumber: null == maskedNanacoNumber
          ? _value.maskedNanacoNumber
          : maskedNanacoNumber // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as CartOrderStatusType,
      nanacoPointUseTargetPrice: null == nanacoPointUseTargetPrice
          ? _value.nanacoPointUseTargetPrice
          : nanacoPointUseTargetPrice // ignore: cast_nullable_to_non_nullable
              as int,
      oldOrder: freezed == oldOrder
          ? _value.oldOrder
          : oldOrder // ignore: cast_nullable_to_non_nullable
              as OldOrderModel?,
      isApplyNanacoPoint: null == isApplyNanacoPoint
          ? _value.isApplyNanacoPoint
          : isApplyNanacoPoint // ignore: cast_nullable_to_non_nullable
              as bool,
      hasApplyIyCardMemberDiscountProduct: null ==
              hasApplyIyCardMemberDiscountProduct
          ? _value.hasApplyIyCardMemberDiscountProduct
          : hasApplyIyCardMemberDiscountProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      sevenCsFlag: null == sevenCsFlag
          ? _value.sevenCsFlag
          : sevenCsFlag // ignore: cast_nullable_to_non_nullable
              as SevenCSCertificationType,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      productTotalPrice: null == productTotalPrice
          ? _value.productTotalPrice
          : productTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      subProductTotalPrice: null == subProductTotalPrice
          ? _value.subProductTotalPrice
          : subProductTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      noTaxSubProductTotalPrice: null == noTaxSubProductTotalPrice
          ? _value.noTaxSubProductTotalPrice
          : noTaxSubProductTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      noTaxProductTotalPrice: null == noTaxProductTotalPrice
          ? _value.noTaxProductTotalPrice
          : noTaxProductTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      hasNanacoPointProduct: null == hasNanacoPointProduct
          ? _value.hasNanacoPointProduct
          : hasNanacoPointProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisplayCouponSelect: null == isDisplayCouponSelect
          ? _value.isDisplayCouponSelect
          : isDisplayCouponSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      redeliveryPrice: null == redeliveryPrice
          ? _value.redeliveryPrice
          : redeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      isDebitPrepaidCardPayWarn: null == isDebitPrepaidCardPayWarn
          ? _value.isDebitPrepaidCardPayWarn
          : isDebitPrepaidCardPayWarn // ignore: cast_nullable_to_non_nullable
              as bool,
      isNanacoNumberAuthentication: null == isNanacoNumberAuthentication
          ? _value.isNanacoNumberAuthentication
          : isNanacoNumberAuthentication // ignore: cast_nullable_to_non_nullable
              as bool,
      nanacoConfirmType: null == nanacoConfirmType
          ? _value.nanacoConfirmType
          : nanacoConfirmType // ignore: cast_nullable_to_non_nullable
              as NanacoConfirmType,
      reserveStatus: null == reserveStatus
          ? _value.reserveStatus
          : reserveStatus // ignore: cast_nullable_to_non_nullable
              as CartReserveStatusType,
      reserveDeliveryDates: null == reserveDeliveryDates
          ? _value.reserveDeliveryDates
          : reserveDeliveryDates // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isRegularShipmentApplyCart: null == isRegularShipmentApplyCart
          ? _value.isRegularShipmentApplyCart
          : isRegularShipmentApplyCart // ignore: cast_nullable_to_non_nullable
              as bool,
      regularShipmentDiscountRate: freezed == regularShipmentDiscountRate
          ? _value.regularShipmentDiscountRate
          : regularShipmentDiscountRate // ignore: cast_nullable_to_non_nullable
              as int?,
      regularShipmentDiscountPrice: freezed == regularShipmentDiscountPrice
          ? _value.regularShipmentDiscountPrice
          : regularShipmentDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      regularShipmentDeliveryWeekDiv: null == regularShipmentDeliveryWeekDiv
          ? _value.regularShipmentDeliveryWeekDiv
          : regularShipmentDeliveryWeekDiv // ignore: cast_nullable_to_non_nullable
              as RegularShipmentDeliveryWeekDiv,
      epochRegularShipmentDeliveryDate: freezed ==
              epochRegularShipmentDeliveryDate
          ? _value.epochRegularShipmentDeliveryDate
          : epochRegularShipmentDeliveryDate // ignore: cast_nullable_to_non_nullable
              as int?,
      regularShipmentDeliveryStartTime: freezed ==
              regularShipmentDeliveryStartTime
          ? _value.regularShipmentDeliveryStartTime
          : regularShipmentDeliveryStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      regularShipmentDeliveryFinishTime: freezed ==
              regularShipmentDeliveryFinishTime
          ? _value.regularShipmentDeliveryFinishTime
          : regularShipmentDeliveryFinishTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isRegularShipmentOrder: null == isRegularShipmentOrder
          ? _value.isRegularShipmentOrder
          : isRegularShipmentOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      productTotalPriceAfterRegularShipmentDiscount: freezed ==
              productTotalPriceAfterRegularShipmentDiscount
          ? _value.productTotalPriceAfterRegularShipmentDiscount
          : productTotalPriceAfterRegularShipmentDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      isConsentMedicine: null == isConsentMedicine
          ? _value.isConsentMedicine
          : isConsentMedicine // ignore: cast_nullable_to_non_nullable
              as bool,
      isConsentAkachanHonpo: null == isConsentAkachanHonpo
          ? _value.isConsentAkachanHonpo
          : isConsentAkachanHonpo // ignore: cast_nullable_to_non_nullable
              as bool,
      isEarlyCancelOrderClosing: null == isEarlyCancelOrderClosing
          ? _value.isEarlyCancelOrderClosing
          : isEarlyCancelOrderClosing // ignore: cast_nullable_to_non_nullable
              as bool,
      epochCancelOrderClosingDatetime: freezed ==
              epochCancelOrderClosingDatetime
          ? _value.epochCancelOrderClosingDatetime
          : epochCancelOrderClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      visitorCartFlag: null == visitorCartFlag
          ? _value.visitorCartFlag
          : visitorCartFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      deemedDeliveryCartFlag: null == deemedDeliveryCartFlag
          ? _value.deemedDeliveryCartFlag
          : deemedDeliveryCartFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      packageDropPlace: null == packageDropPlace
          ? _value.packageDropPlace
          : packageDropPlace // ignore: cast_nullable_to_non_nullable
              as PackageDropPlace,
      packageDropPlaceDetail: null == packageDropPlaceDetail
          ? _value.packageDropPlaceDetail
          : packageDropPlaceDetail // ignore: cast_nullable_to_non_nullable
              as String,
      epochUpdateDatetime: null == epochUpdateDatetime
          ? _value.epochUpdateDatetime
          : epochUpdateDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      switchedPackageDropFlag: null == switchedPackageDropFlag
          ? _value.switchedPackageDropFlag
          : switchedPackageDropFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      switchablePackageDropFlag: null == switchablePackageDropFlag
          ? _value.switchablePackageDropFlag
          : switchablePackageDropFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      epochCartDeleteDatetime: null == epochCartDeleteDatetime
          ? _value.epochCartDeleteDatetime
          : epochCartDeleteDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      remainingTimeUntilCartDelete: null == remainingTimeUntilCartDelete
          ? _value.remainingTimeUntilCartDelete
          : remainingTimeUntilCartDelete // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShopModelCopyWith<$Res> get shop {
    return $ShopModelCopyWith<$Res>(_value.shop, (value) {
      return _then(_value.copyWith(shop: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CartDeliveryAddressModelCopyWith<$Res>? get deliveryAddress {
    if (_value.deliveryAddress == null) {
      return null;
    }

    return $CartDeliveryAddressModelCopyWith<$Res>(_value.deliveryAddress!,
        (value) {
      return _then(_value.copyWith(deliveryAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OldOrderModelCopyWith<$Res>? get oldOrder {
    if (_value.oldOrder == null) {
      return null;
    }

    return $OldOrderModelCopyWith<$Res>(_value.oldOrder!, (value) {
      return _then(_value.copyWith(oldOrder: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartModelCopyWith<$Res> implements $CartModelCopyWith<$Res> {
  factory _$$_CartModelCopyWith(
          _$_CartModel value, $Res Function(_$_CartModel) then) =
      __$$_CartModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int cartId,
      CartStatus cartStatus,
      ShopModel shop,
      String memo,
      bool isReserveOrder,
      bool isAdditionalOrderTerm,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'reserve_closing_datetime')
          int epochReserveClosingDatetime,
      bool isDisplayAbsent,
      bool isPointReceiptOrder,
      List<CartDetailsModel> cartDetails,
      @JsonKey(fromJson: _warnMessagesFromJson)
          List<WarnMessageModel> warnMessages,
      bool isDeliveryPriceChange,
      bool isSelectedDeliveryTime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_from_datetime')
          int epochDeliveryPlanFromDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_to_datetime')
          int epochDeliveryPlanToDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'reserve_delivery_datetime')
          int epochReserveDeliveryDatetime,
      String deliveryTimeId,
      bool isBeforeChangeClosingDatetime,
      bool isCartAllocationValid,
      CartFulfillmentType fulfillmentType,
      CartDeliveryAddressModel? deliveryAddress,
      String receiptPointName,
      String receiptPointId,
      bool isCorporateCustomer,
      PackMaterialType packMaterialType,
      bool isRequestEcoBasketReturn,
      int shoppingBagPrice,
      String nameOfReceipt,
      bool isPackPriceTargetCustomer,
      PackMethodType packMethodType,
      List<PackMethodInformationModel> packMethodInformations,
      PaymentMethodType paymentMethod,
      bool hasNanacoNumber,
      bool isLimitedCreditCardUse,
      String creditCardLastFourDigits,
      bool isNanacoPointUse,
      int nanacoPointUsePoint,
      int canUseNanacoPoint,
      NanacoPointUseType nanacoPointUseType,
      String couponName,
      bool hasDiscountCouponProduct,
      bool isCouponUse,
      String couponCode,
      int? couponUseRemainingNumber,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'coupon_use_delivery_start_date')
          int? epochCouponUseDeliveryStartDate,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'coupon_use_delivery_finish_datetime')
          int? epochCouponUseDeliveryFinishDatetime,
      String couponGuide,
      bool needNoStockContact,
      bool canUseNoContact,
      String mainMailAddress,
      String subMailAddress,
      int totalMixMatchDiscountPrice,
      int totalSetSaleDiscountPrice,
      int totalProgressiveDiscountPrice,
      int totalCardMemberDiscountPrice,
      int couponProductTotalPrice,
      int totalSellingOffDiscountPrice,
      int deliveryPrice,
      bool isDeliveryPriceCampaign,
      int nextDifferenceDeliveryPrice,
      int nextDeliveryPrice,
      int differenceDeliveryFree,
      int maxDeliveryPrice,
      DeliveryFeeType deliveryType,
      bool isIndividualDeliveryPriceTargetCustomer,
      IndividualDeliveryPriceType individualDeliveryPriceType,
      String individualDeliveryName,
      int? individualDeliveryPrice,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'delivery_type_start_datetime')
          int? epochDeliveryTypeStartDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'delivery_type_finish_datetime')
          int? epochDeliveryTypeFinishDatetime,
      int? individualDeliveryDiscountRate,
      int packPrice,
      int cashDeliveryPrice,
      List<CancelPriceInformationModel> cancelPriceInformations,
      int iyCardDiscountPrice,
      int couponPrice,
      int totalPrice,
      int noTaxTotalPrice,
      List<TaxPriceInformationModel> taxPriceInformations,
      int paymentAmount,
      int ticketCount,
      int totalNanacoPoints,
      List<NanacoPointModel> nanacoPointInformations,
      int bonusPoint,
      bool isCouponNanacoPointPlus,
      int couponPoint,
      bool isCouponNanacoPointTimes,
      bool isNoContact,
      int shopCashDeliveryPrice,
      String creditCardInformationKey,
      bool hasLockoutCreditCard,
      bool isDisplaySecurityCodeInput,
      String creditCardNewsText,
      String maskedNanacoNumber,
      CartOrderStatusType orderStatus,
      int nanacoPointUseTargetPrice,
      OldOrderModel? oldOrder,
      bool isApplyNanacoPoint,
      bool hasApplyIyCardMemberDiscountProduct,
      SevenCSCertificationType sevenCsFlag,
      int productCount,
      int productTotalPrice,
      int subProductTotalPrice,
      int noTaxSubProductTotalPrice,
      int noTaxProductTotalPrice,
      bool hasNanacoPointProduct,
      bool isDisplayCouponSelect,
      int redeliveryPrice,
      bool isDebitPrepaidCardPayWarn,
      bool isNanacoNumberAuthentication,
      NanacoConfirmType nanacoConfirmType,
      CartReserveStatusType reserveStatus,
      List<String> reserveDeliveryDates,
      bool isRegularShipmentApplyCart,
      int? regularShipmentDiscountRate,
      int? regularShipmentDiscountPrice,
      RegularShipmentDeliveryWeekDiv regularShipmentDeliveryWeekDiv,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'regular_shipment_delivery_date')
          int? epochRegularShipmentDeliveryDate,
      String? regularShipmentDeliveryStartTime,
      String? regularShipmentDeliveryFinishTime,
      bool isRegularShipmentOrder,
      int? productTotalPriceAfterRegularShipmentDiscount,
      bool isConsentMedicine,
      bool isConsentAkachanHonpo,
      bool isEarlyCancelOrderClosing,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'cancel_order_closing_datetime')
          int? epochCancelOrderClosingDatetime,
      @StringToBooleanConverter()
          bool visitorCartFlag,
      @StringToBooleanConverter()
          bool deemedDeliveryCartFlag,
      PackageDropPlace packageDropPlace,
      String packageDropPlaceDetail,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'update_datetime')
          int epochUpdateDatetime,
      @StringToBooleanConverter()
          bool switchedPackageDropFlag,
      @StringToBooleanConverter()
          bool switchablePackageDropFlag,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'cart_delete_datetime')
          int epochCartDeleteDatetime,
      String remainingTimeUntilCartDelete});

  @override
  $ShopModelCopyWith<$Res> get shop;
  @override
  $CartDeliveryAddressModelCopyWith<$Res>? get deliveryAddress;
  @override
  $OldOrderModelCopyWith<$Res>? get oldOrder;
}

/// @nodoc
class __$$_CartModelCopyWithImpl<$Res>
    extends _$CartModelCopyWithImpl<$Res, _$_CartModel>
    implements _$$_CartModelCopyWith<$Res> {
  __$$_CartModelCopyWithImpl(
      _$_CartModel _value, $Res Function(_$_CartModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
    Object? cartStatus = null,
    Object? shop = null,
    Object? memo = null,
    Object? isReserveOrder = null,
    Object? isAdditionalOrderTerm = null,
    Object? epochReserveClosingDatetime = null,
    Object? isDisplayAbsent = null,
    Object? isPointReceiptOrder = null,
    Object? cartDetails = null,
    Object? warnMessages = null,
    Object? isDeliveryPriceChange = null,
    Object? isSelectedDeliveryTime = null,
    Object? epochDeliveryPlanFromDatetime = null,
    Object? epochDeliveryPlanToDatetime = null,
    Object? epochReserveDeliveryDatetime = null,
    Object? deliveryTimeId = null,
    Object? isBeforeChangeClosingDatetime = null,
    Object? isCartAllocationValid = null,
    Object? fulfillmentType = null,
    Object? deliveryAddress = freezed,
    Object? receiptPointName = null,
    Object? receiptPointId = null,
    Object? isCorporateCustomer = null,
    Object? packMaterialType = null,
    Object? isRequestEcoBasketReturn = null,
    Object? shoppingBagPrice = null,
    Object? nameOfReceipt = null,
    Object? isPackPriceTargetCustomer = null,
    Object? packMethodType = null,
    Object? packMethodInformations = null,
    Object? paymentMethod = null,
    Object? hasNanacoNumber = null,
    Object? isLimitedCreditCardUse = null,
    Object? creditCardLastFourDigits = null,
    Object? isNanacoPointUse = null,
    Object? nanacoPointUsePoint = null,
    Object? canUseNanacoPoint = null,
    Object? nanacoPointUseType = null,
    Object? couponName = null,
    Object? hasDiscountCouponProduct = null,
    Object? isCouponUse = null,
    Object? couponCode = null,
    Object? couponUseRemainingNumber = freezed,
    Object? epochCouponUseDeliveryStartDate = freezed,
    Object? epochCouponUseDeliveryFinishDatetime = freezed,
    Object? couponGuide = null,
    Object? needNoStockContact = null,
    Object? canUseNoContact = null,
    Object? mainMailAddress = null,
    Object? subMailAddress = null,
    Object? totalMixMatchDiscountPrice = null,
    Object? totalSetSaleDiscountPrice = null,
    Object? totalProgressiveDiscountPrice = null,
    Object? totalCardMemberDiscountPrice = null,
    Object? couponProductTotalPrice = null,
    Object? totalSellingOffDiscountPrice = null,
    Object? deliveryPrice = null,
    Object? isDeliveryPriceCampaign = null,
    Object? nextDifferenceDeliveryPrice = null,
    Object? nextDeliveryPrice = null,
    Object? differenceDeliveryFree = null,
    Object? maxDeliveryPrice = null,
    Object? deliveryType = null,
    Object? isIndividualDeliveryPriceTargetCustomer = null,
    Object? individualDeliveryPriceType = null,
    Object? individualDeliveryName = null,
    Object? individualDeliveryPrice = freezed,
    Object? epochDeliveryTypeStartDatetime = freezed,
    Object? epochDeliveryTypeFinishDatetime = freezed,
    Object? individualDeliveryDiscountRate = freezed,
    Object? packPrice = null,
    Object? cashDeliveryPrice = null,
    Object? cancelPriceInformations = null,
    Object? iyCardDiscountPrice = null,
    Object? couponPrice = null,
    Object? totalPrice = null,
    Object? noTaxTotalPrice = null,
    Object? taxPriceInformations = null,
    Object? paymentAmount = null,
    Object? ticketCount = null,
    Object? totalNanacoPoints = null,
    Object? nanacoPointInformations = null,
    Object? bonusPoint = null,
    Object? isCouponNanacoPointPlus = null,
    Object? couponPoint = null,
    Object? isCouponNanacoPointTimes = null,
    Object? isNoContact = null,
    Object? shopCashDeliveryPrice = null,
    Object? creditCardInformationKey = null,
    Object? hasLockoutCreditCard = null,
    Object? isDisplaySecurityCodeInput = null,
    Object? creditCardNewsText = null,
    Object? maskedNanacoNumber = null,
    Object? orderStatus = null,
    Object? nanacoPointUseTargetPrice = null,
    Object? oldOrder = freezed,
    Object? isApplyNanacoPoint = null,
    Object? hasApplyIyCardMemberDiscountProduct = null,
    Object? sevenCsFlag = null,
    Object? productCount = null,
    Object? productTotalPrice = null,
    Object? subProductTotalPrice = null,
    Object? noTaxSubProductTotalPrice = null,
    Object? noTaxProductTotalPrice = null,
    Object? hasNanacoPointProduct = null,
    Object? isDisplayCouponSelect = null,
    Object? redeliveryPrice = null,
    Object? isDebitPrepaidCardPayWarn = null,
    Object? isNanacoNumberAuthentication = null,
    Object? nanacoConfirmType = null,
    Object? reserveStatus = null,
    Object? reserveDeliveryDates = null,
    Object? isRegularShipmentApplyCart = null,
    Object? regularShipmentDiscountRate = freezed,
    Object? regularShipmentDiscountPrice = freezed,
    Object? regularShipmentDeliveryWeekDiv = null,
    Object? epochRegularShipmentDeliveryDate = freezed,
    Object? regularShipmentDeliveryStartTime = freezed,
    Object? regularShipmentDeliveryFinishTime = freezed,
    Object? isRegularShipmentOrder = null,
    Object? productTotalPriceAfterRegularShipmentDiscount = freezed,
    Object? isConsentMedicine = null,
    Object? isConsentAkachanHonpo = null,
    Object? isEarlyCancelOrderClosing = null,
    Object? epochCancelOrderClosingDatetime = freezed,
    Object? visitorCartFlag = null,
    Object? deemedDeliveryCartFlag = null,
    Object? packageDropPlace = null,
    Object? packageDropPlaceDetail = null,
    Object? epochUpdateDatetime = null,
    Object? switchedPackageDropFlag = null,
    Object? switchablePackageDropFlag = null,
    Object? epochCartDeleteDatetime = null,
    Object? remainingTimeUntilCartDelete = null,
  }) {
    return _then(_$_CartModel(
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as int,
      cartStatus: null == cartStatus
          ? _value.cartStatus
          : cartStatus // ignore: cast_nullable_to_non_nullable
              as CartStatus,
      shop: null == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopModel,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      isReserveOrder: null == isReserveOrder
          ? _value.isReserveOrder
          : isReserveOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdditionalOrderTerm: null == isAdditionalOrderTerm
          ? _value.isAdditionalOrderTerm
          : isAdditionalOrderTerm // ignore: cast_nullable_to_non_nullable
              as bool,
      epochReserveClosingDatetime: null == epochReserveClosingDatetime
          ? _value.epochReserveClosingDatetime
          : epochReserveClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      isDisplayAbsent: null == isDisplayAbsent
          ? _value.isDisplayAbsent
          : isDisplayAbsent // ignore: cast_nullable_to_non_nullable
              as bool,
      isPointReceiptOrder: null == isPointReceiptOrder
          ? _value.isPointReceiptOrder
          : isPointReceiptOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      cartDetails: null == cartDetails
          ? _value._cartDetails
          : cartDetails // ignore: cast_nullable_to_non_nullable
              as List<CartDetailsModel>,
      warnMessages: null == warnMessages
          ? _value._warnMessages
          : warnMessages // ignore: cast_nullable_to_non_nullable
              as List<WarnMessageModel>,
      isDeliveryPriceChange: null == isDeliveryPriceChange
          ? _value.isDeliveryPriceChange
          : isDeliveryPriceChange // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelectedDeliveryTime: null == isSelectedDeliveryTime
          ? _value.isSelectedDeliveryTime
          : isSelectedDeliveryTime // ignore: cast_nullable_to_non_nullable
              as bool,
      epochDeliveryPlanFromDatetime: null == epochDeliveryPlanFromDatetime
          ? _value.epochDeliveryPlanFromDatetime
          : epochDeliveryPlanFromDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochDeliveryPlanToDatetime: null == epochDeliveryPlanToDatetime
          ? _value.epochDeliveryPlanToDatetime
          : epochDeliveryPlanToDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochReserveDeliveryDatetime: null == epochReserveDeliveryDatetime
          ? _value.epochReserveDeliveryDatetime
          : epochReserveDeliveryDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryTimeId: null == deliveryTimeId
          ? _value.deliveryTimeId
          : deliveryTimeId // ignore: cast_nullable_to_non_nullable
              as String,
      isBeforeChangeClosingDatetime: null == isBeforeChangeClosingDatetime
          ? _value.isBeforeChangeClosingDatetime
          : isBeforeChangeClosingDatetime // ignore: cast_nullable_to_non_nullable
              as bool,
      isCartAllocationValid: null == isCartAllocationValid
          ? _value.isCartAllocationValid
          : isCartAllocationValid // ignore: cast_nullable_to_non_nullable
              as bool,
      fulfillmentType: null == fulfillmentType
          ? _value.fulfillmentType
          : fulfillmentType // ignore: cast_nullable_to_non_nullable
              as CartFulfillmentType,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as CartDeliveryAddressModel?,
      receiptPointName: null == receiptPointName
          ? _value.receiptPointName
          : receiptPointName // ignore: cast_nullable_to_non_nullable
              as String,
      receiptPointId: null == receiptPointId
          ? _value.receiptPointId
          : receiptPointId // ignore: cast_nullable_to_non_nullable
              as String,
      isCorporateCustomer: null == isCorporateCustomer
          ? _value.isCorporateCustomer
          : isCorporateCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      packMaterialType: null == packMaterialType
          ? _value.packMaterialType
          : packMaterialType // ignore: cast_nullable_to_non_nullable
              as PackMaterialType,
      isRequestEcoBasketReturn: null == isRequestEcoBasketReturn
          ? _value.isRequestEcoBasketReturn
          : isRequestEcoBasketReturn // ignore: cast_nullable_to_non_nullable
              as bool,
      shoppingBagPrice: null == shoppingBagPrice
          ? _value.shoppingBagPrice
          : shoppingBagPrice // ignore: cast_nullable_to_non_nullable
              as int,
      nameOfReceipt: null == nameOfReceipt
          ? _value.nameOfReceipt
          : nameOfReceipt // ignore: cast_nullable_to_non_nullable
              as String,
      isPackPriceTargetCustomer: null == isPackPriceTargetCustomer
          ? _value.isPackPriceTargetCustomer
          : isPackPriceTargetCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      packMethodType: null == packMethodType
          ? _value.packMethodType
          : packMethodType // ignore: cast_nullable_to_non_nullable
              as PackMethodType,
      packMethodInformations: null == packMethodInformations
          ? _value._packMethodInformations
          : packMethodInformations // ignore: cast_nullable_to_non_nullable
              as List<PackMethodInformationModel>,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodType,
      hasNanacoNumber: null == hasNanacoNumber
          ? _value.hasNanacoNumber
          : hasNanacoNumber // ignore: cast_nullable_to_non_nullable
              as bool,
      isLimitedCreditCardUse: null == isLimitedCreditCardUse
          ? _value.isLimitedCreditCardUse
          : isLimitedCreditCardUse // ignore: cast_nullable_to_non_nullable
              as bool,
      creditCardLastFourDigits: null == creditCardLastFourDigits
          ? _value.creditCardLastFourDigits
          : creditCardLastFourDigits // ignore: cast_nullable_to_non_nullable
              as String,
      isNanacoPointUse: null == isNanacoPointUse
          ? _value.isNanacoPointUse
          : isNanacoPointUse // ignore: cast_nullable_to_non_nullable
              as bool,
      nanacoPointUsePoint: null == nanacoPointUsePoint
          ? _value.nanacoPointUsePoint
          : nanacoPointUsePoint // ignore: cast_nullable_to_non_nullable
              as int,
      canUseNanacoPoint: null == canUseNanacoPoint
          ? _value.canUseNanacoPoint
          : canUseNanacoPoint // ignore: cast_nullable_to_non_nullable
              as int,
      nanacoPointUseType: null == nanacoPointUseType
          ? _value.nanacoPointUseType
          : nanacoPointUseType // ignore: cast_nullable_to_non_nullable
              as NanacoPointUseType,
      couponName: null == couponName
          ? _value.couponName
          : couponName // ignore: cast_nullable_to_non_nullable
              as String,
      hasDiscountCouponProduct: null == hasDiscountCouponProduct
          ? _value.hasDiscountCouponProduct
          : hasDiscountCouponProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isCouponUse: null == isCouponUse
          ? _value.isCouponUse
          : isCouponUse // ignore: cast_nullable_to_non_nullable
              as bool,
      couponCode: null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      couponUseRemainingNumber: freezed == couponUseRemainingNumber
          ? _value.couponUseRemainingNumber
          : couponUseRemainingNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      epochCouponUseDeliveryStartDate: freezed ==
              epochCouponUseDeliveryStartDate
          ? _value.epochCouponUseDeliveryStartDate
          : epochCouponUseDeliveryStartDate // ignore: cast_nullable_to_non_nullable
              as int?,
      epochCouponUseDeliveryFinishDatetime: freezed ==
              epochCouponUseDeliveryFinishDatetime
          ? _value.epochCouponUseDeliveryFinishDatetime
          : epochCouponUseDeliveryFinishDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      couponGuide: null == couponGuide
          ? _value.couponGuide
          : couponGuide // ignore: cast_nullable_to_non_nullable
              as String,
      needNoStockContact: null == needNoStockContact
          ? _value.needNoStockContact
          : needNoStockContact // ignore: cast_nullable_to_non_nullable
              as bool,
      canUseNoContact: null == canUseNoContact
          ? _value.canUseNoContact
          : canUseNoContact // ignore: cast_nullable_to_non_nullable
              as bool,
      mainMailAddress: null == mainMailAddress
          ? _value.mainMailAddress
          : mainMailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      subMailAddress: null == subMailAddress
          ? _value.subMailAddress
          : subMailAddress // ignore: cast_nullable_to_non_nullable
              as String,
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
      totalCardMemberDiscountPrice: null == totalCardMemberDiscountPrice
          ? _value.totalCardMemberDiscountPrice
          : totalCardMemberDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      couponProductTotalPrice: null == couponProductTotalPrice
          ? _value.couponProductTotalPrice
          : couponProductTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalSellingOffDiscountPrice: null == totalSellingOffDiscountPrice
          ? _value.totalSellingOffDiscountPrice
          : totalSellingOffDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryPrice: null == deliveryPrice
          ? _value.deliveryPrice
          : deliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      isDeliveryPriceCampaign: null == isDeliveryPriceCampaign
          ? _value.isDeliveryPriceCampaign
          : isDeliveryPriceCampaign // ignore: cast_nullable_to_non_nullable
              as bool,
      nextDifferenceDeliveryPrice: null == nextDifferenceDeliveryPrice
          ? _value.nextDifferenceDeliveryPrice
          : nextDifferenceDeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      nextDeliveryPrice: null == nextDeliveryPrice
          ? _value.nextDeliveryPrice
          : nextDeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      differenceDeliveryFree: null == differenceDeliveryFree
          ? _value.differenceDeliveryFree
          : differenceDeliveryFree // ignore: cast_nullable_to_non_nullable
              as int,
      maxDeliveryPrice: null == maxDeliveryPrice
          ? _value.maxDeliveryPrice
          : maxDeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as DeliveryFeeType,
      isIndividualDeliveryPriceTargetCustomer: null ==
              isIndividualDeliveryPriceTargetCustomer
          ? _value.isIndividualDeliveryPriceTargetCustomer
          : isIndividualDeliveryPriceTargetCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      individualDeliveryPriceType: null == individualDeliveryPriceType
          ? _value.individualDeliveryPriceType
          : individualDeliveryPriceType // ignore: cast_nullable_to_non_nullable
              as IndividualDeliveryPriceType,
      individualDeliveryName: null == individualDeliveryName
          ? _value.individualDeliveryName
          : individualDeliveryName // ignore: cast_nullable_to_non_nullable
              as String,
      individualDeliveryPrice: freezed == individualDeliveryPrice
          ? _value.individualDeliveryPrice
          : individualDeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      epochDeliveryTypeStartDatetime: freezed == epochDeliveryTypeStartDatetime
          ? _value.epochDeliveryTypeStartDatetime
          : epochDeliveryTypeStartDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      epochDeliveryTypeFinishDatetime: freezed ==
              epochDeliveryTypeFinishDatetime
          ? _value.epochDeliveryTypeFinishDatetime
          : epochDeliveryTypeFinishDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      individualDeliveryDiscountRate: freezed == individualDeliveryDiscountRate
          ? _value.individualDeliveryDiscountRate
          : individualDeliveryDiscountRate // ignore: cast_nullable_to_non_nullable
              as int?,
      packPrice: null == packPrice
          ? _value.packPrice
          : packPrice // ignore: cast_nullable_to_non_nullable
              as int,
      cashDeliveryPrice: null == cashDeliveryPrice
          ? _value.cashDeliveryPrice
          : cashDeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      cancelPriceInformations: null == cancelPriceInformations
          ? _value._cancelPriceInformations
          : cancelPriceInformations // ignore: cast_nullable_to_non_nullable
              as List<CancelPriceInformationModel>,
      iyCardDiscountPrice: null == iyCardDiscountPrice
          ? _value.iyCardDiscountPrice
          : iyCardDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      couponPrice: null == couponPrice
          ? _value.couponPrice
          : couponPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      noTaxTotalPrice: null == noTaxTotalPrice
          ? _value.noTaxTotalPrice
          : noTaxTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      taxPriceInformations: null == taxPriceInformations
          ? _value._taxPriceInformations
          : taxPriceInformations // ignore: cast_nullable_to_non_nullable
              as List<TaxPriceInformationModel>,
      paymentAmount: null == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as int,
      ticketCount: null == ticketCount
          ? _value.ticketCount
          : ticketCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalNanacoPoints: null == totalNanacoPoints
          ? _value.totalNanacoPoints
          : totalNanacoPoints // ignore: cast_nullable_to_non_nullable
              as int,
      nanacoPointInformations: null == nanacoPointInformations
          ? _value._nanacoPointInformations
          : nanacoPointInformations // ignore: cast_nullable_to_non_nullable
              as List<NanacoPointModel>,
      bonusPoint: null == bonusPoint
          ? _value.bonusPoint
          : bonusPoint // ignore: cast_nullable_to_non_nullable
              as int,
      isCouponNanacoPointPlus: null == isCouponNanacoPointPlus
          ? _value.isCouponNanacoPointPlus
          : isCouponNanacoPointPlus // ignore: cast_nullable_to_non_nullable
              as bool,
      couponPoint: null == couponPoint
          ? _value.couponPoint
          : couponPoint // ignore: cast_nullable_to_non_nullable
              as int,
      isCouponNanacoPointTimes: null == isCouponNanacoPointTimes
          ? _value.isCouponNanacoPointTimes
          : isCouponNanacoPointTimes // ignore: cast_nullable_to_non_nullable
              as bool,
      isNoContact: null == isNoContact
          ? _value.isNoContact
          : isNoContact // ignore: cast_nullable_to_non_nullable
              as bool,
      shopCashDeliveryPrice: null == shopCashDeliveryPrice
          ? _value.shopCashDeliveryPrice
          : shopCashDeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      creditCardInformationKey: null == creditCardInformationKey
          ? _value.creditCardInformationKey
          : creditCardInformationKey // ignore: cast_nullable_to_non_nullable
              as String,
      hasLockoutCreditCard: null == hasLockoutCreditCard
          ? _value.hasLockoutCreditCard
          : hasLockoutCreditCard // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisplaySecurityCodeInput: null == isDisplaySecurityCodeInput
          ? _value.isDisplaySecurityCodeInput
          : isDisplaySecurityCodeInput // ignore: cast_nullable_to_non_nullable
              as bool,
      creditCardNewsText: null == creditCardNewsText
          ? _value.creditCardNewsText
          : creditCardNewsText // ignore: cast_nullable_to_non_nullable
              as String,
      maskedNanacoNumber: null == maskedNanacoNumber
          ? _value.maskedNanacoNumber
          : maskedNanacoNumber // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as CartOrderStatusType,
      nanacoPointUseTargetPrice: null == nanacoPointUseTargetPrice
          ? _value.nanacoPointUseTargetPrice
          : nanacoPointUseTargetPrice // ignore: cast_nullable_to_non_nullable
              as int,
      oldOrder: freezed == oldOrder
          ? _value.oldOrder
          : oldOrder // ignore: cast_nullable_to_non_nullable
              as OldOrderModel?,
      isApplyNanacoPoint: null == isApplyNanacoPoint
          ? _value.isApplyNanacoPoint
          : isApplyNanacoPoint // ignore: cast_nullable_to_non_nullable
              as bool,
      hasApplyIyCardMemberDiscountProduct: null ==
              hasApplyIyCardMemberDiscountProduct
          ? _value.hasApplyIyCardMemberDiscountProduct
          : hasApplyIyCardMemberDiscountProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      sevenCsFlag: null == sevenCsFlag
          ? _value.sevenCsFlag
          : sevenCsFlag // ignore: cast_nullable_to_non_nullable
              as SevenCSCertificationType,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      productTotalPrice: null == productTotalPrice
          ? _value.productTotalPrice
          : productTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      subProductTotalPrice: null == subProductTotalPrice
          ? _value.subProductTotalPrice
          : subProductTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      noTaxSubProductTotalPrice: null == noTaxSubProductTotalPrice
          ? _value.noTaxSubProductTotalPrice
          : noTaxSubProductTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      noTaxProductTotalPrice: null == noTaxProductTotalPrice
          ? _value.noTaxProductTotalPrice
          : noTaxProductTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      hasNanacoPointProduct: null == hasNanacoPointProduct
          ? _value.hasNanacoPointProduct
          : hasNanacoPointProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisplayCouponSelect: null == isDisplayCouponSelect
          ? _value.isDisplayCouponSelect
          : isDisplayCouponSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      redeliveryPrice: null == redeliveryPrice
          ? _value.redeliveryPrice
          : redeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      isDebitPrepaidCardPayWarn: null == isDebitPrepaidCardPayWarn
          ? _value.isDebitPrepaidCardPayWarn
          : isDebitPrepaidCardPayWarn // ignore: cast_nullable_to_non_nullable
              as bool,
      isNanacoNumberAuthentication: null == isNanacoNumberAuthentication
          ? _value.isNanacoNumberAuthentication
          : isNanacoNumberAuthentication // ignore: cast_nullable_to_non_nullable
              as bool,
      nanacoConfirmType: null == nanacoConfirmType
          ? _value.nanacoConfirmType
          : nanacoConfirmType // ignore: cast_nullable_to_non_nullable
              as NanacoConfirmType,
      reserveStatus: null == reserveStatus
          ? _value.reserveStatus
          : reserveStatus // ignore: cast_nullable_to_non_nullable
              as CartReserveStatusType,
      reserveDeliveryDates: null == reserveDeliveryDates
          ? _value._reserveDeliveryDates
          : reserveDeliveryDates // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isRegularShipmentApplyCart: null == isRegularShipmentApplyCart
          ? _value.isRegularShipmentApplyCart
          : isRegularShipmentApplyCart // ignore: cast_nullable_to_non_nullable
              as bool,
      regularShipmentDiscountRate: freezed == regularShipmentDiscountRate
          ? _value.regularShipmentDiscountRate
          : regularShipmentDiscountRate // ignore: cast_nullable_to_non_nullable
              as int?,
      regularShipmentDiscountPrice: freezed == regularShipmentDiscountPrice
          ? _value.regularShipmentDiscountPrice
          : regularShipmentDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      regularShipmentDeliveryWeekDiv: null == regularShipmentDeliveryWeekDiv
          ? _value.regularShipmentDeliveryWeekDiv
          : regularShipmentDeliveryWeekDiv // ignore: cast_nullable_to_non_nullable
              as RegularShipmentDeliveryWeekDiv,
      epochRegularShipmentDeliveryDate: freezed ==
              epochRegularShipmentDeliveryDate
          ? _value.epochRegularShipmentDeliveryDate
          : epochRegularShipmentDeliveryDate // ignore: cast_nullable_to_non_nullable
              as int?,
      regularShipmentDeliveryStartTime: freezed ==
              regularShipmentDeliveryStartTime
          ? _value.regularShipmentDeliveryStartTime
          : regularShipmentDeliveryStartTime // ignore: cast_nullable_to_non_nullable
              as String?,
      regularShipmentDeliveryFinishTime: freezed ==
              regularShipmentDeliveryFinishTime
          ? _value.regularShipmentDeliveryFinishTime
          : regularShipmentDeliveryFinishTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isRegularShipmentOrder: null == isRegularShipmentOrder
          ? _value.isRegularShipmentOrder
          : isRegularShipmentOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      productTotalPriceAfterRegularShipmentDiscount: freezed ==
              productTotalPriceAfterRegularShipmentDiscount
          ? _value.productTotalPriceAfterRegularShipmentDiscount
          : productTotalPriceAfterRegularShipmentDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      isConsentMedicine: null == isConsentMedicine
          ? _value.isConsentMedicine
          : isConsentMedicine // ignore: cast_nullable_to_non_nullable
              as bool,
      isConsentAkachanHonpo: null == isConsentAkachanHonpo
          ? _value.isConsentAkachanHonpo
          : isConsentAkachanHonpo // ignore: cast_nullable_to_non_nullable
              as bool,
      isEarlyCancelOrderClosing: null == isEarlyCancelOrderClosing
          ? _value.isEarlyCancelOrderClosing
          : isEarlyCancelOrderClosing // ignore: cast_nullable_to_non_nullable
              as bool,
      epochCancelOrderClosingDatetime: freezed ==
              epochCancelOrderClosingDatetime
          ? _value.epochCancelOrderClosingDatetime
          : epochCancelOrderClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      visitorCartFlag: null == visitorCartFlag
          ? _value.visitorCartFlag
          : visitorCartFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      deemedDeliveryCartFlag: null == deemedDeliveryCartFlag
          ? _value.deemedDeliveryCartFlag
          : deemedDeliveryCartFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      packageDropPlace: null == packageDropPlace
          ? _value.packageDropPlace
          : packageDropPlace // ignore: cast_nullable_to_non_nullable
              as PackageDropPlace,
      packageDropPlaceDetail: null == packageDropPlaceDetail
          ? _value.packageDropPlaceDetail
          : packageDropPlaceDetail // ignore: cast_nullable_to_non_nullable
              as String,
      epochUpdateDatetime: null == epochUpdateDatetime
          ? _value.epochUpdateDatetime
          : epochUpdateDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      switchedPackageDropFlag: null == switchedPackageDropFlag
          ? _value.switchedPackageDropFlag
          : switchedPackageDropFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      switchablePackageDropFlag: null == switchablePackageDropFlag
          ? _value.switchablePackageDropFlag
          : switchablePackageDropFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      epochCartDeleteDatetime: null == epochCartDeleteDatetime
          ? _value.epochCartDeleteDatetime
          : epochCartDeleteDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      remainingTimeUntilCartDelete: null == remainingTimeUntilCartDelete
          ? _value.remainingTimeUntilCartDelete
          : remainingTimeUntilCartDelete // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartModel extends _CartModel {
  const _$_CartModel(
      {this.cartId = -1,
      this.cartStatus = CartStatus.visitorHomeDelivery,
      this.shop = const ShopModel(),
      this.memo = '',
      this.isReserveOrder = false,
      this.isAdditionalOrderTerm = false,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'reserve_closing_datetime')
          this.epochReserveClosingDatetime = 0,
      this.isDisplayAbsent = false,
      this.isPointReceiptOrder = false,
      final List<CartDetailsModel> cartDetails = const <CartDetailsModel>[],
      @JsonKey(fromJson: _warnMessagesFromJson)
          final List<WarnMessageModel>
              warnMessages = const <WarnMessageModel>[],
      this.isDeliveryPriceChange = false,
      this.isSelectedDeliveryTime = false,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_from_datetime')
          this.epochDeliveryPlanFromDatetime = 0,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_to_datetime')
          this.epochDeliveryPlanToDatetime = 0,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'reserve_delivery_datetime')
          this.epochReserveDeliveryDatetime = 0,
      this.deliveryTimeId = '',
      this.isBeforeChangeClosingDatetime = false,
      this.isCartAllocationValid = false,
      this.fulfillmentType = CartFulfillmentType.none,
      this.deliveryAddress,
      this.receiptPointName = '',
      this.receiptPointId = '',
      this.isCorporateCustomer = false,
      this.packMaterialType = PackMaterialType.none,
      this.isRequestEcoBasketReturn = false,
      this.shoppingBagPrice = 0,
      this.nameOfReceipt = '',
      this.isPackPriceTargetCustomer = false,
      this.packMethodType = PackMethodType.individualOrder,
      final List<PackMethodInformationModel> packMethodInformations =
          const <PackMethodInformationModel>[],
      this.paymentMethod = PaymentMethodType.none,
      this.hasNanacoNumber = false,
      this.isLimitedCreditCardUse = false,
      this.creditCardLastFourDigits = '',
      this.isNanacoPointUse = false,
      this.nanacoPointUsePoint = 0,
      this.canUseNanacoPoint = 0,
      this.nanacoPointUseType = NanacoPointUseType.useAllPoints,
      this.couponName = '',
      this.hasDiscountCouponProduct = false,
      this.isCouponUse = false,
      this.couponCode = '',
      this.couponUseRemainingNumber,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'coupon_use_delivery_start_date')
          this.epochCouponUseDeliveryStartDate,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'coupon_use_delivery_finish_datetime')
          this.epochCouponUseDeliveryFinishDatetime,
      this.couponGuide = '',
      this.needNoStockContact = false,
      this.canUseNoContact = false,
      this.mainMailAddress = '',
      this.subMailAddress = '',
      this.totalMixMatchDiscountPrice = 0,
      this.totalSetSaleDiscountPrice = 0,
      this.totalProgressiveDiscountPrice = 0,
      this.totalCardMemberDiscountPrice = 0,
      this.couponProductTotalPrice = 0,
      this.totalSellingOffDiscountPrice = 0,
      this.deliveryPrice = 0,
      this.isDeliveryPriceCampaign = false,
      this.nextDifferenceDeliveryPrice = 0,
      this.nextDeliveryPrice = 0,
      this.differenceDeliveryFree = 0,
      this.maxDeliveryPrice = 0,
      this.deliveryType = DeliveryFeeType.normalDeliveryFee,
      this.isIndividualDeliveryPriceTargetCustomer = false,
      this.individualDeliveryPriceType = IndividualDeliveryPriceType.standard,
      this.individualDeliveryName = '',
      this.individualDeliveryPrice,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'delivery_type_start_datetime')
          this.epochDeliveryTypeStartDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'delivery_type_finish_datetime')
          this.epochDeliveryTypeFinishDatetime,
      this.individualDeliveryDiscountRate,
      this.packPrice = 0,
      this.cashDeliveryPrice = 0,
      final List<CancelPriceInformationModel> cancelPriceInformations =
          const <CancelPriceInformationModel>[],
      this.iyCardDiscountPrice = 0,
      this.couponPrice = 0,
      this.totalPrice = 0,
      this.noTaxTotalPrice = 0,
      final List<TaxPriceInformationModel> taxPriceInformations =
          const <TaxPriceInformationModel>[],
      this.paymentAmount = 0,
      this.ticketCount = 0,
      this.totalNanacoPoints = 0,
      final List<NanacoPointModel> nanacoPointInformations =
          const <NanacoPointModel>[],
      this.bonusPoint = 0,
      this.isCouponNanacoPointPlus = false,
      this.couponPoint = 0,
      this.isCouponNanacoPointTimes = false,
      this.isNoContact = false,
      this.shopCashDeliveryPrice = 0,
      this.creditCardInformationKey = '',
      this.hasLockoutCreditCard = false,
      this.isDisplaySecurityCodeInput = false,
      this.creditCardNewsText = '',
      this.maskedNanacoNumber = '',
      this.orderStatus = CartOrderStatusType.notOrdered,
      this.nanacoPointUseTargetPrice = 0,
      this.oldOrder,
      this.isApplyNanacoPoint = false,
      this.hasApplyIyCardMemberDiscountProduct = false,
      this.sevenCsFlag = SevenCSCertificationType.unauthenticated,
      this.productCount = 0,
      this.productTotalPrice = 0,
      this.subProductTotalPrice = 0,
      this.noTaxSubProductTotalPrice = 0,
      this.noTaxProductTotalPrice = 0,
      this.hasNanacoPointProduct = false,
      this.isDisplayCouponSelect = false,
      this.redeliveryPrice = 0,
      this.isDebitPrepaidCardPayWarn = false,
      this.isNanacoNumberAuthentication = false,
      this.nanacoConfirmType = NanacoConfirmType.securityCodeAuthentication,
      this.reserveStatus = CartReserveStatusType.nonReservedOrders,
      final List<String> reserveDeliveryDates = const <String>[],
      this.isRegularShipmentApplyCart = false,
      this.regularShipmentDiscountRate,
      this.regularShipmentDiscountPrice,
      this.regularShipmentDeliveryWeekDiv = RegularShipmentDeliveryWeekDiv.none,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'regular_shipment_delivery_date')
          this.epochRegularShipmentDeliveryDate,
      this.regularShipmentDeliveryStartTime,
      this.regularShipmentDeliveryFinishTime,
      this.isRegularShipmentOrder = false,
      this.productTotalPriceAfterRegularShipmentDiscount,
      this.isConsentMedicine = false,
      this.isConsentAkachanHonpo = false,
      this.isEarlyCancelOrderClosing = false,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'cancel_order_closing_datetime')
          this.epochCancelOrderClosingDatetime,
      @StringToBooleanConverter()
          this.visitorCartFlag = false,
      @StringToBooleanConverter()
          this.deemedDeliveryCartFlag = false,
      this.packageDropPlace = PackageDropPlace.notPackageDropPlace,
      this.packageDropPlaceDetail = '',
      @StringToEpochTimeConverter()
      @JsonKey(name: 'update_datetime')
          this.epochUpdateDatetime = 0,
      @StringToBooleanConverter()
          this.switchedPackageDropFlag = false,
      @StringToBooleanConverter()
          this.switchablePackageDropFlag = false,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'cart_delete_datetime')
          this.epochCartDeleteDatetime = 0,
      this.remainingTimeUntilCartDelete = ''})
      : _cartDetails = cartDetails,
        _warnMessages = warnMessages,
        _packMethodInformations = packMethodInformations,
        _cancelPriceInformations = cancelPriceInformations,
        _taxPriceInformations = taxPriceInformations,
        _nanacoPointInformations = nanacoPointInformations,
        _reserveDeliveryDates = reserveDeliveryDates,
        super._();

  factory _$_CartModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartModelFromJson(json);

/* カートID */
  @override
  @JsonKey()
  final int cartId;
/* カート状態 */
  @override
  @JsonKey()
  final CartStatus cartStatus;
/* 店舗情報モデル */
  @override
  @JsonKey()
  final ShopModel shop;
/* メモ */
  @override
  @JsonKey()
  final String memo;
/* 予約注文判定 - true：予約注文 - false：予約注文でない */
  @override
  @JsonKey()
  final bool isReserveOrder;
/* 注文追加期間内判定 - true：注文追加期間内 - false：注文追加期間外 */
  @override
  @JsonKey()
  final bool isAdditionalOrderTerm;
/* 予約締日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'reserve_closing_datetime')
  final int epochReserveClosingDatetime;
/* 配達不在者警告ポップアップ表示判定 - true：配達不在者警告ポップアップ表示要 - false：配達不在者警告ポップアップ表示不要 */
  @override
  @JsonKey()
  final bool isDisplayAbsent;
/* 自宅外受取注文判定 - true：自宅外受取注文 - false：自宅外受取注文でない */
  @override
  @JsonKey()
  final bool isPointReceiptOrder;
/* カート内商品リスト */
  final List<CartDetailsModel> _cartDetails;
/* カート内商品リスト */
  @override
  @JsonKey()
  List<CartDetailsModel> get cartDetails {
    if (_cartDetails is EqualUnmodifiableListView) return _cartDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartDetails);
  }

/* 警告メッセージリスト */
  final List<WarnMessageModel> _warnMessages;
/* 警告メッセージリスト */
  @override
  @JsonKey(fromJson: _warnMessagesFromJson)
  List<WarnMessageModel> get warnMessages {
    if (_warnMessages is EqualUnmodifiableListView) return _warnMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_warnMessages);
  }

/* 売価変更あり判定 - true：売価変更あり - false：売価変更なし */
  @override
  @JsonKey()
  final bool isDeliveryPriceChange;
/* 配送時間帯選択済み判定 - true：配送時間帯選択済み - false：配送時間帯未選択 */
  @override
  @JsonKey()
  final bool isSelectedDeliveryTime;
/* 配送予定日時FROM　※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_plan_from_datetime')
  final int epochDeliveryPlanFromDatetime;
/* 配送予定日時TO　※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_plan_to_datetime')
  final int epochDeliveryPlanToDatetime;
/* 予約受注日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'reserve_delivery_datetime')
  final int epochReserveDeliveryDatetime;
/* 配送時間帯ID */
  @override
  @JsonKey()
  final String deliveryTimeId;
/* 変更締め日時前判定 - true：変更締め日時前 - false：変更締め日時超過 */
  @override
  @JsonKey()
  final bool isBeforeChangeClosingDatetime;
/* 便引き当て有効カート判定 - true：便引き当て有効 - false：便引き当て無効 */
  @override
  @JsonKey()
  final bool isCartAllocationValid;
/* 配送便種別 - \"01\"：通常 \"02\"：通常(遠隔) \"03\"：店舗受取 \"04\"：置き配 \"05\"：7&iロッカー受取 \"06\"：店舗ロッカー受取 null：便未選択 - */
  @override
  @JsonKey()
  final CartFulfillmentType fulfillmentType;
/* 配達住所モデル */
  @override
  final CartDeliveryAddressModel? deliveryAddress;
/* 受取地点名称 - 自宅受取の場合、nullを返却 */
  @override
  @JsonKey()
  final String receiptPointName;
/* 位置ID - 自宅受取の場合、nullを返却 */
  @override
  @JsonKey()
  final String receiptPointId;
/* 法人会員判定 - true：法人会員 - false：法人会員でない */
  @override
  @JsonKey()
  final bool isCorporateCustomer;
/* - お買い物カゴ梱包の名称を取得する - \"0\"：レジ袋をご利用 \"1\"：エコｄｅバスケットをご利用 \"2\"：簡易包装をご利用 null：梱包方法未設定 */
  @override
  @JsonKey()
  final PackMaterialType packMaterialType;
/* バスケット回収希望判定 - true：バスケット回収希望 - false：バスケット回収希望でない */
  @override
  @JsonKey()
  final bool isRequestEcoBasketReturn;
/* レジ袋利用料 */
  @override
  @JsonKey()
  final int shoppingBagPrice;
/* 宛名 */
  @override
  @JsonKey()
  final String nameOfReceipt;
/* 梱包手数料-徴収対象会員判定 - true：梱包手数料-徴収対象会員 - false：梱包手数料-徴収対象会員でない */
  @override
  @JsonKey()
  final bool isPackPriceTargetCustomer;
/* 梱包まとめ方法種別 - \"0\"：個別注文 \"1\"：複数注文(注文毎に個別梱包する) \"2\"：複数注文(まとめて梱包する) */
  @override
  @JsonKey()
  final PackMethodType packMethodType;
/* 梱包まとめ方法リスト */
  final List<PackMethodInformationModel> _packMethodInformations;
/* 梱包まとめ方法リスト */
  @override
  @JsonKey()
  List<PackMethodInformationModel> get packMethodInformations {
    if (_packMethodInformations is EqualUnmodifiableListView)
      return _packMethodInformations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packMethodInformations);
  }

/* 支払い方法 - \"1\"：代金引換 \"2\"：クレジットカード \"4\"：全額ポイント利用  null：未設定 - */
  @override
  @JsonKey()
  final PaymentMethodType paymentMethod;
/* nanaco番号あり判定 - true：nanaco番号あり - false：nanaco番号なし */
  @override
  @JsonKey()
  final bool hasNanacoNumber;
/* 今回限りカード使用判定 - true：今回限りカード使用 - false：今回限りカード使用でない */
  @override
  @JsonKey()
  final bool isLimitedCreditCardUse;
/* クレジットカード下4桁 */
  @override
  @JsonKey()
  final String creditCardLastFourDigits;
/* nanacoポイント利用判定 - true：nanacoポイントを利用する - false：nanacoポイントを利用しない */
  @override
  @JsonKey()
  final bool isNanacoPointUse;
/* nanacoポイント利用額 */
  @override
  @JsonKey()
  final int nanacoPointUsePoint;
/* 利用可能ポイント残高 */
  @override
  @JsonKey()
  final int canUseNanacoPoint;
/* nanacoポイント利用種別 - \"1\"：全てのポイントを利用する \"2\"：nポイントを利用する \"9\"：ポイントを利用しない - */
  @override
  @JsonKey()
  final NanacoPointUseType nanacoPointUseType;
/* クーポン名 */
  @override
  @JsonKey()
  final String couponName;
/* 適用済みクーポン対象商品あり判定 - true：適用済みクーポン対象商品あり - false：適用済みクーポン対象商品なし */
  @override
  @JsonKey()
  final bool hasDiscountCouponProduct;
/* クーポン利用判定 - true：クーポン利用 - false：クーポン未使用 */
  @override
  @JsonKey()
  final bool isCouponUse;
/* クーポンコード */
  @override
  @JsonKey()
  final String couponCode;
/* 残り使用回数 - クーポン無し：null 残り使用回数なし：-1 残り使用回数あり：n */
  @override
  final int? couponUseRemainingNumber;
/* クーポン適用開始配達日 - ※YYYY-MM-DDThh:mm:ss+09:00 - クーポン無しの場合、nullを返却 */
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'coupon_use_delivery_start_date')
  final int? epochCouponUseDeliveryStartDate;
/* クーポン適用終了配達日 - ※YYYY-MM-DDThh:mm:ss+09:00 - クーポン無しの場合、nullを返却 */
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'coupon_use_delivery_finish_datetime')
  final int? epochCouponUseDeliveryFinishDatetime;
/* クーポン注意事項 - クーポン無しの場合、nullを返却 */
  @override
  @JsonKey()
  final String couponGuide;
/* 欠品時連絡要判定 - true：欠品時連絡要 - false：欠品時連絡不要 */
  @override
  @JsonKey()
  final bool needNoStockContact;
/* 非接触お届け利用可能判定 - true：非接触お届け利用可能 - false：非接触お届け利用不可 */
  @override
  @JsonKey()
  final bool canUseNoContact;
/* メインメールアドレス */
  @override
  @JsonKey()
  final String mainMailAddress;
/* サブメールアドレス */
  @override
  @JsonKey()
  final String subMailAddress;
/* よりどりまとめて値引額 */
  @override
  @JsonKey()
  final int totalMixMatchDiscountPrice;
/* セット販売等割引額 - セット値引、セット販売、予約セット割引のうち適用されている割引の割引額 */
  @override
  @JsonKey()
  final int totalSetSaleDiscountPrice;
/* 点数まとめて値引額 */
  @override
  @JsonKey()
  final int totalProgressiveDiscountPrice;
/* カード会員値引額 */
  @override
  @JsonKey()
  final int totalCardMemberDiscountPrice;
/* クーポン指定商品値引額 */
  @override
  @JsonKey()
  final int couponProductTotalPrice;
/* 売り切りセール値引額 */
  @override
  @JsonKey()
  final int totalSellingOffDiscountPrice;
/* 配達料 */
  @override
  @JsonKey()
  final int deliveryPrice;
/* 配達料キャンペーン適用中判定 - true：配達料キャンペーン適用中 - false：配達料キャンペーン適用中でない */
  @override
  @JsonKey()
  final bool isDeliveryPriceCampaign;
/* 次段階までの差額 */
  @override
  @JsonKey()
  final int nextDifferenceDeliveryPrice;
/* 次段階配達料 */
  @override
  @JsonKey()
  final int nextDeliveryPrice;
/* 配達料無料までの差額 */
  @override
  @JsonKey()
  final int differenceDeliveryFree;
/* 最安配達料 */
  @override
  @JsonKey()
  final int maxDeliveryPrice;
/* 配達料種別 - \"0\"：通常配達料 \"1\"：個別配達料 \"2\"：固定配達料 \"3\"：エリア配送料 \"4\"：便別配送料 \"5\"：キャンペーン配送料 \"6\"：複数注文配送料 \"7\"：定期便配送料 - */
  @override
  @JsonKey()
  final DeliveryFeeType deliveryType;
/* 個別配達料適用会員判定 - true：個別配達料適用会員 - false：個別配達料適用会員でない */
  @override
  @JsonKey()
  final bool isIndividualDeliveryPriceTargetCustomer;
/* 個別配達料種別 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 - \"1\"：固定額 \"2\"：％割引 - */
  @override
  @JsonKey()
  final IndividualDeliveryPriceType individualDeliveryPriceType;
/* 個別配達料名 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 */
  @override
  @JsonKey()
  final String individualDeliveryName;
/* 個別配達料 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 */
  @override
  final int? individualDeliveryPrice;
/* 配送種別開始日 - ※YYYY-MM-DDThh:mm:ss+09:00 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 */
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'delivery_type_start_datetime')
  final int? epochDeliveryTypeStartDatetime;
/* 配送種別終了日 - ※YYYY-MM-DDThh:mm:ss+09:00 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 */
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'delivery_type_finish_datetime')
  final int? epochDeliveryTypeFinishDatetime;
/* 個別配達料割引率 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 */
  @override
  final int? individualDeliveryDiscountRate;
/* 梱包手数料 */
  @override
  @JsonKey()
  final int packPrice;
/* 代引手数料 */
  @override
  @JsonKey()
  final int cashDeliveryPrice;
/* キャンセル料情報リスト*/
  final List<CancelPriceInformationModel> _cancelPriceInformations;
/* キャンセル料情報リスト*/
  @override
  @JsonKey()
  List<CancelPriceInformationModel> get cancelPriceInformations {
    if (_cancelPriceInformations is EqualUnmodifiableListView)
      return _cancelPriceInformations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cancelPriceInformations);
  }

/* アイワイカード割引額 */
  @override
  @JsonKey()
  final int iyCardDiscountPrice;
/* クーポン買上総額値引額 */
  @override
  @JsonKey()
  final int couponPrice;
/* 合計金額(税込) */
  @override
  @JsonKey()
  final int totalPrice;
/* 合計金額(税抜) */
  @override
  @JsonKey()
  final int noTaxTotalPrice;
/* 受注税額情報リスト */
  final List<TaxPriceInformationModel> _taxPriceInformations;
/* 受注税額情報リスト */
  @override
  @JsonKey()
  List<TaxPriceInformationModel> get taxPriceInformations {
    if (_taxPriceInformations is EqualUnmodifiableListView)
      return _taxPriceInformations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taxPriceInformations);
  }

/* 支払額 合計金額から利用ポイントを引いた額 */
  @override
  @JsonKey()
  final int paymentAmount;
/* 商品券獲得枚数 */
  @override
  @JsonKey()
  final int ticketCount;
/* nanaco付与ポイント */
  @override
  @JsonKey()
  final int totalNanacoPoints;
/* nanacoポイント明細リスト */
  final List<NanacoPointModel> _nanacoPointInformations;
/* nanacoポイント明細リスト */
  @override
  @JsonKey()
  List<NanacoPointModel> get nanacoPointInformations {
    if (_nanacoPointInformations is EqualUnmodifiableListView)
      return _nanacoPointInformations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nanacoPointInformations);
  }

/* 適用nanacoボーナスポイント */
  @override
  @JsonKey()
  final int bonusPoint;
/* クーポン「nanaco付与ポイントプラス」適用あり判定 - true：クーポン「nanaco付与ポイントプラス」適用あり - false：クーポン「nanaco付与ポイントプラス」適用なし */
  @override
  @JsonKey()
  final bool isCouponNanacoPointPlus;
/* 適用nanacoクーポン付与ポイント */
  @override
  @JsonKey()
  final int couponPoint;
/* クーポン「nanaco付与ポイントN倍」適用あり判定 - true：クーポン「nanaco付与ポイントN倍」適用あり false：クーポン「nanaco付与ポイントN倍」適用なし - */
  @override
  @JsonKey()
  final bool isCouponNanacoPointTimes;
/* 非接触お届け利用判定 - true：非接触お届けを利用する false：非接触お届けを利用しない - */
  @override
  @JsonKey()
  final bool isNoContact;
/* 店舗-代引手数料 */
  @override
  @JsonKey()
  final int shopCashDeliveryPrice;
/* 選択中のクレジットカード識別キー */
  @override
  @JsonKey()
  final String creditCardInformationKey;
/* ロックアウト済みクレジットカードあり判定 - true：ロックアウト済みクレジットカードあり - false：ロックアウト済みクレジットカードなし */
  @override
  @JsonKey()
  final bool hasLockoutCreditCard;
/* セキュリティコード入力欄判定 - security_code_input_flagと合わせ、どちらか1つでもtrueならばセキュリティコード入力欄を表示する。 - true：セキュリティコード入力欄要 false：セキュリティコード入力欄不要 - */
  @override
  @JsonKey()
  final bool isDisplaySecurityCodeInput;
/* クレジットカード障害情報 */
  @override
  @JsonKey()
  final String creditCardNewsText;
/* マスク・nanaco番号 */
  @override
  @JsonKey()
  final String maskedNanacoNumber;
/* 受注状況 - \"3\"：未受注 \"4\"：変更中 - */
  @override
  @JsonKey()
  final CartOrderStatusType orderStatus;
/* nanacoポイント利用対象額 ※「合計金額」-「代引手数料」 */
  @override
  @JsonKey()
  final int nanacoPointUseTargetPrice;
/* 旧受注モデル */
  @override
  final OldOrderModel? oldOrder;
/* nanacoポイント付与対象判定 - true：nanacoポイント付与対象 false：nanacoポイント付与対象外 - */
  @override
  @JsonKey()
  final bool isApplyNanacoPoint;
/* セブンカード割引orカード会員割引対象商品あり判定 - true：セブンカード割引orカード会員割引対象商品あり false：セブンカード割引orカード会員割引対象商品なし - */
  @override
  @JsonKey()
  final bool hasApplyIyCardMemberDiscountProduct;
/* セブンCS認証種別 - \"0\"：未認証(セゾン以外も含む) \"1\"：クラブ・オン/ミレニアムID認証済み \"2\"：クラブ・オン/ミレニアムIDなし(セブンCS以外のセゾン) - */
  @override
  @JsonKey()
  final SevenCSCertificationType sevenCsFlag;
/* 商品点数 */
  @override
  @JsonKey()
  final int productCount;
/* 割引適用後の商品総額(税込) */
  @override
  @JsonKey()
  final int productTotalPrice;
/* 割引適用前の商品総額(税込) */
  @override
  @JsonKey()
  final int subProductTotalPrice;
/* 割引適用前の商品総額(税抜) */
  @override
  @JsonKey()
  final int noTaxSubProductTotalPrice;
/* 割引適用後の商品総額(税抜) */
  @override
  @JsonKey()
  final int noTaxProductTotalPrice;
/* nanacoポイント付与対象商品あり判定 - true：nanacoポイント付与対象商品あり - false：nanacoポイント付与対象商品なし */
  @override
  @JsonKey()
  final bool hasNanacoPointProduct;
/* クーポン選択欄判定 - true：クーポン選択欄要 - false：クーポン選択欄不要 */
  @override
  @JsonKey()
  final bool isDisplayCouponSelect;
/* 再配達料 */
  @override
  @JsonKey()
  final int redeliveryPrice;
/* デビット／プリペイドカード払い警告判定 - true：デビット／プリペイドカード払い警告要 false：デビット／プリペイドカード払い警告不要 - */
  @override
  @JsonKey()
  final bool isDebitPrepaidCardPayWarn;
/* nanaco番号認証済判定 - true：nanaco番号認証済 false：nanaco番号認証済でない - */
  @override
  @JsonKey()
  final bool isNanacoNumberAuthentication;
/* nanacoポイント認証種別 - \"1\"：セキュリティコード認証 \"2\"：パスワード認証 - */
  @override
  @JsonKey()
  final NanacoConfirmType nanacoConfirmType;
/* 予約ステータス - \"0\"：非予約受注 \"1\"：予約のみ受注 \"2\"：予約含む受注 - */
  @override
  @JsonKey()
  final CartReserveStatusType reserveStatus;
/* 予約配達可能日リスト　※yyyyMMdd */
  final List<String> _reserveDeliveryDates;
/* 予約配達可能日リスト　※yyyyMMdd */
  @override
  @JsonKey()
  List<String> get reserveDeliveryDates {
    if (_reserveDeliveryDates is EqualUnmodifiableListView)
      return _reserveDeliveryDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reserveDeliveryDates);
  }

/* 定期便申込カート判定 - true：定期便申込カート false：定期便申込カートでない - */
  @override
  @JsonKey()
  final bool isRegularShipmentApplyCart;
/* 定期便割引率 - 定期便申込カート、定期便受注のどちらでもない場合、nullを返却 */
  @override
  final int? regularShipmentDiscountRate;
/* 定期便割引額 - 定期便申込カート、定期便受注のどちらでもない場合、nullを返却 */
  @override
  final int? regularShipmentDiscountPrice;
/* 定期便配達曜日区分 - 定期便申込カート以外の場合、nullを返却 -`` \"01_MON\":月曜日 \"02_TUE\":火曜日 \"03_WED\":水曜日 \"04_THU\":木曜日 \"05_FRI\":金曜日 \"06_SAT\":土曜日 \"07_SUN\":日曜日 -`` */
  @override
  @JsonKey()
  final RegularShipmentDeliveryWeekDiv regularShipmentDeliveryWeekDiv;
/* 定期便配送日 - ※yyyyMMdd - 定期便申込カート以外の場合、nullを返却 */
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'regular_shipment_delivery_date')
  final int? epochRegularShipmentDeliveryDate;
/* 定期便配送時間From - ※hh:mm - 定期便申込カート以外の場合、nullを返却 */
  @override
  final String? regularShipmentDeliveryStartTime;
/* 定期便配送時間To - ※hh:mm - 定期便申込カート以外の場合、nullを返却 */
  @override
  final String? regularShipmentDeliveryFinishTime;
/* 定期便注文判定 - true：定期便注文 false：定期便注文でない - */
  @override
  @JsonKey()
  final bool isRegularShipmentOrder;
/* 商品総額（定期便割引後） - 定期便申込カート、定期便受注のどちらでもない場合、nullを返却 */
  @override
  final int? productTotalPriceAfterRegularShipmentDiscount;
/* 医薬品事前購入確認承認判定 - true：承認済み false：未承認 - */
  @override
  @JsonKey()
  final bool isConsentMedicine;
/* アカチャンホンポ事前承認判定 - true：承認済み false：未承認 - */
  @override
  @JsonKey()
  final bool isConsentAkachanHonpo;
/* 早期キャンセル締め注文判定 - true：早期キャンセル締め注文である false：早期キャンセル締め注文ではない - */
  @override
  @JsonKey()
  final bool isEarlyCancelOrderClosing;
/* 注文キャンセル締日時を計算し返却 - ※yyyy-MM-ddTHH:mm:ss+09:00 - 便未選択の場合、nullを返却 */
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'cancel_order_closing_datetime')
  final int? epochCancelOrderClosingDatetime;
/* 見学カートフラグ - \"1\"：見学カートである - \"0\"：見学カートではない */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool visitorCartFlag;
/* みなし便設定カートフラグ - \"1\"：みなし便設定カートである - \"0\"：みなし便設定カートではない */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool deemedDeliveryCartFlag;
/* 置き配場所 - 置き配利用以外の場合、nullを返却 - \"1\"：玄関向かって右 \"2\"：玄関向かって左 \"3\"：インターフォン下 \"9\"：その他 - */
  @override
  @JsonKey()
  final PackageDropPlace packageDropPlace;
/* 置き配場所詳細 - 置き配利用以外の場合、nullを返却 */
  @override
  @JsonKey()
  final String packageDropPlaceDetail;
/* 更新日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'update_datetime')
  final int epochUpdateDatetime;
/* 置き配切替済みフラグ - \"0\"：切替未設定 \"1\"：切替設定済み - */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool switchedPackageDropFlag;
/* 不在置き配切替可否フラグ  - \"0\"：不在置き配不可 \"1\"：不在置き配可能 - */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool switchablePackageDropFlag;
/* カートクリア日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'cart_delete_datetime')
  final int epochCartDeleteDatetime;
/* カートクリア残時間, HH:MM:SS_BFFADD_ カートクリア日時が取得できない場合、またはカートクリア日時が過去の場合はnullを返却 */
  @override
  @JsonKey()
  final String remainingTimeUntilCartDelete;

  @override
  String toString() {
    return 'CartModel(cartId: $cartId, cartStatus: $cartStatus, shop: $shop, memo: $memo, isReserveOrder: $isReserveOrder, isAdditionalOrderTerm: $isAdditionalOrderTerm, epochReserveClosingDatetime: $epochReserveClosingDatetime, isDisplayAbsent: $isDisplayAbsent, isPointReceiptOrder: $isPointReceiptOrder, cartDetails: $cartDetails, warnMessages: $warnMessages, isDeliveryPriceChange: $isDeliveryPriceChange, isSelectedDeliveryTime: $isSelectedDeliveryTime, epochDeliveryPlanFromDatetime: $epochDeliveryPlanFromDatetime, epochDeliveryPlanToDatetime: $epochDeliveryPlanToDatetime, epochReserveDeliveryDatetime: $epochReserveDeliveryDatetime, deliveryTimeId: $deliveryTimeId, isBeforeChangeClosingDatetime: $isBeforeChangeClosingDatetime, isCartAllocationValid: $isCartAllocationValid, fulfillmentType: $fulfillmentType, deliveryAddress: $deliveryAddress, receiptPointName: $receiptPointName, receiptPointId: $receiptPointId, isCorporateCustomer: $isCorporateCustomer, packMaterialType: $packMaterialType, isRequestEcoBasketReturn: $isRequestEcoBasketReturn, shoppingBagPrice: $shoppingBagPrice, nameOfReceipt: $nameOfReceipt, isPackPriceTargetCustomer: $isPackPriceTargetCustomer, packMethodType: $packMethodType, packMethodInformations: $packMethodInformations, paymentMethod: $paymentMethod, hasNanacoNumber: $hasNanacoNumber, isLimitedCreditCardUse: $isLimitedCreditCardUse, creditCardLastFourDigits: $creditCardLastFourDigits, isNanacoPointUse: $isNanacoPointUse, nanacoPointUsePoint: $nanacoPointUsePoint, canUseNanacoPoint: $canUseNanacoPoint, nanacoPointUseType: $nanacoPointUseType, couponName: $couponName, hasDiscountCouponProduct: $hasDiscountCouponProduct, isCouponUse: $isCouponUse, couponCode: $couponCode, couponUseRemainingNumber: $couponUseRemainingNumber, epochCouponUseDeliveryStartDate: $epochCouponUseDeliveryStartDate, epochCouponUseDeliveryFinishDatetime: $epochCouponUseDeliveryFinishDatetime, couponGuide: $couponGuide, needNoStockContact: $needNoStockContact, canUseNoContact: $canUseNoContact, mainMailAddress: $mainMailAddress, subMailAddress: $subMailAddress, totalMixMatchDiscountPrice: $totalMixMatchDiscountPrice, totalSetSaleDiscountPrice: $totalSetSaleDiscountPrice, totalProgressiveDiscountPrice: $totalProgressiveDiscountPrice, totalCardMemberDiscountPrice: $totalCardMemberDiscountPrice, couponProductTotalPrice: $couponProductTotalPrice, totalSellingOffDiscountPrice: $totalSellingOffDiscountPrice, deliveryPrice: $deliveryPrice, isDeliveryPriceCampaign: $isDeliveryPriceCampaign, nextDifferenceDeliveryPrice: $nextDifferenceDeliveryPrice, nextDeliveryPrice: $nextDeliveryPrice, differenceDeliveryFree: $differenceDeliveryFree, maxDeliveryPrice: $maxDeliveryPrice, deliveryType: $deliveryType, isIndividualDeliveryPriceTargetCustomer: $isIndividualDeliveryPriceTargetCustomer, individualDeliveryPriceType: $individualDeliveryPriceType, individualDeliveryName: $individualDeliveryName, individualDeliveryPrice: $individualDeliveryPrice, epochDeliveryTypeStartDatetime: $epochDeliveryTypeStartDatetime, epochDeliveryTypeFinishDatetime: $epochDeliveryTypeFinishDatetime, individualDeliveryDiscountRate: $individualDeliveryDiscountRate, packPrice: $packPrice, cashDeliveryPrice: $cashDeliveryPrice, cancelPriceInformations: $cancelPriceInformations, iyCardDiscountPrice: $iyCardDiscountPrice, couponPrice: $couponPrice, totalPrice: $totalPrice, noTaxTotalPrice: $noTaxTotalPrice, taxPriceInformations: $taxPriceInformations, paymentAmount: $paymentAmount, ticketCount: $ticketCount, totalNanacoPoints: $totalNanacoPoints, nanacoPointInformations: $nanacoPointInformations, bonusPoint: $bonusPoint, isCouponNanacoPointPlus: $isCouponNanacoPointPlus, couponPoint: $couponPoint, isCouponNanacoPointTimes: $isCouponNanacoPointTimes, isNoContact: $isNoContact, shopCashDeliveryPrice: $shopCashDeliveryPrice, creditCardInformationKey: $creditCardInformationKey, hasLockoutCreditCard: $hasLockoutCreditCard, isDisplaySecurityCodeInput: $isDisplaySecurityCodeInput, creditCardNewsText: $creditCardNewsText, maskedNanacoNumber: $maskedNanacoNumber, orderStatus: $orderStatus, nanacoPointUseTargetPrice: $nanacoPointUseTargetPrice, oldOrder: $oldOrder, isApplyNanacoPoint: $isApplyNanacoPoint, hasApplyIyCardMemberDiscountProduct: $hasApplyIyCardMemberDiscountProduct, sevenCsFlag: $sevenCsFlag, productCount: $productCount, productTotalPrice: $productTotalPrice, subProductTotalPrice: $subProductTotalPrice, noTaxSubProductTotalPrice: $noTaxSubProductTotalPrice, noTaxProductTotalPrice: $noTaxProductTotalPrice, hasNanacoPointProduct: $hasNanacoPointProduct, isDisplayCouponSelect: $isDisplayCouponSelect, redeliveryPrice: $redeliveryPrice, isDebitPrepaidCardPayWarn: $isDebitPrepaidCardPayWarn, isNanacoNumberAuthentication: $isNanacoNumberAuthentication, nanacoConfirmType: $nanacoConfirmType, reserveStatus: $reserveStatus, reserveDeliveryDates: $reserveDeliveryDates, isRegularShipmentApplyCart: $isRegularShipmentApplyCart, regularShipmentDiscountRate: $regularShipmentDiscountRate, regularShipmentDiscountPrice: $regularShipmentDiscountPrice, regularShipmentDeliveryWeekDiv: $regularShipmentDeliveryWeekDiv, epochRegularShipmentDeliveryDate: $epochRegularShipmentDeliveryDate, regularShipmentDeliveryStartTime: $regularShipmentDeliveryStartTime, regularShipmentDeliveryFinishTime: $regularShipmentDeliveryFinishTime, isRegularShipmentOrder: $isRegularShipmentOrder, productTotalPriceAfterRegularShipmentDiscount: $productTotalPriceAfterRegularShipmentDiscount, isConsentMedicine: $isConsentMedicine, isConsentAkachanHonpo: $isConsentAkachanHonpo, isEarlyCancelOrderClosing: $isEarlyCancelOrderClosing, epochCancelOrderClosingDatetime: $epochCancelOrderClosingDatetime, visitorCartFlag: $visitorCartFlag, deemedDeliveryCartFlag: $deemedDeliveryCartFlag, packageDropPlace: $packageDropPlace, packageDropPlaceDetail: $packageDropPlaceDetail, epochUpdateDatetime: $epochUpdateDatetime, switchedPackageDropFlag: $switchedPackageDropFlag, switchablePackageDropFlag: $switchablePackageDropFlag, epochCartDeleteDatetime: $epochCartDeleteDatetime, remainingTimeUntilCartDelete: $remainingTimeUntilCartDelete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartModel &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.cartStatus, cartStatus) ||
                other.cartStatus == cartStatus) &&
            (identical(other.shop, shop) || other.shop == shop) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.isReserveOrder, isReserveOrder) ||
                other.isReserveOrder == isReserveOrder) &&
            (identical(other.isAdditionalOrderTerm, isAdditionalOrderTerm) ||
                other.isAdditionalOrderTerm == isAdditionalOrderTerm) &&
            (identical(other.epochReserveClosingDatetime, epochReserveClosingDatetime) ||
                other.epochReserveClosingDatetime ==
                    epochReserveClosingDatetime) &&
            (identical(other.isDisplayAbsent, isDisplayAbsent) ||
                other.isDisplayAbsent == isDisplayAbsent) &&
            (identical(other.isPointReceiptOrder, isPointReceiptOrder) ||
                other.isPointReceiptOrder == isPointReceiptOrder) &&
            const DeepCollectionEquality()
                .equals(other._cartDetails, _cartDetails) &&
            const DeepCollectionEquality()
                .equals(other._warnMessages, _warnMessages) &&
            (identical(other.isDeliveryPriceChange, isDeliveryPriceChange) ||
                other.isDeliveryPriceChange == isDeliveryPriceChange) &&
            (identical(other.isSelectedDeliveryTime, isSelectedDeliveryTime) ||
                other.isSelectedDeliveryTime == isSelectedDeliveryTime) &&
            (identical(other.epochDeliveryPlanFromDatetime, epochDeliveryPlanFromDatetime) ||
                other.epochDeliveryPlanFromDatetime ==
                    epochDeliveryPlanFromDatetime) &&
            (identical(other.epochDeliveryPlanToDatetime, epochDeliveryPlanToDatetime) ||
                other.epochDeliveryPlanToDatetime ==
                    epochDeliveryPlanToDatetime) &&
            (identical(other.epochReserveDeliveryDatetime, epochReserveDeliveryDatetime) ||
                other.epochReserveDeliveryDatetime ==
                    epochReserveDeliveryDatetime) &&
            (identical(other.deliveryTimeId, deliveryTimeId) ||
                other.deliveryTimeId == deliveryTimeId) &&
            (identical(other.isBeforeChangeClosingDatetime, isBeforeChangeClosingDatetime) ||
                other.isBeforeChangeClosingDatetime ==
                    isBeforeChangeClosingDatetime) &&
            (identical(other.isCartAllocationValid, isCartAllocationValid) ||
                other.isCartAllocationValid == isCartAllocationValid) &&
            (identical(other.fulfillmentType, fulfillmentType) ||
                other.fulfillmentType == fulfillmentType) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.receiptPointName, receiptPointName) ||
                other.receiptPointName == receiptPointName) &&
            (identical(other.receiptPointId, receiptPointId) ||
                other.receiptPointId == receiptPointId) &&
            (identical(other.isCorporateCustomer, isCorporateCustomer) ||
                other.isCorporateCustomer == isCorporateCustomer) &&
            (identical(other.packMaterialType, packMaterialType) ||
                other.packMaterialType == packMaterialType) &&
            (identical(other.isRequestEcoBasketReturn, isRequestEcoBasketReturn) ||
                other.isRequestEcoBasketReturn == isRequestEcoBasketReturn) &&
            (identical(other.shoppingBagPrice, shoppingBagPrice) ||
                other.shoppingBagPrice == shoppingBagPrice) &&
            (identical(other.nameOfReceipt, nameOfReceipt) || other.nameOfReceipt == nameOfReceipt) &&
            (identical(other.isPackPriceTargetCustomer, isPackPriceTargetCustomer) || other.isPackPriceTargetCustomer == isPackPriceTargetCustomer) &&
            (identical(other.packMethodType, packMethodType) || other.packMethodType == packMethodType) &&
            const DeepCollectionEquality().equals(other._packMethodInformations, _packMethodInformations) &&
            (identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod) &&
            (identical(other.hasNanacoNumber, hasNanacoNumber) || other.hasNanacoNumber == hasNanacoNumber) &&
            (identical(other.isLimitedCreditCardUse, isLimitedCreditCardUse) || other.isLimitedCreditCardUse == isLimitedCreditCardUse) &&
            (identical(other.creditCardLastFourDigits, creditCardLastFourDigits) || other.creditCardLastFourDigits == creditCardLastFourDigits) &&
            (identical(other.isNanacoPointUse, isNanacoPointUse) || other.isNanacoPointUse == isNanacoPointUse) &&
            (identical(other.nanacoPointUsePoint, nanacoPointUsePoint) || other.nanacoPointUsePoint == nanacoPointUsePoint) &&
            (identical(other.canUseNanacoPoint, canUseNanacoPoint) || other.canUseNanacoPoint == canUseNanacoPoint) &&
            (identical(other.nanacoPointUseType, nanacoPointUseType) || other.nanacoPointUseType == nanacoPointUseType) &&
            (identical(other.couponName, couponName) || other.couponName == couponName) &&
            (identical(other.hasDiscountCouponProduct, hasDiscountCouponProduct) || other.hasDiscountCouponProduct == hasDiscountCouponProduct) &&
            (identical(other.isCouponUse, isCouponUse) || other.isCouponUse == isCouponUse) &&
            (identical(other.couponCode, couponCode) || other.couponCode == couponCode) &&
            (identical(other.couponUseRemainingNumber, couponUseRemainingNumber) || other.couponUseRemainingNumber == couponUseRemainingNumber) &&
            (identical(other.epochCouponUseDeliveryStartDate, epochCouponUseDeliveryStartDate) || other.epochCouponUseDeliveryStartDate == epochCouponUseDeliveryStartDate) &&
            (identical(other.epochCouponUseDeliveryFinishDatetime, epochCouponUseDeliveryFinishDatetime) || other.epochCouponUseDeliveryFinishDatetime == epochCouponUseDeliveryFinishDatetime) &&
            (identical(other.couponGuide, couponGuide) || other.couponGuide == couponGuide) &&
            (identical(other.needNoStockContact, needNoStockContact) || other.needNoStockContact == needNoStockContact) &&
            (identical(other.canUseNoContact, canUseNoContact) || other.canUseNoContact == canUseNoContact) &&
            (identical(other.mainMailAddress, mainMailAddress) || other.mainMailAddress == mainMailAddress) &&
            (identical(other.subMailAddress, subMailAddress) || other.subMailAddress == subMailAddress) &&
            (identical(other.totalMixMatchDiscountPrice, totalMixMatchDiscountPrice) || other.totalMixMatchDiscountPrice == totalMixMatchDiscountPrice) &&
            (identical(other.totalSetSaleDiscountPrice, totalSetSaleDiscountPrice) || other.totalSetSaleDiscountPrice == totalSetSaleDiscountPrice) &&
            (identical(other.totalProgressiveDiscountPrice, totalProgressiveDiscountPrice) || other.totalProgressiveDiscountPrice == totalProgressiveDiscountPrice) &&
            (identical(other.totalCardMemberDiscountPrice, totalCardMemberDiscountPrice) || other.totalCardMemberDiscountPrice == totalCardMemberDiscountPrice) &&
            (identical(other.couponProductTotalPrice, couponProductTotalPrice) || other.couponProductTotalPrice == couponProductTotalPrice) &&
            (identical(other.totalSellingOffDiscountPrice, totalSellingOffDiscountPrice) || other.totalSellingOffDiscountPrice == totalSellingOffDiscountPrice) &&
            (identical(other.deliveryPrice, deliveryPrice) || other.deliveryPrice == deliveryPrice) &&
            (identical(other.isDeliveryPriceCampaign, isDeliveryPriceCampaign) || other.isDeliveryPriceCampaign == isDeliveryPriceCampaign) &&
            (identical(other.nextDifferenceDeliveryPrice, nextDifferenceDeliveryPrice) || other.nextDifferenceDeliveryPrice == nextDifferenceDeliveryPrice) &&
            (identical(other.nextDeliveryPrice, nextDeliveryPrice) || other.nextDeliveryPrice == nextDeliveryPrice) &&
            (identical(other.differenceDeliveryFree, differenceDeliveryFree) || other.differenceDeliveryFree == differenceDeliveryFree) &&
            (identical(other.maxDeliveryPrice, maxDeliveryPrice) || other.maxDeliveryPrice == maxDeliveryPrice) &&
            (identical(other.deliveryType, deliveryType) || other.deliveryType == deliveryType) &&
            (identical(other.isIndividualDeliveryPriceTargetCustomer, isIndividualDeliveryPriceTargetCustomer) || other.isIndividualDeliveryPriceTargetCustomer == isIndividualDeliveryPriceTargetCustomer) &&
            (identical(other.individualDeliveryPriceType, individualDeliveryPriceType) || other.individualDeliveryPriceType == individualDeliveryPriceType) &&
            (identical(other.individualDeliveryName, individualDeliveryName) || other.individualDeliveryName == individualDeliveryName) &&
            (identical(other.individualDeliveryPrice, individualDeliveryPrice) || other.individualDeliveryPrice == individualDeliveryPrice) &&
            (identical(other.epochDeliveryTypeStartDatetime, epochDeliveryTypeStartDatetime) || other.epochDeliveryTypeStartDatetime == epochDeliveryTypeStartDatetime) &&
            (identical(other.epochDeliveryTypeFinishDatetime, epochDeliveryTypeFinishDatetime) || other.epochDeliveryTypeFinishDatetime == epochDeliveryTypeFinishDatetime) &&
            (identical(other.individualDeliveryDiscountRate, individualDeliveryDiscountRate) || other.individualDeliveryDiscountRate == individualDeliveryDiscountRate) &&
            (identical(other.packPrice, packPrice) || other.packPrice == packPrice) &&
            (identical(other.cashDeliveryPrice, cashDeliveryPrice) || other.cashDeliveryPrice == cashDeliveryPrice) &&
            const DeepCollectionEquality().equals(other._cancelPriceInformations, _cancelPriceInformations) &&
            (identical(other.iyCardDiscountPrice, iyCardDiscountPrice) || other.iyCardDiscountPrice == iyCardDiscountPrice) &&
            (identical(other.couponPrice, couponPrice) || other.couponPrice == couponPrice) &&
            (identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice) &&
            (identical(other.noTaxTotalPrice, noTaxTotalPrice) || other.noTaxTotalPrice == noTaxTotalPrice) &&
            const DeepCollectionEquality().equals(other._taxPriceInformations, _taxPriceInformations) &&
            (identical(other.paymentAmount, paymentAmount) || other.paymentAmount == paymentAmount) &&
            (identical(other.ticketCount, ticketCount) || other.ticketCount == ticketCount) &&
            (identical(other.totalNanacoPoints, totalNanacoPoints) || other.totalNanacoPoints == totalNanacoPoints) &&
            const DeepCollectionEquality().equals(other._nanacoPointInformations, _nanacoPointInformations) &&
            (identical(other.bonusPoint, bonusPoint) || other.bonusPoint == bonusPoint) &&
            (identical(other.isCouponNanacoPointPlus, isCouponNanacoPointPlus) || other.isCouponNanacoPointPlus == isCouponNanacoPointPlus) &&
            (identical(other.couponPoint, couponPoint) || other.couponPoint == couponPoint) &&
            (identical(other.isCouponNanacoPointTimes, isCouponNanacoPointTimes) || other.isCouponNanacoPointTimes == isCouponNanacoPointTimes) &&
            (identical(other.isNoContact, isNoContact) || other.isNoContact == isNoContact) &&
            (identical(other.shopCashDeliveryPrice, shopCashDeliveryPrice) || other.shopCashDeliveryPrice == shopCashDeliveryPrice) &&
            (identical(other.creditCardInformationKey, creditCardInformationKey) || other.creditCardInformationKey == creditCardInformationKey) &&
            (identical(other.hasLockoutCreditCard, hasLockoutCreditCard) || other.hasLockoutCreditCard == hasLockoutCreditCard) &&
            (identical(other.isDisplaySecurityCodeInput, isDisplaySecurityCodeInput) || other.isDisplaySecurityCodeInput == isDisplaySecurityCodeInput) &&
            (identical(other.creditCardNewsText, creditCardNewsText) || other.creditCardNewsText == creditCardNewsText) &&
            (identical(other.maskedNanacoNumber, maskedNanacoNumber) || other.maskedNanacoNumber == maskedNanacoNumber) &&
            (identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus) &&
            (identical(other.nanacoPointUseTargetPrice, nanacoPointUseTargetPrice) || other.nanacoPointUseTargetPrice == nanacoPointUseTargetPrice) &&
            (identical(other.oldOrder, oldOrder) || other.oldOrder == oldOrder) &&
            (identical(other.isApplyNanacoPoint, isApplyNanacoPoint) || other.isApplyNanacoPoint == isApplyNanacoPoint) &&
            (identical(other.hasApplyIyCardMemberDiscountProduct, hasApplyIyCardMemberDiscountProduct) || other.hasApplyIyCardMemberDiscountProduct == hasApplyIyCardMemberDiscountProduct) &&
            (identical(other.sevenCsFlag, sevenCsFlag) || other.sevenCsFlag == sevenCsFlag) &&
            (identical(other.productCount, productCount) || other.productCount == productCount) &&
            (identical(other.productTotalPrice, productTotalPrice) || other.productTotalPrice == productTotalPrice) &&
            (identical(other.subProductTotalPrice, subProductTotalPrice) || other.subProductTotalPrice == subProductTotalPrice) &&
            (identical(other.noTaxSubProductTotalPrice, noTaxSubProductTotalPrice) || other.noTaxSubProductTotalPrice == noTaxSubProductTotalPrice) &&
            (identical(other.noTaxProductTotalPrice, noTaxProductTotalPrice) || other.noTaxProductTotalPrice == noTaxProductTotalPrice) &&
            (identical(other.hasNanacoPointProduct, hasNanacoPointProduct) || other.hasNanacoPointProduct == hasNanacoPointProduct) &&
            (identical(other.isDisplayCouponSelect, isDisplayCouponSelect) || other.isDisplayCouponSelect == isDisplayCouponSelect) &&
            (identical(other.redeliveryPrice, redeliveryPrice) || other.redeliveryPrice == redeliveryPrice) &&
            (identical(other.isDebitPrepaidCardPayWarn, isDebitPrepaidCardPayWarn) || other.isDebitPrepaidCardPayWarn == isDebitPrepaidCardPayWarn) &&
            (identical(other.isNanacoNumberAuthentication, isNanacoNumberAuthentication) || other.isNanacoNumberAuthentication == isNanacoNumberAuthentication) &&
            (identical(other.nanacoConfirmType, nanacoConfirmType) || other.nanacoConfirmType == nanacoConfirmType) &&
            (identical(other.reserveStatus, reserveStatus) || other.reserveStatus == reserveStatus) &&
            const DeepCollectionEquality().equals(other._reserveDeliveryDates, _reserveDeliveryDates) &&
            (identical(other.isRegularShipmentApplyCart, isRegularShipmentApplyCart) || other.isRegularShipmentApplyCart == isRegularShipmentApplyCart) &&
            (identical(other.regularShipmentDiscountRate, regularShipmentDiscountRate) || other.regularShipmentDiscountRate == regularShipmentDiscountRate) &&
            (identical(other.regularShipmentDiscountPrice, regularShipmentDiscountPrice) || other.regularShipmentDiscountPrice == regularShipmentDiscountPrice) &&
            (identical(other.regularShipmentDeliveryWeekDiv, regularShipmentDeliveryWeekDiv) || other.regularShipmentDeliveryWeekDiv == regularShipmentDeliveryWeekDiv) &&
            (identical(other.epochRegularShipmentDeliveryDate, epochRegularShipmentDeliveryDate) || other.epochRegularShipmentDeliveryDate == epochRegularShipmentDeliveryDate) &&
            (identical(other.regularShipmentDeliveryStartTime, regularShipmentDeliveryStartTime) || other.regularShipmentDeliveryStartTime == regularShipmentDeliveryStartTime) &&
            (identical(other.regularShipmentDeliveryFinishTime, regularShipmentDeliveryFinishTime) || other.regularShipmentDeliveryFinishTime == regularShipmentDeliveryFinishTime) &&
            (identical(other.isRegularShipmentOrder, isRegularShipmentOrder) || other.isRegularShipmentOrder == isRegularShipmentOrder) &&
            (identical(other.productTotalPriceAfterRegularShipmentDiscount, productTotalPriceAfterRegularShipmentDiscount) || other.productTotalPriceAfterRegularShipmentDiscount == productTotalPriceAfterRegularShipmentDiscount) &&
            (identical(other.isConsentMedicine, isConsentMedicine) || other.isConsentMedicine == isConsentMedicine) &&
            (identical(other.isConsentAkachanHonpo, isConsentAkachanHonpo) || other.isConsentAkachanHonpo == isConsentAkachanHonpo) &&
            (identical(other.isEarlyCancelOrderClosing, isEarlyCancelOrderClosing) || other.isEarlyCancelOrderClosing == isEarlyCancelOrderClosing) &&
            (identical(other.epochCancelOrderClosingDatetime, epochCancelOrderClosingDatetime) || other.epochCancelOrderClosingDatetime == epochCancelOrderClosingDatetime) &&
            (identical(other.visitorCartFlag, visitorCartFlag) || other.visitorCartFlag == visitorCartFlag) &&
            (identical(other.deemedDeliveryCartFlag, deemedDeliveryCartFlag) || other.deemedDeliveryCartFlag == deemedDeliveryCartFlag) &&
            (identical(other.packageDropPlace, packageDropPlace) || other.packageDropPlace == packageDropPlace) &&
            (identical(other.packageDropPlaceDetail, packageDropPlaceDetail) || other.packageDropPlaceDetail == packageDropPlaceDetail) &&
            (identical(other.epochUpdateDatetime, epochUpdateDatetime) || other.epochUpdateDatetime == epochUpdateDatetime) &&
            (identical(other.switchedPackageDropFlag, switchedPackageDropFlag) || other.switchedPackageDropFlag == switchedPackageDropFlag) &&
            (identical(other.switchablePackageDropFlag, switchablePackageDropFlag) || other.switchablePackageDropFlag == switchablePackageDropFlag) &&
            (identical(other.epochCartDeleteDatetime, epochCartDeleteDatetime) || other.epochCartDeleteDatetime == epochCartDeleteDatetime) &&
            (identical(other.remainingTimeUntilCartDelete, remainingTimeUntilCartDelete) || other.remainingTimeUntilCartDelete == remainingTimeUntilCartDelete));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        cartId,
        cartStatus,
        shop,
        memo,
        isReserveOrder,
        isAdditionalOrderTerm,
        epochReserveClosingDatetime,
        isDisplayAbsent,
        isPointReceiptOrder,
        const DeepCollectionEquality().hash(_cartDetails),
        const DeepCollectionEquality().hash(_warnMessages),
        isDeliveryPriceChange,
        isSelectedDeliveryTime,
        epochDeliveryPlanFromDatetime,
        epochDeliveryPlanToDatetime,
        epochReserveDeliveryDatetime,
        deliveryTimeId,
        isBeforeChangeClosingDatetime,
        isCartAllocationValid,
        fulfillmentType,
        deliveryAddress,
        receiptPointName,
        receiptPointId,
        isCorporateCustomer,
        packMaterialType,
        isRequestEcoBasketReturn,
        shoppingBagPrice,
        nameOfReceipt,
        isPackPriceTargetCustomer,
        packMethodType,
        const DeepCollectionEquality().hash(_packMethodInformations),
        paymentMethod,
        hasNanacoNumber,
        isLimitedCreditCardUse,
        creditCardLastFourDigits,
        isNanacoPointUse,
        nanacoPointUsePoint,
        canUseNanacoPoint,
        nanacoPointUseType,
        couponName,
        hasDiscountCouponProduct,
        isCouponUse,
        couponCode,
        couponUseRemainingNumber,
        epochCouponUseDeliveryStartDate,
        epochCouponUseDeliveryFinishDatetime,
        couponGuide,
        needNoStockContact,
        canUseNoContact,
        mainMailAddress,
        subMailAddress,
        totalMixMatchDiscountPrice,
        totalSetSaleDiscountPrice,
        totalProgressiveDiscountPrice,
        totalCardMemberDiscountPrice,
        couponProductTotalPrice,
        totalSellingOffDiscountPrice,
        deliveryPrice,
        isDeliveryPriceCampaign,
        nextDifferenceDeliveryPrice,
        nextDeliveryPrice,
        differenceDeliveryFree,
        maxDeliveryPrice,
        deliveryType,
        isIndividualDeliveryPriceTargetCustomer,
        individualDeliveryPriceType,
        individualDeliveryName,
        individualDeliveryPrice,
        epochDeliveryTypeStartDatetime,
        epochDeliveryTypeFinishDatetime,
        individualDeliveryDiscountRate,
        packPrice,
        cashDeliveryPrice,
        const DeepCollectionEquality().hash(_cancelPriceInformations),
        iyCardDiscountPrice,
        couponPrice,
        totalPrice,
        noTaxTotalPrice,
        const DeepCollectionEquality().hash(_taxPriceInformations),
        paymentAmount,
        ticketCount,
        totalNanacoPoints,
        const DeepCollectionEquality().hash(_nanacoPointInformations),
        bonusPoint,
        isCouponNanacoPointPlus,
        couponPoint,
        isCouponNanacoPointTimes,
        isNoContact,
        shopCashDeliveryPrice,
        creditCardInformationKey,
        hasLockoutCreditCard,
        isDisplaySecurityCodeInput,
        creditCardNewsText,
        maskedNanacoNumber,
        orderStatus,
        nanacoPointUseTargetPrice,
        oldOrder,
        isApplyNanacoPoint,
        hasApplyIyCardMemberDiscountProduct,
        sevenCsFlag,
        productCount,
        productTotalPrice,
        subProductTotalPrice,
        noTaxSubProductTotalPrice,
        noTaxProductTotalPrice,
        hasNanacoPointProduct,
        isDisplayCouponSelect,
        redeliveryPrice,
        isDebitPrepaidCardPayWarn,
        isNanacoNumberAuthentication,
        nanacoConfirmType,
        reserveStatus,
        const DeepCollectionEquality().hash(_reserveDeliveryDates),
        isRegularShipmentApplyCart,
        regularShipmentDiscountRate,
        regularShipmentDiscountPrice,
        regularShipmentDeliveryWeekDiv,
        epochRegularShipmentDeliveryDate,
        regularShipmentDeliveryStartTime,
        regularShipmentDeliveryFinishTime,
        isRegularShipmentOrder,
        productTotalPriceAfterRegularShipmentDiscount,
        isConsentMedicine,
        isConsentAkachanHonpo,
        isEarlyCancelOrderClosing,
        epochCancelOrderClosingDatetime,
        visitorCartFlag,
        deemedDeliveryCartFlag,
        packageDropPlace,
        packageDropPlaceDetail,
        epochUpdateDatetime,
        switchedPackageDropFlag,
        switchablePackageDropFlag,
        epochCartDeleteDatetime,
        remainingTimeUntilCartDelete
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      __$$_CartModelCopyWithImpl<_$_CartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartModelToJson(
      this,
    );
  }
}

abstract class _CartModel extends CartModel {
  const factory _CartModel(
      {final int cartId,
      final CartStatus cartStatus,
      final ShopModel shop,
      final String memo,
      final bool isReserveOrder,
      final bool isAdditionalOrderTerm,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'reserve_closing_datetime')
          final int epochReserveClosingDatetime,
      final bool isDisplayAbsent,
      final bool isPointReceiptOrder,
      final List<CartDetailsModel> cartDetails,
      @JsonKey(fromJson: _warnMessagesFromJson)
          final List<WarnMessageModel> warnMessages,
      final bool isDeliveryPriceChange,
      final bool isSelectedDeliveryTime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_from_datetime')
          final int epochDeliveryPlanFromDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_to_datetime')
          final int epochDeliveryPlanToDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'reserve_delivery_datetime')
          final int epochReserveDeliveryDatetime,
      final String deliveryTimeId,
      final bool isBeforeChangeClosingDatetime,
      final bool isCartAllocationValid,
      final CartFulfillmentType fulfillmentType,
      final CartDeliveryAddressModel? deliveryAddress,
      final String receiptPointName,
      final String receiptPointId,
      final bool isCorporateCustomer,
      final PackMaterialType packMaterialType,
      final bool isRequestEcoBasketReturn,
      final int shoppingBagPrice,
      final String nameOfReceipt,
      final bool isPackPriceTargetCustomer,
      final PackMethodType packMethodType,
      final List<PackMethodInformationModel> packMethodInformations,
      final PaymentMethodType paymentMethod,
      final bool hasNanacoNumber,
      final bool isLimitedCreditCardUse,
      final String creditCardLastFourDigits,
      final bool isNanacoPointUse,
      final int nanacoPointUsePoint,
      final int canUseNanacoPoint,
      final NanacoPointUseType nanacoPointUseType,
      final String couponName,
      final bool hasDiscountCouponProduct,
      final bool isCouponUse,
      final String couponCode,
      final int? couponUseRemainingNumber,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'coupon_use_delivery_start_date')
          final int? epochCouponUseDeliveryStartDate,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'coupon_use_delivery_finish_datetime')
          final int? epochCouponUseDeliveryFinishDatetime,
      final String couponGuide,
      final bool needNoStockContact,
      final bool canUseNoContact,
      final String mainMailAddress,
      final String subMailAddress,
      final int totalMixMatchDiscountPrice,
      final int totalSetSaleDiscountPrice,
      final int totalProgressiveDiscountPrice,
      final int totalCardMemberDiscountPrice,
      final int couponProductTotalPrice,
      final int totalSellingOffDiscountPrice,
      final int deliveryPrice,
      final bool isDeliveryPriceCampaign,
      final int nextDifferenceDeliveryPrice,
      final int nextDeliveryPrice,
      final int differenceDeliveryFree,
      final int maxDeliveryPrice,
      final DeliveryFeeType deliveryType,
      final bool isIndividualDeliveryPriceTargetCustomer,
      final IndividualDeliveryPriceType individualDeliveryPriceType,
      final String individualDeliveryName,
      final int? individualDeliveryPrice,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'delivery_type_start_datetime')
          final int? epochDeliveryTypeStartDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'delivery_type_finish_datetime')
          final int? epochDeliveryTypeFinishDatetime,
      final int? individualDeliveryDiscountRate,
      final int packPrice,
      final int cashDeliveryPrice,
      final List<CancelPriceInformationModel> cancelPriceInformations,
      final int iyCardDiscountPrice,
      final int couponPrice,
      final int totalPrice,
      final int noTaxTotalPrice,
      final List<TaxPriceInformationModel> taxPriceInformations,
      final int paymentAmount,
      final int ticketCount,
      final int totalNanacoPoints,
      final List<NanacoPointModel> nanacoPointInformations,
      final int bonusPoint,
      final bool isCouponNanacoPointPlus,
      final int couponPoint,
      final bool isCouponNanacoPointTimes,
      final bool isNoContact,
      final int shopCashDeliveryPrice,
      final String creditCardInformationKey,
      final bool hasLockoutCreditCard,
      final bool isDisplaySecurityCodeInput,
      final String creditCardNewsText,
      final String maskedNanacoNumber,
      final CartOrderStatusType orderStatus,
      final int nanacoPointUseTargetPrice,
      final OldOrderModel? oldOrder,
      final bool isApplyNanacoPoint,
      final bool hasApplyIyCardMemberDiscountProduct,
      final SevenCSCertificationType sevenCsFlag,
      final int productCount,
      final int productTotalPrice,
      final int subProductTotalPrice,
      final int noTaxSubProductTotalPrice,
      final int noTaxProductTotalPrice,
      final bool hasNanacoPointProduct,
      final bool isDisplayCouponSelect,
      final int redeliveryPrice,
      final bool isDebitPrepaidCardPayWarn,
      final bool isNanacoNumberAuthentication,
      final NanacoConfirmType nanacoConfirmType,
      final CartReserveStatusType reserveStatus,
      final List<String> reserveDeliveryDates,
      final bool isRegularShipmentApplyCart,
      final int? regularShipmentDiscountRate,
      final int? regularShipmentDiscountPrice,
      final RegularShipmentDeliveryWeekDiv regularShipmentDeliveryWeekDiv,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'regular_shipment_delivery_date')
          final int? epochRegularShipmentDeliveryDate,
      final String? regularShipmentDeliveryStartTime,
      final String? regularShipmentDeliveryFinishTime,
      final bool isRegularShipmentOrder,
      final int? productTotalPriceAfterRegularShipmentDiscount,
      final bool isConsentMedicine,
      final bool isConsentAkachanHonpo,
      final bool isEarlyCancelOrderClosing,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'cancel_order_closing_datetime')
          final int? epochCancelOrderClosingDatetime,
      @StringToBooleanConverter()
          final bool visitorCartFlag,
      @StringToBooleanConverter()
          final bool deemedDeliveryCartFlag,
      final PackageDropPlace packageDropPlace,
      final String packageDropPlaceDetail,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'update_datetime')
          final int epochUpdateDatetime,
      @StringToBooleanConverter()
          final bool switchedPackageDropFlag,
      @StringToBooleanConverter()
          final bool switchablePackageDropFlag,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'cart_delete_datetime')
          final int epochCartDeleteDatetime,
      final String remainingTimeUntilCartDelete}) = _$_CartModel;
  const _CartModel._() : super._();

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$_CartModel.fromJson;

  @override /* カートID */
  int get cartId;
  @override /* カート状態 */
  CartStatus get cartStatus;
  @override /* 店舗情報モデル */
  ShopModel get shop;
  @override /* メモ */
  String get memo;
  @override /* 予約注文判定 - true：予約注文 - false：予約注文でない */
  bool get isReserveOrder;
  @override /* 注文追加期間内判定 - true：注文追加期間内 - false：注文追加期間外 */
  bool get isAdditionalOrderTerm;
  @override /* 予約締日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'reserve_closing_datetime')
  int get epochReserveClosingDatetime;
  @override /* 配達不在者警告ポップアップ表示判定 - true：配達不在者警告ポップアップ表示要 - false：配達不在者警告ポップアップ表示不要 */
  bool get isDisplayAbsent;
  @override /* 自宅外受取注文判定 - true：自宅外受取注文 - false：自宅外受取注文でない */
  bool get isPointReceiptOrder;
  @override /* カート内商品リスト */
  List<CartDetailsModel> get cartDetails;
  @override /* 警告メッセージリスト */
  @JsonKey(fromJson: _warnMessagesFromJson)
  List<WarnMessageModel> get warnMessages;
  @override /* 売価変更あり判定 - true：売価変更あり - false：売価変更なし */
  bool get isDeliveryPriceChange;
  @override /* 配送時間帯選択済み判定 - true：配送時間帯選択済み - false：配送時間帯未選択 */
  bool get isSelectedDeliveryTime;
  @override /* 配送予定日時FROM　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_plan_from_datetime')
  int get epochDeliveryPlanFromDatetime;
  @override /* 配送予定日時TO　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_plan_to_datetime')
  int get epochDeliveryPlanToDatetime;
  @override /* 予約受注日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'reserve_delivery_datetime')
  int get epochReserveDeliveryDatetime;
  @override /* 配送時間帯ID */
  String get deliveryTimeId;
  @override /* 変更締め日時前判定 - true：変更締め日時前 - false：変更締め日時超過 */
  bool get isBeforeChangeClosingDatetime;
  @override /* 便引き当て有効カート判定 - true：便引き当て有効 - false：便引き当て無効 */
  bool get isCartAllocationValid;
  @override /* 配送便種別 - \"01\"：通常 \"02\"：通常(遠隔) \"03\"：店舗受取 \"04\"：置き配 \"05\"：7&iロッカー受取 \"06\"：店舗ロッカー受取 null：便未選択 - */
  CartFulfillmentType get fulfillmentType;
  @override /* 配達住所モデル */
  CartDeliveryAddressModel? get deliveryAddress;
  @override /* 受取地点名称 - 自宅受取の場合、nullを返却 */
  String get receiptPointName;
  @override /* 位置ID - 自宅受取の場合、nullを返却 */
  String get receiptPointId;
  @override /* 法人会員判定 - true：法人会員 - false：法人会員でない */
  bool get isCorporateCustomer;
  @override /* - お買い物カゴ梱包の名称を取得する - \"0\"：レジ袋をご利用 \"1\"：エコｄｅバスケットをご利用 \"2\"：簡易包装をご利用 null：梱包方法未設定 */
  PackMaterialType get packMaterialType;
  @override /* バスケット回収希望判定 - true：バスケット回収希望 - false：バスケット回収希望でない */
  bool get isRequestEcoBasketReturn;
  @override /* レジ袋利用料 */
  int get shoppingBagPrice;
  @override /* 宛名 */
  String get nameOfReceipt;
  @override /* 梱包手数料-徴収対象会員判定 - true：梱包手数料-徴収対象会員 - false：梱包手数料-徴収対象会員でない */
  bool get isPackPriceTargetCustomer;
  @override /* 梱包まとめ方法種別 - \"0\"：個別注文 \"1\"：複数注文(注文毎に個別梱包する) \"2\"：複数注文(まとめて梱包する) */
  PackMethodType get packMethodType;
  @override /* 梱包まとめ方法リスト */
  List<PackMethodInformationModel> get packMethodInformations;
  @override /* 支払い方法 - \"1\"：代金引換 \"2\"：クレジットカード \"4\"：全額ポイント利用  null：未設定 - */
  PaymentMethodType get paymentMethod;
  @override /* nanaco番号あり判定 - true：nanaco番号あり - false：nanaco番号なし */
  bool get hasNanacoNumber;
  @override /* 今回限りカード使用判定 - true：今回限りカード使用 - false：今回限りカード使用でない */
  bool get isLimitedCreditCardUse;
  @override /* クレジットカード下4桁 */
  String get creditCardLastFourDigits;
  @override /* nanacoポイント利用判定 - true：nanacoポイントを利用する - false：nanacoポイントを利用しない */
  bool get isNanacoPointUse;
  @override /* nanacoポイント利用額 */
  int get nanacoPointUsePoint;
  @override /* 利用可能ポイント残高 */
  int get canUseNanacoPoint;
  @override /* nanacoポイント利用種別 - \"1\"：全てのポイントを利用する \"2\"：nポイントを利用する \"9\"：ポイントを利用しない - */
  NanacoPointUseType get nanacoPointUseType;
  @override /* クーポン名 */
  String get couponName;
  @override /* 適用済みクーポン対象商品あり判定 - true：適用済みクーポン対象商品あり - false：適用済みクーポン対象商品なし */
  bool get hasDiscountCouponProduct;
  @override /* クーポン利用判定 - true：クーポン利用 - false：クーポン未使用 */
  bool get isCouponUse;
  @override /* クーポンコード */
  String get couponCode;
  @override /* 残り使用回数 - クーポン無し：null 残り使用回数なし：-1 残り使用回数あり：n */
  int? get couponUseRemainingNumber;
  @override /* クーポン適用開始配達日 - ※YYYY-MM-DDThh:mm:ss+09:00 - クーポン無しの場合、nullを返却 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'coupon_use_delivery_start_date')
  int? get epochCouponUseDeliveryStartDate;
  @override /* クーポン適用終了配達日 - ※YYYY-MM-DDThh:mm:ss+09:00 - クーポン無しの場合、nullを返却 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'coupon_use_delivery_finish_datetime')
  int? get epochCouponUseDeliveryFinishDatetime;
  @override /* クーポン注意事項 - クーポン無しの場合、nullを返却 */
  String get couponGuide;
  @override /* 欠品時連絡要判定 - true：欠品時連絡要 - false：欠品時連絡不要 */
  bool get needNoStockContact;
  @override /* 非接触お届け利用可能判定 - true：非接触お届け利用可能 - false：非接触お届け利用不可 */
  bool get canUseNoContact;
  @override /* メインメールアドレス */
  String get mainMailAddress;
  @override /* サブメールアドレス */
  String get subMailAddress;
  @override /* よりどりまとめて値引額 */
  int get totalMixMatchDiscountPrice;
  @override /* セット販売等割引額 - セット値引、セット販売、予約セット割引のうち適用されている割引の割引額 */
  int get totalSetSaleDiscountPrice;
  @override /* 点数まとめて値引額 */
  int get totalProgressiveDiscountPrice;
  @override /* カード会員値引額 */
  int get totalCardMemberDiscountPrice;
  @override /* クーポン指定商品値引額 */
  int get couponProductTotalPrice;
  @override /* 売り切りセール値引額 */
  int get totalSellingOffDiscountPrice;
  @override /* 配達料 */
  int get deliveryPrice;
  @override /* 配達料キャンペーン適用中判定 - true：配達料キャンペーン適用中 - false：配達料キャンペーン適用中でない */
  bool get isDeliveryPriceCampaign;
  @override /* 次段階までの差額 */
  int get nextDifferenceDeliveryPrice;
  @override /* 次段階配達料 */
  int get nextDeliveryPrice;
  @override /* 配達料無料までの差額 */
  int get differenceDeliveryFree;
  @override /* 最安配達料 */
  int get maxDeliveryPrice;
  @override /* 配達料種別 - \"0\"：通常配達料 \"1\"：個別配達料 \"2\"：固定配達料 \"3\"：エリア配送料 \"4\"：便別配送料 \"5\"：キャンペーン配送料 \"6\"：複数注文配送料 \"7\"：定期便配送料 - */
  DeliveryFeeType get deliveryType;
  @override /* 個別配達料適用会員判定 - true：個別配達料適用会員 - false：個別配達料適用会員でない */
  bool get isIndividualDeliveryPriceTargetCustomer;
  @override /* 個別配達料種別 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 - \"1\"：固定額 \"2\"：％割引 - */
  IndividualDeliveryPriceType get individualDeliveryPriceType;
  @override /* 個別配達料名 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 */
  String get individualDeliveryName;
  @override /* 個別配達料 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 */
  int? get individualDeliveryPrice;
  @override /* 配送種別開始日 - ※YYYY-MM-DDThh:mm:ss+09:00 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'delivery_type_start_datetime')
  int? get epochDeliveryTypeStartDatetime;
  @override /* 配送種別終了日 - ※YYYY-MM-DDThh:mm:ss+09:00 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'delivery_type_finish_datetime')
  int? get epochDeliveryTypeFinishDatetime;
  @override /* 個別配達料割引率 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 */
  int? get individualDeliveryDiscountRate;
  @override /* 梱包手数料 */
  int get packPrice;
  @override /* 代引手数料 */
  int get cashDeliveryPrice;
  @override /* キャンセル料情報リスト*/
  List<CancelPriceInformationModel> get cancelPriceInformations;
  @override /* アイワイカード割引額 */
  int get iyCardDiscountPrice;
  @override /* クーポン買上総額値引額 */
  int get couponPrice;
  @override /* 合計金額(税込) */
  int get totalPrice;
  @override /* 合計金額(税抜) */
  int get noTaxTotalPrice;
  @override /* 受注税額情報リスト */
  List<TaxPriceInformationModel> get taxPriceInformations;
  @override /* 支払額 合計金額から利用ポイントを引いた額 */
  int get paymentAmount;
  @override /* 商品券獲得枚数 */
  int get ticketCount;
  @override /* nanaco付与ポイント */
  int get totalNanacoPoints;
  @override /* nanacoポイント明細リスト */
  List<NanacoPointModel> get nanacoPointInformations;
  @override /* 適用nanacoボーナスポイント */
  int get bonusPoint;
  @override /* クーポン「nanaco付与ポイントプラス」適用あり判定 - true：クーポン「nanaco付与ポイントプラス」適用あり - false：クーポン「nanaco付与ポイントプラス」適用なし */
  bool get isCouponNanacoPointPlus;
  @override /* 適用nanacoクーポン付与ポイント */
  int get couponPoint;
  @override /* クーポン「nanaco付与ポイントN倍」適用あり判定 - true：クーポン「nanaco付与ポイントN倍」適用あり false：クーポン「nanaco付与ポイントN倍」適用なし - */
  bool get isCouponNanacoPointTimes;
  @override /* 非接触お届け利用判定 - true：非接触お届けを利用する false：非接触お届けを利用しない - */
  bool get isNoContact;
  @override /* 店舗-代引手数料 */
  int get shopCashDeliveryPrice;
  @override /* 選択中のクレジットカード識別キー */
  String get creditCardInformationKey;
  @override /* ロックアウト済みクレジットカードあり判定 - true：ロックアウト済みクレジットカードあり - false：ロックアウト済みクレジットカードなし */
  bool get hasLockoutCreditCard;
  @override /* セキュリティコード入力欄判定 - security_code_input_flagと合わせ、どちらか1つでもtrueならばセキュリティコード入力欄を表示する。 - true：セキュリティコード入力欄要 false：セキュリティコード入力欄不要 - */
  bool get isDisplaySecurityCodeInput;
  @override /* クレジットカード障害情報 */
  String get creditCardNewsText;
  @override /* マスク・nanaco番号 */
  String get maskedNanacoNumber;
  @override /* 受注状況 - \"3\"：未受注 \"4\"：変更中 - */
  CartOrderStatusType get orderStatus;
  @override /* nanacoポイント利用対象額 ※「合計金額」-「代引手数料」 */
  int get nanacoPointUseTargetPrice;
  @override /* 旧受注モデル */
  OldOrderModel? get oldOrder;
  @override /* nanacoポイント付与対象判定 - true：nanacoポイント付与対象 false：nanacoポイント付与対象外 - */
  bool get isApplyNanacoPoint;
  @override /* セブンカード割引orカード会員割引対象商品あり判定 - true：セブンカード割引orカード会員割引対象商品あり false：セブンカード割引orカード会員割引対象商品なし - */
  bool get hasApplyIyCardMemberDiscountProduct;
  @override /* セブンCS認証種別 - \"0\"：未認証(セゾン以外も含む) \"1\"：クラブ・オン/ミレニアムID認証済み \"2\"：クラブ・オン/ミレニアムIDなし(セブンCS以外のセゾン) - */
  SevenCSCertificationType get sevenCsFlag;
  @override /* 商品点数 */
  int get productCount;
  @override /* 割引適用後の商品総額(税込) */
  int get productTotalPrice;
  @override /* 割引適用前の商品総額(税込) */
  int get subProductTotalPrice;
  @override /* 割引適用前の商品総額(税抜) */
  int get noTaxSubProductTotalPrice;
  @override /* 割引適用後の商品総額(税抜) */
  int get noTaxProductTotalPrice;
  @override /* nanacoポイント付与対象商品あり判定 - true：nanacoポイント付与対象商品あり - false：nanacoポイント付与対象商品なし */
  bool get hasNanacoPointProduct;
  @override /* クーポン選択欄判定 - true：クーポン選択欄要 - false：クーポン選択欄不要 */
  bool get isDisplayCouponSelect;
  @override /* 再配達料 */
  int get redeliveryPrice;
  @override /* デビット／プリペイドカード払い警告判定 - true：デビット／プリペイドカード払い警告要 false：デビット／プリペイドカード払い警告不要 - */
  bool get isDebitPrepaidCardPayWarn;
  @override /* nanaco番号認証済判定 - true：nanaco番号認証済 false：nanaco番号認証済でない - */
  bool get isNanacoNumberAuthentication;
  @override /* nanacoポイント認証種別 - \"1\"：セキュリティコード認証 \"2\"：パスワード認証 - */
  NanacoConfirmType get nanacoConfirmType;
  @override /* 予約ステータス - \"0\"：非予約受注 \"1\"：予約のみ受注 \"2\"：予約含む受注 - */
  CartReserveStatusType get reserveStatus;
  @override /* 予約配達可能日リスト　※yyyyMMdd */
  List<String> get reserveDeliveryDates;
  @override /* 定期便申込カート判定 - true：定期便申込カート false：定期便申込カートでない - */
  bool get isRegularShipmentApplyCart;
  @override /* 定期便割引率 - 定期便申込カート、定期便受注のどちらでもない場合、nullを返却 */
  int? get regularShipmentDiscountRate;
  @override /* 定期便割引額 - 定期便申込カート、定期便受注のどちらでもない場合、nullを返却 */
  int? get regularShipmentDiscountPrice;
  @override /* 定期便配達曜日区分 - 定期便申込カート以外の場合、nullを返却 -`` \"01_MON\":月曜日 \"02_TUE\":火曜日 \"03_WED\":水曜日 \"04_THU\":木曜日 \"05_FRI\":金曜日 \"06_SAT\":土曜日 \"07_SUN\":日曜日 -`` */
  RegularShipmentDeliveryWeekDiv get regularShipmentDeliveryWeekDiv;
  @override /* 定期便配送日 - ※yyyyMMdd - 定期便申込カート以外の場合、nullを返却 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'regular_shipment_delivery_date')
  int? get epochRegularShipmentDeliveryDate;
  @override /* 定期便配送時間From - ※hh:mm - 定期便申込カート以外の場合、nullを返却 */
  String? get regularShipmentDeliveryStartTime;
  @override /* 定期便配送時間To - ※hh:mm - 定期便申込カート以外の場合、nullを返却 */
  String? get regularShipmentDeliveryFinishTime;
  @override /* 定期便注文判定 - true：定期便注文 false：定期便注文でない - */
  bool get isRegularShipmentOrder;
  @override /* 商品総額（定期便割引後） - 定期便申込カート、定期便受注のどちらでもない場合、nullを返却 */
  int? get productTotalPriceAfterRegularShipmentDiscount;
  @override /* 医薬品事前購入確認承認判定 - true：承認済み false：未承認 - */
  bool get isConsentMedicine;
  @override /* アカチャンホンポ事前承認判定 - true：承認済み false：未承認 - */
  bool get isConsentAkachanHonpo;
  @override /* 早期キャンセル締め注文判定 - true：早期キャンセル締め注文である false：早期キャンセル締め注文ではない - */
  bool get isEarlyCancelOrderClosing;
  @override /* 注文キャンセル締日時を計算し返却 - ※yyyy-MM-ddTHH:mm:ss+09:00 - 便未選択の場合、nullを返却 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'cancel_order_closing_datetime')
  int? get epochCancelOrderClosingDatetime;
  @override /* 見学カートフラグ - \"1\"：見学カートである - \"0\"：見学カートではない */
  @StringToBooleanConverter()
  bool get visitorCartFlag;
  @override /* みなし便設定カートフラグ - \"1\"：みなし便設定カートである - \"0\"：みなし便設定カートではない */
  @StringToBooleanConverter()
  bool get deemedDeliveryCartFlag;
  @override /* 置き配場所 - 置き配利用以外の場合、nullを返却 - \"1\"：玄関向かって右 \"2\"：玄関向かって左 \"3\"：インターフォン下 \"9\"：その他 - */
  PackageDropPlace get packageDropPlace;
  @override /* 置き配場所詳細 - 置き配利用以外の場合、nullを返却 */
  String get packageDropPlaceDetail;
  @override /* 更新日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'update_datetime')
  int get epochUpdateDatetime;
  @override /* 置き配切替済みフラグ - \"0\"：切替未設定 \"1\"：切替設定済み - */
  @StringToBooleanConverter()
  bool get switchedPackageDropFlag;
  @override /* 不在置き配切替可否フラグ  - \"0\"：不在置き配不可 \"1\"：不在置き配可能 - */
  @StringToBooleanConverter()
  bool get switchablePackageDropFlag;
  @override /* カートクリア日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'cart_delete_datetime')
  int get epochCartDeleteDatetime;
  @override /* カートクリア残時間, HH:MM:SS_BFFADD_ カートクリア日時が取得できない場合、またはカートクリア日時が過去の場合はnullを返却 */
  String get remainingTimeUntilCartDelete;
  @override
  @JsonKey(ignore: true)
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}
