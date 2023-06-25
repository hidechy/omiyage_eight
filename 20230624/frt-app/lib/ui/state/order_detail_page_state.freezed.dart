// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_detail_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderDetailPageState {
  OrderDetailsModel get orderDetail => throw _privateConstructorUsedError;
  bool get isOpen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderDetailPageStateCopyWith<OrderDetailPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailPageStateCopyWith<$Res> {
  factory $OrderDetailPageStateCopyWith(OrderDetailPageState value,
          $Res Function(OrderDetailPageState) then) =
      _$OrderDetailPageStateCopyWithImpl<$Res, OrderDetailPageState>;
  @useResult
  $Res call({OrderDetailsModel orderDetail, bool isOpen});

  $OrderDetailsModelCopyWith<$Res> get orderDetail;
}

/// @nodoc
class _$OrderDetailPageStateCopyWithImpl<$Res,
        $Val extends OrderDetailPageState>
    implements $OrderDetailPageStateCopyWith<$Res> {
  _$OrderDetailPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderDetail = null,
    Object? isOpen = null,
  }) {
    return _then(_value.copyWith(
      orderDetail: null == orderDetail
          ? _value.orderDetail
          : orderDetail // ignore: cast_nullable_to_non_nullable
              as OrderDetailsModel,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderDetailsModelCopyWith<$Res> get orderDetail {
    return $OrderDetailsModelCopyWith<$Res>(_value.orderDetail, (value) {
      return _then(_value.copyWith(orderDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderDetailPageStateCopyWith<$Res>
    implements $OrderDetailPageStateCopyWith<$Res> {
  factory _$$_OrderDetailPageStateCopyWith(_$_OrderDetailPageState value,
          $Res Function(_$_OrderDetailPageState) then) =
      __$$_OrderDetailPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderDetailsModel orderDetail, bool isOpen});

  @override
  $OrderDetailsModelCopyWith<$Res> get orderDetail;
}

/// @nodoc
class __$$_OrderDetailPageStateCopyWithImpl<$Res>
    extends _$OrderDetailPageStateCopyWithImpl<$Res, _$_OrderDetailPageState>
    implements _$$_OrderDetailPageStateCopyWith<$Res> {
  __$$_OrderDetailPageStateCopyWithImpl(_$_OrderDetailPageState _value,
      $Res Function(_$_OrderDetailPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderDetail = null,
    Object? isOpen = null,
  }) {
    return _then(_$_OrderDetailPageState(
      orderDetail: null == orderDetail
          ? _value.orderDetail
          : orderDetail // ignore: cast_nullable_to_non_nullable
              as OrderDetailsModel,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_OrderDetailPageState implements _OrderDetailPageState {
  _$_OrderDetailPageState(
      {this.orderDetail = const OrderDetailsModel(), this.isOpen = false});

  @override
  @JsonKey()
  final OrderDetailsModel orderDetail;
  @override
  @JsonKey()
  final bool isOpen;

  @override
  String toString() {
    return 'OrderDetailPageState(orderDetail: $orderDetail, isOpen: $isOpen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDetailPageState &&
            (identical(other.orderDetail, orderDetail) ||
                other.orderDetail == orderDetail) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderDetail, isOpen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDetailPageStateCopyWith<_$_OrderDetailPageState> get copyWith =>
      __$$_OrderDetailPageStateCopyWithImpl<_$_OrderDetailPageState>(
          this, _$identity);
}

abstract class _OrderDetailPageState implements OrderDetailPageState {
  factory _OrderDetailPageState(
      {final OrderDetailsModel orderDetail,
      final bool isOpen}) = _$_OrderDetailPageState;

  @override
  OrderDetailsModel get orderDetail;
  @override
  bool get isOpen;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDetailPageStateCopyWith<_$_OrderDetailPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
