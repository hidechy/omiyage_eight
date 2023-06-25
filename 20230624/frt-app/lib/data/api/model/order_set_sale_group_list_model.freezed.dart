// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_set_sale_group_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderSetSaleGroupListModel _$OrderSetSaleGroupListModelFromJson(
    Map<String, dynamic> json) {
  return _OrderSetSaleGroupListModel.fromJson(json);
}

/// @nodoc
mixin _$OrderSetSaleGroupListModel {
/* セット販売割引名 */
  String get setSaleName => throw _privateConstructorUsedError; /* セット販売価格の返却 */
  int get setSalePrice => throw _privateConstructorUsedError; /* セット割引成立数の返却 */
  int get fixSetSaleNumber =>
      throw _privateConstructorUsedError; /* 割引グループ別小計の返却 */
  int get totalSetSaleDiscount =>
      throw _privateConstructorUsedError; /* 受注セットグループ明細 */
  List<OrderSetSaleGroupListModelOrderSetSaleDetails> get orderSetSaleDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderSetSaleGroupListModelCopyWith<OrderSetSaleGroupListModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderSetSaleGroupListModelCopyWith<$Res> {
  factory $OrderSetSaleGroupListModelCopyWith(OrderSetSaleGroupListModel value,
          $Res Function(OrderSetSaleGroupListModel) then) =
      _$OrderSetSaleGroupListModelCopyWithImpl<$Res,
          OrderSetSaleGroupListModel>;
  @useResult
  $Res call(
      {String setSaleName,
      int setSalePrice,
      int fixSetSaleNumber,
      int totalSetSaleDiscount,
      List<OrderSetSaleGroupListModelOrderSetSaleDetails> orderSetSaleDetails});
}

/// @nodoc
class _$OrderSetSaleGroupListModelCopyWithImpl<$Res,
        $Val extends OrderSetSaleGroupListModel>
    implements $OrderSetSaleGroupListModelCopyWith<$Res> {
  _$OrderSetSaleGroupListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setSaleName = null,
    Object? setSalePrice = null,
    Object? fixSetSaleNumber = null,
    Object? totalSetSaleDiscount = null,
    Object? orderSetSaleDetails = null,
  }) {
    return _then(_value.copyWith(
      setSaleName: null == setSaleName
          ? _value.setSaleName
          : setSaleName // ignore: cast_nullable_to_non_nullable
              as String,
      setSalePrice: null == setSalePrice
          ? _value.setSalePrice
          : setSalePrice // ignore: cast_nullable_to_non_nullable
              as int,
      fixSetSaleNumber: null == fixSetSaleNumber
          ? _value.fixSetSaleNumber
          : fixSetSaleNumber // ignore: cast_nullable_to_non_nullable
              as int,
      totalSetSaleDiscount: null == totalSetSaleDiscount
          ? _value.totalSetSaleDiscount
          : totalSetSaleDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      orderSetSaleDetails: null == orderSetSaleDetails
          ? _value.orderSetSaleDetails
          : orderSetSaleDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderSetSaleGroupListModelOrderSetSaleDetails>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderSetSaleGroupListModelCopyWith<$Res>
    implements $OrderSetSaleGroupListModelCopyWith<$Res> {
  factory _$$_OrderSetSaleGroupListModelCopyWith(
          _$_OrderSetSaleGroupListModel value,
          $Res Function(_$_OrderSetSaleGroupListModel) then) =
      __$$_OrderSetSaleGroupListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String setSaleName,
      int setSalePrice,
      int fixSetSaleNumber,
      int totalSetSaleDiscount,
      List<OrderSetSaleGroupListModelOrderSetSaleDetails> orderSetSaleDetails});
}

/// @nodoc
class __$$_OrderSetSaleGroupListModelCopyWithImpl<$Res>
    extends _$OrderSetSaleGroupListModelCopyWithImpl<$Res,
        _$_OrderSetSaleGroupListModel>
    implements _$$_OrderSetSaleGroupListModelCopyWith<$Res> {
  __$$_OrderSetSaleGroupListModelCopyWithImpl(
      _$_OrderSetSaleGroupListModel _value,
      $Res Function(_$_OrderSetSaleGroupListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setSaleName = null,
    Object? setSalePrice = null,
    Object? fixSetSaleNumber = null,
    Object? totalSetSaleDiscount = null,
    Object? orderSetSaleDetails = null,
  }) {
    return _then(_$_OrderSetSaleGroupListModel(
      setSaleName: null == setSaleName
          ? _value.setSaleName
          : setSaleName // ignore: cast_nullable_to_non_nullable
              as String,
      setSalePrice: null == setSalePrice
          ? _value.setSalePrice
          : setSalePrice // ignore: cast_nullable_to_non_nullable
              as int,
      fixSetSaleNumber: null == fixSetSaleNumber
          ? _value.fixSetSaleNumber
          : fixSetSaleNumber // ignore: cast_nullable_to_non_nullable
              as int,
      totalSetSaleDiscount: null == totalSetSaleDiscount
          ? _value.totalSetSaleDiscount
          : totalSetSaleDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      orderSetSaleDetails: null == orderSetSaleDetails
          ? _value._orderSetSaleDetails
          : orderSetSaleDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderSetSaleGroupListModelOrderSetSaleDetails>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderSetSaleGroupListModel implements _OrderSetSaleGroupListModel {
  const _$_OrderSetSaleGroupListModel(
      {this.setSaleName = '',
      this.setSalePrice = 0,
      this.fixSetSaleNumber = 0,
      this.totalSetSaleDiscount = 0,
      final List<OrderSetSaleGroupListModelOrderSetSaleDetails> orderSetSaleDetails =
          const <OrderSetSaleGroupListModelOrderSetSaleDetails>[]})
      : _orderSetSaleDetails = orderSetSaleDetails;

  factory _$_OrderSetSaleGroupListModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderSetSaleGroupListModelFromJson(json);

/* セット販売割引名 */
  @override
  @JsonKey()
  final String setSaleName;
/* セット販売価格の返却 */
  @override
  @JsonKey()
  final int setSalePrice;
/* セット割引成立数の返却 */
  @override
  @JsonKey()
  final int fixSetSaleNumber;
/* 割引グループ別小計の返却 */
  @override
  @JsonKey()
  final int totalSetSaleDiscount;
/* 受注セットグループ明細 */
  final List<OrderSetSaleGroupListModelOrderSetSaleDetails>
      _orderSetSaleDetails;
/* 受注セットグループ明細 */
  @override
  @JsonKey()
  List<OrderSetSaleGroupListModelOrderSetSaleDetails> get orderSetSaleDetails {
    if (_orderSetSaleDetails is EqualUnmodifiableListView)
      return _orderSetSaleDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderSetSaleDetails);
  }

  @override
  String toString() {
    return 'OrderSetSaleGroupListModel(setSaleName: $setSaleName, setSalePrice: $setSalePrice, fixSetSaleNumber: $fixSetSaleNumber, totalSetSaleDiscount: $totalSetSaleDiscount, orderSetSaleDetails: $orderSetSaleDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderSetSaleGroupListModel &&
            (identical(other.setSaleName, setSaleName) ||
                other.setSaleName == setSaleName) &&
            (identical(other.setSalePrice, setSalePrice) ||
                other.setSalePrice == setSalePrice) &&
            (identical(other.fixSetSaleNumber, fixSetSaleNumber) ||
                other.fixSetSaleNumber == fixSetSaleNumber) &&
            (identical(other.totalSetSaleDiscount, totalSetSaleDiscount) ||
                other.totalSetSaleDiscount == totalSetSaleDiscount) &&
            const DeepCollectionEquality()
                .equals(other._orderSetSaleDetails, _orderSetSaleDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      setSaleName,
      setSalePrice,
      fixSetSaleNumber,
      totalSetSaleDiscount,
      const DeepCollectionEquality().hash(_orderSetSaleDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderSetSaleGroupListModelCopyWith<_$_OrderSetSaleGroupListModel>
      get copyWith => __$$_OrderSetSaleGroupListModelCopyWithImpl<
          _$_OrderSetSaleGroupListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderSetSaleGroupListModelToJson(
      this,
    );
  }
}

abstract class _OrderSetSaleGroupListModel
    implements OrderSetSaleGroupListModel {
  const factory _OrderSetSaleGroupListModel(
      {final String setSaleName,
      final int setSalePrice,
      final int fixSetSaleNumber,
      final int totalSetSaleDiscount,
      final List<OrderSetSaleGroupListModelOrderSetSaleDetails>
          orderSetSaleDetails}) = _$_OrderSetSaleGroupListModel;

  factory _OrderSetSaleGroupListModel.fromJson(Map<String, dynamic> json) =
      _$_OrderSetSaleGroupListModel.fromJson;

  @override /* セット販売割引名 */
  String get setSaleName;
  @override /* セット販売価格の返却 */
  int get setSalePrice;
  @override /* セット割引成立数の返却 */
  int get fixSetSaleNumber;
  @override /* 割引グループ別小計の返却 */
  int get totalSetSaleDiscount;
  @override /* 受注セットグループ明細 */
  List<OrderSetSaleGroupListModelOrderSetSaleDetails> get orderSetSaleDetails;
  @override
  @JsonKey(ignore: true)
  _$$_OrderSetSaleGroupListModelCopyWith<_$_OrderSetSaleGroupListModel>
      get copyWith => throw _privateConstructorUsedError;
}
