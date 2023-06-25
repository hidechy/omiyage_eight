// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_set_sale_group_list_model_order_set_sale_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderSetSaleGroupListModelOrderSetSaleDetails
    _$OrderSetSaleGroupListModelOrderSetSaleDetailsFromJson(
        Map<String, dynamic> json) {
  return _OrderSetSaleGroupListModelOrderSetSaleDetails.fromJson(json);
}

/// @nodoc
mixin _$OrderSetSaleGroupListModelOrderSetSaleDetails {
/* 商品名の返却 */
  String get productName => throw _privateConstructorUsedError; /* 単品数量の返却 */
  int get productCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderSetSaleGroupListModelOrderSetSaleDetailsCopyWith<
          OrderSetSaleGroupListModelOrderSetSaleDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderSetSaleGroupListModelOrderSetSaleDetailsCopyWith<$Res> {
  factory $OrderSetSaleGroupListModelOrderSetSaleDetailsCopyWith(
          OrderSetSaleGroupListModelOrderSetSaleDetails value,
          $Res Function(OrderSetSaleGroupListModelOrderSetSaleDetails) then) =
      _$OrderSetSaleGroupListModelOrderSetSaleDetailsCopyWithImpl<$Res,
          OrderSetSaleGroupListModelOrderSetSaleDetails>;
  @useResult
  $Res call({String productName, int productCount});
}

/// @nodoc
class _$OrderSetSaleGroupListModelOrderSetSaleDetailsCopyWithImpl<$Res,
        $Val extends OrderSetSaleGroupListModelOrderSetSaleDetails>
    implements $OrderSetSaleGroupListModelOrderSetSaleDetailsCopyWith<$Res> {
  _$OrderSetSaleGroupListModelOrderSetSaleDetailsCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? productCount = null,
  }) {
    return _then(_value.copyWith(
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderSetSaleGroupListModelOrderSetSaleDetailsCopyWith<$Res>
    implements $OrderSetSaleGroupListModelOrderSetSaleDetailsCopyWith<$Res> {
  factory _$$_OrderSetSaleGroupListModelOrderSetSaleDetailsCopyWith(
          _$_OrderSetSaleGroupListModelOrderSetSaleDetails value,
          $Res Function(_$_OrderSetSaleGroupListModelOrderSetSaleDetails)
              then) =
      __$$_OrderSetSaleGroupListModelOrderSetSaleDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String productName, int productCount});
}

/// @nodoc
class __$$_OrderSetSaleGroupListModelOrderSetSaleDetailsCopyWithImpl<$Res>
    extends _$OrderSetSaleGroupListModelOrderSetSaleDetailsCopyWithImpl<$Res,
        _$_OrderSetSaleGroupListModelOrderSetSaleDetails>
    implements _$$_OrderSetSaleGroupListModelOrderSetSaleDetailsCopyWith<$Res> {
  __$$_OrderSetSaleGroupListModelOrderSetSaleDetailsCopyWithImpl(
      _$_OrderSetSaleGroupListModelOrderSetSaleDetails _value,
      $Res Function(_$_OrderSetSaleGroupListModelOrderSetSaleDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? productCount = null,
  }) {
    return _then(_$_OrderSetSaleGroupListModelOrderSetSaleDetails(
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderSetSaleGroupListModelOrderSetSaleDetails
    implements _OrderSetSaleGroupListModelOrderSetSaleDetails {
  const _$_OrderSetSaleGroupListModelOrderSetSaleDetails(
      {this.productName = '', this.productCount = 0});

  factory _$_OrderSetSaleGroupListModelOrderSetSaleDetails.fromJson(
          Map<String, dynamic> json) =>
      _$$_OrderSetSaleGroupListModelOrderSetSaleDetailsFromJson(json);

/* 商品名の返却 */
  @override
  @JsonKey()
  final String productName;
/* 単品数量の返却 */
  @override
  @JsonKey()
  final int productCount;

  @override
  String toString() {
    return 'OrderSetSaleGroupListModelOrderSetSaleDetails(productName: $productName, productCount: $productCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderSetSaleGroupListModelOrderSetSaleDetails &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productName, productCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderSetSaleGroupListModelOrderSetSaleDetailsCopyWith<
          _$_OrderSetSaleGroupListModelOrderSetSaleDetails>
      get copyWith =>
          __$$_OrderSetSaleGroupListModelOrderSetSaleDetailsCopyWithImpl<
                  _$_OrderSetSaleGroupListModelOrderSetSaleDetails>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderSetSaleGroupListModelOrderSetSaleDetailsToJson(
      this,
    );
  }
}

abstract class _OrderSetSaleGroupListModelOrderSetSaleDetails
    implements OrderSetSaleGroupListModelOrderSetSaleDetails {
  const factory _OrderSetSaleGroupListModelOrderSetSaleDetails(
          {final String productName, final int productCount}) =
      _$_OrderSetSaleGroupListModelOrderSetSaleDetails;

  factory _OrderSetSaleGroupListModelOrderSetSaleDetails.fromJson(
          Map<String, dynamic> json) =
      _$_OrderSetSaleGroupListModelOrderSetSaleDetails.fromJson;

  @override /* 商品名の返却 */
  String get productName;
  @override /* 単品数量の返却 */
  int get productCount;
  @override
  @JsonKey(ignore: true)
  _$$_OrderSetSaleGroupListModelOrderSetSaleDetailsCopyWith<
          _$_OrderSetSaleGroupListModelOrderSetSaleDetails>
      get copyWith => throw _privateConstructorUsedError;
}
