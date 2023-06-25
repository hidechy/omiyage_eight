// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_previous_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductsPreviousOrderModel _$ProductsPreviousOrderModelFromJson(
    Map<String, dynamic> json) {
  return _ProductsPreviousOrderModel.fromJson(json);
}

/// @nodoc
mixin _$ProductsPreviousOrderModel {
/* 前回注文小計 */
  String? get previousTotalPrice =>
      throw _privateConstructorUsedError; /* 全商品SOLD OUT判定 ``` true：全商品SOLD OUTである false：全商品SOLD OUTでない ``` */
  bool get isAllSoldout =>
      throw _privateConstructorUsedError; /* 仮会員判定 ``` true：仮会員である false：仮会員でない ``` */
  bool get isTemporaryCustomer =>
      throw _privateConstructorUsedError; /* 店舗コード */
  String? get shopCode =>
      throw _privateConstructorUsedError; /* 受注ID - 前回注文時の受注ID */
  int? get orderId => throw _privateConstructorUsedError; /* 前回注文商品 */
  List<PreviousOrderModel>? get previusOrders =>
      throw _privateConstructorUsedError; /* 医薬品事前購入確認承認判定 - true：承認済み - false：未承認 */
  bool get isConsentMedicine =>
      throw _privateConstructorUsedError; /* 赤ちゃん本舗事前承認判定 - true：承認済み - false：未承認 */
  bool get isConsentAkachanHonpo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsPreviousOrderModelCopyWith<ProductsPreviousOrderModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsPreviousOrderModelCopyWith<$Res> {
  factory $ProductsPreviousOrderModelCopyWith(ProductsPreviousOrderModel value,
          $Res Function(ProductsPreviousOrderModel) then) =
      _$ProductsPreviousOrderModelCopyWithImpl<$Res,
          ProductsPreviousOrderModel>;
  @useResult
  $Res call(
      {String? previousTotalPrice,
      bool isAllSoldout,
      bool isTemporaryCustomer,
      String? shopCode,
      int? orderId,
      List<PreviousOrderModel>? previusOrders,
      bool isConsentMedicine,
      bool isConsentAkachanHonpo});
}

/// @nodoc
class _$ProductsPreviousOrderModelCopyWithImpl<$Res,
        $Val extends ProductsPreviousOrderModel>
    implements $ProductsPreviousOrderModelCopyWith<$Res> {
  _$ProductsPreviousOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previousTotalPrice = freezed,
    Object? isAllSoldout = null,
    Object? isTemporaryCustomer = null,
    Object? shopCode = freezed,
    Object? orderId = freezed,
    Object? previusOrders = freezed,
    Object? isConsentMedicine = null,
    Object? isConsentAkachanHonpo = null,
  }) {
    return _then(_value.copyWith(
      previousTotalPrice: freezed == previousTotalPrice
          ? _value.previousTotalPrice
          : previousTotalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      isAllSoldout: null == isAllSoldout
          ? _value.isAllSoldout
          : isAllSoldout // ignore: cast_nullable_to_non_nullable
              as bool,
      isTemporaryCustomer: null == isTemporaryCustomer
          ? _value.isTemporaryCustomer
          : isTemporaryCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      shopCode: freezed == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      previusOrders: freezed == previusOrders
          ? _value.previusOrders
          : previusOrders // ignore: cast_nullable_to_non_nullable
              as List<PreviousOrderModel>?,
      isConsentMedicine: null == isConsentMedicine
          ? _value.isConsentMedicine
          : isConsentMedicine // ignore: cast_nullable_to_non_nullable
              as bool,
      isConsentAkachanHonpo: null == isConsentAkachanHonpo
          ? _value.isConsentAkachanHonpo
          : isConsentAkachanHonpo // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductsPreviousOrderModelCopyWith<$Res>
    implements $ProductsPreviousOrderModelCopyWith<$Res> {
  factory _$$_ProductsPreviousOrderModelCopyWith(
          _$_ProductsPreviousOrderModel value,
          $Res Function(_$_ProductsPreviousOrderModel) then) =
      __$$_ProductsPreviousOrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? previousTotalPrice,
      bool isAllSoldout,
      bool isTemporaryCustomer,
      String? shopCode,
      int? orderId,
      List<PreviousOrderModel>? previusOrders,
      bool isConsentMedicine,
      bool isConsentAkachanHonpo});
}

/// @nodoc
class __$$_ProductsPreviousOrderModelCopyWithImpl<$Res>
    extends _$ProductsPreviousOrderModelCopyWithImpl<$Res,
        _$_ProductsPreviousOrderModel>
    implements _$$_ProductsPreviousOrderModelCopyWith<$Res> {
  __$$_ProductsPreviousOrderModelCopyWithImpl(
      _$_ProductsPreviousOrderModel _value,
      $Res Function(_$_ProductsPreviousOrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previousTotalPrice = freezed,
    Object? isAllSoldout = null,
    Object? isTemporaryCustomer = null,
    Object? shopCode = freezed,
    Object? orderId = freezed,
    Object? previusOrders = freezed,
    Object? isConsentMedicine = null,
    Object? isConsentAkachanHonpo = null,
  }) {
    return _then(_$_ProductsPreviousOrderModel(
      previousTotalPrice: freezed == previousTotalPrice
          ? _value.previousTotalPrice
          : previousTotalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      isAllSoldout: null == isAllSoldout
          ? _value.isAllSoldout
          : isAllSoldout // ignore: cast_nullable_to_non_nullable
              as bool,
      isTemporaryCustomer: null == isTemporaryCustomer
          ? _value.isTemporaryCustomer
          : isTemporaryCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      shopCode: freezed == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      previusOrders: freezed == previusOrders
          ? _value._previusOrders
          : previusOrders // ignore: cast_nullable_to_non_nullable
              as List<PreviousOrderModel>?,
      isConsentMedicine: null == isConsentMedicine
          ? _value.isConsentMedicine
          : isConsentMedicine // ignore: cast_nullable_to_non_nullable
              as bool,
      isConsentAkachanHonpo: null == isConsentAkachanHonpo
          ? _value.isConsentAkachanHonpo
          : isConsentAkachanHonpo // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductsPreviousOrderModel implements _ProductsPreviousOrderModel {
  const _$_ProductsPreviousOrderModel(
      {this.previousTotalPrice,
      this.isAllSoldout = false,
      this.isTemporaryCustomer = false,
      this.shopCode,
      this.orderId,
      final List<PreviousOrderModel>? previusOrders,
      this.isConsentMedicine = false,
      this.isConsentAkachanHonpo = false})
      : _previusOrders = previusOrders;

  factory _$_ProductsPreviousOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductsPreviousOrderModelFromJson(json);

/* 前回注文小計 */
  @override
  final String? previousTotalPrice;
/* 全商品SOLD OUT判定 ``` true：全商品SOLD OUTである false：全商品SOLD OUTでない ``` */
  @override
  @JsonKey()
  final bool isAllSoldout;
/* 仮会員判定 ``` true：仮会員である false：仮会員でない ``` */
  @override
  @JsonKey()
  final bool isTemporaryCustomer;
/* 店舗コード */
  @override
  final String? shopCode;
/* 受注ID - 前回注文時の受注ID */
  @override
  final int? orderId;
/* 前回注文商品 */
  final List<PreviousOrderModel>? _previusOrders;
/* 前回注文商品 */
  @override
  List<PreviousOrderModel>? get previusOrders {
    final value = _previusOrders;
    if (value == null) return null;
    if (_previusOrders is EqualUnmodifiableListView) return _previusOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

/* 医薬品事前購入確認承認判定 - true：承認済み - false：未承認 */
  @override
  @JsonKey()
  final bool isConsentMedicine;
/* 赤ちゃん本舗事前承認判定 - true：承認済み - false：未承認 */
  @override
  @JsonKey()
  final bool isConsentAkachanHonpo;

  @override
  String toString() {
    return 'ProductsPreviousOrderModel(previousTotalPrice: $previousTotalPrice, isAllSoldout: $isAllSoldout, isTemporaryCustomer: $isTemporaryCustomer, shopCode: $shopCode, orderId: $orderId, previusOrders: $previusOrders, isConsentMedicine: $isConsentMedicine, isConsentAkachanHonpo: $isConsentAkachanHonpo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsPreviousOrderModel &&
            (identical(other.previousTotalPrice, previousTotalPrice) ||
                other.previousTotalPrice == previousTotalPrice) &&
            (identical(other.isAllSoldout, isAllSoldout) ||
                other.isAllSoldout == isAllSoldout) &&
            (identical(other.isTemporaryCustomer, isTemporaryCustomer) ||
                other.isTemporaryCustomer == isTemporaryCustomer) &&
            (identical(other.shopCode, shopCode) ||
                other.shopCode == shopCode) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            const DeepCollectionEquality()
                .equals(other._previusOrders, _previusOrders) &&
            (identical(other.isConsentMedicine, isConsentMedicine) ||
                other.isConsentMedicine == isConsentMedicine) &&
            (identical(other.isConsentAkachanHonpo, isConsentAkachanHonpo) ||
                other.isConsentAkachanHonpo == isConsentAkachanHonpo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      previousTotalPrice,
      isAllSoldout,
      isTemporaryCustomer,
      shopCode,
      orderId,
      const DeepCollectionEquality().hash(_previusOrders),
      isConsentMedicine,
      isConsentAkachanHonpo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsPreviousOrderModelCopyWith<_$_ProductsPreviousOrderModel>
      get copyWith => __$$_ProductsPreviousOrderModelCopyWithImpl<
          _$_ProductsPreviousOrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductsPreviousOrderModelToJson(
      this,
    );
  }
}

abstract class _ProductsPreviousOrderModel
    implements ProductsPreviousOrderModel {
  const factory _ProductsPreviousOrderModel(
      {final String? previousTotalPrice,
      final bool isAllSoldout,
      final bool isTemporaryCustomer,
      final String? shopCode,
      final int? orderId,
      final List<PreviousOrderModel>? previusOrders,
      final bool isConsentMedicine,
      final bool isConsentAkachanHonpo}) = _$_ProductsPreviousOrderModel;

  factory _ProductsPreviousOrderModel.fromJson(Map<String, dynamic> json) =
      _$_ProductsPreviousOrderModel.fromJson;

  @override /* 前回注文小計 */
  String? get previousTotalPrice;
  @override /* 全商品SOLD OUT判定 ``` true：全商品SOLD OUTである false：全商品SOLD OUTでない ``` */
  bool get isAllSoldout;
  @override /* 仮会員判定 ``` true：仮会員である false：仮会員でない ``` */
  bool get isTemporaryCustomer;
  @override /* 店舗コード */
  String? get shopCode;
  @override /* 受注ID - 前回注文時の受注ID */
  int? get orderId;
  @override /* 前回注文商品 */
  List<PreviousOrderModel>? get previusOrders;
  @override /* 医薬品事前購入確認承認判定 - true：承認済み - false：未承認 */
  bool get isConsentMedicine;
  @override /* 赤ちゃん本舗事前承認判定 - true：承認済み - false：未承認 */
  bool get isConsentAkachanHonpo;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsPreviousOrderModelCopyWith<_$_ProductsPreviousOrderModel>
      get copyWith => throw _privateConstructorUsedError;
}
