// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/cart_fulfillment_type.dart';
import '../../../enum/order_status.dart';
import '../../../enum/payment_method_type.dart';
import '../../../enum/reserve_status.dart';
import '../../../util/boolean_json_converter.dart';
import '../../../util/datetime_json_converter.dart';
import 'order_history_products_model.dart';

part 'order_history_list_model.freezed.dart';
part 'order_history_list_model.g.dart';

@freezed
class OrderHistoryListModel with _$OrderHistoryListModel {
  const OrderHistoryListModel._();

  const factory OrderHistoryListModel({
    /* 受注ID */
    @Default(0) int orderId,
/* 旧受注ID - 変更中ではない場合、nullを返却 */
    int? oldOrderId,
/* ステータス ``` \"0\"：未発送 \"1\"：配送済 \"2\"：売上計上 \"3\"：出荷指示済 \"4\"：持ち帰り \"5\"：クレジットエラー \"6\"：自動キャンセル \"7\"：全商品配達不可 \"8\"：一部商品配達不可 ``` */
    @Default(OrderStatus.undeliveried) OrderStatus status,
/* 支払い方法 ``` \"1\"：代金引換 \"2\"：クレジットカード \"4\"：全額ポイント利用 ``` */
    @Default(PaymentMethodType.cashOnDelivery) PaymentMethodType paymentMethod,
/* 予約ステータス ``` \"0\"：非予約受注 \"1\"：予約のみ受注 \"2\"：予約含む受注 ``` */
    @Default(ReserveStatus.notReservedOrder) ReserveStatus reserveStatus,
/* キャンセル料のみの受注フラグ - キャンセル料のみ受注フラグが未設定の場合、nullを返却 ``` \"0\"：非表示 \"1\"：受注IDをラベル表示 ``` */
    @Default(false) @StringToBooleanConverter() bool cancelPriceFlag,
/* 配送便種別 ``` \"01\"：通常 \"02\"：通常（遠隔） \"03\"：店舗受取 \"04\"：置き配 \"05\"：7&iロッカー受取 \"06\"：店舗ロッカー受取 ``` */
    @Default(CartFulfillmentType.normal) CartFulfillmentType fulfillmentType,
/* 配送予定日時FROM ※YYYY-MM-DDTHH:mm:ss+09:00 */
    @StringToEpochTimeConverter()
    @Default(0)
    @JsonKey(name: 'delivery_plan_start_datetime')
        int epochDeliveryPlanStartDatetime,
/* 配送予定日時TO ※YYYY-MM-DDTHH:mm:ss+09:00 */
    @StringToEpochTimeConverter()
    @Default(0)
    @JsonKey(name: 'delivery_plan_finish_datetime')
        int epochDeliveryPlanFinishDatetime,
/* 受取先名表示判定  ``` true：表示する false：非表示 ``` */
    @Default(false) bool isDisplayReceiptLocationName,
/* 静的コンテンツURL - 自宅受取の場合、nullを返却 */
    @Default('') String receiptLocationContentsUrl,
/* 受取先地点名称 */
    @Default('') String receiptLocationName,
/* 店名 - 店舗名が未設定の場合、nullを返却 */
    @Default('') String shopName,
/* 合計金額 */
    @Default(0) int totalPrice,
/* nanaco利用ポイント - nanaco利用ポイントが未設定の場合、nullを返却 */
    @Default(0) int nanacoPointUsePoint,
/* ログイン店舗による注文変更可能判定  ``` true：注文変更可能 false：注文変更できない ``` */
    @Default(false) bool isChangeOrderLoginShop,
/* キャンセル日 ※YYYY-MM-DDThh:mm:ss+09:00 ``` NS管理画面からの全品キャンセル時に設定される ``` */
    @StringToEpochTimeConverter() @Default(0) @JsonKey(name: 'cancel_datetime') int epochCancelDatetime,
/* 注文キャンセル締日時 ※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter() @Default(0) @JsonKey(name: 'cancel_closing_datetime') int epochCancelClosingDatetime,
/* 注文変更締日時 ※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter() @Default(0) @JsonKey(name: 'change_closing_datetimt') int epochChangeClosingDatetime,
/* 注文追加締日日時 ※yyyy-MM-ddTHH:mm:ss+09:00 */
    @NullableStringToEpochTimeConverter()
    @JsonKey(name: 'additional_order_closing_datetime')
        int? epochAdditionalOrderClosingDatetime,
/* 注文追加期間開始日時 ※yyyy-MM-ddTHH:mm:ss+09:00 */
    @NullableStringToEpochTimeConverter()
    @JsonKey(name: 'additional_order_start_datetime')
        int? epochAdditionalOrderStartDatetime,
/* ログイン状態「便未選択」判定  ``` true：便未選択である false：便未選択以外の状態(＝見学中の場合も含む) ``` */
    @Default(false) bool isNotSelectedFulfillment,
/* 予約注文判定  ``` true：予約注文(＝通常商品が混在している場合も含む) false：予約注文ではない ``` */
    @Default(false) bool isReserveOrder,
/* 注文追加期間内判定  ``` true：注文追加期間内である false：注文追加期間外である ``` */
    @Default(false) bool isAdditionalOrderTerm,
/* ログイン店舗による注文追加可能判定  ``` true：注文追加可能 false：注文追加できない ``` */
    @Default(false) bool isAdditionalOrderLoginShop,
/* 配送アンケートURL - 配送アンケートURLが未設定の場合、nullを返却 */
    @Default('') String deliveryQuestionUrl,
/* 変更締め日時前の判定  ``` true：変更締め前である false：変更締め日時を超過している ``` */
    @Default(false) bool isBeforeChangeClosingDatetime,
/* 配送アンケートの回答有効期限内か否を判定  ``` true：回答有効期限内 false：回答有効期限切れ ``` */
    @Default(false) bool isBeforeDeliveryQuestionAnswerExpired,
/* 注文追加締日時前の判定  ``` true：注文追加締め前である false：注文追加締日時を超過している ``` */
    @Default(false) bool isBeforeAdditionalOrderClosingDatetime,
/* 変更・キャンセルをフラグ  ``` true：変更・キャンセルを制限する false：変更・キャンセルを制限しない ``` */
    @Default(false) bool isOrderLimited,
/* 未発送商品フラグ ``` \"0\"：合計金額メール送信用ボタンを出力しない \"1\"：合計金額メール送信用ボタンを出力する ``` */
    @Default(false) @StringToBooleanConverter() bool noDeliveryFlg,
/* 定期便注文判定  ``` true：定期便注文 false：定期便注文でない ``` */
    @Default(false) bool isRegularShipmentOrder,
/* 注文キャンセル可能判定  ``` true：キャンセル可能 false：キャンセル不可 ``` */
    @Default(false) bool isEnableOrderCancel,
/* 定期便割引率 */
    @Default(0) int regularShipmentDiscountRate,
/* 配送状況確認画面URL */
    @Default('') String deliveryStatusConfirmationScreenUrl,
    @Default(<OrderHistoryProductsModel>[]) List<OrderHistoryProductsModel> products,
  }) = _OrderHistoryListModel;

  factory OrderHistoryListModel.fromJson(Map<String, dynamic> json) => _$OrderHistoryListModelFromJson(json);

  DateTime get deliveryPlanStartDatetime =>
      const StringToEpochTimeConverter().toDateTime(epochDeliveryPlanStartDatetime);
  DateTime get deliveryPlanFinishDatetime =>
      const StringToEpochTimeConverter().toDateTime(epochDeliveryPlanFinishDatetime);
  DateTime get cancelDatetime => const StringToEpochTimeConverter().toDateTime(epochCancelDatetime);
  DateTime get cancelClosingDatetime => const StringToEpochTimeConverter().toDateTime(epochCancelClosingDatetime);
  DateTime get changeClosingDatetime => const StringToEpochTimeConverter().toDateTime(epochChangeClosingDatetime);

  DateTime? get additionalOrderClosingDatetime =>
      const NullableStringToEpochTimeConverter().toDateTime(epochAdditionalOrderClosingDatetime);
  DateTime? get additionalOrderStartDatetime =>
      const NullableStringToEpochTimeConverter().toDateTime(epochAdditionalOrderStartDatetime);
}
