// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reserve_set_sale_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReserveSetSaleModel _$ReserveSetSaleModelFromJson(Map<String, dynamic> json) {
  return _ReserveSetSaleModel.fromJson(json);
}

/// @nodoc
mixin _$ReserveSetSaleModel {
/* 予約セット割引コード - 予約セット割引なしの場合、null*/
  String get setSaleCode =>
      throw _privateConstructorUsedError; /* 予約セット割引名 - 予約セット割引なしの場合、null*/
  String get reserveSetSaleName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReserveSetSaleModelCopyWith<ReserveSetSaleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReserveSetSaleModelCopyWith<$Res> {
  factory $ReserveSetSaleModelCopyWith(
          ReserveSetSaleModel value, $Res Function(ReserveSetSaleModel) then) =
      _$ReserveSetSaleModelCopyWithImpl<$Res, ReserveSetSaleModel>;
  @useResult
  $Res call({String setSaleCode, String reserveSetSaleName});
}

/// @nodoc
class _$ReserveSetSaleModelCopyWithImpl<$Res, $Val extends ReserveSetSaleModel>
    implements $ReserveSetSaleModelCopyWith<$Res> {
  _$ReserveSetSaleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setSaleCode = null,
    Object? reserveSetSaleName = null,
  }) {
    return _then(_value.copyWith(
      setSaleCode: null == setSaleCode
          ? _value.setSaleCode
          : setSaleCode // ignore: cast_nullable_to_non_nullable
              as String,
      reserveSetSaleName: null == reserveSetSaleName
          ? _value.reserveSetSaleName
          : reserveSetSaleName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReserveSetSaleModelCopyWith<$Res>
    implements $ReserveSetSaleModelCopyWith<$Res> {
  factory _$$_ReserveSetSaleModelCopyWith(_$_ReserveSetSaleModel value,
          $Res Function(_$_ReserveSetSaleModel) then) =
      __$$_ReserveSetSaleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String setSaleCode, String reserveSetSaleName});
}

/// @nodoc
class __$$_ReserveSetSaleModelCopyWithImpl<$Res>
    extends _$ReserveSetSaleModelCopyWithImpl<$Res, _$_ReserveSetSaleModel>
    implements _$$_ReserveSetSaleModelCopyWith<$Res> {
  __$$_ReserveSetSaleModelCopyWithImpl(_$_ReserveSetSaleModel _value,
      $Res Function(_$_ReserveSetSaleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? setSaleCode = null,
    Object? reserveSetSaleName = null,
  }) {
    return _then(_$_ReserveSetSaleModel(
      setSaleCode: null == setSaleCode
          ? _value.setSaleCode
          : setSaleCode // ignore: cast_nullable_to_non_nullable
              as String,
      reserveSetSaleName: null == reserveSetSaleName
          ? _value.reserveSetSaleName
          : reserveSetSaleName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReserveSetSaleModel implements _ReserveSetSaleModel {
  const _$_ReserveSetSaleModel(
      {this.setSaleCode = '', this.reserveSetSaleName = ''});

  factory _$_ReserveSetSaleModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReserveSetSaleModelFromJson(json);

/* 予約セット割引コード - 予約セット割引なしの場合、null*/
  @override
  @JsonKey()
  final String setSaleCode;
/* 予約セット割引名 - 予約セット割引なしの場合、null*/
  @override
  @JsonKey()
  final String reserveSetSaleName;

  @override
  String toString() {
    return 'ReserveSetSaleModel(setSaleCode: $setSaleCode, reserveSetSaleName: $reserveSetSaleName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReserveSetSaleModel &&
            (identical(other.setSaleCode, setSaleCode) ||
                other.setSaleCode == setSaleCode) &&
            (identical(other.reserveSetSaleName, reserveSetSaleName) ||
                other.reserveSetSaleName == reserveSetSaleName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, setSaleCode, reserveSetSaleName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReserveSetSaleModelCopyWith<_$_ReserveSetSaleModel> get copyWith =>
      __$$_ReserveSetSaleModelCopyWithImpl<_$_ReserveSetSaleModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReserveSetSaleModelToJson(
      this,
    );
  }
}

abstract class _ReserveSetSaleModel implements ReserveSetSaleModel {
  const factory _ReserveSetSaleModel(
      {final String setSaleCode,
      final String reserveSetSaleName}) = _$_ReserveSetSaleModel;

  factory _ReserveSetSaleModel.fromJson(Map<String, dynamic> json) =
      _$_ReserveSetSaleModel.fromJson;

  @override /* 予約セット割引コード - 予約セット割引なしの場合、null*/
  String get setSaleCode;
  @override /* 予約セット割引名 - 予約セット割引なしの場合、null*/
  String get reserveSetSaleName;
  @override
  @JsonKey(ignore: true)
  _$$_ReserveSetSaleModelCopyWith<_$_ReserveSetSaleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
