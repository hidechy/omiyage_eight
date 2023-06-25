// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repurchase_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RepurchasePageState {
  OrderDetailsModel get orderDetail => throw _privateConstructorUsedError;
  bool get isExistDrugProduct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepurchasePageStateCopyWith<RepurchasePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepurchasePageStateCopyWith<$Res> {
  factory $RepurchasePageStateCopyWith(
          RepurchasePageState value, $Res Function(RepurchasePageState) then) =
      _$RepurchasePageStateCopyWithImpl<$Res, RepurchasePageState>;
  @useResult
  $Res call({OrderDetailsModel orderDetail, bool isExistDrugProduct});

  $OrderDetailsModelCopyWith<$Res> get orderDetail;
}

/// @nodoc
class _$RepurchasePageStateCopyWithImpl<$Res, $Val extends RepurchasePageState>
    implements $RepurchasePageStateCopyWith<$Res> {
  _$RepurchasePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderDetail = null,
    Object? isExistDrugProduct = null,
  }) {
    return _then(_value.copyWith(
      orderDetail: null == orderDetail
          ? _value.orderDetail
          : orderDetail // ignore: cast_nullable_to_non_nullable
              as OrderDetailsModel,
      isExistDrugProduct: null == isExistDrugProduct
          ? _value.isExistDrugProduct
          : isExistDrugProduct // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_RepurchasePageStateCopyWith<$Res>
    implements $RepurchasePageStateCopyWith<$Res> {
  factory _$$_RepurchasePageStateCopyWith(_$_RepurchasePageState value,
          $Res Function(_$_RepurchasePageState) then) =
      __$$_RepurchasePageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderDetailsModel orderDetail, bool isExistDrugProduct});

  @override
  $OrderDetailsModelCopyWith<$Res> get orderDetail;
}

/// @nodoc
class __$$_RepurchasePageStateCopyWithImpl<$Res>
    extends _$RepurchasePageStateCopyWithImpl<$Res, _$_RepurchasePageState>
    implements _$$_RepurchasePageStateCopyWith<$Res> {
  __$$_RepurchasePageStateCopyWithImpl(_$_RepurchasePageState _value,
      $Res Function(_$_RepurchasePageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderDetail = null,
    Object? isExistDrugProduct = null,
  }) {
    return _then(_$_RepurchasePageState(
      orderDetail: null == orderDetail
          ? _value.orderDetail
          : orderDetail // ignore: cast_nullable_to_non_nullable
              as OrderDetailsModel,
      isExistDrugProduct: null == isExistDrugProduct
          ? _value.isExistDrugProduct
          : isExistDrugProduct // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RepurchasePageState implements _RepurchasePageState {
  _$_RepurchasePageState(
      {this.orderDetail = const OrderDetailsModel(),
      this.isExistDrugProduct = false});

  @override
  @JsonKey()
  final OrderDetailsModel orderDetail;
  @override
  @JsonKey()
  final bool isExistDrugProduct;

  @override
  String toString() {
    return 'RepurchasePageState(orderDetail: $orderDetail, isExistDrugProduct: $isExistDrugProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepurchasePageState &&
            (identical(other.orderDetail, orderDetail) ||
                other.orderDetail == orderDetail) &&
            (identical(other.isExistDrugProduct, isExistDrugProduct) ||
                other.isExistDrugProduct == isExistDrugProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderDetail, isExistDrugProduct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepurchasePageStateCopyWith<_$_RepurchasePageState> get copyWith =>
      __$$_RepurchasePageStateCopyWithImpl<_$_RepurchasePageState>(
          this, _$identity);
}

abstract class _RepurchasePageState implements RepurchasePageState {
  factory _RepurchasePageState(
      {final OrderDetailsModel orderDetail,
      final bool isExistDrugProduct}) = _$_RepurchasePageState;

  @override
  OrderDetailsModel get orderDetail;
  @override
  bool get isExistDrugProduct;
  @override
  @JsonKey(ignore: true)
  _$$_RepurchasePageStateCopyWith<_$_RepurchasePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
