// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_price_information_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CancelPriceInformationModel _$CancelPriceInformationModelFromJson(
    Map<String, dynamic> json) {
  return _CancelPriceInformationModel.fromJson(json);
}

/// @nodoc
mixin _$CancelPriceInformationModel {
/* キャンセル日　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'cancel_datetime')
  int get epochCancelDatetime =>
      throw _privateConstructorUsedError; /* キャンセル料(税込) */
  int get cancelPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CancelPriceInformationModelCopyWith<CancelPriceInformationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelPriceInformationModelCopyWith<$Res> {
  factory $CancelPriceInformationModelCopyWith(
          CancelPriceInformationModel value,
          $Res Function(CancelPriceInformationModel) then) =
      _$CancelPriceInformationModelCopyWithImpl<$Res,
          CancelPriceInformationModel>;
  @useResult
  $Res call(
      {@StringToEpochTimeConverter()
      @JsonKey(name: 'cancel_datetime')
          int epochCancelDatetime,
      int cancelPrice});
}

/// @nodoc
class _$CancelPriceInformationModelCopyWithImpl<$Res,
        $Val extends CancelPriceInformationModel>
    implements $CancelPriceInformationModelCopyWith<$Res> {
  _$CancelPriceInformationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epochCancelDatetime = null,
    Object? cancelPrice = null,
  }) {
    return _then(_value.copyWith(
      epochCancelDatetime: null == epochCancelDatetime
          ? _value.epochCancelDatetime
          : epochCancelDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      cancelPrice: null == cancelPrice
          ? _value.cancelPrice
          : cancelPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CancelPriceInformationModelCopyWith<$Res>
    implements $CancelPriceInformationModelCopyWith<$Res> {
  factory _$$_CancelPriceInformationModelCopyWith(
          _$_CancelPriceInformationModel value,
          $Res Function(_$_CancelPriceInformationModel) then) =
      __$$_CancelPriceInformationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@StringToEpochTimeConverter()
      @JsonKey(name: 'cancel_datetime')
          int epochCancelDatetime,
      int cancelPrice});
}

/// @nodoc
class __$$_CancelPriceInformationModelCopyWithImpl<$Res>
    extends _$CancelPriceInformationModelCopyWithImpl<$Res,
        _$_CancelPriceInformationModel>
    implements _$$_CancelPriceInformationModelCopyWith<$Res> {
  __$$_CancelPriceInformationModelCopyWithImpl(
      _$_CancelPriceInformationModel _value,
      $Res Function(_$_CancelPriceInformationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epochCancelDatetime = null,
    Object? cancelPrice = null,
  }) {
    return _then(_$_CancelPriceInformationModel(
      epochCancelDatetime: null == epochCancelDatetime
          ? _value.epochCancelDatetime
          : epochCancelDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      cancelPrice: null == cancelPrice
          ? _value.cancelPrice
          : cancelPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CancelPriceInformationModel extends _CancelPriceInformationModel {
  const _$_CancelPriceInformationModel(
      {@StringToEpochTimeConverter()
      @JsonKey(name: 'cancel_datetime')
          this.epochCancelDatetime = 0,
      this.cancelPrice = 0})
      : super._();

  factory _$_CancelPriceInformationModel.fromJson(Map<String, dynamic> json) =>
      _$$_CancelPriceInformationModelFromJson(json);

/* キャンセル日　※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'cancel_datetime')
  final int epochCancelDatetime;
/* キャンセル料(税込) */
  @override
  @JsonKey()
  final int cancelPrice;

  @override
  String toString() {
    return 'CancelPriceInformationModel(epochCancelDatetime: $epochCancelDatetime, cancelPrice: $cancelPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CancelPriceInformationModel &&
            (identical(other.epochCancelDatetime, epochCancelDatetime) ||
                other.epochCancelDatetime == epochCancelDatetime) &&
            (identical(other.cancelPrice, cancelPrice) ||
                other.cancelPrice == cancelPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, epochCancelDatetime, cancelPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CancelPriceInformationModelCopyWith<_$_CancelPriceInformationModel>
      get copyWith => __$$_CancelPriceInformationModelCopyWithImpl<
          _$_CancelPriceInformationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CancelPriceInformationModelToJson(
      this,
    );
  }
}

abstract class _CancelPriceInformationModel
    extends CancelPriceInformationModel {
  const factory _CancelPriceInformationModel(
      {@StringToEpochTimeConverter()
      @JsonKey(name: 'cancel_datetime')
          final int epochCancelDatetime,
      final int cancelPrice}) = _$_CancelPriceInformationModel;
  const _CancelPriceInformationModel._() : super._();

  factory _CancelPriceInformationModel.fromJson(Map<String, dynamic> json) =
      _$_CancelPriceInformationModel.fromJson;

  @override /* キャンセル日　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'cancel_datetime')
  int get epochCancelDatetime;
  @override /* キャンセル料(税込) */
  int get cancelPrice;
  @override
  @JsonKey(ignore: true)
  _$$_CancelPriceInformationModelCopyWith<_$_CancelPriceInformationModel>
      get copyWith => throw _privateConstructorUsedError;
}
