// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tax_price_information_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaxPriceInformationModel _$TaxPriceInformationModelFromJson(
    Map<String, dynamic> json) {
  return _TaxPriceInformationModel.fromJson(json);
}

/// @nodoc
mixin _$TaxPriceInformationModel {
/* 非課税情報判定  ``` true：非課税情報である false：非課税情報でない ``` */
  bool get isTaxExempt => throw _privateConstructorUsedError; /* 課税対象額 */
  int get taxationPrice => throw _privateConstructorUsedError; /* 税率（％） */
  int get taxRate => throw _privateConstructorUsedError; /* 税額 */
  int get taxIncludedPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaxPriceInformationModelCopyWith<TaxPriceInformationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxPriceInformationModelCopyWith<$Res> {
  factory $TaxPriceInformationModelCopyWith(TaxPriceInformationModel value,
          $Res Function(TaxPriceInformationModel) then) =
      _$TaxPriceInformationModelCopyWithImpl<$Res, TaxPriceInformationModel>;
  @useResult
  $Res call(
      {bool isTaxExempt, int taxationPrice, int taxRate, int taxIncludedPrice});
}

/// @nodoc
class _$TaxPriceInformationModelCopyWithImpl<$Res,
        $Val extends TaxPriceInformationModel>
    implements $TaxPriceInformationModelCopyWith<$Res> {
  _$TaxPriceInformationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTaxExempt = null,
    Object? taxationPrice = null,
    Object? taxRate = null,
    Object? taxIncludedPrice = null,
  }) {
    return _then(_value.copyWith(
      isTaxExempt: null == isTaxExempt
          ? _value.isTaxExempt
          : isTaxExempt // ignore: cast_nullable_to_non_nullable
              as bool,
      taxationPrice: null == taxationPrice
          ? _value.taxationPrice
          : taxationPrice // ignore: cast_nullable_to_non_nullable
              as int,
      taxRate: null == taxRate
          ? _value.taxRate
          : taxRate // ignore: cast_nullable_to_non_nullable
              as int,
      taxIncludedPrice: null == taxIncludedPrice
          ? _value.taxIncludedPrice
          : taxIncludedPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaxPriceInformationModelCopyWith<$Res>
    implements $TaxPriceInformationModelCopyWith<$Res> {
  factory _$$_TaxPriceInformationModelCopyWith(
          _$_TaxPriceInformationModel value,
          $Res Function(_$_TaxPriceInformationModel) then) =
      __$$_TaxPriceInformationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isTaxExempt, int taxationPrice, int taxRate, int taxIncludedPrice});
}

/// @nodoc
class __$$_TaxPriceInformationModelCopyWithImpl<$Res>
    extends _$TaxPriceInformationModelCopyWithImpl<$Res,
        _$_TaxPriceInformationModel>
    implements _$$_TaxPriceInformationModelCopyWith<$Res> {
  __$$_TaxPriceInformationModelCopyWithImpl(_$_TaxPriceInformationModel _value,
      $Res Function(_$_TaxPriceInformationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTaxExempt = null,
    Object? taxationPrice = null,
    Object? taxRate = null,
    Object? taxIncludedPrice = null,
  }) {
    return _then(_$_TaxPriceInformationModel(
      isTaxExempt: null == isTaxExempt
          ? _value.isTaxExempt
          : isTaxExempt // ignore: cast_nullable_to_non_nullable
              as bool,
      taxationPrice: null == taxationPrice
          ? _value.taxationPrice
          : taxationPrice // ignore: cast_nullable_to_non_nullable
              as int,
      taxRate: null == taxRate
          ? _value.taxRate
          : taxRate // ignore: cast_nullable_to_non_nullable
              as int,
      taxIncludedPrice: null == taxIncludedPrice
          ? _value.taxIncludedPrice
          : taxIncludedPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaxPriceInformationModel implements _TaxPriceInformationModel {
  const _$_TaxPriceInformationModel(
      {this.isTaxExempt = false,
      this.taxationPrice = 0,
      this.taxRate = 0,
      this.taxIncludedPrice = 0});

  factory _$_TaxPriceInformationModel.fromJson(Map<String, dynamic> json) =>
      _$$_TaxPriceInformationModelFromJson(json);

/* 非課税情報判定  ``` true：非課税情報である false：非課税情報でない ``` */
  @override
  @JsonKey()
  final bool isTaxExempt;
/* 課税対象額 */
  @override
  @JsonKey()
  final int taxationPrice;
/* 税率（％） */
  @override
  @JsonKey()
  final int taxRate;
/* 税額 */
  @override
  @JsonKey()
  final int taxIncludedPrice;

  @override
  String toString() {
    return 'TaxPriceInformationModel(isTaxExempt: $isTaxExempt, taxationPrice: $taxationPrice, taxRate: $taxRate, taxIncludedPrice: $taxIncludedPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaxPriceInformationModel &&
            (identical(other.isTaxExempt, isTaxExempt) ||
                other.isTaxExempt == isTaxExempt) &&
            (identical(other.taxationPrice, taxationPrice) ||
                other.taxationPrice == taxationPrice) &&
            (identical(other.taxRate, taxRate) || other.taxRate == taxRate) &&
            (identical(other.taxIncludedPrice, taxIncludedPrice) ||
                other.taxIncludedPrice == taxIncludedPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, isTaxExempt, taxationPrice, taxRate, taxIncludedPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaxPriceInformationModelCopyWith<_$_TaxPriceInformationModel>
      get copyWith => __$$_TaxPriceInformationModelCopyWithImpl<
          _$_TaxPriceInformationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaxPriceInformationModelToJson(
      this,
    );
  }
}

abstract class _TaxPriceInformationModel implements TaxPriceInformationModel {
  const factory _TaxPriceInformationModel(
      {final bool isTaxExempt,
      final int taxationPrice,
      final int taxRate,
      final int taxIncludedPrice}) = _$_TaxPriceInformationModel;

  factory _TaxPriceInformationModel.fromJson(Map<String, dynamic> json) =
      _$_TaxPriceInformationModel.fromJson;

  @override /* 非課税情報判定  ``` true：非課税情報である false：非課税情報でない ``` */
  bool get isTaxExempt;
  @override /* 課税対象額 */
  int get taxationPrice;
  @override /* 税率（％） */
  int get taxRate;
  @override /* 税額 */
  int get taxIncludedPrice;
  @override
  @JsonKey(ignore: true)
  _$$_TaxPriceInformationModelCopyWith<_$_TaxPriceInformationModel>
      get copyWith => throw _privateConstructorUsedError;
}
