// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderHistoryModel _$OrderHistoryModelFromJson(Map<String, dynamic> json) {
  return _OrderHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$OrderHistoryModel {
/* 配達便変更開始-無効フラグ ``` \"0\"：配達便変更開始が有効である \"1\"：配達便変更開始が無効である ``` */
  @StringToBooleanConverter()
  bool get disableDeliveryPlanChangeStartFlag =>
      throw _privateConstructorUsedError; /* 受注ID */
  String get orderId =>
      throw _privateConstructorUsedError; /* 予約ステータス ``` \"0\"：非予約受注 \"1\"：予約のみ受注 \"2\"：予約含む受注``` */
  ReserveStatus get reserveStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderHistoryModelCopyWith<OrderHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryModelCopyWith<$Res> {
  factory $OrderHistoryModelCopyWith(
          OrderHistoryModel value, $Res Function(OrderHistoryModel) then) =
      _$OrderHistoryModelCopyWithImpl<$Res, OrderHistoryModel>;
  @useResult
  $Res call(
      {@StringToBooleanConverter() bool disableDeliveryPlanChangeStartFlag,
      String orderId,
      ReserveStatus reserveStatus});
}

/// @nodoc
class _$OrderHistoryModelCopyWithImpl<$Res, $Val extends OrderHistoryModel>
    implements $OrderHistoryModelCopyWith<$Res> {
  _$OrderHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disableDeliveryPlanChangeStartFlag = null,
    Object? orderId = null,
    Object? reserveStatus = null,
  }) {
    return _then(_value.copyWith(
      disableDeliveryPlanChangeStartFlag: null ==
              disableDeliveryPlanChangeStartFlag
          ? _value.disableDeliveryPlanChangeStartFlag
          : disableDeliveryPlanChangeStartFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      reserveStatus: null == reserveStatus
          ? _value.reserveStatus
          : reserveStatus // ignore: cast_nullable_to_non_nullable
              as ReserveStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderHistoryModelCopyWith<$Res>
    implements $OrderHistoryModelCopyWith<$Res> {
  factory _$$_OrderHistoryModelCopyWith(_$_OrderHistoryModel value,
          $Res Function(_$_OrderHistoryModel) then) =
      __$$_OrderHistoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@StringToBooleanConverter() bool disableDeliveryPlanChangeStartFlag,
      String orderId,
      ReserveStatus reserveStatus});
}

/// @nodoc
class __$$_OrderHistoryModelCopyWithImpl<$Res>
    extends _$OrderHistoryModelCopyWithImpl<$Res, _$_OrderHistoryModel>
    implements _$$_OrderHistoryModelCopyWith<$Res> {
  __$$_OrderHistoryModelCopyWithImpl(
      _$_OrderHistoryModel _value, $Res Function(_$_OrderHistoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disableDeliveryPlanChangeStartFlag = null,
    Object? orderId = null,
    Object? reserveStatus = null,
  }) {
    return _then(_$_OrderHistoryModel(
      disableDeliveryPlanChangeStartFlag: null ==
              disableDeliveryPlanChangeStartFlag
          ? _value.disableDeliveryPlanChangeStartFlag
          : disableDeliveryPlanChangeStartFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      reserveStatus: null == reserveStatus
          ? _value.reserveStatus
          : reserveStatus // ignore: cast_nullable_to_non_nullable
              as ReserveStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderHistoryModel implements _OrderHistoryModel {
  const _$_OrderHistoryModel(
      {@StringToBooleanConverter()
          this.disableDeliveryPlanChangeStartFlag = false,
      this.orderId = '',
      this.reserveStatus = ReserveStatus.notReservedOrder});

  factory _$_OrderHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderHistoryModelFromJson(json);

/* 配達便変更開始-無効フラグ ``` \"0\"：配達便変更開始が有効である \"1\"：配達便変更開始が無効である ``` */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool disableDeliveryPlanChangeStartFlag;
/* 受注ID */
  @override
  @JsonKey()
  final String orderId;
/* 予約ステータス ``` \"0\"：非予約受注 \"1\"：予約のみ受注 \"2\"：予約含む受注``` */
  @override
  @JsonKey()
  final ReserveStatus reserveStatus;

  @override
  String toString() {
    return 'OrderHistoryModel(disableDeliveryPlanChangeStartFlag: $disableDeliveryPlanChangeStartFlag, orderId: $orderId, reserveStatus: $reserveStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderHistoryModel &&
            (identical(other.disableDeliveryPlanChangeStartFlag,
                    disableDeliveryPlanChangeStartFlag) ||
                other.disableDeliveryPlanChangeStartFlag ==
                    disableDeliveryPlanChangeStartFlag) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.reserveStatus, reserveStatus) ||
                other.reserveStatus == reserveStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, disableDeliveryPlanChangeStartFlag, orderId, reserveStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderHistoryModelCopyWith<_$_OrderHistoryModel> get copyWith =>
      __$$_OrderHistoryModelCopyWithImpl<_$_OrderHistoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderHistoryModelToJson(
      this,
    );
  }
}

abstract class _OrderHistoryModel implements OrderHistoryModel {
  const factory _OrderHistoryModel(
      {@StringToBooleanConverter()
          final bool disableDeliveryPlanChangeStartFlag,
      final String orderId,
      final ReserveStatus reserveStatus}) = _$_OrderHistoryModel;

  factory _OrderHistoryModel.fromJson(Map<String, dynamic> json) =
      _$_OrderHistoryModel.fromJson;

  @override /* 配達便変更開始-無効フラグ ``` \"0\"：配達便変更開始が有効である \"1\"：配達便変更開始が無効である ``` */
  @StringToBooleanConverter()
  bool get disableDeliveryPlanChangeStartFlag;
  @override /* 受注ID */
  String get orderId;
  @override /* 予約ステータス ``` \"0\"：非予約受注 \"1\"：予約のみ受注 \"2\"：予約含む受注``` */
  ReserveStatus get reserveStatus;
  @override
  @JsonKey(ignore: true)
  _$$_OrderHistoryModelCopyWith<_$_OrderHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
