// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_deal_coupon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerDealCouponModel _$CustomerDealCouponModelFromJson(
    Map<String, dynamic> json) {
  return _CustomerDealCouponModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerDealCouponModel {
/* 適用開始配達日をフォーマット変換しているためAPI側は適用開始配達日を返却する ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'use_delivery_start_datetime')
  int get epochUseDeliveryStartDatetime =>
      throw _privateConstructorUsedError; /* クーポン名 */
  String get couponName => throw _privateConstructorUsedError; /* クーポンコード */
  String get couponCode =>
      throw _privateConstructorUsedError; /* 1日限定判定 true：使用出来るのは1日限り false：複数日の期間あり */
  bool get isLimitedUseOneDay =>
      throw _privateConstructorUsedError; /* 適用終了配達日をフォーマット変換しているためAPI側は使用可能条件:適用終了配達日を返却 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'use_delivery_finish_datetime')
  int get epochUseDeliveryFinishDatetime =>
      throw _privateConstructorUsedError; /* クーポン残り使用回数を返却 */
  String get couponUseRemainingNumber =>
      throw _privateConstructorUsedError; /* クーポン注意事項 */
  String get couponGuide => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerDealCouponModelCopyWith<CustomerDealCouponModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDealCouponModelCopyWith<$Res> {
  factory $CustomerDealCouponModelCopyWith(CustomerDealCouponModel value,
          $Res Function(CustomerDealCouponModel) then) =
      _$CustomerDealCouponModelCopyWithImpl<$Res, CustomerDealCouponModel>;
  @useResult
  $Res call(
      {@StringToEpochTimeConverter()
      @JsonKey(name: 'use_delivery_start_datetime')
          int epochUseDeliveryStartDatetime,
      String couponName,
      String couponCode,
      bool isLimitedUseOneDay,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'use_delivery_finish_datetime')
          int epochUseDeliveryFinishDatetime,
      String couponUseRemainingNumber,
      String couponGuide});
}

/// @nodoc
class _$CustomerDealCouponModelCopyWithImpl<$Res,
        $Val extends CustomerDealCouponModel>
    implements $CustomerDealCouponModelCopyWith<$Res> {
  _$CustomerDealCouponModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epochUseDeliveryStartDatetime = null,
    Object? couponName = null,
    Object? couponCode = null,
    Object? isLimitedUseOneDay = null,
    Object? epochUseDeliveryFinishDatetime = null,
    Object? couponUseRemainingNumber = null,
    Object? couponGuide = null,
  }) {
    return _then(_value.copyWith(
      epochUseDeliveryStartDatetime: null == epochUseDeliveryStartDatetime
          ? _value.epochUseDeliveryStartDatetime
          : epochUseDeliveryStartDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      couponName: null == couponName
          ? _value.couponName
          : couponName // ignore: cast_nullable_to_non_nullable
              as String,
      couponCode: null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      isLimitedUseOneDay: null == isLimitedUseOneDay
          ? _value.isLimitedUseOneDay
          : isLimitedUseOneDay // ignore: cast_nullable_to_non_nullable
              as bool,
      epochUseDeliveryFinishDatetime: null == epochUseDeliveryFinishDatetime
          ? _value.epochUseDeliveryFinishDatetime
          : epochUseDeliveryFinishDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      couponUseRemainingNumber: null == couponUseRemainingNumber
          ? _value.couponUseRemainingNumber
          : couponUseRemainingNumber // ignore: cast_nullable_to_non_nullable
              as String,
      couponGuide: null == couponGuide
          ? _value.couponGuide
          : couponGuide // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerDealCouponModelCopyWith<$Res>
    implements $CustomerDealCouponModelCopyWith<$Res> {
  factory _$$_CustomerDealCouponModelCopyWith(_$_CustomerDealCouponModel value,
          $Res Function(_$_CustomerDealCouponModel) then) =
      __$$_CustomerDealCouponModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@StringToEpochTimeConverter()
      @JsonKey(name: 'use_delivery_start_datetime')
          int epochUseDeliveryStartDatetime,
      String couponName,
      String couponCode,
      bool isLimitedUseOneDay,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'use_delivery_finish_datetime')
          int epochUseDeliveryFinishDatetime,
      String couponUseRemainingNumber,
      String couponGuide});
}

/// @nodoc
class __$$_CustomerDealCouponModelCopyWithImpl<$Res>
    extends _$CustomerDealCouponModelCopyWithImpl<$Res,
        _$_CustomerDealCouponModel>
    implements _$$_CustomerDealCouponModelCopyWith<$Res> {
  __$$_CustomerDealCouponModelCopyWithImpl(_$_CustomerDealCouponModel _value,
      $Res Function(_$_CustomerDealCouponModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epochUseDeliveryStartDatetime = null,
    Object? couponName = null,
    Object? couponCode = null,
    Object? isLimitedUseOneDay = null,
    Object? epochUseDeliveryFinishDatetime = null,
    Object? couponUseRemainingNumber = null,
    Object? couponGuide = null,
  }) {
    return _then(_$_CustomerDealCouponModel(
      epochUseDeliveryStartDatetime: null == epochUseDeliveryStartDatetime
          ? _value.epochUseDeliveryStartDatetime
          : epochUseDeliveryStartDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      couponName: null == couponName
          ? _value.couponName
          : couponName // ignore: cast_nullable_to_non_nullable
              as String,
      couponCode: null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      isLimitedUseOneDay: null == isLimitedUseOneDay
          ? _value.isLimitedUseOneDay
          : isLimitedUseOneDay // ignore: cast_nullable_to_non_nullable
              as bool,
      epochUseDeliveryFinishDatetime: null == epochUseDeliveryFinishDatetime
          ? _value.epochUseDeliveryFinishDatetime
          : epochUseDeliveryFinishDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      couponUseRemainingNumber: null == couponUseRemainingNumber
          ? _value.couponUseRemainingNumber
          : couponUseRemainingNumber // ignore: cast_nullable_to_non_nullable
              as String,
      couponGuide: null == couponGuide
          ? _value.couponGuide
          : couponGuide // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerDealCouponModel extends _CustomerDealCouponModel {
  const _$_CustomerDealCouponModel(
      {@StringToEpochTimeConverter()
      @JsonKey(name: 'use_delivery_start_datetime')
          this.epochUseDeliveryStartDatetime = 0,
      this.couponName = '',
      this.couponCode = '',
      this.isLimitedUseOneDay = false,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'use_delivery_finish_datetime')
          this.epochUseDeliveryFinishDatetime = 0,
      this.couponUseRemainingNumber = '',
      this.couponGuide = ''})
      : super._();

  factory _$_CustomerDealCouponModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerDealCouponModelFromJson(json);

/* 適用開始配達日をフォーマット変換しているためAPI側は適用開始配達日を返却する ※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'use_delivery_start_datetime')
  final int epochUseDeliveryStartDatetime;
/* クーポン名 */
  @override
  @JsonKey()
  final String couponName;
/* クーポンコード */
  @override
  @JsonKey()
  final String couponCode;
/* 1日限定判定 true：使用出来るのは1日限り false：複数日の期間あり */
  @override
  @JsonKey()
  final bool isLimitedUseOneDay;
/* 適用終了配達日をフォーマット変換しているためAPI側は使用可能条件:適用終了配達日を返却 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'use_delivery_finish_datetime')
  final int epochUseDeliveryFinishDatetime;
/* クーポン残り使用回数を返却 */
  @override
  @JsonKey()
  final String couponUseRemainingNumber;
/* クーポン注意事項 */
  @override
  @JsonKey()
  final String couponGuide;

  @override
  String toString() {
    return 'CustomerDealCouponModel(epochUseDeliveryStartDatetime: $epochUseDeliveryStartDatetime, couponName: $couponName, couponCode: $couponCode, isLimitedUseOneDay: $isLimitedUseOneDay, epochUseDeliveryFinishDatetime: $epochUseDeliveryFinishDatetime, couponUseRemainingNumber: $couponUseRemainingNumber, couponGuide: $couponGuide)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerDealCouponModel &&
            (identical(other.epochUseDeliveryStartDatetime,
                    epochUseDeliveryStartDatetime) ||
                other.epochUseDeliveryStartDatetime ==
                    epochUseDeliveryStartDatetime) &&
            (identical(other.couponName, couponName) ||
                other.couponName == couponName) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.isLimitedUseOneDay, isLimitedUseOneDay) ||
                other.isLimitedUseOneDay == isLimitedUseOneDay) &&
            (identical(other.epochUseDeliveryFinishDatetime,
                    epochUseDeliveryFinishDatetime) ||
                other.epochUseDeliveryFinishDatetime ==
                    epochUseDeliveryFinishDatetime) &&
            (identical(
                    other.couponUseRemainingNumber, couponUseRemainingNumber) ||
                other.couponUseRemainingNumber == couponUseRemainingNumber) &&
            (identical(other.couponGuide, couponGuide) ||
                other.couponGuide == couponGuide));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      epochUseDeliveryStartDatetime,
      couponName,
      couponCode,
      isLimitedUseOneDay,
      epochUseDeliveryFinishDatetime,
      couponUseRemainingNumber,
      couponGuide);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerDealCouponModelCopyWith<_$_CustomerDealCouponModel>
      get copyWith =>
          __$$_CustomerDealCouponModelCopyWithImpl<_$_CustomerDealCouponModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerDealCouponModelToJson(
      this,
    );
  }
}

abstract class _CustomerDealCouponModel extends CustomerDealCouponModel {
  const factory _CustomerDealCouponModel(
      {@StringToEpochTimeConverter()
      @JsonKey(name: 'use_delivery_start_datetime')
          final int epochUseDeliveryStartDatetime,
      final String couponName,
      final String couponCode,
      final bool isLimitedUseOneDay,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'use_delivery_finish_datetime')
          final int epochUseDeliveryFinishDatetime,
      final String couponUseRemainingNumber,
      final String couponGuide}) = _$_CustomerDealCouponModel;
  const _CustomerDealCouponModel._() : super._();

  factory _CustomerDealCouponModel.fromJson(Map<String, dynamic> json) =
      _$_CustomerDealCouponModel.fromJson;

  @override /* 適用開始配達日をフォーマット変換しているためAPI側は適用開始配達日を返却する ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'use_delivery_start_datetime')
  int get epochUseDeliveryStartDatetime;
  @override /* クーポン名 */
  String get couponName;
  @override /* クーポンコード */
  String get couponCode;
  @override /* 1日限定判定 true：使用出来るのは1日限り false：複数日の期間あり */
  bool get isLimitedUseOneDay;
  @override /* 適用終了配達日をフォーマット変換しているためAPI側は使用可能条件:適用終了配達日を返却 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'use_delivery_finish_datetime')
  int get epochUseDeliveryFinishDatetime;
  @override /* クーポン残り使用回数を返却 */
  String get couponUseRemainingNumber;
  @override /* クーポン注意事項 */
  String get couponGuide;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerDealCouponModelCopyWith<_$_CustomerDealCouponModel>
      get copyWith => throw _privateConstructorUsedError;
}
