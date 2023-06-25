// ignore_for_file: invalid_annotation_target

import 'package:flutter/material.dart';

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../../enum/cart_fulfillment_type.dart';
import '../../../enum/cart_order_status_type.dart';
import '../../../enum/cart_reserve_status_type.dart';
import '../../../enum/cart_status.dart';
import '../../../enum/delivery_fee_type.dart';
import '../../../enum/individual_delivery_price_type.dart';
import '../../../enum/nanaco_confirm_type.dart';
import '../../../enum/nanaco_point_use_type.dart';
import '../../../enum/pack_material_type.dart';
import '../../../enum/pack_method_type.dart';
import '../../../enum/package_drop_place.dart';
import '../../../enum/payment_method_type.dart';
import '../../../enum/regular_shipment_delivery_week_div.dart';
import '../../../enum/seven_cs_certification_type.dart';
import '../../../ui/common/app_dialogs.dart';
import '../../../ui/common/app_loading.dart';
import '../../../util/boolean_json_converter.dart';
import '../../../util/cart_info_manager.dart';
import '../../../util/datetime_json_converter.dart';
import 'cancel_price_information_model.dart';
import 'cart_delivery_address_model.dart';
import 'cart_details_model.dart';
import 'nanaco_point_model.dart';
import 'old_order_model.dart';
import 'pack_method_information_model.dart';
import 'shop_model.dart';
import 'tax_price_information_model.dart';
import 'warn_message_model.dart';

part 'cart_model.freezed.dart';

part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {
  const CartModel._();

  const factory CartModel({
    /* カートID */
    @Default(-1) int cartId,
    /* カート状態 */
    @Default(CartStatus.visitorHomeDelivery) CartStatus cartStatus,
    /* 店舗情報モデル */
    @Default(ShopModel()) ShopModel shop,
    /* メモ */
    @Default('') String memo,
    /* 予約注文判定 - true：予約注文 - false：予約注文でない */
    @Default(false) bool isReserveOrder,
    /* 注文追加期間内判定 - true：注文追加期間内 - false：注文追加期間外 */
    @Default(false) bool isAdditionalOrderTerm,
    /* 予約締日時　※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter()
    @Default(0)
    @JsonKey(name: 'reserve_closing_datetime')
        int epochReserveClosingDatetime,
    /* 配達不在者警告ポップアップ表示判定 - true：配達不在者警告ポップアップ表示要 - false：配達不在者警告ポップアップ表示不要 */
    @Default(false) bool isDisplayAbsent,
    /* 自宅外受取注文判定 - true：自宅外受取注文 - false：自宅外受取注文でない */
    @Default(false) bool isPointReceiptOrder,
    /* カート内商品リスト */
    @Default(<CartDetailsModel>[]) List<CartDetailsModel> cartDetails,
    /* 警告メッセージリスト */
    @Default(<WarnMessageModel>[]) @JsonKey(fromJson: _warnMessagesFromJson) List<WarnMessageModel> warnMessages,
    /* 売価変更あり判定 - true：売価変更あり - false：売価変更なし */
    @Default(false) bool isDeliveryPriceChange,
    /* 配送時間帯選択済み判定 - true：配送時間帯選択済み - false：配送時間帯未選択 */
    @Default(false) bool isSelectedDeliveryTime,
    /* 配送予定日時FROM　※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter()
    @Default(0)
    @JsonKey(name: 'delivery_plan_from_datetime')
        int epochDeliveryPlanFromDatetime,
    /* 配送予定日時TO　※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter()
    @Default(0)
    @JsonKey(name: 'delivery_plan_to_datetime')
        int epochDeliveryPlanToDatetime,
    /* 予約受注日時　※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter()
    @Default(0)
    @JsonKey(name: 'reserve_delivery_datetime')
        int epochReserveDeliveryDatetime,
    /* 配送時間帯ID */
    @Default('') String deliveryTimeId,
    /* 変更締め日時前判定 - true：変更締め日時前 - false：変更締め日時超過 */
    @Default(false) bool isBeforeChangeClosingDatetime,
    /* 便引き当て有効カート判定 - true：便引き当て有効 - false：便引き当て無効 */
    @Default(false) bool isCartAllocationValid,
    /* 配送便種別 - \"01\"：通常 \"02\"：通常(遠隔) \"03\"：店舗受取 \"04\"：置き配 \"05\"：7&iロッカー受取 \"06\"：店舗ロッカー受取 null：便未選択 - */
    @Default(CartFulfillmentType.none) CartFulfillmentType fulfillmentType,
    /* 配達住所モデル */
    CartDeliveryAddressModel? deliveryAddress,
    /* 受取地点名称 - 自宅受取の場合、nullを返却 */
    @Default('') String receiptPointName,
    /* 位置ID - 自宅受取の場合、nullを返却 */
    @Default('') String receiptPointId,
    /* 法人会員判定 - true：法人会員 - false：法人会員でない */
    @Default(false) bool isCorporateCustomer,
    /* - お買い物カゴ梱包の名称を取得する - \"0\"：レジ袋をご利用 \"1\"：エコｄｅバスケットをご利用 \"2\"：簡易包装をご利用 null：梱包方法未設定 */
    @Default(PackMaterialType.none) PackMaterialType packMaterialType,
    /* バスケット回収希望判定 - true：バスケット回収希望 - false：バスケット回収希望でない */
    @Default(false) bool isRequestEcoBasketReturn,
    /* レジ袋利用料 */
    @Default(0) int shoppingBagPrice,
    /* 宛名 */
    @Default('') String nameOfReceipt,
    /* 梱包手数料-徴収対象会員判定 - true：梱包手数料-徴収対象会員 - false：梱包手数料-徴収対象会員でない */
    @Default(false) bool isPackPriceTargetCustomer,
    /* 梱包まとめ方法種別 - \"0\"：個別注文 \"1\"：複数注文(注文毎に個別梱包する) \"2\"：複数注文(まとめて梱包する) */
    @Default(PackMethodType.individualOrder) PackMethodType packMethodType,
    /* 梱包まとめ方法リスト */
    @Default(<PackMethodInformationModel>[]) List<PackMethodInformationModel> packMethodInformations,
    /* 支払い方法 - \"1\"：代金引換 \"2\"：クレジットカード \"4\"：全額ポイント利用  null：未設定 - */
    @Default(PaymentMethodType.none) PaymentMethodType paymentMethod,
    /* nanaco番号あり判定 - true：nanaco番号あり - false：nanaco番号なし */
    @Default(false) bool hasNanacoNumber,
    /* 今回限りカード使用判定 - true：今回限りカード使用 - false：今回限りカード使用でない */
    @Default(false) bool isLimitedCreditCardUse,
    /* クレジットカード下4桁 */
    @Default('') String creditCardLastFourDigits,
    /* nanacoポイント利用判定 - true：nanacoポイントを利用する - false：nanacoポイントを利用しない */
    @Default(false) bool isNanacoPointUse,
    /* nanacoポイント利用額 */
    @Default(0) int nanacoPointUsePoint,
    /* 利用可能ポイント残高 */
    @Default(0) int canUseNanacoPoint,
    /* nanacoポイント利用種別 - \"1\"：全てのポイントを利用する \"2\"：nポイントを利用する \"9\"：ポイントを利用しない - */
    @Default(NanacoPointUseType.useAllPoints) NanacoPointUseType nanacoPointUseType,
    /* クーポン名 */
    @Default('') String couponName,
    /* 適用済みクーポン対象商品あり判定 - true：適用済みクーポン対象商品あり - false：適用済みクーポン対象商品なし */
    @Default(false) bool hasDiscountCouponProduct,
    /* クーポン利用判定 - true：クーポン利用 - false：クーポン未使用 */
    @Default(false) bool isCouponUse,
    /* クーポンコード */
    @Default('') String couponCode,
    /* 残り使用回数 - クーポン無し：null 残り使用回数なし：-1 残り使用回数あり：n */
    int? couponUseRemainingNumber,
    /* クーポン適用開始配達日 - ※YYYY-MM-DDThh:mm:ss+09:00 - クーポン無しの場合、nullを返却 */
    @NullableStringToEpochTimeConverter()
    @JsonKey(name: 'coupon_use_delivery_start_date')
        int? epochCouponUseDeliveryStartDate,
    /* クーポン適用終了配達日 - ※YYYY-MM-DDThh:mm:ss+09:00 - クーポン無しの場合、nullを返却 */
    @NullableStringToEpochTimeConverter()
    @JsonKey(name: 'coupon_use_delivery_finish_datetime')
        int? epochCouponUseDeliveryFinishDatetime,
    /* クーポン注意事項 - クーポン無しの場合、nullを返却 */
    @Default('') String couponGuide,
    /* 欠品時連絡要判定 - true：欠品時連絡要 - false：欠品時連絡不要 */
    @Default(false) bool needNoStockContact,
    /* 非接触お届け利用可能判定 - true：非接触お届け利用可能 - false：非接触お届け利用不可 */
    @Default(false) bool canUseNoContact,
    /* メインメールアドレス */
    @Default('') String mainMailAddress,
    /* サブメールアドレス */
    @Default('') String subMailAddress,
    /* よりどりまとめて値引額 */
    @Default(0) int totalMixMatchDiscountPrice,
    /* セット販売等割引額 - セット値引、セット販売、予約セット割引のうち適用されている割引の割引額 */
    @Default(0) int totalSetSaleDiscountPrice,
    /* 点数まとめて値引額 */
    @Default(0) int totalProgressiveDiscountPrice,
    /* カード会員値引額 */
    @Default(0) int totalCardMemberDiscountPrice,
    /* クーポン指定商品値引額 */
    @Default(0) int couponProductTotalPrice,
    /* 売り切りセール値引額 */
    @Default(0) int totalSellingOffDiscountPrice,
    /* 配達料 */
    @Default(0) int deliveryPrice,
    /* 配達料キャンペーン適用中判定 - true：配達料キャンペーン適用中 - false：配達料キャンペーン適用中でない */
    @Default(false) bool isDeliveryPriceCampaign,
    /* 次段階までの差額 */
    @Default(0) int nextDifferenceDeliveryPrice,
    /* 次段階配達料 */
    @Default(0) int nextDeliveryPrice,
    /* 配達料無料までの差額 */
    @Default(0) int differenceDeliveryFree,
    /* 最安配達料 */
    @Default(0) int maxDeliveryPrice,
    /* 配達料種別 - \"0\"：通常配達料 \"1\"：個別配達料 \"2\"：固定配達料 \"3\"：エリア配送料 \"4\"：便別配送料 \"5\"：キャンペーン配送料 \"6\"：複数注文配送料 \"7\"：定期便配送料 - */
    @Default(DeliveryFeeType.normalDeliveryFee) DeliveryFeeType deliveryType,
    /* 個別配達料適用会員判定 - true：個別配達料適用会員 - false：個別配達料適用会員でない */
    @Default(false) bool isIndividualDeliveryPriceTargetCustomer,
    /* 個別配達料種別 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 - \"1\"：固定額 \"2\"：％割引 - */
    @Default(IndividualDeliveryPriceType.standard) IndividualDeliveryPriceType individualDeliveryPriceType,
    /* 個別配達料名 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 */
    @Default('') String individualDeliveryName,
    /* 個別配達料 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 */
    int? individualDeliveryPrice,
    /* 配送種別開始日 - ※YYYY-MM-DDThh:mm:ss+09:00 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 */
    @NullableStringToEpochTimeConverter()
    @JsonKey(name: 'delivery_type_start_datetime')
        int? epochDeliveryTypeStartDatetime,
    /* 配送種別終了日 - ※YYYY-MM-DDThh:mm:ss+09:00 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 */
    @NullableStringToEpochTimeConverter()
    @JsonKey(name: 'delivery_type_finish_datetime')
        int? epochDeliveryTypeFinishDatetime,
    /* 個別配達料割引率 - 配送料金が通常配送料に設定されている会員の場合、nullを返却 */
    int? individualDeliveryDiscountRate,
    /* 梱包手数料 */
    @Default(0) int packPrice,
    /* 代引手数料 */
    @Default(0) int cashDeliveryPrice,
    /* キャンセル料情報リスト*/
    @Default(<CancelPriceInformationModel>[]) List<CancelPriceInformationModel> cancelPriceInformations,
    /* アイワイカード割引額 */
    @Default(0) int iyCardDiscountPrice,
    /* クーポン買上総額値引額 */
    @Default(0) int couponPrice,
    /* 合計金額(税込) */
    @Default(0) int totalPrice,
    /* 合計金額(税抜) */
    @Default(0) int noTaxTotalPrice,
    /* 受注税額情報リスト */
    @Default(<TaxPriceInformationModel>[]) List<TaxPriceInformationModel> taxPriceInformations,
    /* 支払額 合計金額から利用ポイントを引いた額 */
    @Default(0) int paymentAmount,
    /* 商品券獲得枚数 */
    @Default(0) int ticketCount,
    /* nanaco付与ポイント */
    @Default(0) int totalNanacoPoints,
    /* nanacoポイント明細リスト */
    @Default(<NanacoPointModel>[]) List<NanacoPointModel> nanacoPointInformations,
    /* 適用nanacoボーナスポイント */
    @Default(0) int bonusPoint,
    /* クーポン「nanaco付与ポイントプラス」適用あり判定 - true：クーポン「nanaco付与ポイントプラス」適用あり - false：クーポン「nanaco付与ポイントプラス」適用なし */
    @Default(false) bool isCouponNanacoPointPlus,
    /* 適用nanacoクーポン付与ポイント */
    @Default(0) int couponPoint,
    /* クーポン「nanaco付与ポイントN倍」適用あり判定 - true：クーポン「nanaco付与ポイントN倍」適用あり false：クーポン「nanaco付与ポイントN倍」適用なし - */
    @Default(false) bool isCouponNanacoPointTimes,
    /* 非接触お届け利用判定 - true：非接触お届けを利用する false：非接触お届けを利用しない - */
    @Default(false) bool isNoContact,
    /* 店舗-代引手数料 */
    @Default(0) int shopCashDeliveryPrice,
    /* 選択中のクレジットカード識別キー */
    @Default('') String creditCardInformationKey,
    /* ロックアウト済みクレジットカードあり判定 - true：ロックアウト済みクレジットカードあり - false：ロックアウト済みクレジットカードなし */
    @Default(false) bool hasLockoutCreditCard,
    /* セキュリティコード入力欄判定 - security_code_input_flagと合わせ、どちらか1つでもtrueならばセキュリティコード入力欄を表示する。 - true：セキュリティコード入力欄要 false：セキュリティコード入力欄不要 - */
    @Default(false) bool isDisplaySecurityCodeInput,
    /* クレジットカード障害情報 */
    @Default('') String creditCardNewsText,
    /* マスク・nanaco番号 */
    @Default('') String maskedNanacoNumber,
    /* 受注状況 - \"3\"：未受注 \"4\"：変更中 - */
    @Default(CartOrderStatusType.notOrdered) CartOrderStatusType orderStatus,
    /* nanacoポイント利用対象額 ※「合計金額」-「代引手数料」 */
    @Default(0) int nanacoPointUseTargetPrice,
    /* 旧受注モデル */
    OldOrderModel? oldOrder,
    /* nanacoポイント付与対象判定 - true：nanacoポイント付与対象 false：nanacoポイント付与対象外 - */
    @Default(false) bool isApplyNanacoPoint,
    /* セブンカード割引orカード会員割引対象商品あり判定 - true：セブンカード割引orカード会員割引対象商品あり false：セブンカード割引orカード会員割引対象商品なし - */
    @Default(false) bool hasApplyIyCardMemberDiscountProduct,
    /* セブンCS認証種別 - \"0\"：未認証(セゾン以外も含む) \"1\"：クラブ・オン/ミレニアムID認証済み \"2\"：クラブ・オン/ミレニアムIDなし(セブンCS以外のセゾン) - */
    @Default(SevenCSCertificationType.unauthenticated) SevenCSCertificationType sevenCsFlag,
    /* 商品点数 */
    @Default(0) int productCount,
    /* 割引適用後の商品総額(税込) */
    @Default(0) int productTotalPrice,
    /* 割引適用前の商品総額(税込) */
    @Default(0) int subProductTotalPrice,
    /* 割引適用前の商品総額(税抜) */
    @Default(0) int noTaxSubProductTotalPrice,
    /* 割引適用後の商品総額(税抜) */
    @Default(0) int noTaxProductTotalPrice,
    /* nanacoポイント付与対象商品あり判定 - true：nanacoポイント付与対象商品あり - false：nanacoポイント付与対象商品なし */
    @Default(false) bool hasNanacoPointProduct,
    /* クーポン選択欄判定 - true：クーポン選択欄要 - false：クーポン選択欄不要 */
    @Default(false) bool isDisplayCouponSelect,
    /* 再配達料 */
    @Default(0) int redeliveryPrice,
    /* デビット／プリペイドカード払い警告判定 - true：デビット／プリペイドカード払い警告要 false：デビット／プリペイドカード払い警告不要 - */
    @Default(false) bool isDebitPrepaidCardPayWarn,
    /* nanaco番号認証済判定 - true：nanaco番号認証済 false：nanaco番号認証済でない - */
    @Default(false) bool isNanacoNumberAuthentication,
    /* nanacoポイント認証種別 - \"1\"：セキュリティコード認証 \"2\"：パスワード認証 - */
    @Default(NanacoConfirmType.securityCodeAuthentication) NanacoConfirmType nanacoConfirmType,
    /* 予約ステータス - \"0\"：非予約受注 \"1\"：予約のみ受注 \"2\"：予約含む受注 - */
    @Default(CartReserveStatusType.nonReservedOrders) CartReserveStatusType reserveStatus,
    /* 予約配達可能日リスト　※yyyyMMdd */
    @Default(<String>[]) List<String> reserveDeliveryDates,
    /* 定期便申込カート判定 - true：定期便申込カート false：定期便申込カートでない - */
    @Default(false) bool isRegularShipmentApplyCart,
    /* 定期便割引率 - 定期便申込カート、定期便受注のどちらでもない場合、nullを返却 */
    int? regularShipmentDiscountRate,
    /* 定期便割引額 - 定期便申込カート、定期便受注のどちらでもない場合、nullを返却 */
    int? regularShipmentDiscountPrice,
    /* 定期便配達曜日区分 - 定期便申込カート以外の場合、nullを返却 -`` \"01_MON\":月曜日 \"02_TUE\":火曜日 \"03_WED\":水曜日 \"04_THU\":木曜日 \"05_FRI\":金曜日 \"06_SAT\":土曜日 \"07_SUN\":日曜日 -`` */
    @Default(RegularShipmentDeliveryWeekDiv.none) RegularShipmentDeliveryWeekDiv regularShipmentDeliveryWeekDiv,
    /* 定期便配送日 - ※yyyyMMdd - 定期便申込カート以外の場合、nullを返却 */
    @NullableStringToEpochTimeConverter()
    @JsonKey(name: 'regular_shipment_delivery_date')
        int? epochRegularShipmentDeliveryDate,
    /* 定期便配送時間From - ※hh:mm - 定期便申込カート以外の場合、nullを返却 */
    String? regularShipmentDeliveryStartTime,
    /* 定期便配送時間To - ※hh:mm - 定期便申込カート以外の場合、nullを返却 */
    String? regularShipmentDeliveryFinishTime,
    /* 定期便注文判定 - true：定期便注文 false：定期便注文でない - */
    @Default(false) bool isRegularShipmentOrder,
    /* 商品総額（定期便割引後） - 定期便申込カート、定期便受注のどちらでもない場合、nullを返却 */
    int? productTotalPriceAfterRegularShipmentDiscount,
    /* 医薬品事前購入確認承認判定 - true：承認済み false：未承認 - */
    @Default(false) bool isConsentMedicine,
    /* アカチャンホンポ事前承認判定 - true：承認済み false：未承認 - */
    @Default(false) bool isConsentAkachanHonpo,
    /* 早期キャンセル締め注文判定 - true：早期キャンセル締め注文である false：早期キャンセル締め注文ではない - */
    @Default(false) bool isEarlyCancelOrderClosing,
    /* 注文キャンセル締日時を計算し返却 - ※yyyy-MM-ddTHH:mm:ss+09:00 - 便未選択の場合、nullを返却 */
    @NullableStringToEpochTimeConverter()
    @JsonKey(name: 'cancel_order_closing_datetime')
        int? epochCancelOrderClosingDatetime,
    /* 見学カートフラグ - \"1\"：見学カートである - \"0\"：見学カートではない */
    @Default(false) @StringToBooleanConverter() bool visitorCartFlag,
    /* みなし便設定カートフラグ - \"1\"：みなし便設定カートである - \"0\"：みなし便設定カートではない */
    @Default(false) @StringToBooleanConverter() bool deemedDeliveryCartFlag,
    /* 置き配場所 - 置き配利用以外の場合、nullを返却 - \"1\"：玄関向かって右 \"2\"：玄関向かって左 \"3\"：インターフォン下 \"9\"：その他 - */
    @Default(PackageDropPlace.notPackageDropPlace) PackageDropPlace packageDropPlace,
    /* 置き配場所詳細 - 置き配利用以外の場合、nullを返却 */
    @Default('') String packageDropPlaceDetail,
    /* 更新日時　※YYYY-MM-DDThh:mm:ss+09:00 */
    @Default(0) @StringToEpochTimeConverter() @JsonKey(name: 'update_datetime') int epochUpdateDatetime,
    /* 置き配切替済みフラグ - \"0\"：切替未設定 \"1\"：切替設定済み - */
    @Default(false) @StringToBooleanConverter() bool switchedPackageDropFlag,
    /* 不在置き配切替可否フラグ  - \"0\"：不在置き配不可 \"1\"：不在置き配可能 - */
    @Default(false) @StringToBooleanConverter() bool switchablePackageDropFlag,
    /* カートクリア日時　※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter() @Default(0) @JsonKey(name: 'cart_delete_datetime') int epochCartDeleteDatetime,
    /* カートクリア残時間, HH:MM:SS_BFFADD_ カートクリア日時が取得できない場合、またはカートクリア日時が過去の場合はnullを返却 */
    @Default('') String remainingTimeUntilCartDelete,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) => _$CartModelFromJson(json);

  DateTime get reserveClosingDatetime => const StringToEpochTimeConverter().toDateTime(epochReserveClosingDatetime);
  DateTime get deliveryPlanFromDatetime => const StringToEpochTimeConverter().toDateTime(epochDeliveryPlanFromDatetime);
  DateTime get deliveryPlanToDatetime => const StringToEpochTimeConverter().toDateTime(epochDeliveryPlanToDatetime);
  DateTime get reserveDeliveryDatetime => const StringToEpochTimeConverter().toDateTime(epochReserveDeliveryDatetime);
  DateTime get updateDatetime => const StringToEpochTimeConverter().toDateTime(epochUpdateDatetime);
  DateTime get cartDeleteDatetime => const StringToEpochTimeConverter().toDateTime(epochCartDeleteDatetime);

  DateTime? get couponUseDeliveryStartDate =>
      const NullableStringToEpochTimeConverter().toDateTime(epochCouponUseDeliveryStartDate);
  DateTime? get couponUseDeliveryFinishDatetime =>
      const NullableStringToEpochTimeConverter().toDateTime(epochCouponUseDeliveryFinishDatetime);
  DateTime? get deliveryTypeStartDatetime =>
      const NullableStringToEpochTimeConverter().toDateTime(epochDeliveryTypeStartDatetime);
  DateTime? get deliveryTypeFinishDatetime =>
      const NullableStringToEpochTimeConverter().toDateTime(epochDeliveryTypeFinishDatetime);
  DateTime? get regularShipmentDeliveryDate =>
      const NullableStringToEpochTimeConverter().toDateTime(epochRegularShipmentDeliveryDate);
  DateTime? get cancelOrderClosingDatetime =>
      const NullableStringToEpochTimeConverter().toDateTime(epochCancelOrderClosingDatetime);

  CartDetailsModel? cartDetail(String productId, String? productDetailKey) {
    for (final cartDetail in cartDetails) {
      if (cartDetail.productId == productId &&
          ((productDetailKey?.isEmpty ?? true) || cartDetail.productDetailKey == productDetailKey)) {
        return cartDetail;
      }
    }
    return null;
  }

  bool get isOrderChangingCart => cartStatus.isNormalCartOrderChanging;

  bool get isHomeDeliveryNewOrderCart {
    return ((fulfillmentType == CartFulfillmentType.normal ||
            fulfillmentType == CartFulfillmentType.remoteNormal ||
            fulfillmentType == CartFulfillmentType.placement) &&
        !isReserveOrder &&
        !isRegularShipmentApplyCart &&
        !isRegularShipmentOrder);
  }

  bool get isShopOrLockerReceiptCart =>
      fulfillmentType == CartFulfillmentType.shopReceipt ||
      fulfillmentType == CartFulfillmentType.shopLockerReceipt ||
      fulfillmentType == CartFulfillmentType.sevenAndILockerReceipt;
}

List<WarnMessageModel> _warnMessagesFromJson(List<dynamic>? json) {
  if (json == null) {
    return const [];
  }
  final messages = json.map((dynamic e) => WarnMessageModel.fromJson(e as Map<String, dynamic>)).toList();

  final notificationMessages = messages.groupListsBy((message) => message.messageCode);

  WidgetsBinding.instance.addPostFrameCallback((_) async {
    final priceChangeMessage = notificationMessages['3000017']?.first;
    final couponMessage = notificationMessages['3000021']?.first;

    final context = GetIt.I<GlobalKey<NavigatorState>>().currentContext!;

    if (couponMessage != null) {
      await showConfirmationDialog<void>(
        context: context,
        dialogName: 'WarningMessageModal',
        title: couponMessage.message,
        applicationText: 'OK',
        onApplied: (context) => () => Navigator.pop(context),
      );
    }

    if (priceChangeMessage != null) {
      await showConfirmationDialog<void>(
        context: context,
        dialogName: 'WarningMessageModal',
        title: priceChangeMessage.message,
        applicationText: 'OK',
        onApplied: (context) => () async {
          await showLoadingModal(
            context: context,
            future: () => context.read<CartInfoManager>().refresh(),
          );
          Navigator.pop(context);
        },
      );
    }
  });

  return messages;
}
