// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_history_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderHistoryListModel _$OrderHistoryListModelFromJson(
    Map<String, dynamic> json) {
  return _OrderHistoryListModel.fromJson(json);
}

/// @nodoc
mixin _$OrderHistoryListModel {
/* 受注ID */
  int get orderId =>
      throw _privateConstructorUsedError; /* 旧受注ID - 変更中ではない場合、nullを返却 */
  int? get oldOrderId =>
      throw _privateConstructorUsedError; /* ステータス ``` \"0\"：未発送 \"1\"：配送済 \"2\"：売上計上 \"3\"：出荷指示済 \"4\"：持ち帰り \"5\"：クレジットエラー \"6\"：自動キャンセル \"7\"：全商品配達不可 \"8\"：一部商品配達不可 ``` */
  OrderStatus get status =>
      throw _privateConstructorUsedError; /* 支払い方法 ``` \"1\"：代金引換 \"2\"：クレジットカード \"4\"：全額ポイント利用 ``` */
  PaymentMethodType get paymentMethod =>
      throw _privateConstructorUsedError; /* 予約ステータス ``` \"0\"：非予約受注 \"1\"：予約のみ受注 \"2\"：予約含む受注 ``` */
  ReserveStatus get reserveStatus =>
      throw _privateConstructorUsedError; /* キャンセル料のみの受注フラグ - キャンセル料のみ受注フラグが未設定の場合、nullを返却 ``` \"0\"：非表示 \"1\"：受注IDをラベル表示 ``` */
  @StringToBooleanConverter()
  bool get cancelPriceFlag =>
      throw _privateConstructorUsedError; /* 配送便種別 ``` \"01\"：通常 \"02\"：通常（遠隔） \"03\"：店舗受取 \"04\"：置き配 \"05\"：7&iロッカー受取 \"06\"：店舗ロッカー受取 ``` */
  CartFulfillmentType get fulfillmentType =>
      throw _privateConstructorUsedError; /* 配送予定日時FROM ※YYYY-MM-DDTHH:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_plan_start_datetime')
  int get epochDeliveryPlanStartDatetime =>
      throw _privateConstructorUsedError; /* 配送予定日時TO ※YYYY-MM-DDTHH:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_plan_finish_datetime')
  int get epochDeliveryPlanFinishDatetime =>
      throw _privateConstructorUsedError; /* 受取先名表示判定  ``` true：表示する false：非表示 ``` */
  bool get isDisplayReceiptLocationName =>
      throw _privateConstructorUsedError; /* 静的コンテンツURL - 自宅受取の場合、nullを返却 */
  String get receiptLocationContentsUrl =>
      throw _privateConstructorUsedError; /* 受取先地点名称 */
  String get receiptLocationName =>
      throw _privateConstructorUsedError; /* 店名 - 店舗名が未設定の場合、nullを返却 */
  String get shopName => throw _privateConstructorUsedError; /* 合計金額 */
  int get totalPrice =>
      throw _privateConstructorUsedError; /* nanaco利用ポイント - nanaco利用ポイントが未設定の場合、nullを返却 */
  int get nanacoPointUsePoint =>
      throw _privateConstructorUsedError; /* ログイン店舗による注文変更可能判定  ``` true：注文変更可能 false：注文変更できない ``` */
  bool get isChangeOrderLoginShop =>
      throw _privateConstructorUsedError; /* キャンセル日 ※YYYY-MM-DDThh:mm:ss+09:00 ``` NS管理画面からの全品キャンセル時に設定される ``` */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'cancel_datetime')
  int get epochCancelDatetime =>
      throw _privateConstructorUsedError; /* 注文キャンセル締日時 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'cancel_closing_datetime')
  int get epochCancelClosingDatetime =>
      throw _privateConstructorUsedError; /* 注文変更締日時 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'change_closing_datetimt')
  int get epochChangeClosingDatetime =>
      throw _privateConstructorUsedError; /* 注文追加締日日時 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'additional_order_closing_datetime')
  int? get epochAdditionalOrderClosingDatetime =>
      throw _privateConstructorUsedError; /* 注文追加期間開始日時 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'additional_order_start_datetime')
  int? get epochAdditionalOrderStartDatetime =>
      throw _privateConstructorUsedError; /* ログイン状態「便未選択」判定  ``` true：便未選択である false：便未選択以外の状態(＝見学中の場合も含む) ``` */
  bool get isNotSelectedFulfillment =>
      throw _privateConstructorUsedError; /* 予約注文判定  ``` true：予約注文(＝通常商品が混在している場合も含む) false：予約注文ではない ``` */
  bool get isReserveOrder =>
      throw _privateConstructorUsedError; /* 注文追加期間内判定  ``` true：注文追加期間内である false：注文追加期間外である ``` */
  bool get isAdditionalOrderTerm =>
      throw _privateConstructorUsedError; /* ログイン店舗による注文追加可能判定  ``` true：注文追加可能 false：注文追加できない ``` */
  bool get isAdditionalOrderLoginShop =>
      throw _privateConstructorUsedError; /* 配送アンケートURL - 配送アンケートURLが未設定の場合、nullを返却 */
  String get deliveryQuestionUrl =>
      throw _privateConstructorUsedError; /* 変更締め日時前の判定  ``` true：変更締め前である false：変更締め日時を超過している ``` */
  bool get isBeforeChangeClosingDatetime =>
      throw _privateConstructorUsedError; /* 配送アンケートの回答有効期限内か否を判定  ``` true：回答有効期限内 false：回答有効期限切れ ``` */
  bool get isBeforeDeliveryQuestionAnswerExpired =>
      throw _privateConstructorUsedError; /* 注文追加締日時前の判定  ``` true：注文追加締め前である false：注文追加締日時を超過している ``` */
  bool get isBeforeAdditionalOrderClosingDatetime =>
      throw _privateConstructorUsedError; /* 変更・キャンセルをフラグ  ``` true：変更・キャンセルを制限する false：変更・キャンセルを制限しない ``` */
  bool get isOrderLimited =>
      throw _privateConstructorUsedError; /* 未発送商品フラグ ``` \"0\"：合計金額メール送信用ボタンを出力しない \"1\"：合計金額メール送信用ボタンを出力する ``` */
  @StringToBooleanConverter()
  bool get noDeliveryFlg =>
      throw _privateConstructorUsedError; /* 定期便注文判定  ``` true：定期便注文 false：定期便注文でない ``` */
  bool get isRegularShipmentOrder =>
      throw _privateConstructorUsedError; /* 注文キャンセル可能判定  ``` true：キャンセル可能 false：キャンセル不可 ``` */
  bool get isEnableOrderCancel =>
      throw _privateConstructorUsedError; /* 定期便割引率 */
  int get regularShipmentDiscountRate =>
      throw _privateConstructorUsedError; /* 配送状況確認画面URL */
  String get deliveryStatusConfirmationScreenUrl =>
      throw _privateConstructorUsedError;
  List<OrderHistoryProductsModel> get products =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderHistoryListModelCopyWith<OrderHistoryListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryListModelCopyWith<$Res> {
  factory $OrderHistoryListModelCopyWith(OrderHistoryListModel value,
          $Res Function(OrderHistoryListModel) then) =
      _$OrderHistoryListModelCopyWithImpl<$Res, OrderHistoryListModel>;
  @useResult
  $Res call(
      {int orderId,
      int? oldOrderId,
      OrderStatus status,
      PaymentMethodType paymentMethod,
      ReserveStatus reserveStatus,
      @StringToBooleanConverter()
          bool cancelPriceFlag,
      CartFulfillmentType fulfillmentType,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_start_datetime')
          int epochDeliveryPlanStartDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_finish_datetime')
          int epochDeliveryPlanFinishDatetime,
      bool isDisplayReceiptLocationName,
      String receiptLocationContentsUrl,
      String receiptLocationName,
      String shopName,
      int totalPrice,
      int nanacoPointUsePoint,
      bool isChangeOrderLoginShop,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'cancel_datetime')
          int epochCancelDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'cancel_closing_datetime')
          int epochCancelClosingDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'change_closing_datetimt')
          int epochChangeClosingDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'additional_order_closing_datetime')
          int? epochAdditionalOrderClosingDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'additional_order_start_datetime')
          int? epochAdditionalOrderStartDatetime,
      bool isNotSelectedFulfillment,
      bool isReserveOrder,
      bool isAdditionalOrderTerm,
      bool isAdditionalOrderLoginShop,
      String deliveryQuestionUrl,
      bool isBeforeChangeClosingDatetime,
      bool isBeforeDeliveryQuestionAnswerExpired,
      bool isBeforeAdditionalOrderClosingDatetime,
      bool isOrderLimited,
      @StringToBooleanConverter()
          bool noDeliveryFlg,
      bool isRegularShipmentOrder,
      bool isEnableOrderCancel,
      int regularShipmentDiscountRate,
      String deliveryStatusConfirmationScreenUrl,
      List<OrderHistoryProductsModel> products});
}

/// @nodoc
class _$OrderHistoryListModelCopyWithImpl<$Res,
        $Val extends OrderHistoryListModel>
    implements $OrderHistoryListModelCopyWith<$Res> {
  _$OrderHistoryListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? oldOrderId = freezed,
    Object? status = null,
    Object? paymentMethod = null,
    Object? reserveStatus = null,
    Object? cancelPriceFlag = null,
    Object? fulfillmentType = null,
    Object? epochDeliveryPlanStartDatetime = null,
    Object? epochDeliveryPlanFinishDatetime = null,
    Object? isDisplayReceiptLocationName = null,
    Object? receiptLocationContentsUrl = null,
    Object? receiptLocationName = null,
    Object? shopName = null,
    Object? totalPrice = null,
    Object? nanacoPointUsePoint = null,
    Object? isChangeOrderLoginShop = null,
    Object? epochCancelDatetime = null,
    Object? epochCancelClosingDatetime = null,
    Object? epochChangeClosingDatetime = null,
    Object? epochAdditionalOrderClosingDatetime = freezed,
    Object? epochAdditionalOrderStartDatetime = freezed,
    Object? isNotSelectedFulfillment = null,
    Object? isReserveOrder = null,
    Object? isAdditionalOrderTerm = null,
    Object? isAdditionalOrderLoginShop = null,
    Object? deliveryQuestionUrl = null,
    Object? isBeforeChangeClosingDatetime = null,
    Object? isBeforeDeliveryQuestionAnswerExpired = null,
    Object? isBeforeAdditionalOrderClosingDatetime = null,
    Object? isOrderLimited = null,
    Object? noDeliveryFlg = null,
    Object? isRegularShipmentOrder = null,
    Object? isEnableOrderCancel = null,
    Object? regularShipmentDiscountRate = null,
    Object? deliveryStatusConfirmationScreenUrl = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      oldOrderId: freezed == oldOrderId
          ? _value.oldOrderId
          : oldOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodType,
      reserveStatus: null == reserveStatus
          ? _value.reserveStatus
          : reserveStatus // ignore: cast_nullable_to_non_nullable
              as ReserveStatus,
      cancelPriceFlag: null == cancelPriceFlag
          ? _value.cancelPriceFlag
          : cancelPriceFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      fulfillmentType: null == fulfillmentType
          ? _value.fulfillmentType
          : fulfillmentType // ignore: cast_nullable_to_non_nullable
              as CartFulfillmentType,
      epochDeliveryPlanStartDatetime: null == epochDeliveryPlanStartDatetime
          ? _value.epochDeliveryPlanStartDatetime
          : epochDeliveryPlanStartDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochDeliveryPlanFinishDatetime: null == epochDeliveryPlanFinishDatetime
          ? _value.epochDeliveryPlanFinishDatetime
          : epochDeliveryPlanFinishDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      isDisplayReceiptLocationName: null == isDisplayReceiptLocationName
          ? _value.isDisplayReceiptLocationName
          : isDisplayReceiptLocationName // ignore: cast_nullable_to_non_nullable
              as bool,
      receiptLocationContentsUrl: null == receiptLocationContentsUrl
          ? _value.receiptLocationContentsUrl
          : receiptLocationContentsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      receiptLocationName: null == receiptLocationName
          ? _value.receiptLocationName
          : receiptLocationName // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      nanacoPointUsePoint: null == nanacoPointUsePoint
          ? _value.nanacoPointUsePoint
          : nanacoPointUsePoint // ignore: cast_nullable_to_non_nullable
              as int,
      isChangeOrderLoginShop: null == isChangeOrderLoginShop
          ? _value.isChangeOrderLoginShop
          : isChangeOrderLoginShop // ignore: cast_nullable_to_non_nullable
              as bool,
      epochCancelDatetime: null == epochCancelDatetime
          ? _value.epochCancelDatetime
          : epochCancelDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochCancelClosingDatetime: null == epochCancelClosingDatetime
          ? _value.epochCancelClosingDatetime
          : epochCancelClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochChangeClosingDatetime: null == epochChangeClosingDatetime
          ? _value.epochChangeClosingDatetime
          : epochChangeClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochAdditionalOrderClosingDatetime: freezed ==
              epochAdditionalOrderClosingDatetime
          ? _value.epochAdditionalOrderClosingDatetime
          : epochAdditionalOrderClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      epochAdditionalOrderStartDatetime: freezed ==
              epochAdditionalOrderStartDatetime
          ? _value.epochAdditionalOrderStartDatetime
          : epochAdditionalOrderStartDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      isNotSelectedFulfillment: null == isNotSelectedFulfillment
          ? _value.isNotSelectedFulfillment
          : isNotSelectedFulfillment // ignore: cast_nullable_to_non_nullable
              as bool,
      isReserveOrder: null == isReserveOrder
          ? _value.isReserveOrder
          : isReserveOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdditionalOrderTerm: null == isAdditionalOrderTerm
          ? _value.isAdditionalOrderTerm
          : isAdditionalOrderTerm // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdditionalOrderLoginShop: null == isAdditionalOrderLoginShop
          ? _value.isAdditionalOrderLoginShop
          : isAdditionalOrderLoginShop // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryQuestionUrl: null == deliveryQuestionUrl
          ? _value.deliveryQuestionUrl
          : deliveryQuestionUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isBeforeChangeClosingDatetime: null == isBeforeChangeClosingDatetime
          ? _value.isBeforeChangeClosingDatetime
          : isBeforeChangeClosingDatetime // ignore: cast_nullable_to_non_nullable
              as bool,
      isBeforeDeliveryQuestionAnswerExpired: null ==
              isBeforeDeliveryQuestionAnswerExpired
          ? _value.isBeforeDeliveryQuestionAnswerExpired
          : isBeforeDeliveryQuestionAnswerExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      isBeforeAdditionalOrderClosingDatetime: null ==
              isBeforeAdditionalOrderClosingDatetime
          ? _value.isBeforeAdditionalOrderClosingDatetime
          : isBeforeAdditionalOrderClosingDatetime // ignore: cast_nullable_to_non_nullable
              as bool,
      isOrderLimited: null == isOrderLimited
          ? _value.isOrderLimited
          : isOrderLimited // ignore: cast_nullable_to_non_nullable
              as bool,
      noDeliveryFlg: null == noDeliveryFlg
          ? _value.noDeliveryFlg
          : noDeliveryFlg // ignore: cast_nullable_to_non_nullable
              as bool,
      isRegularShipmentOrder: null == isRegularShipmentOrder
          ? _value.isRegularShipmentOrder
          : isRegularShipmentOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableOrderCancel: null == isEnableOrderCancel
          ? _value.isEnableOrderCancel
          : isEnableOrderCancel // ignore: cast_nullable_to_non_nullable
              as bool,
      regularShipmentDiscountRate: null == regularShipmentDiscountRate
          ? _value.regularShipmentDiscountRate
          : regularShipmentDiscountRate // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryStatusConfirmationScreenUrl: null ==
              deliveryStatusConfirmationScreenUrl
          ? _value.deliveryStatusConfirmationScreenUrl
          : deliveryStatusConfirmationScreenUrl // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<OrderHistoryProductsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderHistoryListModelCopyWith<$Res>
    implements $OrderHistoryListModelCopyWith<$Res> {
  factory _$$_OrderHistoryListModelCopyWith(_$_OrderHistoryListModel value,
          $Res Function(_$_OrderHistoryListModel) then) =
      __$$_OrderHistoryListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int orderId,
      int? oldOrderId,
      OrderStatus status,
      PaymentMethodType paymentMethod,
      ReserveStatus reserveStatus,
      @StringToBooleanConverter()
          bool cancelPriceFlag,
      CartFulfillmentType fulfillmentType,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_start_datetime')
          int epochDeliveryPlanStartDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_finish_datetime')
          int epochDeliveryPlanFinishDatetime,
      bool isDisplayReceiptLocationName,
      String receiptLocationContentsUrl,
      String receiptLocationName,
      String shopName,
      int totalPrice,
      int nanacoPointUsePoint,
      bool isChangeOrderLoginShop,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'cancel_datetime')
          int epochCancelDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'cancel_closing_datetime')
          int epochCancelClosingDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'change_closing_datetimt')
          int epochChangeClosingDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'additional_order_closing_datetime')
          int? epochAdditionalOrderClosingDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'additional_order_start_datetime')
          int? epochAdditionalOrderStartDatetime,
      bool isNotSelectedFulfillment,
      bool isReserveOrder,
      bool isAdditionalOrderTerm,
      bool isAdditionalOrderLoginShop,
      String deliveryQuestionUrl,
      bool isBeforeChangeClosingDatetime,
      bool isBeforeDeliveryQuestionAnswerExpired,
      bool isBeforeAdditionalOrderClosingDatetime,
      bool isOrderLimited,
      @StringToBooleanConverter()
          bool noDeliveryFlg,
      bool isRegularShipmentOrder,
      bool isEnableOrderCancel,
      int regularShipmentDiscountRate,
      String deliveryStatusConfirmationScreenUrl,
      List<OrderHistoryProductsModel> products});
}

/// @nodoc
class __$$_OrderHistoryListModelCopyWithImpl<$Res>
    extends _$OrderHistoryListModelCopyWithImpl<$Res, _$_OrderHistoryListModel>
    implements _$$_OrderHistoryListModelCopyWith<$Res> {
  __$$_OrderHistoryListModelCopyWithImpl(_$_OrderHistoryListModel _value,
      $Res Function(_$_OrderHistoryListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? oldOrderId = freezed,
    Object? status = null,
    Object? paymentMethod = null,
    Object? reserveStatus = null,
    Object? cancelPriceFlag = null,
    Object? fulfillmentType = null,
    Object? epochDeliveryPlanStartDatetime = null,
    Object? epochDeliveryPlanFinishDatetime = null,
    Object? isDisplayReceiptLocationName = null,
    Object? receiptLocationContentsUrl = null,
    Object? receiptLocationName = null,
    Object? shopName = null,
    Object? totalPrice = null,
    Object? nanacoPointUsePoint = null,
    Object? isChangeOrderLoginShop = null,
    Object? epochCancelDatetime = null,
    Object? epochCancelClosingDatetime = null,
    Object? epochChangeClosingDatetime = null,
    Object? epochAdditionalOrderClosingDatetime = freezed,
    Object? epochAdditionalOrderStartDatetime = freezed,
    Object? isNotSelectedFulfillment = null,
    Object? isReserveOrder = null,
    Object? isAdditionalOrderTerm = null,
    Object? isAdditionalOrderLoginShop = null,
    Object? deliveryQuestionUrl = null,
    Object? isBeforeChangeClosingDatetime = null,
    Object? isBeforeDeliveryQuestionAnswerExpired = null,
    Object? isBeforeAdditionalOrderClosingDatetime = null,
    Object? isOrderLimited = null,
    Object? noDeliveryFlg = null,
    Object? isRegularShipmentOrder = null,
    Object? isEnableOrderCancel = null,
    Object? regularShipmentDiscountRate = null,
    Object? deliveryStatusConfirmationScreenUrl = null,
    Object? products = null,
  }) {
    return _then(_$_OrderHistoryListModel(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      oldOrderId: freezed == oldOrderId
          ? _value.oldOrderId
          : oldOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodType,
      reserveStatus: null == reserveStatus
          ? _value.reserveStatus
          : reserveStatus // ignore: cast_nullable_to_non_nullable
              as ReserveStatus,
      cancelPriceFlag: null == cancelPriceFlag
          ? _value.cancelPriceFlag
          : cancelPriceFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      fulfillmentType: null == fulfillmentType
          ? _value.fulfillmentType
          : fulfillmentType // ignore: cast_nullable_to_non_nullable
              as CartFulfillmentType,
      epochDeliveryPlanStartDatetime: null == epochDeliveryPlanStartDatetime
          ? _value.epochDeliveryPlanStartDatetime
          : epochDeliveryPlanStartDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochDeliveryPlanFinishDatetime: null == epochDeliveryPlanFinishDatetime
          ? _value.epochDeliveryPlanFinishDatetime
          : epochDeliveryPlanFinishDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      isDisplayReceiptLocationName: null == isDisplayReceiptLocationName
          ? _value.isDisplayReceiptLocationName
          : isDisplayReceiptLocationName // ignore: cast_nullable_to_non_nullable
              as bool,
      receiptLocationContentsUrl: null == receiptLocationContentsUrl
          ? _value.receiptLocationContentsUrl
          : receiptLocationContentsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      receiptLocationName: null == receiptLocationName
          ? _value.receiptLocationName
          : receiptLocationName // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      nanacoPointUsePoint: null == nanacoPointUsePoint
          ? _value.nanacoPointUsePoint
          : nanacoPointUsePoint // ignore: cast_nullable_to_non_nullable
              as int,
      isChangeOrderLoginShop: null == isChangeOrderLoginShop
          ? _value.isChangeOrderLoginShop
          : isChangeOrderLoginShop // ignore: cast_nullable_to_non_nullable
              as bool,
      epochCancelDatetime: null == epochCancelDatetime
          ? _value.epochCancelDatetime
          : epochCancelDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochCancelClosingDatetime: null == epochCancelClosingDatetime
          ? _value.epochCancelClosingDatetime
          : epochCancelClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochChangeClosingDatetime: null == epochChangeClosingDatetime
          ? _value.epochChangeClosingDatetime
          : epochChangeClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochAdditionalOrderClosingDatetime: freezed ==
              epochAdditionalOrderClosingDatetime
          ? _value.epochAdditionalOrderClosingDatetime
          : epochAdditionalOrderClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      epochAdditionalOrderStartDatetime: freezed ==
              epochAdditionalOrderStartDatetime
          ? _value.epochAdditionalOrderStartDatetime
          : epochAdditionalOrderStartDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      isNotSelectedFulfillment: null == isNotSelectedFulfillment
          ? _value.isNotSelectedFulfillment
          : isNotSelectedFulfillment // ignore: cast_nullable_to_non_nullable
              as bool,
      isReserveOrder: null == isReserveOrder
          ? _value.isReserveOrder
          : isReserveOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdditionalOrderTerm: null == isAdditionalOrderTerm
          ? _value.isAdditionalOrderTerm
          : isAdditionalOrderTerm // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdditionalOrderLoginShop: null == isAdditionalOrderLoginShop
          ? _value.isAdditionalOrderLoginShop
          : isAdditionalOrderLoginShop // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryQuestionUrl: null == deliveryQuestionUrl
          ? _value.deliveryQuestionUrl
          : deliveryQuestionUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isBeforeChangeClosingDatetime: null == isBeforeChangeClosingDatetime
          ? _value.isBeforeChangeClosingDatetime
          : isBeforeChangeClosingDatetime // ignore: cast_nullable_to_non_nullable
              as bool,
      isBeforeDeliveryQuestionAnswerExpired: null ==
              isBeforeDeliveryQuestionAnswerExpired
          ? _value.isBeforeDeliveryQuestionAnswerExpired
          : isBeforeDeliveryQuestionAnswerExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      isBeforeAdditionalOrderClosingDatetime: null ==
              isBeforeAdditionalOrderClosingDatetime
          ? _value.isBeforeAdditionalOrderClosingDatetime
          : isBeforeAdditionalOrderClosingDatetime // ignore: cast_nullable_to_non_nullable
              as bool,
      isOrderLimited: null == isOrderLimited
          ? _value.isOrderLimited
          : isOrderLimited // ignore: cast_nullable_to_non_nullable
              as bool,
      noDeliveryFlg: null == noDeliveryFlg
          ? _value.noDeliveryFlg
          : noDeliveryFlg // ignore: cast_nullable_to_non_nullable
              as bool,
      isRegularShipmentOrder: null == isRegularShipmentOrder
          ? _value.isRegularShipmentOrder
          : isRegularShipmentOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableOrderCancel: null == isEnableOrderCancel
          ? _value.isEnableOrderCancel
          : isEnableOrderCancel // ignore: cast_nullable_to_non_nullable
              as bool,
      regularShipmentDiscountRate: null == regularShipmentDiscountRate
          ? _value.regularShipmentDiscountRate
          : regularShipmentDiscountRate // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryStatusConfirmationScreenUrl: null ==
              deliveryStatusConfirmationScreenUrl
          ? _value.deliveryStatusConfirmationScreenUrl
          : deliveryStatusConfirmationScreenUrl // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<OrderHistoryProductsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderHistoryListModel extends _OrderHistoryListModel {
  const _$_OrderHistoryListModel(
      {this.orderId = 0,
      this.oldOrderId,
      this.status = OrderStatus.undeliveried,
      this.paymentMethod = PaymentMethodType.cashOnDelivery,
      this.reserveStatus = ReserveStatus.notReservedOrder,
      @StringToBooleanConverter()
          this.cancelPriceFlag = false,
      this.fulfillmentType = CartFulfillmentType.normal,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_start_datetime')
          this.epochDeliveryPlanStartDatetime = 0,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_plan_finish_datetime')
          this.epochDeliveryPlanFinishDatetime = 0,
      this.isDisplayReceiptLocationName = false,
      this.receiptLocationContentsUrl = '',
      this.receiptLocationName = '',
      this.shopName = '',
      this.totalPrice = 0,
      this.nanacoPointUsePoint = 0,
      this.isChangeOrderLoginShop = false,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'cancel_datetime')
          this.epochCancelDatetime = 0,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'cancel_closing_datetime')
          this.epochCancelClosingDatetime = 0,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'change_closing_datetimt')
          this.epochChangeClosingDatetime = 0,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'additional_order_closing_datetime')
          this.epochAdditionalOrderClosingDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'additional_order_start_datetime')
          this.epochAdditionalOrderStartDatetime,
      this.isNotSelectedFulfillment = false,
      this.isReserveOrder = false,
      this.isAdditionalOrderTerm = false,
      this.isAdditionalOrderLoginShop = false,
      this.deliveryQuestionUrl = '',
      this.isBeforeChangeClosingDatetime = false,
      this.isBeforeDeliveryQuestionAnswerExpired = false,
      this.isBeforeAdditionalOrderClosingDatetime = false,
      this.isOrderLimited = false,
      @StringToBooleanConverter()
          this.noDeliveryFlg = false,
      this.isRegularShipmentOrder = false,
      this.isEnableOrderCancel = false,
      this.regularShipmentDiscountRate = 0,
      this.deliveryStatusConfirmationScreenUrl = '',
      final List<OrderHistoryProductsModel> products =
          const <OrderHistoryProductsModel>[]})
      : _products = products,
        super._();

  factory _$_OrderHistoryListModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderHistoryListModelFromJson(json);

/* 受注ID */
  @override
  @JsonKey()
  final int orderId;
/* 旧受注ID - 変更中ではない場合、nullを返却 */
  @override
  final int? oldOrderId;
/* ステータス ``` \"0\"：未発送 \"1\"：配送済 \"2\"：売上計上 \"3\"：出荷指示済 \"4\"：持ち帰り \"5\"：クレジットエラー \"6\"：自動キャンセル \"7\"：全商品配達不可 \"8\"：一部商品配達不可 ``` */
  @override
  @JsonKey()
  final OrderStatus status;
/* 支払い方法 ``` \"1\"：代金引換 \"2\"：クレジットカード \"4\"：全額ポイント利用 ``` */
  @override
  @JsonKey()
  final PaymentMethodType paymentMethod;
/* 予約ステータス ``` \"0\"：非予約受注 \"1\"：予約のみ受注 \"2\"：予約含む受注 ``` */
  @override
  @JsonKey()
  final ReserveStatus reserveStatus;
/* キャンセル料のみの受注フラグ - キャンセル料のみ受注フラグが未設定の場合、nullを返却 ``` \"0\"：非表示 \"1\"：受注IDをラベル表示 ``` */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool cancelPriceFlag;
/* 配送便種別 ``` \"01\"：通常 \"02\"：通常（遠隔） \"03\"：店舗受取 \"04\"：置き配 \"05\"：7&iロッカー受取 \"06\"：店舗ロッカー受取 ``` */
  @override
  @JsonKey()
  final CartFulfillmentType fulfillmentType;
/* 配送予定日時FROM ※YYYY-MM-DDTHH:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_plan_start_datetime')
  final int epochDeliveryPlanStartDatetime;
/* 配送予定日時TO ※YYYY-MM-DDTHH:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_plan_finish_datetime')
  final int epochDeliveryPlanFinishDatetime;
/* 受取先名表示判定  ``` true：表示する false：非表示 ``` */
  @override
  @JsonKey()
  final bool isDisplayReceiptLocationName;
/* 静的コンテンツURL - 自宅受取の場合、nullを返却 */
  @override
  @JsonKey()
  final String receiptLocationContentsUrl;
/* 受取先地点名称 */
  @override
  @JsonKey()
  final String receiptLocationName;
/* 店名 - 店舗名が未設定の場合、nullを返却 */
  @override
  @JsonKey()
  final String shopName;
/* 合計金額 */
  @override
  @JsonKey()
  final int totalPrice;
/* nanaco利用ポイント - nanaco利用ポイントが未設定の場合、nullを返却 */
  @override
  @JsonKey()
  final int nanacoPointUsePoint;
/* ログイン店舗による注文変更可能判定  ``` true：注文変更可能 false：注文変更できない ``` */
  @override
  @JsonKey()
  final bool isChangeOrderLoginShop;
/* キャンセル日 ※YYYY-MM-DDThh:mm:ss+09:00 ``` NS管理画面からの全品キャンセル時に設定される ``` */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'cancel_datetime')
  final int epochCancelDatetime;
/* 注文キャンセル締日時 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'cancel_closing_datetime')
  final int epochCancelClosingDatetime;
/* 注文変更締日時 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'change_closing_datetimt')
  final int epochChangeClosingDatetime;
/* 注文追加締日日時 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'additional_order_closing_datetime')
  final int? epochAdditionalOrderClosingDatetime;
/* 注文追加期間開始日時 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'additional_order_start_datetime')
  final int? epochAdditionalOrderStartDatetime;
/* ログイン状態「便未選択」判定  ``` true：便未選択である false：便未選択以外の状態(＝見学中の場合も含む) ``` */
  @override
  @JsonKey()
  final bool isNotSelectedFulfillment;
/* 予約注文判定  ``` true：予約注文(＝通常商品が混在している場合も含む) false：予約注文ではない ``` */
  @override
  @JsonKey()
  final bool isReserveOrder;
/* 注文追加期間内判定  ``` true：注文追加期間内である false：注文追加期間外である ``` */
  @override
  @JsonKey()
  final bool isAdditionalOrderTerm;
/* ログイン店舗による注文追加可能判定  ``` true：注文追加可能 false：注文追加できない ``` */
  @override
  @JsonKey()
  final bool isAdditionalOrderLoginShop;
/* 配送アンケートURL - 配送アンケートURLが未設定の場合、nullを返却 */
  @override
  @JsonKey()
  final String deliveryQuestionUrl;
/* 変更締め日時前の判定  ``` true：変更締め前である false：変更締め日時を超過している ``` */
  @override
  @JsonKey()
  final bool isBeforeChangeClosingDatetime;
/* 配送アンケートの回答有効期限内か否を判定  ``` true：回答有効期限内 false：回答有効期限切れ ``` */
  @override
  @JsonKey()
  final bool isBeforeDeliveryQuestionAnswerExpired;
/* 注文追加締日時前の判定  ``` true：注文追加締め前である false：注文追加締日時を超過している ``` */
  @override
  @JsonKey()
  final bool isBeforeAdditionalOrderClosingDatetime;
/* 変更・キャンセルをフラグ  ``` true：変更・キャンセルを制限する false：変更・キャンセルを制限しない ``` */
  @override
  @JsonKey()
  final bool isOrderLimited;
/* 未発送商品フラグ ``` \"0\"：合計金額メール送信用ボタンを出力しない \"1\"：合計金額メール送信用ボタンを出力する ``` */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool noDeliveryFlg;
/* 定期便注文判定  ``` true：定期便注文 false：定期便注文でない ``` */
  @override
  @JsonKey()
  final bool isRegularShipmentOrder;
/* 注文キャンセル可能判定  ``` true：キャンセル可能 false：キャンセル不可 ``` */
  @override
  @JsonKey()
  final bool isEnableOrderCancel;
/* 定期便割引率 */
  @override
  @JsonKey()
  final int regularShipmentDiscountRate;
/* 配送状況確認画面URL */
  @override
  @JsonKey()
  final String deliveryStatusConfirmationScreenUrl;
  final List<OrderHistoryProductsModel> _products;
  @override
  @JsonKey()
  List<OrderHistoryProductsModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'OrderHistoryListModel(orderId: $orderId, oldOrderId: $oldOrderId, status: $status, paymentMethod: $paymentMethod, reserveStatus: $reserveStatus, cancelPriceFlag: $cancelPriceFlag, fulfillmentType: $fulfillmentType, epochDeliveryPlanStartDatetime: $epochDeliveryPlanStartDatetime, epochDeliveryPlanFinishDatetime: $epochDeliveryPlanFinishDatetime, isDisplayReceiptLocationName: $isDisplayReceiptLocationName, receiptLocationContentsUrl: $receiptLocationContentsUrl, receiptLocationName: $receiptLocationName, shopName: $shopName, totalPrice: $totalPrice, nanacoPointUsePoint: $nanacoPointUsePoint, isChangeOrderLoginShop: $isChangeOrderLoginShop, epochCancelDatetime: $epochCancelDatetime, epochCancelClosingDatetime: $epochCancelClosingDatetime, epochChangeClosingDatetime: $epochChangeClosingDatetime, epochAdditionalOrderClosingDatetime: $epochAdditionalOrderClosingDatetime, epochAdditionalOrderStartDatetime: $epochAdditionalOrderStartDatetime, isNotSelectedFulfillment: $isNotSelectedFulfillment, isReserveOrder: $isReserveOrder, isAdditionalOrderTerm: $isAdditionalOrderTerm, isAdditionalOrderLoginShop: $isAdditionalOrderLoginShop, deliveryQuestionUrl: $deliveryQuestionUrl, isBeforeChangeClosingDatetime: $isBeforeChangeClosingDatetime, isBeforeDeliveryQuestionAnswerExpired: $isBeforeDeliveryQuestionAnswerExpired, isBeforeAdditionalOrderClosingDatetime: $isBeforeAdditionalOrderClosingDatetime, isOrderLimited: $isOrderLimited, noDeliveryFlg: $noDeliveryFlg, isRegularShipmentOrder: $isRegularShipmentOrder, isEnableOrderCancel: $isEnableOrderCancel, regularShipmentDiscountRate: $regularShipmentDiscountRate, deliveryStatusConfirmationScreenUrl: $deliveryStatusConfirmationScreenUrl, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderHistoryListModel &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.oldOrderId, oldOrderId) ||
                other.oldOrderId == oldOrderId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.reserveStatus, reserveStatus) ||
                other.reserveStatus == reserveStatus) &&
            (identical(other.cancelPriceFlag, cancelPriceFlag) ||
                other.cancelPriceFlag == cancelPriceFlag) &&
            (identical(other.fulfillmentType, fulfillmentType) ||
                other.fulfillmentType == fulfillmentType) &&
            (identical(other.epochDeliveryPlanStartDatetime, epochDeliveryPlanStartDatetime) ||
                other.epochDeliveryPlanStartDatetime ==
                    epochDeliveryPlanStartDatetime) &&
            (identical(other.epochDeliveryPlanFinishDatetime, epochDeliveryPlanFinishDatetime) ||
                other.epochDeliveryPlanFinishDatetime ==
                    epochDeliveryPlanFinishDatetime) &&
            (identical(other.isDisplayReceiptLocationName, isDisplayReceiptLocationName) ||
                other.isDisplayReceiptLocationName ==
                    isDisplayReceiptLocationName) &&
            (identical(other.receiptLocationContentsUrl, receiptLocationContentsUrl) ||
                other.receiptLocationContentsUrl ==
                    receiptLocationContentsUrl) &&
            (identical(other.receiptLocationName, receiptLocationName) ||
                other.receiptLocationName == receiptLocationName) &&
            (identical(other.shopName, shopName) ||
                other.shopName == shopName) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.nanacoPointUsePoint, nanacoPointUsePoint) ||
                other.nanacoPointUsePoint == nanacoPointUsePoint) &&
            (identical(other.isChangeOrderLoginShop, isChangeOrderLoginShop) ||
                other.isChangeOrderLoginShop == isChangeOrderLoginShop) &&
            (identical(other.epochCancelDatetime, epochCancelDatetime) ||
                other.epochCancelDatetime == epochCancelDatetime) &&
            (identical(other.epochCancelClosingDatetime, epochCancelClosingDatetime) ||
                other.epochCancelClosingDatetime ==
                    epochCancelClosingDatetime) &&
            (identical(other.epochChangeClosingDatetime, epochChangeClosingDatetime) ||
                other.epochChangeClosingDatetime ==
                    epochChangeClosingDatetime) &&
            (identical(other.epochAdditionalOrderClosingDatetime, epochAdditionalOrderClosingDatetime) ||
                other.epochAdditionalOrderClosingDatetime ==
                    epochAdditionalOrderClosingDatetime) &&
            (identical(other.epochAdditionalOrderStartDatetime, epochAdditionalOrderStartDatetime) ||
                other.epochAdditionalOrderStartDatetime == epochAdditionalOrderStartDatetime) &&
            (identical(other.isNotSelectedFulfillment, isNotSelectedFulfillment) || other.isNotSelectedFulfillment == isNotSelectedFulfillment) &&
            (identical(other.isReserveOrder, isReserveOrder) || other.isReserveOrder == isReserveOrder) &&
            (identical(other.isAdditionalOrderTerm, isAdditionalOrderTerm) || other.isAdditionalOrderTerm == isAdditionalOrderTerm) &&
            (identical(other.isAdditionalOrderLoginShop, isAdditionalOrderLoginShop) || other.isAdditionalOrderLoginShop == isAdditionalOrderLoginShop) &&
            (identical(other.deliveryQuestionUrl, deliveryQuestionUrl) || other.deliveryQuestionUrl == deliveryQuestionUrl) &&
            (identical(other.isBeforeChangeClosingDatetime, isBeforeChangeClosingDatetime) || other.isBeforeChangeClosingDatetime == isBeforeChangeClosingDatetime) &&
            (identical(other.isBeforeDeliveryQuestionAnswerExpired, isBeforeDeliveryQuestionAnswerExpired) || other.isBeforeDeliveryQuestionAnswerExpired == isBeforeDeliveryQuestionAnswerExpired) &&
            (identical(other.isBeforeAdditionalOrderClosingDatetime, isBeforeAdditionalOrderClosingDatetime) || other.isBeforeAdditionalOrderClosingDatetime == isBeforeAdditionalOrderClosingDatetime) &&
            (identical(other.isOrderLimited, isOrderLimited) || other.isOrderLimited == isOrderLimited) &&
            (identical(other.noDeliveryFlg, noDeliveryFlg) || other.noDeliveryFlg == noDeliveryFlg) &&
            (identical(other.isRegularShipmentOrder, isRegularShipmentOrder) || other.isRegularShipmentOrder == isRegularShipmentOrder) &&
            (identical(other.isEnableOrderCancel, isEnableOrderCancel) || other.isEnableOrderCancel == isEnableOrderCancel) &&
            (identical(other.regularShipmentDiscountRate, regularShipmentDiscountRate) || other.regularShipmentDiscountRate == regularShipmentDiscountRate) &&
            (identical(other.deliveryStatusConfirmationScreenUrl, deliveryStatusConfirmationScreenUrl) || other.deliveryStatusConfirmationScreenUrl == deliveryStatusConfirmationScreenUrl) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        orderId,
        oldOrderId,
        status,
        paymentMethod,
        reserveStatus,
        cancelPriceFlag,
        fulfillmentType,
        epochDeliveryPlanStartDatetime,
        epochDeliveryPlanFinishDatetime,
        isDisplayReceiptLocationName,
        receiptLocationContentsUrl,
        receiptLocationName,
        shopName,
        totalPrice,
        nanacoPointUsePoint,
        isChangeOrderLoginShop,
        epochCancelDatetime,
        epochCancelClosingDatetime,
        epochChangeClosingDatetime,
        epochAdditionalOrderClosingDatetime,
        epochAdditionalOrderStartDatetime,
        isNotSelectedFulfillment,
        isReserveOrder,
        isAdditionalOrderTerm,
        isAdditionalOrderLoginShop,
        deliveryQuestionUrl,
        isBeforeChangeClosingDatetime,
        isBeforeDeliveryQuestionAnswerExpired,
        isBeforeAdditionalOrderClosingDatetime,
        isOrderLimited,
        noDeliveryFlg,
        isRegularShipmentOrder,
        isEnableOrderCancel,
        regularShipmentDiscountRate,
        deliveryStatusConfirmationScreenUrl,
        const DeepCollectionEquality().hash(_products)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderHistoryListModelCopyWith<_$_OrderHistoryListModel> get copyWith =>
      __$$_OrderHistoryListModelCopyWithImpl<_$_OrderHistoryListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderHistoryListModelToJson(
      this,
    );
  }
}

abstract class _OrderHistoryListModel extends OrderHistoryListModel {
  const factory _OrderHistoryListModel(
          {final int orderId,
          final int? oldOrderId,
          final OrderStatus status,
          final PaymentMethodType paymentMethod,
          final ReserveStatus reserveStatus,
          @StringToBooleanConverter()
              final bool cancelPriceFlag,
          final CartFulfillmentType fulfillmentType,
          @StringToEpochTimeConverter()
          @JsonKey(name: 'delivery_plan_start_datetime')
              final int epochDeliveryPlanStartDatetime,
          @StringToEpochTimeConverter()
          @JsonKey(name: 'delivery_plan_finish_datetime')
              final int epochDeliveryPlanFinishDatetime,
          final bool isDisplayReceiptLocationName,
          final String receiptLocationContentsUrl,
          final String receiptLocationName,
          final String shopName,
          final int totalPrice,
          final int nanacoPointUsePoint,
          final bool isChangeOrderLoginShop,
          @StringToEpochTimeConverter()
          @JsonKey(name: 'cancel_datetime')
              final int epochCancelDatetime,
          @StringToEpochTimeConverter()
          @JsonKey(name: 'cancel_closing_datetime')
              final int epochCancelClosingDatetime,
          @StringToEpochTimeConverter()
          @JsonKey(name: 'change_closing_datetimt')
              final int epochChangeClosingDatetime,
          @NullableStringToEpochTimeConverter()
          @JsonKey(name: 'additional_order_closing_datetime')
              final int? epochAdditionalOrderClosingDatetime,
          @NullableStringToEpochTimeConverter()
          @JsonKey(name: 'additional_order_start_datetime')
              final int? epochAdditionalOrderStartDatetime,
          final bool isNotSelectedFulfillment,
          final bool isReserveOrder,
          final bool isAdditionalOrderTerm,
          final bool isAdditionalOrderLoginShop,
          final String deliveryQuestionUrl,
          final bool isBeforeChangeClosingDatetime,
          final bool isBeforeDeliveryQuestionAnswerExpired,
          final bool isBeforeAdditionalOrderClosingDatetime,
          final bool isOrderLimited,
          @StringToBooleanConverter()
              final bool noDeliveryFlg,
          final bool isRegularShipmentOrder,
          final bool isEnableOrderCancel,
          final int regularShipmentDiscountRate,
          final String deliveryStatusConfirmationScreenUrl,
          final List<OrderHistoryProductsModel> products}) =
      _$_OrderHistoryListModel;
  const _OrderHistoryListModel._() : super._();

  factory _OrderHistoryListModel.fromJson(Map<String, dynamic> json) =
      _$_OrderHistoryListModel.fromJson;

  @override /* 受注ID */
  int get orderId;
  @override /* 旧受注ID - 変更中ではない場合、nullを返却 */
  int? get oldOrderId;
  @override /* ステータス ``` \"0\"：未発送 \"1\"：配送済 \"2\"：売上計上 \"3\"：出荷指示済 \"4\"：持ち帰り \"5\"：クレジットエラー \"6\"：自動キャンセル \"7\"：全商品配達不可 \"8\"：一部商品配達不可 ``` */
  OrderStatus get status;
  @override /* 支払い方法 ``` \"1\"：代金引換 \"2\"：クレジットカード \"4\"：全額ポイント利用 ``` */
  PaymentMethodType get paymentMethod;
  @override /* 予約ステータス ``` \"0\"：非予約受注 \"1\"：予約のみ受注 \"2\"：予約含む受注 ``` */
  ReserveStatus get reserveStatus;
  @override /* キャンセル料のみの受注フラグ - キャンセル料のみ受注フラグが未設定の場合、nullを返却 ``` \"0\"：非表示 \"1\"：受注IDをラベル表示 ``` */
  @StringToBooleanConverter()
  bool get cancelPriceFlag;
  @override /* 配送便種別 ``` \"01\"：通常 \"02\"：通常（遠隔） \"03\"：店舗受取 \"04\"：置き配 \"05\"：7&iロッカー受取 \"06\"：店舗ロッカー受取 ``` */
  CartFulfillmentType get fulfillmentType;
  @override /* 配送予定日時FROM ※YYYY-MM-DDTHH:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_plan_start_datetime')
  int get epochDeliveryPlanStartDatetime;
  @override /* 配送予定日時TO ※YYYY-MM-DDTHH:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_plan_finish_datetime')
  int get epochDeliveryPlanFinishDatetime;
  @override /* 受取先名表示判定  ``` true：表示する false：非表示 ``` */
  bool get isDisplayReceiptLocationName;
  @override /* 静的コンテンツURL - 自宅受取の場合、nullを返却 */
  String get receiptLocationContentsUrl;
  @override /* 受取先地点名称 */
  String get receiptLocationName;
  @override /* 店名 - 店舗名が未設定の場合、nullを返却 */
  String get shopName;
  @override /* 合計金額 */
  int get totalPrice;
  @override /* nanaco利用ポイント - nanaco利用ポイントが未設定の場合、nullを返却 */
  int get nanacoPointUsePoint;
  @override /* ログイン店舗による注文変更可能判定  ``` true：注文変更可能 false：注文変更できない ``` */
  bool get isChangeOrderLoginShop;
  @override /* キャンセル日 ※YYYY-MM-DDThh:mm:ss+09:00 ``` NS管理画面からの全品キャンセル時に設定される ``` */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'cancel_datetime')
  int get epochCancelDatetime;
  @override /* 注文キャンセル締日時 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'cancel_closing_datetime')
  int get epochCancelClosingDatetime;
  @override /* 注文変更締日時 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'change_closing_datetimt')
  int get epochChangeClosingDatetime;
  @override /* 注文追加締日日時 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'additional_order_closing_datetime')
  int? get epochAdditionalOrderClosingDatetime;
  @override /* 注文追加期間開始日時 ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'additional_order_start_datetime')
  int? get epochAdditionalOrderStartDatetime;
  @override /* ログイン状態「便未選択」判定  ``` true：便未選択である false：便未選択以外の状態(＝見学中の場合も含む) ``` */
  bool get isNotSelectedFulfillment;
  @override /* 予約注文判定  ``` true：予約注文(＝通常商品が混在している場合も含む) false：予約注文ではない ``` */
  bool get isReserveOrder;
  @override /* 注文追加期間内判定  ``` true：注文追加期間内である false：注文追加期間外である ``` */
  bool get isAdditionalOrderTerm;
  @override /* ログイン店舗による注文追加可能判定  ``` true：注文追加可能 false：注文追加できない ``` */
  bool get isAdditionalOrderLoginShop;
  @override /* 配送アンケートURL - 配送アンケートURLが未設定の場合、nullを返却 */
  String get deliveryQuestionUrl;
  @override /* 変更締め日時前の判定  ``` true：変更締め前である false：変更締め日時を超過している ``` */
  bool get isBeforeChangeClosingDatetime;
  @override /* 配送アンケートの回答有効期限内か否を判定  ``` true：回答有効期限内 false：回答有効期限切れ ``` */
  bool get isBeforeDeliveryQuestionAnswerExpired;
  @override /* 注文追加締日時前の判定  ``` true：注文追加締め前である false：注文追加締日時を超過している ``` */
  bool get isBeforeAdditionalOrderClosingDatetime;
  @override /* 変更・キャンセルをフラグ  ``` true：変更・キャンセルを制限する false：変更・キャンセルを制限しない ``` */
  bool get isOrderLimited;
  @override /* 未発送商品フラグ ``` \"0\"：合計金額メール送信用ボタンを出力しない \"1\"：合計金額メール送信用ボタンを出力する ``` */
  @StringToBooleanConverter()
  bool get noDeliveryFlg;
  @override /* 定期便注文判定  ``` true：定期便注文 false：定期便注文でない ``` */
  bool get isRegularShipmentOrder;
  @override /* 注文キャンセル可能判定  ``` true：キャンセル可能 false：キャンセル不可 ``` */
  bool get isEnableOrderCancel;
  @override /* 定期便割引率 */
  int get regularShipmentDiscountRate;
  @override /* 配送状況確認画面URL */
  String get deliveryStatusConfirmationScreenUrl;
  @override
  List<OrderHistoryProductsModel> get products;
  @override
  @JsonKey(ignore: true)
  _$$_OrderHistoryListModelCopyWith<_$_OrderHistoryListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
