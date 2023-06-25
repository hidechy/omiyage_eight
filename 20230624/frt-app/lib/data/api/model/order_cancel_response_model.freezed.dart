// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_cancel_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderCancelResponseModel _$OrderCancelResponseModelFromJson(
    Map<String, dynamic> json) {
  return _OrderCancelResponseModel.fromJson(json);
}

/// @nodoc
mixin _$OrderCancelResponseModel {
/* 失効クーポン情報リスト */
  List<ExpiredCouponModel> get expiredCoupons =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCancelResponseModelCopyWith<OrderCancelResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCancelResponseModelCopyWith<$Res> {
  factory $OrderCancelResponseModelCopyWith(OrderCancelResponseModel value,
          $Res Function(OrderCancelResponseModel) then) =
      _$OrderCancelResponseModelCopyWithImpl<$Res, OrderCancelResponseModel>;
  @useResult
  $Res call({List<ExpiredCouponModel> expiredCoupons});
}

/// @nodoc
class _$OrderCancelResponseModelCopyWithImpl<$Res,
        $Val extends OrderCancelResponseModel>
    implements $OrderCancelResponseModelCopyWith<$Res> {
  _$OrderCancelResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expiredCoupons = null,
  }) {
    return _then(_value.copyWith(
      expiredCoupons: null == expiredCoupons
          ? _value.expiredCoupons
          : expiredCoupons // ignore: cast_nullable_to_non_nullable
              as List<ExpiredCouponModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderCancelResponseModelCopyWith<$Res>
    implements $OrderCancelResponseModelCopyWith<$Res> {
  factory _$$_OrderCancelResponseModelCopyWith(
          _$_OrderCancelResponseModel value,
          $Res Function(_$_OrderCancelResponseModel) then) =
      __$$_OrderCancelResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ExpiredCouponModel> expiredCoupons});
}

/// @nodoc
class __$$_OrderCancelResponseModelCopyWithImpl<$Res>
    extends _$OrderCancelResponseModelCopyWithImpl<$Res,
        _$_OrderCancelResponseModel>
    implements _$$_OrderCancelResponseModelCopyWith<$Res> {
  __$$_OrderCancelResponseModelCopyWithImpl(_$_OrderCancelResponseModel _value,
      $Res Function(_$_OrderCancelResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expiredCoupons = null,
  }) {
    return _then(_$_OrderCancelResponseModel(
      expiredCoupons: null == expiredCoupons
          ? _value._expiredCoupons
          : expiredCoupons // ignore: cast_nullable_to_non_nullable
              as List<ExpiredCouponModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderCancelResponseModel implements _OrderCancelResponseModel {
  const _$_OrderCancelResponseModel(
      {final List<ExpiredCouponModel> expiredCoupons =
          const <ExpiredCouponModel>[]})
      : _expiredCoupons = expiredCoupons;

  factory _$_OrderCancelResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderCancelResponseModelFromJson(json);

/* 失効クーポン情報リスト */
  final List<ExpiredCouponModel> _expiredCoupons;
/* 失効クーポン情報リスト */
  @override
  @JsonKey()
  List<ExpiredCouponModel> get expiredCoupons {
    if (_expiredCoupons is EqualUnmodifiableListView) return _expiredCoupons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expiredCoupons);
  }

  @override
  String toString() {
    return 'OrderCancelResponseModel(expiredCoupons: $expiredCoupons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderCancelResponseModel &&
            const DeepCollectionEquality()
                .equals(other._expiredCoupons, _expiredCoupons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_expiredCoupons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCancelResponseModelCopyWith<_$_OrderCancelResponseModel>
      get copyWith => __$$_OrderCancelResponseModelCopyWithImpl<
          _$_OrderCancelResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderCancelResponseModelToJson(
      this,
    );
  }
}

abstract class _OrderCancelResponseModel implements OrderCancelResponseModel {
  const factory _OrderCancelResponseModel(
          {final List<ExpiredCouponModel> expiredCoupons}) =
      _$_OrderCancelResponseModel;

  factory _OrderCancelResponseModel.fromJson(Map<String, dynamic> json) =
      _$_OrderCancelResponseModel.fromJson;

  @override /* 失効クーポン情報リスト */
  List<ExpiredCouponModel> get expiredCoupons;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCancelResponseModelCopyWith<_$_OrderCancelResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
