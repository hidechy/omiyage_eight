// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_date_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryDateModel _$DeliveryDateModelFromJson(Map<String, dynamic> json) {
  return _DeliveryDateModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryDateModel {
/* 梱包まとめ方法種別名リスト */
  List<String> get packMethodTypeNames =>
      throw _privateConstructorUsedError; /* 承り済み受注-合計金額 */
  int get acceptedOrderTotalPrice =>
      throw _privateConstructorUsedError; /* 配達便-配達料 */
  int get fulfillmentDeliveryPrice =>
      throw _privateConstructorUsedError; /* 配達日 ※yyyyMMdd */
  String get deliveryDate => throw _privateConstructorUsedError; /* 配送時間帯ID */
  String get deliveryTimeId =>
      throw _privateConstructorUsedError; /* 注文追加締め日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'additional_order_closing_datetime')
  int get epochAdditionalOrderClosingDatetime =>
      throw _privateConstructorUsedError; /* 注文変更締め日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'change_order_closing_datetime')
  int get epochChangeOrderClosingDatetime =>
      throw _privateConstructorUsedError; /* キャンセル締め日時 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'cancel_order_closing_datetime')
  int get epochCancelOrderClosingDatetime =>
      throw _privateConstructorUsedError; /* 配達便変更締め日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'order_delivery_plan_change_closing_datetime')
  int get epochOrderDeliveryPlanChangeClosingDatetime =>
      throw _privateConstructorUsedError; /* 承り済み受注あり判定 - true：承り済み受注あり - false：承り済み受注なし */
  bool get hasAcceptedOrder =>
      throw _privateConstructorUsedError; /* 注文あり判定 - true：注文あり - false：注文なし */
  bool get hasOldOrder =>
      throw _privateConstructorUsedError; /* 受取便変更元-配達便の判定 - true：受取便変更元の配達便である - false：受取便変更元の配達便でない */
  bool get isDeliveryPlanChangeOrign =>
      throw _privateConstructorUsedError; /* 配達便有効判定 - true：有効な配達便である - false：有効な配達便でない */
  bool get isEnableDeliveryPlan =>
      throw _privateConstructorUsedError; /* 配達便有効判定「梱包まとめ方法の異なる承り済み受注あり」 - true：有効な配達便である（梱包まとめ方法の異なる承り済み受注なし） - false：有効な配達便でない（梱包まとめ方法の異なる承り済み受注あり） */
  bool get isEnableDeliveryPlanMixPackMethodOrder =>
      throw _privateConstructorUsedError; /* 割り当てイベント「受取便変更」判定 - true：受取便変更を実施する - false：受取便変更を実施しない */
  bool get isEventHandleDeliveryPlanChange =>
      throw _privateConstructorUsedError; /* 割り当てイベント「新規注文」判定 - true：新規注文を実施する - false：新規注文を実施しない */
  bool get isEventHandleNewOrder =>
      throw _privateConstructorUsedError; /* 割り当てイベント「注文変更」判定 - true：注文変更を実施する - false：注文変更を実施しない */
  bool get isEventHandleChangeOrder =>
      throw _privateConstructorUsedError; /* 残り受注件数警告あり判定 - true：残り受注件数警告あり - false：残り受注件数警告なし */
  bool get isWarnRemainingOrder => throw _privateConstructorUsedError;
  OrderHistoryModel? get orderHistory =>
      throw _privateConstructorUsedError; /* 店コード */
  String get shopCode =>
      throw _privateConstructorUsedError; /* 割り当てイベント「注文追加」判定 - true：注文追加を実施する - false：注文追加を実施しない */
  bool get isEventHandleAdditionalOrder =>
      throw _privateConstructorUsedError; /* 便選択可能判定 - true：便選択可能 - false：便選択不可 */
  bool get isEnableEvent =>
      throw _privateConstructorUsedError; /* 便選択NG理由 ``` \"1\"：締め日時経過NG \"2\"：配達休み・交通規制NG \"3\"：最大受注件数到達NG \"4\"：梱包まとめ方法の異なる承り済み受注ありNG \"5\"：予約お渡し時間制限以降の便NG \"6\"：受取便変更先に他の承り済み受注ありNG \"7\"：受取便変更先の在庫販売可否が異なる配達日NG \"8\"：見学またはみなし便に他の承り済み受注ありNG``` */
  OrderDisabledReason get orderDisabledReason =>
      throw _privateConstructorUsedError; /* 承り済み受注-合計受注件数 */
  int get acceptedOrderCount =>
      throw _privateConstructorUsedError; /* 配達便有効判定「締め日時経過」 - true：有効な配達便である（締め時間以内） - false：有効な配達便でない（締め時間超過） */
  bool get isEnableDeliveryPlanClosingDatetimeExpired =>
      throw _privateConstructorUsedError; /* 配達便有効判定「配達休み・交通規制」 - true：有効な配達便である（配達休み・交通規制でない） - false：有効な配達便でない（配達休み・交通規制である） */
  bool get isEnableDeliveryPlanDeliveryRestriction =>
      throw _privateConstructorUsedError; /* 配達便有効判定「最大受注件数到達」 - true：有効な配達便である（最大受注件数到達でない） - false：有効な配達便でない（最大受注件数到達） */
  bool get isEnableDeliveryPlanMaxOrder =>
      throw _privateConstructorUsedError; /* 配達便有効判定「受取便変更先に他の承り済み受注あり」 - true：有効な配達便である（受取便変更先に他の承り済み受注なし） - false：有効な配達便でない（受取便変更先に他の承り済み受注あり） */
  bool get isEnableDeliveryPlanChangeAcceptedOrder =>
      throw _privateConstructorUsedError; /* 配達便有効判定「受取便変更先の在庫販売可否が異なる配達日」 - true：有効な配達便である（受取便変更先の在庫販売可否が異なる配達日でない） - false：有効な配達便でない（受取便変更先の在庫販売可否が異なる配達日） */
  bool get isEnableDeliveryPlanChangeMixStockSaleDate =>
      throw _privateConstructorUsedError; /* 配達便有効判定「予約お渡し時間制限以降の便」 - true：有効な配達便である（予約お渡し時間制限以降の便でない） - false：有効な配達便でない（予約お渡し時間制限以降の便） */
  bool get isEnableDeliveryPlanReserveReceiptLimited =>
      throw _privateConstructorUsedError; /* 定期便注文判定 - true：定期便注文 - false：定期便注文でない */
  bool get isRegularShipmentOrder =>
      throw _privateConstructorUsedError; /* 承り受注販売額小計 */
  int get acceptedOrderSalePrice =>
      throw _privateConstructorUsedError; /* 前日締め判定 true：配送時間帯締め時間が前日である ／ false：配送時間帯締め時間が前日ではない */
  bool get isClosingPreviousDay =>
      throw _privateConstructorUsedError; /* 注文追加-承り可能判定 */
  bool get isEnableOrderAdd =>
      throw _privateConstructorUsedError; /* 最安値便のハイライト判定 (自宅受け取り便・置き配便のみ、それ以外の便は固定値でfalse) true：ハイライト要 ／ false：ハイライト不要 */
  bool get isMinDeliveryPriceHighlight =>
      throw _privateConstructorUsedError; /* フロント便選択ボタン表示用のステータス
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
  DeliveryScheduleStatus get deliveryScheduleStatus =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryDateModelCopyWith<DeliveryDateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryDateModelCopyWith<$Res> {
  factory $DeliveryDateModelCopyWith(
          DeliveryDateModel value, $Res Function(DeliveryDateModel) then) =
      _$DeliveryDateModelCopyWithImpl<$Res, DeliveryDateModel>;
  @useResult
  $Res call(
      {List<String> packMethodTypeNames,
      int acceptedOrderTotalPrice,
      int fulfillmentDeliveryPrice,
      String deliveryDate,
      String deliveryTimeId,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'additional_order_closing_datetime')
          int epochAdditionalOrderClosingDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'change_order_closing_datetime')
          int epochChangeOrderClosingDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'cancel_order_closing_datetime')
          int epochCancelOrderClosingDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'order_delivery_plan_change_closing_datetime')
          int epochOrderDeliveryPlanChangeClosingDatetime,
      bool hasAcceptedOrder,
      bool hasOldOrder,
      bool isDeliveryPlanChangeOrign,
      bool isEnableDeliveryPlan,
      bool isEnableDeliveryPlanMixPackMethodOrder,
      bool isEventHandleDeliveryPlanChange,
      bool isEventHandleNewOrder,
      bool isEventHandleChangeOrder,
      bool isWarnRemainingOrder,
      OrderHistoryModel? orderHistory,
      String shopCode,
      bool isEventHandleAdditionalOrder,
      bool isEnableEvent,
      OrderDisabledReason orderDisabledReason,
      int acceptedOrderCount,
      bool isEnableDeliveryPlanClosingDatetimeExpired,
      bool isEnableDeliveryPlanDeliveryRestriction,
      bool isEnableDeliveryPlanMaxOrder,
      bool isEnableDeliveryPlanChangeAcceptedOrder,
      bool isEnableDeliveryPlanChangeMixStockSaleDate,
      bool isEnableDeliveryPlanReserveReceiptLimited,
      bool isRegularShipmentOrder,
      int acceptedOrderSalePrice,
      bool isClosingPreviousDay,
      bool isEnableOrderAdd,
      bool isMinDeliveryPriceHighlight,
      DeliveryScheduleStatus deliveryScheduleStatus});

  $OrderHistoryModelCopyWith<$Res>? get orderHistory;
}

/// @nodoc
class _$DeliveryDateModelCopyWithImpl<$Res, $Val extends DeliveryDateModel>
    implements $DeliveryDateModelCopyWith<$Res> {
  _$DeliveryDateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packMethodTypeNames = null,
    Object? acceptedOrderTotalPrice = null,
    Object? fulfillmentDeliveryPrice = null,
    Object? deliveryDate = null,
    Object? deliveryTimeId = null,
    Object? epochAdditionalOrderClosingDatetime = null,
    Object? epochChangeOrderClosingDatetime = null,
    Object? epochCancelOrderClosingDatetime = null,
    Object? epochOrderDeliveryPlanChangeClosingDatetime = null,
    Object? hasAcceptedOrder = null,
    Object? hasOldOrder = null,
    Object? isDeliveryPlanChangeOrign = null,
    Object? isEnableDeliveryPlan = null,
    Object? isEnableDeliveryPlanMixPackMethodOrder = null,
    Object? isEventHandleDeliveryPlanChange = null,
    Object? isEventHandleNewOrder = null,
    Object? isEventHandleChangeOrder = null,
    Object? isWarnRemainingOrder = null,
    Object? orderHistory = freezed,
    Object? shopCode = null,
    Object? isEventHandleAdditionalOrder = null,
    Object? isEnableEvent = null,
    Object? orderDisabledReason = null,
    Object? acceptedOrderCount = null,
    Object? isEnableDeliveryPlanClosingDatetimeExpired = null,
    Object? isEnableDeliveryPlanDeliveryRestriction = null,
    Object? isEnableDeliveryPlanMaxOrder = null,
    Object? isEnableDeliveryPlanChangeAcceptedOrder = null,
    Object? isEnableDeliveryPlanChangeMixStockSaleDate = null,
    Object? isEnableDeliveryPlanReserveReceiptLimited = null,
    Object? isRegularShipmentOrder = null,
    Object? acceptedOrderSalePrice = null,
    Object? isClosingPreviousDay = null,
    Object? isEnableOrderAdd = null,
    Object? isMinDeliveryPriceHighlight = null,
    Object? deliveryScheduleStatus = null,
  }) {
    return _then(_value.copyWith(
      packMethodTypeNames: null == packMethodTypeNames
          ? _value.packMethodTypeNames
          : packMethodTypeNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      acceptedOrderTotalPrice: null == acceptedOrderTotalPrice
          ? _value.acceptedOrderTotalPrice
          : acceptedOrderTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      fulfillmentDeliveryPrice: null == fulfillmentDeliveryPrice
          ? _value.fulfillmentDeliveryPrice
          : fulfillmentDeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryTimeId: null == deliveryTimeId
          ? _value.deliveryTimeId
          : deliveryTimeId // ignore: cast_nullable_to_non_nullable
              as String,
      epochAdditionalOrderClosingDatetime: null ==
              epochAdditionalOrderClosingDatetime
          ? _value.epochAdditionalOrderClosingDatetime
          : epochAdditionalOrderClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochChangeOrderClosingDatetime: null == epochChangeOrderClosingDatetime
          ? _value.epochChangeOrderClosingDatetime
          : epochChangeOrderClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochCancelOrderClosingDatetime: null == epochCancelOrderClosingDatetime
          ? _value.epochCancelOrderClosingDatetime
          : epochCancelOrderClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochOrderDeliveryPlanChangeClosingDatetime: null ==
              epochOrderDeliveryPlanChangeClosingDatetime
          ? _value.epochOrderDeliveryPlanChangeClosingDatetime
          : epochOrderDeliveryPlanChangeClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      hasAcceptedOrder: null == hasAcceptedOrder
          ? _value.hasAcceptedOrder
          : hasAcceptedOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      hasOldOrder: null == hasOldOrder
          ? _value.hasOldOrder
          : hasOldOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeliveryPlanChangeOrign: null == isDeliveryPlanChangeOrign
          ? _value.isDeliveryPlanChangeOrign
          : isDeliveryPlanChangeOrign // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableDeliveryPlan: null == isEnableDeliveryPlan
          ? _value.isEnableDeliveryPlan
          : isEnableDeliveryPlan // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableDeliveryPlanMixPackMethodOrder: null ==
              isEnableDeliveryPlanMixPackMethodOrder
          ? _value.isEnableDeliveryPlanMixPackMethodOrder
          : isEnableDeliveryPlanMixPackMethodOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isEventHandleDeliveryPlanChange: null == isEventHandleDeliveryPlanChange
          ? _value.isEventHandleDeliveryPlanChange
          : isEventHandleDeliveryPlanChange // ignore: cast_nullable_to_non_nullable
              as bool,
      isEventHandleNewOrder: null == isEventHandleNewOrder
          ? _value.isEventHandleNewOrder
          : isEventHandleNewOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isEventHandleChangeOrder: null == isEventHandleChangeOrder
          ? _value.isEventHandleChangeOrder
          : isEventHandleChangeOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isWarnRemainingOrder: null == isWarnRemainingOrder
          ? _value.isWarnRemainingOrder
          : isWarnRemainingOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      orderHistory: freezed == orderHistory
          ? _value.orderHistory
          : orderHistory // ignore: cast_nullable_to_non_nullable
              as OrderHistoryModel?,
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      isEventHandleAdditionalOrder: null == isEventHandleAdditionalOrder
          ? _value.isEventHandleAdditionalOrder
          : isEventHandleAdditionalOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableEvent: null == isEnableEvent
          ? _value.isEnableEvent
          : isEnableEvent // ignore: cast_nullable_to_non_nullable
              as bool,
      orderDisabledReason: null == orderDisabledReason
          ? _value.orderDisabledReason
          : orderDisabledReason // ignore: cast_nullable_to_non_nullable
              as OrderDisabledReason,
      acceptedOrderCount: null == acceptedOrderCount
          ? _value.acceptedOrderCount
          : acceptedOrderCount // ignore: cast_nullable_to_non_nullable
              as int,
      isEnableDeliveryPlanClosingDatetimeExpired: null ==
              isEnableDeliveryPlanClosingDatetimeExpired
          ? _value.isEnableDeliveryPlanClosingDatetimeExpired
          : isEnableDeliveryPlanClosingDatetimeExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableDeliveryPlanDeliveryRestriction: null ==
              isEnableDeliveryPlanDeliveryRestriction
          ? _value.isEnableDeliveryPlanDeliveryRestriction
          : isEnableDeliveryPlanDeliveryRestriction // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableDeliveryPlanMaxOrder: null == isEnableDeliveryPlanMaxOrder
          ? _value.isEnableDeliveryPlanMaxOrder
          : isEnableDeliveryPlanMaxOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableDeliveryPlanChangeAcceptedOrder: null ==
              isEnableDeliveryPlanChangeAcceptedOrder
          ? _value.isEnableDeliveryPlanChangeAcceptedOrder
          : isEnableDeliveryPlanChangeAcceptedOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableDeliveryPlanChangeMixStockSaleDate: null ==
              isEnableDeliveryPlanChangeMixStockSaleDate
          ? _value.isEnableDeliveryPlanChangeMixStockSaleDate
          : isEnableDeliveryPlanChangeMixStockSaleDate // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableDeliveryPlanReserveReceiptLimited: null ==
              isEnableDeliveryPlanReserveReceiptLimited
          ? _value.isEnableDeliveryPlanReserveReceiptLimited
          : isEnableDeliveryPlanReserveReceiptLimited // ignore: cast_nullable_to_non_nullable
              as bool,
      isRegularShipmentOrder: null == isRegularShipmentOrder
          ? _value.isRegularShipmentOrder
          : isRegularShipmentOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptedOrderSalePrice: null == acceptedOrderSalePrice
          ? _value.acceptedOrderSalePrice
          : acceptedOrderSalePrice // ignore: cast_nullable_to_non_nullable
              as int,
      isClosingPreviousDay: null == isClosingPreviousDay
          ? _value.isClosingPreviousDay
          : isClosingPreviousDay // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableOrderAdd: null == isEnableOrderAdd
          ? _value.isEnableOrderAdd
          : isEnableOrderAdd // ignore: cast_nullable_to_non_nullable
              as bool,
      isMinDeliveryPriceHighlight: null == isMinDeliveryPriceHighlight
          ? _value.isMinDeliveryPriceHighlight
          : isMinDeliveryPriceHighlight // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryScheduleStatus: null == deliveryScheduleStatus
          ? _value.deliveryScheduleStatus
          : deliveryScheduleStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryScheduleStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderHistoryModelCopyWith<$Res>? get orderHistory {
    if (_value.orderHistory == null) {
      return null;
    }

    return $OrderHistoryModelCopyWith<$Res>(_value.orderHistory!, (value) {
      return _then(_value.copyWith(orderHistory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DeliveryDateModelCopyWith<$Res>
    implements $DeliveryDateModelCopyWith<$Res> {
  factory _$$_DeliveryDateModelCopyWith(_$_DeliveryDateModel value,
          $Res Function(_$_DeliveryDateModel) then) =
      __$$_DeliveryDateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> packMethodTypeNames,
      int acceptedOrderTotalPrice,
      int fulfillmentDeliveryPrice,
      String deliveryDate,
      String deliveryTimeId,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'additional_order_closing_datetime')
          int epochAdditionalOrderClosingDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'change_order_closing_datetime')
          int epochChangeOrderClosingDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'cancel_order_closing_datetime')
          int epochCancelOrderClosingDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'order_delivery_plan_change_closing_datetime')
          int epochOrderDeliveryPlanChangeClosingDatetime,
      bool hasAcceptedOrder,
      bool hasOldOrder,
      bool isDeliveryPlanChangeOrign,
      bool isEnableDeliveryPlan,
      bool isEnableDeliveryPlanMixPackMethodOrder,
      bool isEventHandleDeliveryPlanChange,
      bool isEventHandleNewOrder,
      bool isEventHandleChangeOrder,
      bool isWarnRemainingOrder,
      OrderHistoryModel? orderHistory,
      String shopCode,
      bool isEventHandleAdditionalOrder,
      bool isEnableEvent,
      OrderDisabledReason orderDisabledReason,
      int acceptedOrderCount,
      bool isEnableDeliveryPlanClosingDatetimeExpired,
      bool isEnableDeliveryPlanDeliveryRestriction,
      bool isEnableDeliveryPlanMaxOrder,
      bool isEnableDeliveryPlanChangeAcceptedOrder,
      bool isEnableDeliveryPlanChangeMixStockSaleDate,
      bool isEnableDeliveryPlanReserveReceiptLimited,
      bool isRegularShipmentOrder,
      int acceptedOrderSalePrice,
      bool isClosingPreviousDay,
      bool isEnableOrderAdd,
      bool isMinDeliveryPriceHighlight,
      DeliveryScheduleStatus deliveryScheduleStatus});

  @override
  $OrderHistoryModelCopyWith<$Res>? get orderHistory;
}

/// @nodoc
class __$$_DeliveryDateModelCopyWithImpl<$Res>
    extends _$DeliveryDateModelCopyWithImpl<$Res, _$_DeliveryDateModel>
    implements _$$_DeliveryDateModelCopyWith<$Res> {
  __$$_DeliveryDateModelCopyWithImpl(
      _$_DeliveryDateModel _value, $Res Function(_$_DeliveryDateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packMethodTypeNames = null,
    Object? acceptedOrderTotalPrice = null,
    Object? fulfillmentDeliveryPrice = null,
    Object? deliveryDate = null,
    Object? deliveryTimeId = null,
    Object? epochAdditionalOrderClosingDatetime = null,
    Object? epochChangeOrderClosingDatetime = null,
    Object? epochCancelOrderClosingDatetime = null,
    Object? epochOrderDeliveryPlanChangeClosingDatetime = null,
    Object? hasAcceptedOrder = null,
    Object? hasOldOrder = null,
    Object? isDeliveryPlanChangeOrign = null,
    Object? isEnableDeliveryPlan = null,
    Object? isEnableDeliveryPlanMixPackMethodOrder = null,
    Object? isEventHandleDeliveryPlanChange = null,
    Object? isEventHandleNewOrder = null,
    Object? isEventHandleChangeOrder = null,
    Object? isWarnRemainingOrder = null,
    Object? orderHistory = freezed,
    Object? shopCode = null,
    Object? isEventHandleAdditionalOrder = null,
    Object? isEnableEvent = null,
    Object? orderDisabledReason = null,
    Object? acceptedOrderCount = null,
    Object? isEnableDeliveryPlanClosingDatetimeExpired = null,
    Object? isEnableDeliveryPlanDeliveryRestriction = null,
    Object? isEnableDeliveryPlanMaxOrder = null,
    Object? isEnableDeliveryPlanChangeAcceptedOrder = null,
    Object? isEnableDeliveryPlanChangeMixStockSaleDate = null,
    Object? isEnableDeliveryPlanReserveReceiptLimited = null,
    Object? isRegularShipmentOrder = null,
    Object? acceptedOrderSalePrice = null,
    Object? isClosingPreviousDay = null,
    Object? isEnableOrderAdd = null,
    Object? isMinDeliveryPriceHighlight = null,
    Object? deliveryScheduleStatus = null,
  }) {
    return _then(_$_DeliveryDateModel(
      packMethodTypeNames: null == packMethodTypeNames
          ? _value._packMethodTypeNames
          : packMethodTypeNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      acceptedOrderTotalPrice: null == acceptedOrderTotalPrice
          ? _value.acceptedOrderTotalPrice
          : acceptedOrderTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      fulfillmentDeliveryPrice: null == fulfillmentDeliveryPrice
          ? _value.fulfillmentDeliveryPrice
          : fulfillmentDeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryTimeId: null == deliveryTimeId
          ? _value.deliveryTimeId
          : deliveryTimeId // ignore: cast_nullable_to_non_nullable
              as String,
      epochAdditionalOrderClosingDatetime: null ==
              epochAdditionalOrderClosingDatetime
          ? _value.epochAdditionalOrderClosingDatetime
          : epochAdditionalOrderClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochChangeOrderClosingDatetime: null == epochChangeOrderClosingDatetime
          ? _value.epochChangeOrderClosingDatetime
          : epochChangeOrderClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochCancelOrderClosingDatetime: null == epochCancelOrderClosingDatetime
          ? _value.epochCancelOrderClosingDatetime
          : epochCancelOrderClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochOrderDeliveryPlanChangeClosingDatetime: null ==
              epochOrderDeliveryPlanChangeClosingDatetime
          ? _value.epochOrderDeliveryPlanChangeClosingDatetime
          : epochOrderDeliveryPlanChangeClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      hasAcceptedOrder: null == hasAcceptedOrder
          ? _value.hasAcceptedOrder
          : hasAcceptedOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      hasOldOrder: null == hasOldOrder
          ? _value.hasOldOrder
          : hasOldOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeliveryPlanChangeOrign: null == isDeliveryPlanChangeOrign
          ? _value.isDeliveryPlanChangeOrign
          : isDeliveryPlanChangeOrign // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableDeliveryPlan: null == isEnableDeliveryPlan
          ? _value.isEnableDeliveryPlan
          : isEnableDeliveryPlan // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableDeliveryPlanMixPackMethodOrder: null ==
              isEnableDeliveryPlanMixPackMethodOrder
          ? _value.isEnableDeliveryPlanMixPackMethodOrder
          : isEnableDeliveryPlanMixPackMethodOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isEventHandleDeliveryPlanChange: null == isEventHandleDeliveryPlanChange
          ? _value.isEventHandleDeliveryPlanChange
          : isEventHandleDeliveryPlanChange // ignore: cast_nullable_to_non_nullable
              as bool,
      isEventHandleNewOrder: null == isEventHandleNewOrder
          ? _value.isEventHandleNewOrder
          : isEventHandleNewOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isEventHandleChangeOrder: null == isEventHandleChangeOrder
          ? _value.isEventHandleChangeOrder
          : isEventHandleChangeOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isWarnRemainingOrder: null == isWarnRemainingOrder
          ? _value.isWarnRemainingOrder
          : isWarnRemainingOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      orderHistory: freezed == orderHistory
          ? _value.orderHistory
          : orderHistory // ignore: cast_nullable_to_non_nullable
              as OrderHistoryModel?,
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      isEventHandleAdditionalOrder: null == isEventHandleAdditionalOrder
          ? _value.isEventHandleAdditionalOrder
          : isEventHandleAdditionalOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableEvent: null == isEnableEvent
          ? _value.isEnableEvent
          : isEnableEvent // ignore: cast_nullable_to_non_nullable
              as bool,
      orderDisabledReason: null == orderDisabledReason
          ? _value.orderDisabledReason
          : orderDisabledReason // ignore: cast_nullable_to_non_nullable
              as OrderDisabledReason,
      acceptedOrderCount: null == acceptedOrderCount
          ? _value.acceptedOrderCount
          : acceptedOrderCount // ignore: cast_nullable_to_non_nullable
              as int,
      isEnableDeliveryPlanClosingDatetimeExpired: null ==
              isEnableDeliveryPlanClosingDatetimeExpired
          ? _value.isEnableDeliveryPlanClosingDatetimeExpired
          : isEnableDeliveryPlanClosingDatetimeExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableDeliveryPlanDeliveryRestriction: null ==
              isEnableDeliveryPlanDeliveryRestriction
          ? _value.isEnableDeliveryPlanDeliveryRestriction
          : isEnableDeliveryPlanDeliveryRestriction // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableDeliveryPlanMaxOrder: null == isEnableDeliveryPlanMaxOrder
          ? _value.isEnableDeliveryPlanMaxOrder
          : isEnableDeliveryPlanMaxOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableDeliveryPlanChangeAcceptedOrder: null ==
              isEnableDeliveryPlanChangeAcceptedOrder
          ? _value.isEnableDeliveryPlanChangeAcceptedOrder
          : isEnableDeliveryPlanChangeAcceptedOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableDeliveryPlanChangeMixStockSaleDate: null ==
              isEnableDeliveryPlanChangeMixStockSaleDate
          ? _value.isEnableDeliveryPlanChangeMixStockSaleDate
          : isEnableDeliveryPlanChangeMixStockSaleDate // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableDeliveryPlanReserveReceiptLimited: null ==
              isEnableDeliveryPlanReserveReceiptLimited
          ? _value.isEnableDeliveryPlanReserveReceiptLimited
          : isEnableDeliveryPlanReserveReceiptLimited // ignore: cast_nullable_to_non_nullable
              as bool,
      isRegularShipmentOrder: null == isRegularShipmentOrder
          ? _value.isRegularShipmentOrder
          : isRegularShipmentOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      acceptedOrderSalePrice: null == acceptedOrderSalePrice
          ? _value.acceptedOrderSalePrice
          : acceptedOrderSalePrice // ignore: cast_nullable_to_non_nullable
              as int,
      isClosingPreviousDay: null == isClosingPreviousDay
          ? _value.isClosingPreviousDay
          : isClosingPreviousDay // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableOrderAdd: null == isEnableOrderAdd
          ? _value.isEnableOrderAdd
          : isEnableOrderAdd // ignore: cast_nullable_to_non_nullable
              as bool,
      isMinDeliveryPriceHighlight: null == isMinDeliveryPriceHighlight
          ? _value.isMinDeliveryPriceHighlight
          : isMinDeliveryPriceHighlight // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryScheduleStatus: null == deliveryScheduleStatus
          ? _value.deliveryScheduleStatus
          : deliveryScheduleStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryScheduleStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryDateModel extends _DeliveryDateModel {
  const _$_DeliveryDateModel(
      {final List<String> packMethodTypeNames = const <String>[],
      this.acceptedOrderTotalPrice = 0,
      this.fulfillmentDeliveryPrice = 0,
      this.deliveryDate = '',
      this.deliveryTimeId = '',
      @StringToEpochTimeConverter()
      @JsonKey(name: 'additional_order_closing_datetime')
          this.epochAdditionalOrderClosingDatetime = 0,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'change_order_closing_datetime')
          this.epochChangeOrderClosingDatetime = 0,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'cancel_order_closing_datetime')
          this.epochCancelOrderClosingDatetime = 0,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'order_delivery_plan_change_closing_datetime')
          this.epochOrderDeliveryPlanChangeClosingDatetime = 0,
      this.hasAcceptedOrder = false,
      this.hasOldOrder = false,
      this.isDeliveryPlanChangeOrign = false,
      this.isEnableDeliveryPlan = false,
      this.isEnableDeliveryPlanMixPackMethodOrder = false,
      this.isEventHandleDeliveryPlanChange = false,
      this.isEventHandleNewOrder = false,
      this.isEventHandleChangeOrder = false,
      this.isWarnRemainingOrder = false,
      this.orderHistory,
      this.shopCode = '',
      this.isEventHandleAdditionalOrder = false,
      this.isEnableEvent = false,
      this.orderDisabledReason = OrderDisabledReason.closingDate,
      this.acceptedOrderCount = 0,
      this.isEnableDeliveryPlanClosingDatetimeExpired = false,
      this.isEnableDeliveryPlanDeliveryRestriction = false,
      this.isEnableDeliveryPlanMaxOrder = false,
      this.isEnableDeliveryPlanChangeAcceptedOrder = false,
      this.isEnableDeliveryPlanChangeMixStockSaleDate = false,
      this.isEnableDeliveryPlanReserveReceiptLimited = false,
      this.isRegularShipmentOrder = false,
      this.acceptedOrderSalePrice = 0,
      this.isClosingPreviousDay = false,
      this.isEnableOrderAdd = false,
      this.isMinDeliveryPriceHighlight = false,
      this.deliveryScheduleStatus = DeliveryScheduleStatus.closedAccept})
      : _packMethodTypeNames = packMethodTypeNames,
        super._();

  factory _$_DeliveryDateModel.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryDateModelFromJson(json);

/* 梱包まとめ方法種別名リスト */
  final List<String> _packMethodTypeNames;
/* 梱包まとめ方法種別名リスト */
  @override
  @JsonKey()
  List<String> get packMethodTypeNames {
    if (_packMethodTypeNames is EqualUnmodifiableListView)
      return _packMethodTypeNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packMethodTypeNames);
  }

/* 承り済み受注-合計金額 */
  @override
  @JsonKey()
  final int acceptedOrderTotalPrice;
/* 配達便-配達料 */
  @override
  @JsonKey()
  final int fulfillmentDeliveryPrice;
/* 配達日 ※yyyyMMdd */
  @override
  @JsonKey()
  final String deliveryDate;
/* 配送時間帯ID */
  @override
  @JsonKey()
  final String deliveryTimeId;
/* 注文追加締め日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'additional_order_closing_datetime')
  final int epochAdditionalOrderClosingDatetime;
/* 注文変更締め日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'change_order_closing_datetime')
  final int epochChangeOrderClosingDatetime;
/* キャンセル締め日時 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'cancel_order_closing_datetime')
  final int epochCancelOrderClosingDatetime;
/* 配達便変更締め日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'order_delivery_plan_change_closing_datetime')
  final int epochOrderDeliveryPlanChangeClosingDatetime;
/* 承り済み受注あり判定 - true：承り済み受注あり - false：承り済み受注なし */
  @override
  @JsonKey()
  final bool hasAcceptedOrder;
/* 注文あり判定 - true：注文あり - false：注文なし */
  @override
  @JsonKey()
  final bool hasOldOrder;
/* 受取便変更元-配達便の判定 - true：受取便変更元の配達便である - false：受取便変更元の配達便でない */
  @override
  @JsonKey()
  final bool isDeliveryPlanChangeOrign;
/* 配達便有効判定 - true：有効な配達便である - false：有効な配達便でない */
  @override
  @JsonKey()
  final bool isEnableDeliveryPlan;
/* 配達便有効判定「梱包まとめ方法の異なる承り済み受注あり」 - true：有効な配達便である（梱包まとめ方法の異なる承り済み受注なし） - false：有効な配達便でない（梱包まとめ方法の異なる承り済み受注あり） */
  @override
  @JsonKey()
  final bool isEnableDeliveryPlanMixPackMethodOrder;
/* 割り当てイベント「受取便変更」判定 - true：受取便変更を実施する - false：受取便変更を実施しない */
  @override
  @JsonKey()
  final bool isEventHandleDeliveryPlanChange;
/* 割り当てイベント「新規注文」判定 - true：新規注文を実施する - false：新規注文を実施しない */
  @override
  @JsonKey()
  final bool isEventHandleNewOrder;
/* 割り当てイベント「注文変更」判定 - true：注文変更を実施する - false：注文変更を実施しない */
  @override
  @JsonKey()
  final bool isEventHandleChangeOrder;
/* 残り受注件数警告あり判定 - true：残り受注件数警告あり - false：残り受注件数警告なし */
  @override
  @JsonKey()
  final bool isWarnRemainingOrder;
  @override
  final OrderHistoryModel? orderHistory;
/* 店コード */
  @override
  @JsonKey()
  final String shopCode;
/* 割り当てイベント「注文追加」判定 - true：注文追加を実施する - false：注文追加を実施しない */
  @override
  @JsonKey()
  final bool isEventHandleAdditionalOrder;
/* 便選択可能判定 - true：便選択可能 - false：便選択不可 */
  @override
  @JsonKey()
  final bool isEnableEvent;
/* 便選択NG理由 ``` \"1\"：締め日時経過NG \"2\"：配達休み・交通規制NG \"3\"：最大受注件数到達NG \"4\"：梱包まとめ方法の異なる承り済み受注ありNG \"5\"：予約お渡し時間制限以降の便NG \"6\"：受取便変更先に他の承り済み受注ありNG \"7\"：受取便変更先の在庫販売可否が異なる配達日NG \"8\"：見学またはみなし便に他の承り済み受注ありNG``` */
  @override
  @JsonKey()
  final OrderDisabledReason orderDisabledReason;
/* 承り済み受注-合計受注件数 */
  @override
  @JsonKey()
  final int acceptedOrderCount;
/* 配達便有効判定「締め日時経過」 - true：有効な配達便である（締め時間以内） - false：有効な配達便でない（締め時間超過） */
  @override
  @JsonKey()
  final bool isEnableDeliveryPlanClosingDatetimeExpired;
/* 配達便有効判定「配達休み・交通規制」 - true：有効な配達便である（配達休み・交通規制でない） - false：有効な配達便でない（配達休み・交通規制である） */
  @override
  @JsonKey()
  final bool isEnableDeliveryPlanDeliveryRestriction;
/* 配達便有効判定「最大受注件数到達」 - true：有効な配達便である（最大受注件数到達でない） - false：有効な配達便でない（最大受注件数到達） */
  @override
  @JsonKey()
  final bool isEnableDeliveryPlanMaxOrder;
/* 配達便有効判定「受取便変更先に他の承り済み受注あり」 - true：有効な配達便である（受取便変更先に他の承り済み受注なし） - false：有効な配達便でない（受取便変更先に他の承り済み受注あり） */
  @override
  @JsonKey()
  final bool isEnableDeliveryPlanChangeAcceptedOrder;
/* 配達便有効判定「受取便変更先の在庫販売可否が異なる配達日」 - true：有効な配達便である（受取便変更先の在庫販売可否が異なる配達日でない） - false：有効な配達便でない（受取便変更先の在庫販売可否が異なる配達日） */
  @override
  @JsonKey()
  final bool isEnableDeliveryPlanChangeMixStockSaleDate;
/* 配達便有効判定「予約お渡し時間制限以降の便」 - true：有効な配達便である（予約お渡し時間制限以降の便でない） - false：有効な配達便でない（予約お渡し時間制限以降の便） */
  @override
  @JsonKey()
  final bool isEnableDeliveryPlanReserveReceiptLimited;
/* 定期便注文判定 - true：定期便注文 - false：定期便注文でない */
  @override
  @JsonKey()
  final bool isRegularShipmentOrder;
/* 承り受注販売額小計 */
  @override
  @JsonKey()
  final int acceptedOrderSalePrice;
/* 前日締め判定 true：配送時間帯締め時間が前日である ／ false：配送時間帯締め時間が前日ではない */
  @override
  @JsonKey()
  final bool isClosingPreviousDay;
/* 注文追加-承り可能判定 */
  @override
  @JsonKey()
  final bool isEnableOrderAdd;
/* 最安値便のハイライト判定 (自宅受け取り便・置き配便のみ、それ以外の便は固定値でfalse) true：ハイライト要 ／ false：ハイライト不要 */
  @override
  @JsonKey()
  final bool isMinDeliveryPriceHighlight;
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
  @override
  @JsonKey()
  final DeliveryScheduleStatus deliveryScheduleStatus;

  @override
  String toString() {
    return 'DeliveryDateModel(packMethodTypeNames: $packMethodTypeNames, acceptedOrderTotalPrice: $acceptedOrderTotalPrice, fulfillmentDeliveryPrice: $fulfillmentDeliveryPrice, deliveryDate: $deliveryDate, deliveryTimeId: $deliveryTimeId, epochAdditionalOrderClosingDatetime: $epochAdditionalOrderClosingDatetime, epochChangeOrderClosingDatetime: $epochChangeOrderClosingDatetime, epochCancelOrderClosingDatetime: $epochCancelOrderClosingDatetime, epochOrderDeliveryPlanChangeClosingDatetime: $epochOrderDeliveryPlanChangeClosingDatetime, hasAcceptedOrder: $hasAcceptedOrder, hasOldOrder: $hasOldOrder, isDeliveryPlanChangeOrign: $isDeliveryPlanChangeOrign, isEnableDeliveryPlan: $isEnableDeliveryPlan, isEnableDeliveryPlanMixPackMethodOrder: $isEnableDeliveryPlanMixPackMethodOrder, isEventHandleDeliveryPlanChange: $isEventHandleDeliveryPlanChange, isEventHandleNewOrder: $isEventHandleNewOrder, isEventHandleChangeOrder: $isEventHandleChangeOrder, isWarnRemainingOrder: $isWarnRemainingOrder, orderHistory: $orderHistory, shopCode: $shopCode, isEventHandleAdditionalOrder: $isEventHandleAdditionalOrder, isEnableEvent: $isEnableEvent, orderDisabledReason: $orderDisabledReason, acceptedOrderCount: $acceptedOrderCount, isEnableDeliveryPlanClosingDatetimeExpired: $isEnableDeliveryPlanClosingDatetimeExpired, isEnableDeliveryPlanDeliveryRestriction: $isEnableDeliveryPlanDeliveryRestriction, isEnableDeliveryPlanMaxOrder: $isEnableDeliveryPlanMaxOrder, isEnableDeliveryPlanChangeAcceptedOrder: $isEnableDeliveryPlanChangeAcceptedOrder, isEnableDeliveryPlanChangeMixStockSaleDate: $isEnableDeliveryPlanChangeMixStockSaleDate, isEnableDeliveryPlanReserveReceiptLimited: $isEnableDeliveryPlanReserveReceiptLimited, isRegularShipmentOrder: $isRegularShipmentOrder, acceptedOrderSalePrice: $acceptedOrderSalePrice, isClosingPreviousDay: $isClosingPreviousDay, isEnableOrderAdd: $isEnableOrderAdd, isMinDeliveryPriceHighlight: $isMinDeliveryPriceHighlight, deliveryScheduleStatus: $deliveryScheduleStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryDateModel &&
            const DeepCollectionEquality()
                .equals(other._packMethodTypeNames, _packMethodTypeNames) &&
            (identical(other.acceptedOrderTotalPrice, acceptedOrderTotalPrice) ||
                other.acceptedOrderTotalPrice == acceptedOrderTotalPrice) &&
            (identical(other.fulfillmentDeliveryPrice, fulfillmentDeliveryPrice) ||
                other.fulfillmentDeliveryPrice == fulfillmentDeliveryPrice) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.deliveryTimeId, deliveryTimeId) ||
                other.deliveryTimeId == deliveryTimeId) &&
            (identical(other.epochAdditionalOrderClosingDatetime, epochAdditionalOrderClosingDatetime) ||
                other.epochAdditionalOrderClosingDatetime ==
                    epochAdditionalOrderClosingDatetime) &&
            (identical(other.epochChangeOrderClosingDatetime, epochChangeOrderClosingDatetime) ||
                other.epochChangeOrderClosingDatetime ==
                    epochChangeOrderClosingDatetime) &&
            (identical(other.epochCancelOrderClosingDatetime, epochCancelOrderClosingDatetime) ||
                other.epochCancelOrderClosingDatetime ==
                    epochCancelOrderClosingDatetime) &&
            (identical(other.epochOrderDeliveryPlanChangeClosingDatetime, epochOrderDeliveryPlanChangeClosingDatetime) ||
                other.epochOrderDeliveryPlanChangeClosingDatetime ==
                    epochOrderDeliveryPlanChangeClosingDatetime) &&
            (identical(other.hasAcceptedOrder, hasAcceptedOrder) ||
                other.hasAcceptedOrder == hasAcceptedOrder) &&
            (identical(other.hasOldOrder, hasOldOrder) ||
                other.hasOldOrder == hasOldOrder) &&
            (identical(other.isDeliveryPlanChangeOrign, isDeliveryPlanChangeOrign) ||
                other.isDeliveryPlanChangeOrign == isDeliveryPlanChangeOrign) &&
            (identical(other.isEnableDeliveryPlan, isEnableDeliveryPlan) ||
                other.isEnableDeliveryPlan == isEnableDeliveryPlan) &&
            (identical(other.isEnableDeliveryPlanMixPackMethodOrder, isEnableDeliveryPlanMixPackMethodOrder) ||
                other.isEnableDeliveryPlanMixPackMethodOrder ==
                    isEnableDeliveryPlanMixPackMethodOrder) &&
            (identical(other.isEventHandleDeliveryPlanChange, isEventHandleDeliveryPlanChange) ||
                other.isEventHandleDeliveryPlanChange ==
                    isEventHandleDeliveryPlanChange) &&
            (identical(other.isEventHandleNewOrder, isEventHandleNewOrder) || other.isEventHandleNewOrder == isEventHandleNewOrder) &&
            (identical(other.isEventHandleChangeOrder, isEventHandleChangeOrder) || other.isEventHandleChangeOrder == isEventHandleChangeOrder) &&
            (identical(other.isWarnRemainingOrder, isWarnRemainingOrder) || other.isWarnRemainingOrder == isWarnRemainingOrder) &&
            (identical(other.orderHistory, orderHistory) || other.orderHistory == orderHistory) &&
            (identical(other.shopCode, shopCode) || other.shopCode == shopCode) &&
            (identical(other.isEventHandleAdditionalOrder, isEventHandleAdditionalOrder) || other.isEventHandleAdditionalOrder == isEventHandleAdditionalOrder) &&
            (identical(other.isEnableEvent, isEnableEvent) || other.isEnableEvent == isEnableEvent) &&
            (identical(other.orderDisabledReason, orderDisabledReason) || other.orderDisabledReason == orderDisabledReason) &&
            (identical(other.acceptedOrderCount, acceptedOrderCount) || other.acceptedOrderCount == acceptedOrderCount) &&
            (identical(other.isEnableDeliveryPlanClosingDatetimeExpired, isEnableDeliveryPlanClosingDatetimeExpired) || other.isEnableDeliveryPlanClosingDatetimeExpired == isEnableDeliveryPlanClosingDatetimeExpired) &&
            (identical(other.isEnableDeliveryPlanDeliveryRestriction, isEnableDeliveryPlanDeliveryRestriction) || other.isEnableDeliveryPlanDeliveryRestriction == isEnableDeliveryPlanDeliveryRestriction) &&
            (identical(other.isEnableDeliveryPlanMaxOrder, isEnableDeliveryPlanMaxOrder) || other.isEnableDeliveryPlanMaxOrder == isEnableDeliveryPlanMaxOrder) &&
            (identical(other.isEnableDeliveryPlanChangeAcceptedOrder, isEnableDeliveryPlanChangeAcceptedOrder) || other.isEnableDeliveryPlanChangeAcceptedOrder == isEnableDeliveryPlanChangeAcceptedOrder) &&
            (identical(other.isEnableDeliveryPlanChangeMixStockSaleDate, isEnableDeliveryPlanChangeMixStockSaleDate) || other.isEnableDeliveryPlanChangeMixStockSaleDate == isEnableDeliveryPlanChangeMixStockSaleDate) &&
            (identical(other.isEnableDeliveryPlanReserveReceiptLimited, isEnableDeliveryPlanReserveReceiptLimited) || other.isEnableDeliveryPlanReserveReceiptLimited == isEnableDeliveryPlanReserveReceiptLimited) &&
            (identical(other.isRegularShipmentOrder, isRegularShipmentOrder) || other.isRegularShipmentOrder == isRegularShipmentOrder) &&
            (identical(other.acceptedOrderSalePrice, acceptedOrderSalePrice) || other.acceptedOrderSalePrice == acceptedOrderSalePrice) &&
            (identical(other.isClosingPreviousDay, isClosingPreviousDay) || other.isClosingPreviousDay == isClosingPreviousDay) &&
            (identical(other.isEnableOrderAdd, isEnableOrderAdd) || other.isEnableOrderAdd == isEnableOrderAdd) &&
            (identical(other.isMinDeliveryPriceHighlight, isMinDeliveryPriceHighlight) || other.isMinDeliveryPriceHighlight == isMinDeliveryPriceHighlight) &&
            (identical(other.deliveryScheduleStatus, deliveryScheduleStatus) || other.deliveryScheduleStatus == deliveryScheduleStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_packMethodTypeNames),
        acceptedOrderTotalPrice,
        fulfillmentDeliveryPrice,
        deliveryDate,
        deliveryTimeId,
        epochAdditionalOrderClosingDatetime,
        epochChangeOrderClosingDatetime,
        epochCancelOrderClosingDatetime,
        epochOrderDeliveryPlanChangeClosingDatetime,
        hasAcceptedOrder,
        hasOldOrder,
        isDeliveryPlanChangeOrign,
        isEnableDeliveryPlan,
        isEnableDeliveryPlanMixPackMethodOrder,
        isEventHandleDeliveryPlanChange,
        isEventHandleNewOrder,
        isEventHandleChangeOrder,
        isWarnRemainingOrder,
        orderHistory,
        shopCode,
        isEventHandleAdditionalOrder,
        isEnableEvent,
        orderDisabledReason,
        acceptedOrderCount,
        isEnableDeliveryPlanClosingDatetimeExpired,
        isEnableDeliveryPlanDeliveryRestriction,
        isEnableDeliveryPlanMaxOrder,
        isEnableDeliveryPlanChangeAcceptedOrder,
        isEnableDeliveryPlanChangeMixStockSaleDate,
        isEnableDeliveryPlanReserveReceiptLimited,
        isRegularShipmentOrder,
        acceptedOrderSalePrice,
        isClosingPreviousDay,
        isEnableOrderAdd,
        isMinDeliveryPriceHighlight,
        deliveryScheduleStatus
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryDateModelCopyWith<_$_DeliveryDateModel> get copyWith =>
      __$$_DeliveryDateModelCopyWithImpl<_$_DeliveryDateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryDateModelToJson(
      this,
    );
  }
}

abstract class _DeliveryDateModel extends DeliveryDateModel {
  const factory _DeliveryDateModel(
          {final List<String> packMethodTypeNames,
          final int acceptedOrderTotalPrice,
          final int fulfillmentDeliveryPrice,
          final String deliveryDate,
          final String deliveryTimeId,
          @StringToEpochTimeConverter()
          @JsonKey(name: 'additional_order_closing_datetime')
              final int epochAdditionalOrderClosingDatetime,
          @StringToEpochTimeConverter()
          @JsonKey(name: 'change_order_closing_datetime')
              final int epochChangeOrderClosingDatetime,
          @StringToEpochTimeConverter()
          @JsonKey(name: 'cancel_order_closing_datetime')
              final int epochCancelOrderClosingDatetime,
          @StringToEpochTimeConverter()
          @JsonKey(name: 'order_delivery_plan_change_closing_datetime')
              final int epochOrderDeliveryPlanChangeClosingDatetime,
          final bool hasAcceptedOrder,
          final bool hasOldOrder,
          final bool isDeliveryPlanChangeOrign,
          final bool isEnableDeliveryPlan,
          final bool isEnableDeliveryPlanMixPackMethodOrder,
          final bool isEventHandleDeliveryPlanChange,
          final bool isEventHandleNewOrder,
          final bool isEventHandleChangeOrder,
          final bool isWarnRemainingOrder,
          final OrderHistoryModel? orderHistory,
          final String shopCode,
          final bool isEventHandleAdditionalOrder,
          final bool isEnableEvent,
          final OrderDisabledReason orderDisabledReason,
          final int acceptedOrderCount,
          final bool isEnableDeliveryPlanClosingDatetimeExpired,
          final bool isEnableDeliveryPlanDeliveryRestriction,
          final bool isEnableDeliveryPlanMaxOrder,
          final bool isEnableDeliveryPlanChangeAcceptedOrder,
          final bool isEnableDeliveryPlanChangeMixStockSaleDate,
          final bool isEnableDeliveryPlanReserveReceiptLimited,
          final bool isRegularShipmentOrder,
          final int acceptedOrderSalePrice,
          final bool isClosingPreviousDay,
          final bool isEnableOrderAdd,
          final bool isMinDeliveryPriceHighlight,
          final DeliveryScheduleStatus deliveryScheduleStatus}) =
      _$_DeliveryDateModel;
  const _DeliveryDateModel._() : super._();

  factory _DeliveryDateModel.fromJson(Map<String, dynamic> json) =
      _$_DeliveryDateModel.fromJson;

  @override /* 梱包まとめ方法種別名リスト */
  List<String> get packMethodTypeNames;
  @override /* 承り済み受注-合計金額 */
  int get acceptedOrderTotalPrice;
  @override /* 配達便-配達料 */
  int get fulfillmentDeliveryPrice;
  @override /* 配達日 ※yyyyMMdd */
  String get deliveryDate;
  @override /* 配送時間帯ID */
  String get deliveryTimeId;
  @override /* 注文追加締め日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'additional_order_closing_datetime')
  int get epochAdditionalOrderClosingDatetime;
  @override /* 注文変更締め日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'change_order_closing_datetime')
  int get epochChangeOrderClosingDatetime;
  @override /* キャンセル締め日時 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'cancel_order_closing_datetime')
  int get epochCancelOrderClosingDatetime;
  @override /* 配達便変更締め日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'order_delivery_plan_change_closing_datetime')
  int get epochOrderDeliveryPlanChangeClosingDatetime;
  @override /* 承り済み受注あり判定 - true：承り済み受注あり - false：承り済み受注なし */
  bool get hasAcceptedOrder;
  @override /* 注文あり判定 - true：注文あり - false：注文なし */
  bool get hasOldOrder;
  @override /* 受取便変更元-配達便の判定 - true：受取便変更元の配達便である - false：受取便変更元の配達便でない */
  bool get isDeliveryPlanChangeOrign;
  @override /* 配達便有効判定 - true：有効な配達便である - false：有効な配達便でない */
  bool get isEnableDeliveryPlan;
  @override /* 配達便有効判定「梱包まとめ方法の異なる承り済み受注あり」 - true：有効な配達便である（梱包まとめ方法の異なる承り済み受注なし） - false：有効な配達便でない（梱包まとめ方法の異なる承り済み受注あり） */
  bool get isEnableDeliveryPlanMixPackMethodOrder;
  @override /* 割り当てイベント「受取便変更」判定 - true：受取便変更を実施する - false：受取便変更を実施しない */
  bool get isEventHandleDeliveryPlanChange;
  @override /* 割り当てイベント「新規注文」判定 - true：新規注文を実施する - false：新規注文を実施しない */
  bool get isEventHandleNewOrder;
  @override /* 割り当てイベント「注文変更」判定 - true：注文変更を実施する - false：注文変更を実施しない */
  bool get isEventHandleChangeOrder;
  @override /* 残り受注件数警告あり判定 - true：残り受注件数警告あり - false：残り受注件数警告なし */
  bool get isWarnRemainingOrder;
  @override
  OrderHistoryModel? get orderHistory;
  @override /* 店コード */
  String get shopCode;
  @override /* 割り当てイベント「注文追加」判定 - true：注文追加を実施する - false：注文追加を実施しない */
  bool get isEventHandleAdditionalOrder;
  @override /* 便選択可能判定 - true：便選択可能 - false：便選択不可 */
  bool get isEnableEvent;
  @override /* 便選択NG理由 ``` \"1\"：締め日時経過NG \"2\"：配達休み・交通規制NG \"3\"：最大受注件数到達NG \"4\"：梱包まとめ方法の異なる承り済み受注ありNG \"5\"：予約お渡し時間制限以降の便NG \"6\"：受取便変更先に他の承り済み受注ありNG \"7\"：受取便変更先の在庫販売可否が異なる配達日NG \"8\"：見学またはみなし便に他の承り済み受注ありNG``` */
  OrderDisabledReason get orderDisabledReason;
  @override /* 承り済み受注-合計受注件数 */
  int get acceptedOrderCount;
  @override /* 配達便有効判定「締め日時経過」 - true：有効な配達便である（締め時間以内） - false：有効な配達便でない（締め時間超過） */
  bool get isEnableDeliveryPlanClosingDatetimeExpired;
  @override /* 配達便有効判定「配達休み・交通規制」 - true：有効な配達便である（配達休み・交通規制でない） - false：有効な配達便でない（配達休み・交通規制である） */
  bool get isEnableDeliveryPlanDeliveryRestriction;
  @override /* 配達便有効判定「最大受注件数到達」 - true：有効な配達便である（最大受注件数到達でない） - false：有効な配達便でない（最大受注件数到達） */
  bool get isEnableDeliveryPlanMaxOrder;
  @override /* 配達便有効判定「受取便変更先に他の承り済み受注あり」 - true：有効な配達便である（受取便変更先に他の承り済み受注なし） - false：有効な配達便でない（受取便変更先に他の承り済み受注あり） */
  bool get isEnableDeliveryPlanChangeAcceptedOrder;
  @override /* 配達便有効判定「受取便変更先の在庫販売可否が異なる配達日」 - true：有効な配達便である（受取便変更先の在庫販売可否が異なる配達日でない） - false：有効な配達便でない（受取便変更先の在庫販売可否が異なる配達日） */
  bool get isEnableDeliveryPlanChangeMixStockSaleDate;
  @override /* 配達便有効判定「予約お渡し時間制限以降の便」 - true：有効な配達便である（予約お渡し時間制限以降の便でない） - false：有効な配達便でない（予約お渡し時間制限以降の便） */
  bool get isEnableDeliveryPlanReserveReceiptLimited;
  @override /* 定期便注文判定 - true：定期便注文 - false：定期便注文でない */
  bool get isRegularShipmentOrder;
  @override /* 承り受注販売額小計 */
  int get acceptedOrderSalePrice;
  @override /* 前日締め判定 true：配送時間帯締め時間が前日である ／ false：配送時間帯締め時間が前日ではない */
  bool get isClosingPreviousDay;
  @override /* 注文追加-承り可能判定 */
  bool get isEnableOrderAdd;
  @override /* 最安値便のハイライト判定 (自宅受け取り便・置き配便のみ、それ以外の便は固定値でfalse) true：ハイライト要 ／ false：ハイライト不要 */
  bool get isMinDeliveryPriceHighlight;
  @override /* フロント便選択ボタン表示用のステータス
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
  DeliveryScheduleStatus get deliveryScheduleStatus;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryDateModelCopyWith<_$_DeliveryDateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
