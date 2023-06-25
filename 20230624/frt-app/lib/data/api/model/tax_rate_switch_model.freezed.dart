// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tax_rate_switch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaxRateSwitchModel _$TaxRateSwitchModelFromJson(Map<String, dynamic> json) {
  return _TaxRateSwitchModel.fromJson(json);
}

/// @nodoc
mixin _$TaxRateSwitchModel {
/* 新税率金額表示フラグ - true：新税率を利用する - false：旧税率を利用する */
  bool get isDisplayNewTaxPrice => throw _privateConstructorUsedError; /* 旧税率 */
  int get oldTaxRate => throw _privateConstructorUsedError; /* 新税率 */
  int get newTaxRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaxRateSwitchModelCopyWith<TaxRateSwitchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxRateSwitchModelCopyWith<$Res> {
  factory $TaxRateSwitchModelCopyWith(
          TaxRateSwitchModel value, $Res Function(TaxRateSwitchModel) then) =
      _$TaxRateSwitchModelCopyWithImpl<$Res, TaxRateSwitchModel>;
  @useResult
  $Res call({bool isDisplayNewTaxPrice, int oldTaxRate, int newTaxRate});
}

/// @nodoc
class _$TaxRateSwitchModelCopyWithImpl<$Res, $Val extends TaxRateSwitchModel>
    implements $TaxRateSwitchModelCopyWith<$Res> {
  _$TaxRateSwitchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisplayNewTaxPrice = null,
    Object? oldTaxRate = null,
    Object? newTaxRate = null,
  }) {
    return _then(_value.copyWith(
      isDisplayNewTaxPrice: null == isDisplayNewTaxPrice
          ? _value.isDisplayNewTaxPrice
          : isDisplayNewTaxPrice // ignore: cast_nullable_to_non_nullable
              as bool,
      oldTaxRate: null == oldTaxRate
          ? _value.oldTaxRate
          : oldTaxRate // ignore: cast_nullable_to_non_nullable
              as int,
      newTaxRate: null == newTaxRate
          ? _value.newTaxRate
          : newTaxRate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaxRateSwitchModelCopyWith<$Res>
    implements $TaxRateSwitchModelCopyWith<$Res> {
  factory _$$_TaxRateSwitchModelCopyWith(_$_TaxRateSwitchModel value,
          $Res Function(_$_TaxRateSwitchModel) then) =
      __$$_TaxRateSwitchModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDisplayNewTaxPrice, int oldTaxRate, int newTaxRate});
}

/// @nodoc
class __$$_TaxRateSwitchModelCopyWithImpl<$Res>
    extends _$TaxRateSwitchModelCopyWithImpl<$Res, _$_TaxRateSwitchModel>
    implements _$$_TaxRateSwitchModelCopyWith<$Res> {
  __$$_TaxRateSwitchModelCopyWithImpl(
      _$_TaxRateSwitchModel _value, $Res Function(_$_TaxRateSwitchModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisplayNewTaxPrice = null,
    Object? oldTaxRate = null,
    Object? newTaxRate = null,
  }) {
    return _then(_$_TaxRateSwitchModel(
      isDisplayNewTaxPrice: null == isDisplayNewTaxPrice
          ? _value.isDisplayNewTaxPrice
          : isDisplayNewTaxPrice // ignore: cast_nullable_to_non_nullable
              as bool,
      oldTaxRate: null == oldTaxRate
          ? _value.oldTaxRate
          : oldTaxRate // ignore: cast_nullable_to_non_nullable
              as int,
      newTaxRate: null == newTaxRate
          ? _value.newTaxRate
          : newTaxRate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaxRateSwitchModel implements _TaxRateSwitchModel {
  const _$_TaxRateSwitchModel(
      {this.isDisplayNewTaxPrice = false,
      this.oldTaxRate = 0,
      this.newTaxRate = 0});

  factory _$_TaxRateSwitchModel.fromJson(Map<String, dynamic> json) =>
      _$$_TaxRateSwitchModelFromJson(json);

/* 新税率金額表示フラグ - true：新税率を利用する - false：旧税率を利用する */
  @override
  @JsonKey()
  final bool isDisplayNewTaxPrice;
/* 旧税率 */
  @override
  @JsonKey()
  final int oldTaxRate;
/* 新税率 */
  @override
  @JsonKey()
  final int newTaxRate;

  @override
  String toString() {
    return 'TaxRateSwitchModel(isDisplayNewTaxPrice: $isDisplayNewTaxPrice, oldTaxRate: $oldTaxRate, newTaxRate: $newTaxRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaxRateSwitchModel &&
            (identical(other.isDisplayNewTaxPrice, isDisplayNewTaxPrice) ||
                other.isDisplayNewTaxPrice == isDisplayNewTaxPrice) &&
            (identical(other.oldTaxRate, oldTaxRate) ||
                other.oldTaxRate == oldTaxRate) &&
            (identical(other.newTaxRate, newTaxRate) ||
                other.newTaxRate == newTaxRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isDisplayNewTaxPrice, oldTaxRate, newTaxRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaxRateSwitchModelCopyWith<_$_TaxRateSwitchModel> get copyWith =>
      __$$_TaxRateSwitchModelCopyWithImpl<_$_TaxRateSwitchModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaxRateSwitchModelToJson(
      this,
    );
  }
}

abstract class _TaxRateSwitchModel implements TaxRateSwitchModel {
  const factory _TaxRateSwitchModel(
      {final bool isDisplayNewTaxPrice,
      final int oldTaxRate,
      final int newTaxRate}) = _$_TaxRateSwitchModel;

  factory _TaxRateSwitchModel.fromJson(Map<String, dynamic> json) =
      _$_TaxRateSwitchModel.fromJson;

  @override /* 新税率金額表示フラグ - true：新税率を利用する - false：旧税率を利用する */
  bool get isDisplayNewTaxPrice;
  @override /* 旧税率 */
  int get oldTaxRate;
  @override /* 新税率 */
  int get newTaxRate;
  @override
  @JsonKey(ignore: true)
  _$$_TaxRateSwitchModelCopyWith<_$_TaxRateSwitchModel> get copyWith =>
      throw _privateConstructorUsedError;
}
