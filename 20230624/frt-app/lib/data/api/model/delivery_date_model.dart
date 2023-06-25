// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/order_disabled_reason.dart';
import '../../../util/datetime_json_converter.dart';
import 'order_history_model.dart';

part 'delivery_date_model.freezed.dart';
part 'delivery_date_model.g.dart';

/// 店舗配達情報-配達日モデル
@freezed
class DeliveryDateModel with _$DeliveryDateModel {
  const DeliveryDateModel._();

  const factory DeliveryDateModel({
    /* 梱包まとめ方法種別名リスト */
    @Default(<String>[]) List<String> packMethodTypeNames,
    /* 承り済み受注-合計金額 */
    @Default(0) int acceptedOrderTotalPrice,
    /* 配達便-配達料 */
    @Default(0) int fulfillmentDeliveryPrice,
    /* 配達日 ※yyyyMMdd */
    @Default('') String deliveryDate,
    /* 配送時間帯ID */
    @Default('') String deliveryTimeId,
    /* 注文追加締め日時　※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter()
    @Default(0)
    @JsonKey(name: 'additional_order_closing_datetime')
        int epochAdditionalOrderClosingDatetime,
    /* 注文変更締め日時　※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter()
    @Default(0)
    @JsonKey(name: 'change_order_closing_datetime')
        int epochChangeOrderClosingDatetime,
    /* キャンセル締め日時 ※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter()
    @Default(0)
    @JsonKey(name: 'cancel_order_closing_datetime')
        int epochCancelOrderClosingDatetime,
    /* 配達便変更締め日時　※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter()
    @Default(0)
    @JsonKey(name: 'order_delivery_plan_change_closing_datetime')
        int epochOrderDeliveryPlanChangeClosingDatetime,
    /* 承り済み受注あり判定 - true：承り済み受注あり - false：承り済み受注なし */
    @Default(false) bool hasAcceptedOrder,
    /* 注文あり判定 - true：注文あり - false：注文なし */
    @Default(false) bool hasOldOrder,
    /* 受取便変更元-配達便の判定 - true：受取便変更元の配達便である - false：受取便変更元の配達便でない */
    @Default(false) bool isDeliveryPlanChangeOrign,
    /* 配達便有効判定 - true：有効な配達便である - false：有効な配達便でない */
    @Default(false) bool isEnableDeliveryPlan,
    /* 配達便有効判定「梱包まとめ方法の異なる承り済み受注あり」 - true：有効な配達便である（梱包まとめ方法の異なる承り済み受注なし） - false：有効な配達便でない（梱包まとめ方法の異なる承り済み受注あり） */
    @Default(false) bool isEnableDeliveryPlanMixPackMethodOrder,
    /* 割り当てイベント「受取便変更」判定 - true：受取便変更を実施する - false：受取便変更を実施しない */
    @Default(false) bool isEventHandleDeliveryPlanChange,
    /* 割り当てイベント「新規注文」判定 - true：新規注文を実施する - false：新規注文を実施しない */
    @Default(false) bool isEventHandleNewOrder,
    /* 割り当てイベント「注文変更」判定 - true：注文変更を実施する - false：注文変更を実施しない */
    @Default(false) bool isEventHandleChangeOrder,
    /* 残り受注件数警告あり判定 - true：残り受注件数警告あり - false：残り受注件数警告なし */
    @Default(false) bool isWarnRemainingOrder,
    OrderHistoryModel? orderHistory,
    /* 店コード */
    @Default('') String shopCode,
    /* 割り当てイベント「注文追加」判定 - true：注文追加を実施する - false：注文追加を実施しない */
    @Default(false) bool isEventHandleAdditionalOrder,
    /* 便選択可能判定 - true：便選択可能 - false：便選択不可 */
    @Default(false) bool isEnableEvent,
    /* 便選択NG理由 ``` \"1\"：締め日時経過NG \"2\"：配達休み・交通規制NG \"3\"：最大受注件数到達NG \"4\"：梱包まとめ方法の異なる承り済み受注ありNG \"5\"：予約お渡し時間制限以降の便NG \"6\"：受取便変更先に他の承り済み受注ありNG \"7\"：受取便変更先の在庫販売可否が異なる配達日NG \"8\"：見学またはみなし便に他の承り済み受注ありNG``` */
    @Default(OrderDisabledReason.closingDate) OrderDisabledReason orderDisabledReason,
    /* 承り済み受注-合計受注件数 */
    @Default(0) int acceptedOrderCount,
    /* 配達便有効判定「締め日時経過」 - true：有効な配達便である（締め時間以内） - false：有効な配達便でない（締め時間超過） */
    @Default(false) bool isEnableDeliveryPlanClosingDatetimeExpired,
    /* 配達便有効判定「配達休み・交通規制」 - true：有効な配達便である（配達休み・交通規制でない） - false：有効な配達便でない（配達休み・交通規制である） */
    @Default(false) bool isEnableDeliveryPlanDeliveryRestriction,
    /* 配達便有効判定「最大受注件数到達」 - true：有効な配達便である（最大受注件数到達でない） - false：有効な配達便でない（最大受注件数到達） */
    @Default(false) bool isEnableDeliveryPlanMaxOrder,
    /* 配達便有効判定「受取便変更先に他の承り済み受注あり」 - true：有効な配達便である（受取便変更先に他の承り済み受注なし） - false：有効な配達便でない（受取便変更先に他の承り済み受注あり） */
    @Default(false) bool isEnableDeliveryPlanChangeAcceptedOrder,
    /* 配達便有効判定「受取便変更先の在庫販売可否が異なる配達日」 - true：有効な配達便である（受取便変更先の在庫販売可否が異なる配達日でない） - false：有効な配達便でない（受取便変更先の在庫販売可否が異なる配達日） */
    @Default(false) bool isEnableDeliveryPlanChangeMixStockSaleDate,
    /* 配達便有効判定「予約お渡し時間制限以降の便」 - true：有効な配達便である（予約お渡し時間制限以降の便でない） - false：有効な配達便でない（予約お渡し時間制限以降の便） */
    @Default(false) bool isEnableDeliveryPlanReserveReceiptLimited,
    /* 定期便注文判定 - true：定期便注文 - false：定期便注文でない */
    @Default(false) bool isRegularShipmentOrder,
    /* 承り受注販売額小計 */
    @Default(0) int acceptedOrderSalePrice,
    /* 前日締め判定 true：配送時間帯締め時間が前日である ／ false：配送時間帯締め時間が前日ではない */
    @Default(false) bool isClosingPreviousDay,
    /* 注文追加-承り可能判定 */
    @Default(false) bool isEnableOrderAdd,
    /* 最安値便のハイライト判定 (自宅受け取り便・置き配便のみ、それ以外の便は固定値でfalse) true：ハイライト要 ／ false：ハイライト不要 */
    @Default(false) bool isMinDeliveryPriceHighlight,
    /* フロント便選択ボタン表示用のステータス
     * "1":選択可能-警告なし
     * "2":選択可能-受注件数警告あり
     * "3":決済済みかつ締め時間前の受注あり-通常注文
     * "4":決済済みかつ締め時間前の受注あり-予約のみ注文
     * "5":決済済みかつ締め時間前の受注あり-予約＋買い足し注文
     * "6":決済済みかつ締め時間前の受注あり-定期便注文
     * "7":選択不可-締後受注あり
     * "8":選択不可-注文変更不可
     * "9":選択不可-注文受付終了
     */
    @Default(DeliveryScheduleStatus.closedAccept) DeliveryScheduleStatus deliveryScheduleStatus,
  }) = _DeliveryDateModel;

  factory DeliveryDateModel.fromJson(Map<String, dynamic> json) => _$DeliveryDateModelFromJson(json);

  DateTime get additionalOrderClosingDatetime =>
      const StringToEpochTimeConverter().toDateTime(epochAdditionalOrderClosingDatetime);
  DateTime get changeOrderClosingDatetime =>
      const StringToEpochTimeConverter().toDateTime(epochChangeOrderClosingDatetime);
  DateTime get cancelOrderClosingDatetime =>
      const StringToEpochTimeConverter().toDateTime(epochCancelOrderClosingDatetime);
  DateTime get orderDeliveryPlanChangeClosingDatetime =>
      const StringToEpochTimeConverter().toDateTime(epochOrderDeliveryPlanChangeClosingDatetime);
}

enum DeliveryScheduleStatus {
  /* "1":選択可能-警告なし */
  @JsonValue('1')
  openNormal,
  /* "2":選択可能-受注件数警告あり */
  @JsonValue('2')
  openWarn,
  /* "3":決済済みかつ締め時間前の受注あり-通常注文 */
  @JsonValue('3')
  onOrderNormal,
  /* "4":決済済みかつ締め時間前の受注あり-予約のみ注文 */
  @JsonValue('4')
  onOrderReserve,
  /* "5":決済済みかつ締め時間前の受注あり-予約＋買い足し注文 */
  @JsonValue('5')
  onOrderReserveAndAdditional,
  /* "6":決済済みかつ締め時間前の受注あり-定期便注文 */
  @JsonValue('6')
  onOrderRegularShipment,
  /* "7":選択不可-締後受注あり */
  @JsonValue('7')
  closedOrder,
  /* "8":選択不可-注文変更不可 */
  @JsonValue('8')
  unchangeable,
  /* "9":選択不可-注文受付終了 */
  @JsonValue('9')
  closedAccept,
}
