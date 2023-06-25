// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expired_coupon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExpiredCouponModel _$ExpiredCouponModelFromJson(Map<String, dynamic> json) {
  return _ExpiredCouponModel.fromJson(json);
}

/// @nodoc
mixin _$ExpiredCouponModel {
/* クーポン名 */
  String get couponName => throw _privateConstructorUsedError; /* クーポンコード */
  String get couponCode =>
      throw _privateConstructorUsedError; /* 配布期間超過判定を返却 - true：配布期間を超過したクーポン - false：配布期間内クーポン */
  bool get isDealTermExpired =>
      throw _privateConstructorUsedError; /* 失効:購入金額の判定 - true：購入金額による失効である - false：購入金額による失効ではない */
  bool get isExpiredSalePrice =>
      throw _privateConstructorUsedError; /* 獲得条件:配布期間終了日をフォーマット変換しているためAPI側は獲得条件:配布期間終了日を返却する ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'deal_finish_datetime')
  int get epochDealFinishDatetime =>
      throw _privateConstructorUsedError; /* 使用可能条件:注文購入金額 */
  int get orderSalePrice =>
      throw _privateConstructorUsedError; /* 失効:注文回数の判定 - true：注文回数による失効である - false：注文回数による失効ではない */
  bool get isExpiredOrderCount =>
      throw _privateConstructorUsedError; /* 獲得条件：注文数合計 */
  int get orderCount =>
      throw _privateConstructorUsedError; /* 失効:使用解禁日の判定を返却 - true：使用解禁日による失効である - false：使用解禁日による失効ではない */
  bool get isExpiredUseDeliveryDate =>
      throw _privateConstructorUsedError; /* 獲得条件:配布終了配達日をフォーマット変換しているためAPI側は使用可能条件:適用終了配達日を返却する ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'use_delivery_finish_datetime')
  int get epochUseDeliveryFinishDatetime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpiredCouponModelCopyWith<ExpiredCouponModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpiredCouponModelCopyWith<$Res> {
  factory $ExpiredCouponModelCopyWith(
          ExpiredCouponModel value, $Res Function(ExpiredCouponModel) then) =
      _$ExpiredCouponModelCopyWithImpl<$Res, ExpiredCouponModel>;
  @useResult
  $Res call(
      {String couponName,
      String couponCode,
      bool isDealTermExpired,
      bool isExpiredSalePrice,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'deal_finish_datetime')
          int epochDealFinishDatetime,
      int orderSalePrice,
      bool isExpiredOrderCount,
      int orderCount,
      bool isExpiredUseDeliveryDate,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'use_delivery_finish_datetime')
          int epochUseDeliveryFinishDatetime});
}

/// @nodoc
class _$ExpiredCouponModelCopyWithImpl<$Res, $Val extends ExpiredCouponModel>
    implements $ExpiredCouponModelCopyWith<$Res> {
  _$ExpiredCouponModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponName = null,
    Object? couponCode = null,
    Object? isDealTermExpired = null,
    Object? isExpiredSalePrice = null,
    Object? epochDealFinishDatetime = null,
    Object? orderSalePrice = null,
    Object? isExpiredOrderCount = null,
    Object? orderCount = null,
    Object? isExpiredUseDeliveryDate = null,
    Object? epochUseDeliveryFinishDatetime = null,
  }) {
    return _then(_value.copyWith(
      couponName: null == couponName
          ? _value.couponName
          : couponName // ignore: cast_nullable_to_non_nullable
              as String,
      couponCode: null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      isDealTermExpired: null == isDealTermExpired
          ? _value.isDealTermExpired
          : isDealTermExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      isExpiredSalePrice: null == isExpiredSalePrice
          ? _value.isExpiredSalePrice
          : isExpiredSalePrice // ignore: cast_nullable_to_non_nullable
              as bool,
      epochDealFinishDatetime: null == epochDealFinishDatetime
          ? _value.epochDealFinishDatetime
          : epochDealFinishDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      orderSalePrice: null == orderSalePrice
          ? _value.orderSalePrice
          : orderSalePrice // ignore: cast_nullable_to_non_nullable
              as int,
      isExpiredOrderCount: null == isExpiredOrderCount
          ? _value.isExpiredOrderCount
          : isExpiredOrderCount // ignore: cast_nullable_to_non_nullable
              as bool,
      orderCount: null == orderCount
          ? _value.orderCount
          : orderCount // ignore: cast_nullable_to_non_nullable
              as int,
      isExpiredUseDeliveryDate: null == isExpiredUseDeliveryDate
          ? _value.isExpiredUseDeliveryDate
          : isExpiredUseDeliveryDate // ignore: cast_nullable_to_non_nullable
              as bool,
      epochUseDeliveryFinishDatetime: null == epochUseDeliveryFinishDatetime
          ? _value.epochUseDeliveryFinishDatetime
          : epochUseDeliveryFinishDatetime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExpiredCouponModelCopyWith<$Res>
    implements $ExpiredCouponModelCopyWith<$Res> {
  factory _$$_ExpiredCouponModelCopyWith(_$_ExpiredCouponModel value,
          $Res Function(_$_ExpiredCouponModel) then) =
      __$$_ExpiredCouponModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String couponName,
      String couponCode,
      bool isDealTermExpired,
      bool isExpiredSalePrice,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'deal_finish_datetime')
          int epochDealFinishDatetime,
      int orderSalePrice,
      bool isExpiredOrderCount,
      int orderCount,
      bool isExpiredUseDeliveryDate,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'use_delivery_finish_datetime')
          int epochUseDeliveryFinishDatetime});
}

/// @nodoc
class __$$_ExpiredCouponModelCopyWithImpl<$Res>
    extends _$ExpiredCouponModelCopyWithImpl<$Res, _$_ExpiredCouponModel>
    implements _$$_ExpiredCouponModelCopyWith<$Res> {
  __$$_ExpiredCouponModelCopyWithImpl(
      _$_ExpiredCouponModel _value, $Res Function(_$_ExpiredCouponModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponName = null,
    Object? couponCode = null,
    Object? isDealTermExpired = null,
    Object? isExpiredSalePrice = null,
    Object? epochDealFinishDatetime = null,
    Object? orderSalePrice = null,
    Object? isExpiredOrderCount = null,
    Object? orderCount = null,
    Object? isExpiredUseDeliveryDate = null,
    Object? epochUseDeliveryFinishDatetime = null,
  }) {
    return _then(_$_ExpiredCouponModel(
      couponName: null == couponName
          ? _value.couponName
          : couponName // ignore: cast_nullable_to_non_nullable
              as String,
      couponCode: null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      isDealTermExpired: null == isDealTermExpired
          ? _value.isDealTermExpired
          : isDealTermExpired // ignore: cast_nullable_to_non_nullable
              as bool,
      isExpiredSalePrice: null == isExpiredSalePrice
          ? _value.isExpiredSalePrice
          : isExpiredSalePrice // ignore: cast_nullable_to_non_nullable
              as bool,
      epochDealFinishDatetime: null == epochDealFinishDatetime
          ? _value.epochDealFinishDatetime
          : epochDealFinishDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      orderSalePrice: null == orderSalePrice
          ? _value.orderSalePrice
          : orderSalePrice // ignore: cast_nullable_to_non_nullable
              as int,
      isExpiredOrderCount: null == isExpiredOrderCount
          ? _value.isExpiredOrderCount
          : isExpiredOrderCount // ignore: cast_nullable_to_non_nullable
              as bool,
      orderCount: null == orderCount
          ? _value.orderCount
          : orderCount // ignore: cast_nullable_to_non_nullable
              as int,
      isExpiredUseDeliveryDate: null == isExpiredUseDeliveryDate
          ? _value.isExpiredUseDeliveryDate
          : isExpiredUseDeliveryDate // ignore: cast_nullable_to_non_nullable
              as bool,
      epochUseDeliveryFinishDatetime: null == epochUseDeliveryFinishDatetime
          ? _value.epochUseDeliveryFinishDatetime
          : epochUseDeliveryFinishDatetime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExpiredCouponModel extends _ExpiredCouponModel {
  const _$_ExpiredCouponModel(
      {this.couponName = '',
      this.couponCode = '',
      this.isDealTermExpired = false,
      this.isExpiredSalePrice = false,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'deal_finish_datetime')
          this.epochDealFinishDatetime = 0,
      this.orderSalePrice = 0,
      this.isExpiredOrderCount = false,
      this.orderCount = 0,
      this.isExpiredUseDeliveryDate = false,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'use_delivery_finish_datetime')
          this.epochUseDeliveryFinishDatetime = 0})
      : super._();

  factory _$_ExpiredCouponModel.fromJson(Map<String, dynamic> json) =>
      _$$_ExpiredCouponModelFromJson(json);

/* クーポン名 */
  @override
  @JsonKey()
  final String couponName;
/* クーポンコード */
  @override
  @JsonKey()
  final String couponCode;
/* 配布期間超過判定を返却 - true：配布期間を超過したクーポン - false：配布期間内クーポン */
  @override
  @JsonKey()
  final bool isDealTermExpired;
/* 失効:購入金額の判定 - true：購入金額による失効である - false：購入金額による失効ではない */
  @override
  @JsonKey()
  final bool isExpiredSalePrice;
/* 獲得条件:配布期間終了日をフォーマット変換しているためAPI側は獲得条件:配布期間終了日を返却する ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'deal_finish_datetime')
  final int epochDealFinishDatetime;
/* 使用可能条件:注文購入金額 */
  @override
  @JsonKey()
  final int orderSalePrice;
/* 失効:注文回数の判定 - true：注文回数による失効である - false：注文回数による失効ではない */
  @override
  @JsonKey()
  final bool isExpiredOrderCount;
/* 獲得条件：注文数合計 */
  @override
  @JsonKey()
  final int orderCount;
/* 失効:使用解禁日の判定を返却 - true：使用解禁日による失効である - false：使用解禁日による失効ではない */
  @override
  @JsonKey()
  final bool isExpiredUseDeliveryDate;
/* 獲得条件:配布終了配達日をフォーマット変換しているためAPI側は使用可能条件:適用終了配達日を返却する ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'use_delivery_finish_datetime')
  final int epochUseDeliveryFinishDatetime;

  @override
  String toString() {
    return 'ExpiredCouponModel(couponName: $couponName, couponCode: $couponCode, isDealTermExpired: $isDealTermExpired, isExpiredSalePrice: $isExpiredSalePrice, epochDealFinishDatetime: $epochDealFinishDatetime, orderSalePrice: $orderSalePrice, isExpiredOrderCount: $isExpiredOrderCount, orderCount: $orderCount, isExpiredUseDeliveryDate: $isExpiredUseDeliveryDate, epochUseDeliveryFinishDatetime: $epochUseDeliveryFinishDatetime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpiredCouponModel &&
            (identical(other.couponName, couponName) ||
                other.couponName == couponName) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.isDealTermExpired, isDealTermExpired) ||
                other.isDealTermExpired == isDealTermExpired) &&
            (identical(other.isExpiredSalePrice, isExpiredSalePrice) ||
                other.isExpiredSalePrice == isExpiredSalePrice) &&
            (identical(
                    other.epochDealFinishDatetime, epochDealFinishDatetime) ||
                other.epochDealFinishDatetime == epochDealFinishDatetime) &&
            (identical(other.orderSalePrice, orderSalePrice) ||
                other.orderSalePrice == orderSalePrice) &&
            (identical(other.isExpiredOrderCount, isExpiredOrderCount) ||
                other.isExpiredOrderCount == isExpiredOrderCount) &&
            (identical(other.orderCount, orderCount) ||
                other.orderCount == orderCount) &&
            (identical(
                    other.isExpiredUseDeliveryDate, isExpiredUseDeliveryDate) ||
                other.isExpiredUseDeliveryDate == isExpiredUseDeliveryDate) &&
            (identical(other.epochUseDeliveryFinishDatetime,
                    epochUseDeliveryFinishDatetime) ||
                other.epochUseDeliveryFinishDatetime ==
                    epochUseDeliveryFinishDatetime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      couponName,
      couponCode,
      isDealTermExpired,
      isExpiredSalePrice,
      epochDealFinishDatetime,
      orderSalePrice,
      isExpiredOrderCount,
      orderCount,
      isExpiredUseDeliveryDate,
      epochUseDeliveryFinishDatetime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExpiredCouponModelCopyWith<_$_ExpiredCouponModel> get copyWith =>
      __$$_ExpiredCouponModelCopyWithImpl<_$_ExpiredCouponModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExpiredCouponModelToJson(
      this,
    );
  }
}

abstract class _ExpiredCouponModel extends ExpiredCouponModel {
  const factory _ExpiredCouponModel(
      {final String couponName,
      final String couponCode,
      final bool isDealTermExpired,
      final bool isExpiredSalePrice,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'deal_finish_datetime')
          final int epochDealFinishDatetime,
      final int orderSalePrice,
      final bool isExpiredOrderCount,
      final int orderCount,
      final bool isExpiredUseDeliveryDate,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'use_delivery_finish_datetime')
          final int epochUseDeliveryFinishDatetime}) = _$_ExpiredCouponModel;
  const _ExpiredCouponModel._() : super._();

  factory _ExpiredCouponModel.fromJson(Map<String, dynamic> json) =
      _$_ExpiredCouponModel.fromJson;

  @override /* クーポン名 */
  String get couponName;
  @override /* クーポンコード */
  String get couponCode;
  @override /* 配布期間超過判定を返却 - true：配布期間を超過したクーポン - false：配布期間内クーポン */
  bool get isDealTermExpired;
  @override /* 失効:購入金額の判定 - true：購入金額による失効である - false：購入金額による失効ではない */
  bool get isExpiredSalePrice;
  @override /* 獲得条件:配布期間終了日をフォーマット変換しているためAPI側は獲得条件:配布期間終了日を返却する ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'deal_finish_datetime')
  int get epochDealFinishDatetime;
  @override /* 使用可能条件:注文購入金額 */
  int get orderSalePrice;
  @override /* 失効:注文回数の判定 - true：注文回数による失効である - false：注文回数による失効ではない */
  bool get isExpiredOrderCount;
  @override /* 獲得条件：注文数合計 */
  int get orderCount;
  @override /* 失効:使用解禁日の判定を返却 - true：使用解禁日による失効である - false：使用解禁日による失効ではない */
  bool get isExpiredUseDeliveryDate;
  @override /* 獲得条件:配布終了配達日をフォーマット変換しているためAPI側は使用可能条件:適用終了配達日を返却する ※yyyy-MM-ddTHH:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'use_delivery_finish_datetime')
  int get epochUseDeliveryFinishDatetime;
  @override
  @JsonKey(ignore: true)
  _$$_ExpiredCouponModelCopyWith<_$_ExpiredCouponModel> get copyWith =>
      throw _privateConstructorUsedError;
}
