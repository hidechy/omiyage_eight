// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/coupon_point_div.dart';
import '../../../enum/delivery_status.dart';
import '../../../enum/individual_delivery_price_type.dart';
import '../../../enum/iy_card_flag.dart';
import '../../../enum/nanaco_payment_method.dart';
import '../../../enum/nanaco_point_status.dart';
import '../../../enum/order_status.dart';
import '../../../enum/pack_material_type.dart';
import '../../../enum/package_drop_place.dart';
import '../../../enum/reserve_status.dart';
import '../../../enum/response_fulfillment_type.dart';
import '../../../util/boolean_json_converter.dart';
import '../../../util/datetime_json_converter.dart';
import 'cancel_price_information_model.dart';
import 'nanaco_point_model.dart';
import 'order_details_list_model.dart';
import 'order_set_sale_group_list_model.dart';
import 'product_model.dart';
import 'tax_price_information_model.dart';

part 'order_details_model.freezed.dart';

part 'order_details_model.g.dart';

@freezed
class OrderDetailsModel with _$OrderDetailsModel {
  const OrderDetailsModel._();

  const factory OrderDetailsModel({
    /* 梱包手数料-徴収対象会員判定 */
    @Default(false) bool isPackPriceTargetCustomer,
    /* 会員種別の返却 */
    @Default('') String customerType,
    /* 店舗名を返す */
    @Default('') String shopName,
    /* 赤ちゃん本舗対応店舗(リーステナント)判定  - true：赤ちゃん本舗対応店舗(リーステナント)である  - false：赤ちゃん本舗対応店舗(リーステナント)ではない */
    @Default(false) bool isAkachanHonpoShop,
    /* 赤ちゃん本舗対応店舗(リーステナント)代行実施中判定 - true：ちゃん本舗対応店舗(リーステナント)代行実施中 - false：自営 */
    @Default(false) bool isAkachanHonpoAgencyShop,
    /* 変更締め日時前判定 - true：変更締め日時前である - false：変更締め日時超過 */
    @Default(false) bool isBeforeChangeClosingDatetime,
    /* 注文追加期間内判定 - true：注文追加期間内である - false：注文追加期間超過 */
    @Default(false) bool isAdditionalOrderTerm,
    /* 企業・団体会員判定 - true：企業・団体会員 - false：個人会員 */
    @Default(false) bool isCorporateCustomer,
    /* 非接触受取り判定を返却 - true：非接触受取りを希望する - false：非接触受取りを希望しない */
    @Default(false) bool isNoContact,
    /* セット販売割引が成立している受注セットグループの存在判定 - true：セット販売割引が成立している受注セットグループあり - false：セット販売割引が成立している受注セットグループなし */
    @Default(false) bool isFixSetSale,
    /* 配送料無料判定 - true：配送料無料 - false：配送料あり */
    @Default(false) bool isDeliveryPriceFree,
    /* キャンセル料徴収受注判定 - true：キャンセル料徴収対象の受注 - false：キャンセル料徴収対象外の受注 */
    @Default(false) bool isCancelPriceLevyOrder,
    /* クーポン「nanaco付与ポイントプラス」適用あり判定 - true：適用あり - false：適用無し */
    @Default(false) bool isCouponNanacoPointPlus,
    /* クーポン「nanaco付与ポイントN倍」適用あり判定を返却 - true：適用あり - false：適用なし */
    @Default(false) bool isCouponNanacoPointTimes,
    /* この受注商品が締め時間前か判定する - true：締め時間前である - false：締め時間超過 */
    @Default(false) bool isBeforeClosingDatetime,
    /* ログイン店舗による注文変更可能判定 - true：注文変更可能 - false：注文変更不可 */
    @Default(false) bool isChangeOrderLoginShop,
    /* 予約注文であるかどうか判定する - true：予約注文(＝通常商品が混在している場合も含む)である - false：予約注文ではない */
    @Default(false) bool isReserveOrder,
    /* ログイン店舗による注文追加可能判定 - true：注文追加可能 - false：注文追加不可 */
    @Default(false) bool isAdditionalOrderLoginShop,
    /* カード割引判定 - true：カード割引対象である - false：カード割引対象外である */
    @Default(false) bool isCardDiscount,
    /* 適用済みクーポン対象商品あり判定 - true：適用済みクーポン対象商品あり - false：適用済みクーポン対象商品なし */
    @Default(false) bool hasDiscountCouponProduct,
    /* 受注商品の中にIYカード対応商品があるか判定する - true：受注商品の中にIIYカード対応商品あり - false：受注商品の中にIIYカード対応商品なし */
    @Default(false) bool hasApplyIyCardProduct,
    /* 欠品時連絡必要判定 - true：欠品時連絡必要 - false：欠品時連絡不要 */
    @Default(false) bool needNoStockContact,
    /* 「割引対象」列の表示判定 以下1～6の値のいずれかが0より多い場合はtrueを返却 1. IYカード：割引額 2. カード会員割引-合計値引額 3. ミックスマッチ合計割引額 4. セット販売合計割引額 5. 累進割引-合計値引額 6. 適用クーポン指定商品値引額 - true：表示する - false：非表示 */
    @Default(false) bool isDisplayDiscountColumn,
    /* 注文IDを取得 */
    @Default(0) int orderId,
    /* 受注年月日を取得 ※yyyy-MM-ddTHH:mm:ss+09:00 */
    @StringToEpochTimeConverter() @Default(0) @JsonKey(name: 'order_date') int epochOrderDate,
    /* 配送予定日時FROM ※yyyy-MM-ddTHH:mm:ss+09:00 */
    @StringToEpochTimeConverter()
    @Default(0)
    @JsonKey(name: 'delivery_plan_start_datetime')
        int epochDeliveryPlanStartDatetime,
    /* 配送予定日時TO ※yyyy-MM-ddTHH:mm:ss+09:00 */
    @StringToEpochTimeConverter()
    @Default(0)
    @JsonKey(name: 'delivery_plan_finish_datetime')
        int epochDeliveryPlanFinishDatetime,
    /* 配送便種別 ``` \"01\"：通常 \"02\"：通常（遠隔） \"03\"：店舗受取 \"04\"：置き配 \"05\"：7&iロッカー受取 \"06\"：店舗ロッカー受取 ``` */
    @Default(ResponseFulfillmentType.common) ResponseFulfillmentType fulfillmentType,
    /* 欠品時連絡種別 ``` \"0\"：連絡不要 \"1\"：連絡必要 ``` */
    @Default(false) @StringToBooleanConverter() bool noStockContactType,
    /* 注文変更締日時を計算し返却 ※yyyy-MM-ddTHH:mm:ss+09:00 */
    @NullableStringToEpochTimeConverter()
    @JsonKey(name: 'change_order_closing_datetime')
        int? epochChangeOrderClosingDatetime,
    /* 注文キャンセル締日時を計算し返却 ※yyyy-MM-ddTHH:mm:ss+09:00 */
    @NullableStringToEpochTimeConverter()
    @JsonKey(name: 'cancel_order_closing_datetime')
        int? epochCancelOrderClosingDatetime,
    /* 注文追加締日時を計算し返却 ※yyyy-MM-ddTHH:mm:ss+09:00 */
    @NullableStringToEpochTimeConverter()
    @JsonKey(name: 'additional_order_closing_datetime')
        int? epochAdditionalOrderClosingDatetime,
    /*
    注文追加期間開始日時までの残り時間
      - 注文追加が可能になる日時と業務時間で残り日時を計算し返却する
      - 注文追加が可能になる日時を超えた場合空で返却する
      - 形式は「あとN日とHH時間MM分で追加可能」とし差分がない日時/時間は表記しない
    */
    @Default('') String additionalOrderStartDatetime,
    /* 便変更締日時を計算し返却 ※yyyy-MM-ddTHH:mm:ss+09:00 */
    @NullableStringToEpochTimeConverter()
    @JsonKey(name: 'change_delivery_plan_closing_datetime')
        int? epochChangeDeliveryPlanClosingDatetime,
    /* 注文変更締め残り時間 - 締め日時と業務時間で残り日時を計算し返却する  - 残り日時を超えた場合空で返却する  - 形式は「残りN日とHH時間MM分」とし差分がない日時/時間は表記しない */
    @Default('') String remainingDatetimeChangeOrderClosing,
    /* 注文キャンセル締め残り時間 - 締め日時と業務時間で残り日時を計算し返却する  - 残り日時を超えた場合空で返却する  - 形式は「残りN日とHH時間MM分」とし差分がない日時/時間は表記しない */
    @Default('') String remainingDatetimeCancelOrderClosing,
    /* 注文追加締め残り時間 - 締め日時と業務時間で残り日時を計算し返却する  - 残り日時を超えた場合空で返却する  - 形式は「残りN日とHH時間MM分」とし差分がない日時/時間は表記しない */
    @Default('') String remainingDatetimeAdditionalOrderClosing,
    /* 便変更締め残り時間 - 締め日時と業務時間で残り日時を計算し返却する  - 残り日時を超えた場合空で返却する  - 形式は「残りN日とHH時間MM分」とし差分がない日時/時間は表記しない */
    @Default('') String remainingDatetimeChangeDeliveryPlanClosing,
    /* 支払方法とnanacoポイント利用額 ``` \"1\"：代金引換 \"2\"：クレジットカード \"3\"：クレジットカードとポイント利用：クレジットカードとnanacoポイント併用の場合 \"4\"：全額ポイント利用 \"5\"：代金引換とポイント利用：代金引換とnanacoポイント併用の場合 ``` */
    @Default(NanacoPaymentMethod.cashOnDelivery) NanacoPaymentMethod nanacoPaymentMethod,
    /* 宛名 */
    @Default('') String nameOfReceipt,
    /* - お買い物カゴ梱包の名称を取得する ``` \"0\"：レジ袋をご利用 \"1\"：エコｄｅバスケットをご利用 ``` */
    @Default(PackMaterialType.plasticBag) PackMaterialType packMaterialType,
    /* - 複数注文梱包まとめ方法種別を返却 ``` \"0\"：個別注文 \"1\"：複数注文(個別梱包) \"2\"：複数注文(まとめ梱包) ``` */
    @Default('') String packMethodType,
    /* メモを返却する */
    @Default('') String memo,
    /* 配達状況の文字列を返却 ``` \"0\"：未配達  \"1\"：未受取り \"2\"：配達中 \"3\"：お渡し済 \"4\"：お受取り済  ```*/
    @Default(DeliveryStatus.undelivered) DeliveryStatus deliveryStatus,
    /* IYカード：割引額を返却 */
    @Default(0) int iyCardDiscountPrice,
    /* カード会員割引-合計値引額の返却 */
    @Default(0) int totalCardMemberDiscountPrice,
    /* ミックスマッチ合計割引額を返却 */
    @Default(0) int totalMixMatchDiscountPrice,
    /* セット販売合計割引額を返却 */
    @Default(0) int totalSetSaleDiscountPrice,
    /* 累進割引-合計値引額の返却 */
    @Default(0) int totalProgressiveDiscountPrice,
    /* 適用クーポン指定商品値引額を返却 */
    @Default(0) int couponProductTotalPrice,
    /* 売り切りセール割引-合計値引額の返却 */
    @Default(0) int totalSellingOffPrice,
    /* レジ袋利用料の返却 */
    @Default(0) int shoppingBagPrice,
    /* 再配達料を返却 */
    @Default(0) int redeliveryPrice,
    /* 配送料金を返却 */
    @Default(0) int deliveryPrice,
    /* 梱包手数料を返却 */
    @Default(0) int packPrice,
    /* 代引手数料(税込)を返却 */
    @Default(0) int cashDeliveryPrice,
    /* IYカードフラグを返却 ``` \"1\"：IYカード \"2\"：nanacoカード \"3\"：シニアナナコカード \"4\"：ポイントカード \"0\"：無効(未) ``` */
    @Default(IyCardFlag.invalid) IyCardFlag iyCardFlag,
    /* 適用クーポン買上総額値引額を返却 */
    @Default(0) int couponPrice,
    /* 商品総額(税込)を返却 */
    @Default(0) int productTotalPrice,
    /* 最終的な合計金額を返却(配送料金/レジ袋利用料/代引き手数料/各種値引、割引額) */
    @Default(0) int totalPrice,
    /* ポイント利用額を返却 */
    @Default(0) int nanacoPointUsePoint,
    /* 支払額を返却 */
    @Default(0) int paymentAmount,
    /* nanacoポイント計を返却 */
    @Default(0) int totalNanacoPoints,
    /* 適用nanacoボーナスポイントを返却 */
    @Default(0) int bonusPoint,
    /* 適用nanacoクーポン付与ポイントを返却 */
    @Default(0) int couponPoint,
    /* nanacoポイントクーポン適用時の区分 ```\"1\"：nanacoポイントプラスクーポン適用 \"2\"：nanacoポイントN倍クーポン適用``` - クーポン適用無し、またはnanacoポイント以外のクーポン適用の場合、nullを返却 */
    @Default(CouponPointDiv.none) CouponPointDiv couponPointDiv,
    /* nanacoポイント付与ステータス ``` \"0\"：未送信 \"1\"：送信済 \"2\"：結果受信済（正常） \"3\"：結果受信済（エラー） \"4\"：再付与依頼 \"5\"：再付与依頼済 ``` */
    @Default(NanacoPointStatus.unsent) NanacoPointStatus nanacoPointStatus,
    /* nanacoポイント付与結果受信日時 ※yyyy-MM-ddTHH:mm:ss+09:00 */
    @StringToEpochTimeConverter()
    @Default(0)
    @JsonKey(name: 'nanaco_point_result_datetime')
        int epochNanacoPointResultDatetime,
    /* 配達便変更開始-無効フラグ文字列 ``` \"0\"：有効(済) \"1\"：無効(未) ``` */
    @Default(false) @StringToBooleanConverter() bool disableDeliveryPlanChangeStartFlag,
    /* 受注作成時点の申込種別を返却する ``` \"0\"：非予約受注 \"1\"：予約のみ受注 \"2\"：予約含む受注 ``` */
    @Default(ReserveStatus.notReservedOrder) ReserveStatus reserveStatus,
    /* キャンセル制限判定 - true：キャンセルを制限する - false：キャンセルを制限しない */
    @Default(false) bool isOrderLimit,
    /* 総商品点数 */
    @Default(0) int productCount,
    /* 受注商品ID順にソートされたJANごとの受注商品のリストを取得 */
    @Default(<OrderDetailsListModel>[]) List<OrderDetailsListModel> details,
    /* セット販売割引が成立している受注セットグループリストの取得 */
    @Default(<OrderSetSaleGroupListModel>[]) List<OrderSetSaleGroupListModel> orderSetSaleGroups,
    /* キャンセル料情報 */
    @Default(<CancelPriceInformationModel>[]) List<CancelPriceInformationModel> cancels,
    /* 受注税額情報リストの返却 */
    @Default(<TaxPriceInformationModel>[]) List<TaxPriceInformationModel> taxPrices,
    /* nanacoポイント明細を取得 */
    @Default(<NanacoPointModel>[]) List<NanacoPointModel> nanacoPointInformations,
    @Default(<ProductModel>[]) List<ProductModel> products,
    /* 定期便注文判定 - true：定期便注文 - false：定期便注文でない */
    @Default(false) bool isRegularShipmentOrder,
    /* 注文キャンセル可能判定 - true：キャンセル可能 - false：キャンセル不可 */
    @Default(false) bool isEnableOrderCancel,
    /* 定期便割引額 */
    @Default(0) int regularShipmentDiscountPrice,
    /* 商品総額（定期便割引後） */
    int? productTotalPriceAfterRegularShipmentDiscount,
    /* 配送状況確認画面URL */
    @Default('') String deliveryStatusConfirmationScreenUrl,
    /* 個別配達料種別 */
    @Default(IndividualDeliveryPriceType.fixedAmount) IndividualDeliveryPriceType individualDeliveryPriceDiv,
    /* 個別配達料名 */
    @Default('') String individualDeliveryName,
    /* 個別配達料 */
    @Default(0) int individualDeliveryPrice,
    /* 配送アンケートの回答有効期限内か否を判定 */
    @Default(false) bool isBeforeDeliveryQuestionAnswerExpired,
    /* 配送アンケートURL */
    @Default('') String deliveryQuestionUrl,
    /* 定期便割引率 */
    @Default(0) int regularShipmentDiscountRate,
    /* 定期便割引前合計金額 - total_price に定期便割引額を加算したものが返却される */
    @Default(0) int regularShipmentDiscountBeforeTotalPrice,
    /* ステータス */
    @Default(OrderStatus.undeliveried) OrderStatus status,
    /* 定期便割引予定額 */
    int? regularShipmentDiscountPlanPrice,
    /* 置き配切替済みフラグ */
    @Default(false) @StringToBooleanConverter() bool switchedPackageDropFlag,
    /* 置き配場所 ``` \"1\"：玄関向かって右, \"2\"：玄関向かって左, \"3\"：インターフォン下, \"9\"：その他, null: 未指定```  */
    @Default(PackageDropPlace.notPackageDropPlace) PackageDropPlace packageDropPlace,
    /* 置き配場所の詳細 */
    @Default('') String packageDropPlaceDetail,
  }) = _OrderDetailsModel;

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) => _$OrderDetailsModelFromJson(json);

  DateTime get orderDate => const StringToEpochTimeConverter().toDateTime(epochOrderDate);
  DateTime get deliveryPlanStartDatetime =>
      const StringToEpochTimeConverter().toDateTime(epochDeliveryPlanStartDatetime);
  DateTime get deliveryPlanFinishDatetime =>
      const StringToEpochTimeConverter().toDateTime(epochDeliveryPlanFinishDatetime);
  DateTime get nanacoPointResultDatetime =>
      const StringToEpochTimeConverter().toDateTime(epochNanacoPointResultDatetime);

  DateTime? get changeOrderClosingDatetime =>
      const NullableStringToEpochTimeConverter().toDateTime(epochChangeOrderClosingDatetime);
  DateTime? get cancelOrderClosingDatetime =>
      const NullableStringToEpochTimeConverter().toDateTime(epochCancelOrderClosingDatetime);
  DateTime? get additionalOrderClosingDatetime =>
      const NullableStringToEpochTimeConverter().toDateTime(epochAdditionalOrderClosingDatetime);
  DateTime? get changeDeliveryPlanClosingDatetime =>
      const NullableStringToEpochTimeConverter().toDateTime(epochChangeDeliveryPlanClosingDatetime);
}
