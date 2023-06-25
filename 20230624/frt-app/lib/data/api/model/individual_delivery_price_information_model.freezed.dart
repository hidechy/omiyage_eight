// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'individual_delivery_price_information_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IndividualDeliveryPriceInformationModel
    _$IndividualDeliveryPriceInformationModelFromJson(
        Map<String, dynamic> json) {
  return _IndividualDeliveryPriceInformationModel.fromJson(json);
}

/// @nodoc
mixin _$IndividualDeliveryPriceInformationModel {
/* 配達料キャンペーン名 */
  String get individualDeliveryName =>
      throw _privateConstructorUsedError; /* 個別配達料種別 ``` \"1\"：固定額 \"2\"：%割引 */
  IndividualDeliveryPriceType get individualDeliveryPriceType =>
      throw _privateConstructorUsedError; /* 個別配達料 */
  int get individualDeliveryPrice =>
      throw _privateConstructorUsedError; /* 個別配達料-割引率 */
  int get individualDeliveryDiscountRate =>
      throw _privateConstructorUsedError; /* 配送種別開始日 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_type_start_datetime')
  int get epochDeliveryTypeStartDatetime =>
      throw _privateConstructorUsedError; /* 配送種別終了日 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_type_finish_datetime')
  int get epochDeliveryTypeFinishDatetime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndividualDeliveryPriceInformationModelCopyWith<
          IndividualDeliveryPriceInformationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndividualDeliveryPriceInformationModelCopyWith<$Res> {
  factory $IndividualDeliveryPriceInformationModelCopyWith(
          IndividualDeliveryPriceInformationModel value,
          $Res Function(IndividualDeliveryPriceInformationModel) then) =
      _$IndividualDeliveryPriceInformationModelCopyWithImpl<$Res,
          IndividualDeliveryPriceInformationModel>;
  @useResult
  $Res call(
      {String individualDeliveryName,
      IndividualDeliveryPriceType individualDeliveryPriceType,
      int individualDeliveryPrice,
      int individualDeliveryDiscountRate,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_type_start_datetime')
          int epochDeliveryTypeStartDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_type_finish_datetime')
          int epochDeliveryTypeFinishDatetime});
}

/// @nodoc
class _$IndividualDeliveryPriceInformationModelCopyWithImpl<$Res,
        $Val extends IndividualDeliveryPriceInformationModel>
    implements $IndividualDeliveryPriceInformationModelCopyWith<$Res> {
  _$IndividualDeliveryPriceInformationModelCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? individualDeliveryName = null,
    Object? individualDeliveryPriceType = null,
    Object? individualDeliveryPrice = null,
    Object? individualDeliveryDiscountRate = null,
    Object? epochDeliveryTypeStartDatetime = null,
    Object? epochDeliveryTypeFinishDatetime = null,
  }) {
    return _then(_value.copyWith(
      individualDeliveryName: null == individualDeliveryName
          ? _value.individualDeliveryName
          : individualDeliveryName // ignore: cast_nullable_to_non_nullable
              as String,
      individualDeliveryPriceType: null == individualDeliveryPriceType
          ? _value.individualDeliveryPriceType
          : individualDeliveryPriceType // ignore: cast_nullable_to_non_nullable
              as IndividualDeliveryPriceType,
      individualDeliveryPrice: null == individualDeliveryPrice
          ? _value.individualDeliveryPrice
          : individualDeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      individualDeliveryDiscountRate: null == individualDeliveryDiscountRate
          ? _value.individualDeliveryDiscountRate
          : individualDeliveryDiscountRate // ignore: cast_nullable_to_non_nullable
              as int,
      epochDeliveryTypeStartDatetime: null == epochDeliveryTypeStartDatetime
          ? _value.epochDeliveryTypeStartDatetime
          : epochDeliveryTypeStartDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochDeliveryTypeFinishDatetime: null == epochDeliveryTypeFinishDatetime
          ? _value.epochDeliveryTypeFinishDatetime
          : epochDeliveryTypeFinishDatetime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IndividualDeliveryPriceInformationModelCopyWith<$Res>
    implements $IndividualDeliveryPriceInformationModelCopyWith<$Res> {
  factory _$$_IndividualDeliveryPriceInformationModelCopyWith(
          _$_IndividualDeliveryPriceInformationModel value,
          $Res Function(_$_IndividualDeliveryPriceInformationModel) then) =
      __$$_IndividualDeliveryPriceInformationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String individualDeliveryName,
      IndividualDeliveryPriceType individualDeliveryPriceType,
      int individualDeliveryPrice,
      int individualDeliveryDiscountRate,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_type_start_datetime')
          int epochDeliveryTypeStartDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_type_finish_datetime')
          int epochDeliveryTypeFinishDatetime});
}

/// @nodoc
class __$$_IndividualDeliveryPriceInformationModelCopyWithImpl<$Res>
    extends _$IndividualDeliveryPriceInformationModelCopyWithImpl<$Res,
        _$_IndividualDeliveryPriceInformationModel>
    implements _$$_IndividualDeliveryPriceInformationModelCopyWith<$Res> {
  __$$_IndividualDeliveryPriceInformationModelCopyWithImpl(
      _$_IndividualDeliveryPriceInformationModel _value,
      $Res Function(_$_IndividualDeliveryPriceInformationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? individualDeliveryName = null,
    Object? individualDeliveryPriceType = null,
    Object? individualDeliveryPrice = null,
    Object? individualDeliveryDiscountRate = null,
    Object? epochDeliveryTypeStartDatetime = null,
    Object? epochDeliveryTypeFinishDatetime = null,
  }) {
    return _then(_$_IndividualDeliveryPriceInformationModel(
      individualDeliveryName: null == individualDeliveryName
          ? _value.individualDeliveryName
          : individualDeliveryName // ignore: cast_nullable_to_non_nullable
              as String,
      individualDeliveryPriceType: null == individualDeliveryPriceType
          ? _value.individualDeliveryPriceType
          : individualDeliveryPriceType // ignore: cast_nullable_to_non_nullable
              as IndividualDeliveryPriceType,
      individualDeliveryPrice: null == individualDeliveryPrice
          ? _value.individualDeliveryPrice
          : individualDeliveryPrice // ignore: cast_nullable_to_non_nullable
              as int,
      individualDeliveryDiscountRate: null == individualDeliveryDiscountRate
          ? _value.individualDeliveryDiscountRate
          : individualDeliveryDiscountRate // ignore: cast_nullable_to_non_nullable
              as int,
      epochDeliveryTypeStartDatetime: null == epochDeliveryTypeStartDatetime
          ? _value.epochDeliveryTypeStartDatetime
          : epochDeliveryTypeStartDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochDeliveryTypeFinishDatetime: null == epochDeliveryTypeFinishDatetime
          ? _value.epochDeliveryTypeFinishDatetime
          : epochDeliveryTypeFinishDatetime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IndividualDeliveryPriceInformationModel
    extends _IndividualDeliveryPriceInformationModel {
  const _$_IndividualDeliveryPriceInformationModel(
      {this.individualDeliveryName = '',
      this.individualDeliveryPriceType =
          IndividualDeliveryPriceType.fixedAmount,
      this.individualDeliveryPrice = 0,
      this.individualDeliveryDiscountRate = 0,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_type_start_datetime')
          this.epochDeliveryTypeStartDatetime = 0,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_type_finish_datetime')
          this.epochDeliveryTypeFinishDatetime = 0})
      : super._();

  factory _$_IndividualDeliveryPriceInformationModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_IndividualDeliveryPriceInformationModelFromJson(json);

/* 配達料キャンペーン名 */
  @override
  @JsonKey()
  final String individualDeliveryName;
/* 個別配達料種別 ``` \"1\"：固定額 \"2\"：%割引 */
  @override
  @JsonKey()
  final IndividualDeliveryPriceType individualDeliveryPriceType;
/* 個別配達料 */
  @override
  @JsonKey()
  final int individualDeliveryPrice;
/* 個別配達料-割引率 */
  @override
  @JsonKey()
  final int individualDeliveryDiscountRate;
/* 配送種別開始日 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_type_start_datetime')
  final int epochDeliveryTypeStartDatetime;
/* 配送種別終了日 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_type_finish_datetime')
  final int epochDeliveryTypeFinishDatetime;

  @override
  String toString() {
    return 'IndividualDeliveryPriceInformationModel(individualDeliveryName: $individualDeliveryName, individualDeliveryPriceType: $individualDeliveryPriceType, individualDeliveryPrice: $individualDeliveryPrice, individualDeliveryDiscountRate: $individualDeliveryDiscountRate, epochDeliveryTypeStartDatetime: $epochDeliveryTypeStartDatetime, epochDeliveryTypeFinishDatetime: $epochDeliveryTypeFinishDatetime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IndividualDeliveryPriceInformationModel &&
            (identical(other.individualDeliveryName, individualDeliveryName) ||
                other.individualDeliveryName == individualDeliveryName) &&
            (identical(other.individualDeliveryPriceType,
                    individualDeliveryPriceType) ||
                other.individualDeliveryPriceType ==
                    individualDeliveryPriceType) &&
            (identical(
                    other.individualDeliveryPrice, individualDeliveryPrice) ||
                other.individualDeliveryPrice == individualDeliveryPrice) &&
            (identical(other.individualDeliveryDiscountRate,
                    individualDeliveryDiscountRate) ||
                other.individualDeliveryDiscountRate ==
                    individualDeliveryDiscountRate) &&
            (identical(other.epochDeliveryTypeStartDatetime,
                    epochDeliveryTypeStartDatetime) ||
                other.epochDeliveryTypeStartDatetime ==
                    epochDeliveryTypeStartDatetime) &&
            (identical(other.epochDeliveryTypeFinishDatetime,
                    epochDeliveryTypeFinishDatetime) ||
                other.epochDeliveryTypeFinishDatetime ==
                    epochDeliveryTypeFinishDatetime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      individualDeliveryName,
      individualDeliveryPriceType,
      individualDeliveryPrice,
      individualDeliveryDiscountRate,
      epochDeliveryTypeStartDatetime,
      epochDeliveryTypeFinishDatetime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IndividualDeliveryPriceInformationModelCopyWith<
          _$_IndividualDeliveryPriceInformationModel>
      get copyWith => __$$_IndividualDeliveryPriceInformationModelCopyWithImpl<
          _$_IndividualDeliveryPriceInformationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IndividualDeliveryPriceInformationModelToJson(
      this,
    );
  }
}

abstract class _IndividualDeliveryPriceInformationModel
    extends IndividualDeliveryPriceInformationModel {
  const factory _IndividualDeliveryPriceInformationModel(
          {final String individualDeliveryName,
          final IndividualDeliveryPriceType individualDeliveryPriceType,
          final int individualDeliveryPrice,
          final int individualDeliveryDiscountRate,
          @StringToEpochTimeConverter()
          @JsonKey(name: 'delivery_type_start_datetime')
              final int epochDeliveryTypeStartDatetime,
          @StringToEpochTimeConverter()
          @JsonKey(name: 'delivery_type_finish_datetime')
              final int epochDeliveryTypeFinishDatetime}) =
      _$_IndividualDeliveryPriceInformationModel;
  const _IndividualDeliveryPriceInformationModel._() : super._();

  factory _IndividualDeliveryPriceInformationModel.fromJson(
          Map<String, dynamic> json) =
      _$_IndividualDeliveryPriceInformationModel.fromJson;

  @override /* 配達料キャンペーン名 */
  String get individualDeliveryName;
  @override /* 個別配達料種別 ``` \"1\"：固定額 \"2\"：%割引 */
  IndividualDeliveryPriceType get individualDeliveryPriceType;
  @override /* 個別配達料 */
  int get individualDeliveryPrice;
  @override /* 個別配達料-割引率 */
  int get individualDeliveryDiscountRate;
  @override /* 配送種別開始日 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_type_start_datetime')
  int get epochDeliveryTypeStartDatetime;
  @override /* 配送種別終了日 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_type_finish_datetime')
  int get epochDeliveryTypeFinishDatetime;
  @override
  @JsonKey(ignore: true)
  _$$_IndividualDeliveryPriceInformationModelCopyWith<
          _$_IndividualDeliveryPriceInformationModel>
      get copyWith => throw _privateConstructorUsedError;
}
