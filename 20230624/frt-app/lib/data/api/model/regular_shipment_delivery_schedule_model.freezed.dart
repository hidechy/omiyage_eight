// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regular_shipment_delivery_schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegularShipmentDeliveryScheduleModel
    _$RegularShipmentDeliveryScheduleModelFromJson(Map<String, dynamic> json) {
  return _RegularShipmentDeliveryScheduleModel.fromJson(json);
}

/// @nodoc
mixin _$RegularShipmentDeliveryScheduleModel {
/* 配達日　※YYYYMMDD */
  String get deliveryDate =>
      throw _privateConstructorUsedError; /* 配送開始時間（時分）　※hhmm */
  String get deliveryStartTime =>
      throw _privateConstructorUsedError; /* 配送終了時間（時分）　※hhmm */
  String get deliveryFinishTime =>
      throw _privateConstructorUsedError; /* フロントキャンセル可能締め日時 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'front_cancel_closing_datetime')
  int get epochFrontCancelClosingDatetime =>
      throw _privateConstructorUsedError; /* 買い足し可能開始日時　 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'additional_order_start_datetime')
  int get epochAdditionalOrderStartDatetime =>
      throw _privateConstructorUsedError; /* 注文変更可能締め日時 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'change_order_closing_datetime')
  int get epochChangeOrderClosingDatetime =>
      throw _privateConstructorUsedError; /* フロントキャンセル判定 - フロントにてスキップ／解約された(＝お客様都合)ことを示す。  ``` true：フロントキャンセル済（スキップまたは解約） false：フロントキャンセルされていない ``` */
  bool get isFrontCancel =>
      throw _privateConstructorUsedError; /* ショップキャンセル判定 - 店都合にてスキップ／解約されたことを示す。 ``` true：ショップキャンセル済（スキップまたは解約） false：ショップキャンセルされていない ``` */
  bool get isShopCancel =>
      throw _privateConstructorUsedError; /* フロントキャンセル可否判定 - 前サイクルがフロントキャンセルされていた場合キャンセルできない  ``` true：フロントキャンセル可 false：フロントキャンセル不可 ``` */
  bool get isEnableFrontCancel =>
      throw _privateConstructorUsedError; /* 最遅スケジュール判定  ``` true：一番最後のスケジュール false：一番最後のスケジュールではない ``` */
  bool get isLastSchedule =>
      throw _privateConstructorUsedError; /* 受注作成済判定  ``` true：受注作成済 false：受注未作成 ``` */
  bool get hasCreatedOrder =>
      throw _privateConstructorUsedError; /* 受注ID - 定期便注文が作成されていない場合、nullを返却 */
  String get orderId =>
      throw _privateConstructorUsedError; /* オーソリエラー判定 - 定期便注文が作成されていない場合、nullを返却  ``` true：オーソリエラーあり false：オーソリエラーなし ``` */
  bool get isAuthoriError =>
      throw _privateConstructorUsedError; /* 買い足し可能期間内判定  ``` true：買い足し可能期間内である false：買い足し可能期間外である ``` */
  bool get isEnableAdditionalOrderTerm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegularShipmentDeliveryScheduleModelCopyWith<
          RegularShipmentDeliveryScheduleModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegularShipmentDeliveryScheduleModelCopyWith<$Res> {
  factory $RegularShipmentDeliveryScheduleModelCopyWith(
          RegularShipmentDeliveryScheduleModel value,
          $Res Function(RegularShipmentDeliveryScheduleModel) then) =
      _$RegularShipmentDeliveryScheduleModelCopyWithImpl<$Res,
          RegularShipmentDeliveryScheduleModel>;
  @useResult
  $Res call(
      {String deliveryDate,
      String deliveryStartTime,
      String deliveryFinishTime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'front_cancel_closing_datetime')
          int epochFrontCancelClosingDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'additional_order_start_datetime')
          int epochAdditionalOrderStartDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'change_order_closing_datetime')
          int epochChangeOrderClosingDatetime,
      bool isFrontCancel,
      bool isShopCancel,
      bool isEnableFrontCancel,
      bool isLastSchedule,
      bool hasCreatedOrder,
      String orderId,
      bool isAuthoriError,
      bool isEnableAdditionalOrderTerm});
}

/// @nodoc
class _$RegularShipmentDeliveryScheduleModelCopyWithImpl<$Res,
        $Val extends RegularShipmentDeliveryScheduleModel>
    implements $RegularShipmentDeliveryScheduleModelCopyWith<$Res> {
  _$RegularShipmentDeliveryScheduleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryDate = null,
    Object? deliveryStartTime = null,
    Object? deliveryFinishTime = null,
    Object? epochFrontCancelClosingDatetime = null,
    Object? epochAdditionalOrderStartDatetime = null,
    Object? epochChangeOrderClosingDatetime = null,
    Object? isFrontCancel = null,
    Object? isShopCancel = null,
    Object? isEnableFrontCancel = null,
    Object? isLastSchedule = null,
    Object? hasCreatedOrder = null,
    Object? orderId = null,
    Object? isAuthoriError = null,
    Object? isEnableAdditionalOrderTerm = null,
  }) {
    return _then(_value.copyWith(
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStartTime: null == deliveryStartTime
          ? _value.deliveryStartTime
          : deliveryStartTime // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryFinishTime: null == deliveryFinishTime
          ? _value.deliveryFinishTime
          : deliveryFinishTime // ignore: cast_nullable_to_non_nullable
              as String,
      epochFrontCancelClosingDatetime: null == epochFrontCancelClosingDatetime
          ? _value.epochFrontCancelClosingDatetime
          : epochFrontCancelClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochAdditionalOrderStartDatetime: null ==
              epochAdditionalOrderStartDatetime
          ? _value.epochAdditionalOrderStartDatetime
          : epochAdditionalOrderStartDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochChangeOrderClosingDatetime: null == epochChangeOrderClosingDatetime
          ? _value.epochChangeOrderClosingDatetime
          : epochChangeOrderClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      isFrontCancel: null == isFrontCancel
          ? _value.isFrontCancel
          : isFrontCancel // ignore: cast_nullable_to_non_nullable
              as bool,
      isShopCancel: null == isShopCancel
          ? _value.isShopCancel
          : isShopCancel // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableFrontCancel: null == isEnableFrontCancel
          ? _value.isEnableFrontCancel
          : isEnableFrontCancel // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastSchedule: null == isLastSchedule
          ? _value.isLastSchedule
          : isLastSchedule // ignore: cast_nullable_to_non_nullable
              as bool,
      hasCreatedOrder: null == hasCreatedOrder
          ? _value.hasCreatedOrder
          : hasCreatedOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      isAuthoriError: null == isAuthoriError
          ? _value.isAuthoriError
          : isAuthoriError // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableAdditionalOrderTerm: null == isEnableAdditionalOrderTerm
          ? _value.isEnableAdditionalOrderTerm
          : isEnableAdditionalOrderTerm // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegularShipmentDeliveryScheduleModelCopyWith<$Res>
    implements $RegularShipmentDeliveryScheduleModelCopyWith<$Res> {
  factory _$$_RegularShipmentDeliveryScheduleModelCopyWith(
          _$_RegularShipmentDeliveryScheduleModel value,
          $Res Function(_$_RegularShipmentDeliveryScheduleModel) then) =
      __$$_RegularShipmentDeliveryScheduleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String deliveryDate,
      String deliveryStartTime,
      String deliveryFinishTime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'front_cancel_closing_datetime')
          int epochFrontCancelClosingDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'additional_order_start_datetime')
          int epochAdditionalOrderStartDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'change_order_closing_datetime')
          int epochChangeOrderClosingDatetime,
      bool isFrontCancel,
      bool isShopCancel,
      bool isEnableFrontCancel,
      bool isLastSchedule,
      bool hasCreatedOrder,
      String orderId,
      bool isAuthoriError,
      bool isEnableAdditionalOrderTerm});
}

/// @nodoc
class __$$_RegularShipmentDeliveryScheduleModelCopyWithImpl<$Res>
    extends _$RegularShipmentDeliveryScheduleModelCopyWithImpl<$Res,
        _$_RegularShipmentDeliveryScheduleModel>
    implements _$$_RegularShipmentDeliveryScheduleModelCopyWith<$Res> {
  __$$_RegularShipmentDeliveryScheduleModelCopyWithImpl(
      _$_RegularShipmentDeliveryScheduleModel _value,
      $Res Function(_$_RegularShipmentDeliveryScheduleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryDate = null,
    Object? deliveryStartTime = null,
    Object? deliveryFinishTime = null,
    Object? epochFrontCancelClosingDatetime = null,
    Object? epochAdditionalOrderStartDatetime = null,
    Object? epochChangeOrderClosingDatetime = null,
    Object? isFrontCancel = null,
    Object? isShopCancel = null,
    Object? isEnableFrontCancel = null,
    Object? isLastSchedule = null,
    Object? hasCreatedOrder = null,
    Object? orderId = null,
    Object? isAuthoriError = null,
    Object? isEnableAdditionalOrderTerm = null,
  }) {
    return _then(_$_RegularShipmentDeliveryScheduleModel(
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStartTime: null == deliveryStartTime
          ? _value.deliveryStartTime
          : deliveryStartTime // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryFinishTime: null == deliveryFinishTime
          ? _value.deliveryFinishTime
          : deliveryFinishTime // ignore: cast_nullable_to_non_nullable
              as String,
      epochFrontCancelClosingDatetime: null == epochFrontCancelClosingDatetime
          ? _value.epochFrontCancelClosingDatetime
          : epochFrontCancelClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochAdditionalOrderStartDatetime: null ==
              epochAdditionalOrderStartDatetime
          ? _value.epochAdditionalOrderStartDatetime
          : epochAdditionalOrderStartDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochChangeOrderClosingDatetime: null == epochChangeOrderClosingDatetime
          ? _value.epochChangeOrderClosingDatetime
          : epochChangeOrderClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      isFrontCancel: null == isFrontCancel
          ? _value.isFrontCancel
          : isFrontCancel // ignore: cast_nullable_to_non_nullable
              as bool,
      isShopCancel: null == isShopCancel
          ? _value.isShopCancel
          : isShopCancel // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableFrontCancel: null == isEnableFrontCancel
          ? _value.isEnableFrontCancel
          : isEnableFrontCancel // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastSchedule: null == isLastSchedule
          ? _value.isLastSchedule
          : isLastSchedule // ignore: cast_nullable_to_non_nullable
              as bool,
      hasCreatedOrder: null == hasCreatedOrder
          ? _value.hasCreatedOrder
          : hasCreatedOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      isAuthoriError: null == isAuthoriError
          ? _value.isAuthoriError
          : isAuthoriError // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableAdditionalOrderTerm: null == isEnableAdditionalOrderTerm
          ? _value.isEnableAdditionalOrderTerm
          : isEnableAdditionalOrderTerm // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegularShipmentDeliveryScheduleModel
    implements _RegularShipmentDeliveryScheduleModel {
  const _$_RegularShipmentDeliveryScheduleModel(
      {this.deliveryDate = '',
      this.deliveryStartTime = '',
      this.deliveryFinishTime = '',
      @StringToEpochTimeConverter()
      @JsonKey(name: 'front_cancel_closing_datetime')
          this.epochFrontCancelClosingDatetime = 0,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'additional_order_start_datetime')
          this.epochAdditionalOrderStartDatetime = 0,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'change_order_closing_datetime')
          this.epochChangeOrderClosingDatetime = 0,
      this.isFrontCancel = false,
      this.isShopCancel = false,
      this.isEnableFrontCancel = false,
      this.isLastSchedule = false,
      this.hasCreatedOrder = false,
      this.orderId = '',
      this.isAuthoriError = false,
      this.isEnableAdditionalOrderTerm = false});

  factory _$_RegularShipmentDeliveryScheduleModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_RegularShipmentDeliveryScheduleModelFromJson(json);

/* 配達日　※YYYYMMDD */
  @override
  @JsonKey()
  final String deliveryDate;
/* 配送開始時間（時分）　※hhmm */
  @override
  @JsonKey()
  final String deliveryStartTime;
/* 配送終了時間（時分）　※hhmm */
  @override
  @JsonKey()
  final String deliveryFinishTime;
/* フロントキャンセル可能締め日時 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'front_cancel_closing_datetime')
  final int epochFrontCancelClosingDatetime;
/* 買い足し可能開始日時　 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'additional_order_start_datetime')
  final int epochAdditionalOrderStartDatetime;
/* 注文変更可能締め日時 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'change_order_closing_datetime')
  final int epochChangeOrderClosingDatetime;
/* フロントキャンセル判定 - フロントにてスキップ／解約された(＝お客様都合)ことを示す。  ``` true：フロントキャンセル済（スキップまたは解約） false：フロントキャンセルされていない ``` */
  @override
  @JsonKey()
  final bool isFrontCancel;
/* ショップキャンセル判定 - 店都合にてスキップ／解約されたことを示す。 ``` true：ショップキャンセル済（スキップまたは解約） false：ショップキャンセルされていない ``` */
  @override
  @JsonKey()
  final bool isShopCancel;
/* フロントキャンセル可否判定 - 前サイクルがフロントキャンセルされていた場合キャンセルできない  ``` true：フロントキャンセル可 false：フロントキャンセル不可 ``` */
  @override
  @JsonKey()
  final bool isEnableFrontCancel;
/* 最遅スケジュール判定  ``` true：一番最後のスケジュール false：一番最後のスケジュールではない ``` */
  @override
  @JsonKey()
  final bool isLastSchedule;
/* 受注作成済判定  ``` true：受注作成済 false：受注未作成 ``` */
  @override
  @JsonKey()
  final bool hasCreatedOrder;
/* 受注ID - 定期便注文が作成されていない場合、nullを返却 */
  @override
  @JsonKey()
  final String orderId;
/* オーソリエラー判定 - 定期便注文が作成されていない場合、nullを返却  ``` true：オーソリエラーあり false：オーソリエラーなし ``` */
  @override
  @JsonKey()
  final bool isAuthoriError;
/* 買い足し可能期間内判定  ``` true：買い足し可能期間内である false：買い足し可能期間外である ``` */
  @override
  @JsonKey()
  final bool isEnableAdditionalOrderTerm;

  @override
  String toString() {
    return 'RegularShipmentDeliveryScheduleModel(deliveryDate: $deliveryDate, deliveryStartTime: $deliveryStartTime, deliveryFinishTime: $deliveryFinishTime, epochFrontCancelClosingDatetime: $epochFrontCancelClosingDatetime, epochAdditionalOrderStartDatetime: $epochAdditionalOrderStartDatetime, epochChangeOrderClosingDatetime: $epochChangeOrderClosingDatetime, isFrontCancel: $isFrontCancel, isShopCancel: $isShopCancel, isEnableFrontCancel: $isEnableFrontCancel, isLastSchedule: $isLastSchedule, hasCreatedOrder: $hasCreatedOrder, orderId: $orderId, isAuthoriError: $isAuthoriError, isEnableAdditionalOrderTerm: $isEnableAdditionalOrderTerm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegularShipmentDeliveryScheduleModel &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.deliveryStartTime, deliveryStartTime) ||
                other.deliveryStartTime == deliveryStartTime) &&
            (identical(other.deliveryFinishTime, deliveryFinishTime) ||
                other.deliveryFinishTime == deliveryFinishTime) &&
            (identical(other.epochFrontCancelClosingDatetime,
                    epochFrontCancelClosingDatetime) ||
                other.epochFrontCancelClosingDatetime ==
                    epochFrontCancelClosingDatetime) &&
            (identical(other.epochAdditionalOrderStartDatetime,
                    epochAdditionalOrderStartDatetime) ||
                other.epochAdditionalOrderStartDatetime ==
                    epochAdditionalOrderStartDatetime) &&
            (identical(other.epochChangeOrderClosingDatetime,
                    epochChangeOrderClosingDatetime) ||
                other.epochChangeOrderClosingDatetime ==
                    epochChangeOrderClosingDatetime) &&
            (identical(other.isFrontCancel, isFrontCancel) ||
                other.isFrontCancel == isFrontCancel) &&
            (identical(other.isShopCancel, isShopCancel) ||
                other.isShopCancel == isShopCancel) &&
            (identical(other.isEnableFrontCancel, isEnableFrontCancel) ||
                other.isEnableFrontCancel == isEnableFrontCancel) &&
            (identical(other.isLastSchedule, isLastSchedule) ||
                other.isLastSchedule == isLastSchedule) &&
            (identical(other.hasCreatedOrder, hasCreatedOrder) ||
                other.hasCreatedOrder == hasCreatedOrder) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.isAuthoriError, isAuthoriError) ||
                other.isAuthoriError == isAuthoriError) &&
            (identical(other.isEnableAdditionalOrderTerm,
                    isEnableAdditionalOrderTerm) ||
                other.isEnableAdditionalOrderTerm ==
                    isEnableAdditionalOrderTerm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      deliveryDate,
      deliveryStartTime,
      deliveryFinishTime,
      epochFrontCancelClosingDatetime,
      epochAdditionalOrderStartDatetime,
      epochChangeOrderClosingDatetime,
      isFrontCancel,
      isShopCancel,
      isEnableFrontCancel,
      isLastSchedule,
      hasCreatedOrder,
      orderId,
      isAuthoriError,
      isEnableAdditionalOrderTerm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegularShipmentDeliveryScheduleModelCopyWith<
          _$_RegularShipmentDeliveryScheduleModel>
      get copyWith => __$$_RegularShipmentDeliveryScheduleModelCopyWithImpl<
          _$_RegularShipmentDeliveryScheduleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegularShipmentDeliveryScheduleModelToJson(
      this,
    );
  }
}

abstract class _RegularShipmentDeliveryScheduleModel
    implements RegularShipmentDeliveryScheduleModel {
  const factory _RegularShipmentDeliveryScheduleModel(
          {final String deliveryDate,
          final String deliveryStartTime,
          final String deliveryFinishTime,
          @StringToEpochTimeConverter()
          @JsonKey(name: 'front_cancel_closing_datetime')
              final int epochFrontCancelClosingDatetime,
          @StringToEpochTimeConverter()
          @JsonKey(name: 'additional_order_start_datetime')
              final int epochAdditionalOrderStartDatetime,
          @StringToEpochTimeConverter()
          @JsonKey(name: 'change_order_closing_datetime')
              final int epochChangeOrderClosingDatetime,
          final bool isFrontCancel,
          final bool isShopCancel,
          final bool isEnableFrontCancel,
          final bool isLastSchedule,
          final bool hasCreatedOrder,
          final String orderId,
          final bool isAuthoriError,
          final bool isEnableAdditionalOrderTerm}) =
      _$_RegularShipmentDeliveryScheduleModel;

  factory _RegularShipmentDeliveryScheduleModel.fromJson(
          Map<String, dynamic> json) =
      _$_RegularShipmentDeliveryScheduleModel.fromJson;

  @override /* 配達日　※YYYYMMDD */
  String get deliveryDate;
  @override /* 配送開始時間（時分）　※hhmm */
  String get deliveryStartTime;
  @override /* 配送終了時間（時分）　※hhmm */
  String get deliveryFinishTime;
  @override /* フロントキャンセル可能締め日時 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'front_cancel_closing_datetime')
  int get epochFrontCancelClosingDatetime;
  @override /* 買い足し可能開始日時　 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'additional_order_start_datetime')
  int get epochAdditionalOrderStartDatetime;
  @override /* 注文変更可能締め日時 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'change_order_closing_datetime')
  int get epochChangeOrderClosingDatetime;
  @override /* フロントキャンセル判定 - フロントにてスキップ／解約された(＝お客様都合)ことを示す。  ``` true：フロントキャンセル済（スキップまたは解約） false：フロントキャンセルされていない ``` */
  bool get isFrontCancel;
  @override /* ショップキャンセル判定 - 店都合にてスキップ／解約されたことを示す。 ``` true：ショップキャンセル済（スキップまたは解約） false：ショップキャンセルされていない ``` */
  bool get isShopCancel;
  @override /* フロントキャンセル可否判定 - 前サイクルがフロントキャンセルされていた場合キャンセルできない  ``` true：フロントキャンセル可 false：フロントキャンセル不可 ``` */
  bool get isEnableFrontCancel;
  @override /* 最遅スケジュール判定  ``` true：一番最後のスケジュール false：一番最後のスケジュールではない ``` */
  bool get isLastSchedule;
  @override /* 受注作成済判定  ``` true：受注作成済 false：受注未作成 ``` */
  bool get hasCreatedOrder;
  @override /* 受注ID - 定期便注文が作成されていない場合、nullを返却 */
  String get orderId;
  @override /* オーソリエラー判定 - 定期便注文が作成されていない場合、nullを返却  ``` true：オーソリエラーあり false：オーソリエラーなし ``` */
  bool get isAuthoriError;
  @override /* 買い足し可能期間内判定  ``` true：買い足し可能期間内である false：買い足し可能期間外である ``` */
  bool get isEnableAdditionalOrderTerm;
  @override
  @JsonKey(ignore: true)
  _$$_RegularShipmentDeliveryScheduleModelCopyWith<
          _$_RegularShipmentDeliveryScheduleModel>
      get copyWith => throw _privateConstructorUsedError;
}
