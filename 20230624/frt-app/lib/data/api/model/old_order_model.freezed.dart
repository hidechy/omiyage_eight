// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'old_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OldOrderModel _$OldOrderModelFromJson(Map<String, dynamic> json) {
  return _OldOrderModel.fromJson(json);
}

/// @nodoc
mixin _$OldOrderModel {
/* 旧受注-nanacoポイント利用判定 ``` true：旧受注-nanacoポイント利用あり false：旧受注-nanacoポイント利用なし ``` */
  bool get isNanacoPointUse =>
      throw _privateConstructorUsedError; /* 旧受注-nanacoポイント利用額 */
  int get nanacoPointUsePoint => throw _privateConstructorUsedError; /* 旧受注ID */
  int get oldOrderId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OldOrderModelCopyWith<OldOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OldOrderModelCopyWith<$Res> {
  factory $OldOrderModelCopyWith(
          OldOrderModel value, $Res Function(OldOrderModel) then) =
      _$OldOrderModelCopyWithImpl<$Res, OldOrderModel>;
  @useResult
  $Res call({bool isNanacoPointUse, int nanacoPointUsePoint, int oldOrderId});
}

/// @nodoc
class _$OldOrderModelCopyWithImpl<$Res, $Val extends OldOrderModel>
    implements $OldOrderModelCopyWith<$Res> {
  _$OldOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNanacoPointUse = null,
    Object? nanacoPointUsePoint = null,
    Object? oldOrderId = null,
  }) {
    return _then(_value.copyWith(
      isNanacoPointUse: null == isNanacoPointUse
          ? _value.isNanacoPointUse
          : isNanacoPointUse // ignore: cast_nullable_to_non_nullable
              as bool,
      nanacoPointUsePoint: null == nanacoPointUsePoint
          ? _value.nanacoPointUsePoint
          : nanacoPointUsePoint // ignore: cast_nullable_to_non_nullable
              as int,
      oldOrderId: null == oldOrderId
          ? _value.oldOrderId
          : oldOrderId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OldOrderModelCopyWith<$Res>
    implements $OldOrderModelCopyWith<$Res> {
  factory _$$_OldOrderModelCopyWith(
          _$_OldOrderModel value, $Res Function(_$_OldOrderModel) then) =
      __$$_OldOrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isNanacoPointUse, int nanacoPointUsePoint, int oldOrderId});
}

/// @nodoc
class __$$_OldOrderModelCopyWithImpl<$Res>
    extends _$OldOrderModelCopyWithImpl<$Res, _$_OldOrderModel>
    implements _$$_OldOrderModelCopyWith<$Res> {
  __$$_OldOrderModelCopyWithImpl(
      _$_OldOrderModel _value, $Res Function(_$_OldOrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNanacoPointUse = null,
    Object? nanacoPointUsePoint = null,
    Object? oldOrderId = null,
  }) {
    return _then(_$_OldOrderModel(
      isNanacoPointUse: null == isNanacoPointUse
          ? _value.isNanacoPointUse
          : isNanacoPointUse // ignore: cast_nullable_to_non_nullable
              as bool,
      nanacoPointUsePoint: null == nanacoPointUsePoint
          ? _value.nanacoPointUsePoint
          : nanacoPointUsePoint // ignore: cast_nullable_to_non_nullable
              as int,
      oldOrderId: null == oldOrderId
          ? _value.oldOrderId
          : oldOrderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OldOrderModel implements _OldOrderModel {
  const _$_OldOrderModel(
      {this.isNanacoPointUse = false,
      this.nanacoPointUsePoint = 0,
      this.oldOrderId = 0});

  factory _$_OldOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OldOrderModelFromJson(json);

/* 旧受注-nanacoポイント利用判定 ``` true：旧受注-nanacoポイント利用あり false：旧受注-nanacoポイント利用なし ``` */
  @override
  @JsonKey()
  final bool isNanacoPointUse;
/* 旧受注-nanacoポイント利用額 */
  @override
  @JsonKey()
  final int nanacoPointUsePoint;
/* 旧受注ID */
  @override
  @JsonKey()
  final int oldOrderId;

  @override
  String toString() {
    return 'OldOrderModel(isNanacoPointUse: $isNanacoPointUse, nanacoPointUsePoint: $nanacoPointUsePoint, oldOrderId: $oldOrderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OldOrderModel &&
            (identical(other.isNanacoPointUse, isNanacoPointUse) ||
                other.isNanacoPointUse == isNanacoPointUse) &&
            (identical(other.nanacoPointUsePoint, nanacoPointUsePoint) ||
                other.nanacoPointUsePoint == nanacoPointUsePoint) &&
            (identical(other.oldOrderId, oldOrderId) ||
                other.oldOrderId == oldOrderId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, isNanacoPointUse, nanacoPointUsePoint, oldOrderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OldOrderModelCopyWith<_$_OldOrderModel> get copyWith =>
      __$$_OldOrderModelCopyWithImpl<_$_OldOrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OldOrderModelToJson(
      this,
    );
  }
}

abstract class _OldOrderModel implements OldOrderModel {
  const factory _OldOrderModel(
      {final bool isNanacoPointUse,
      final int nanacoPointUsePoint,
      final int oldOrderId}) = _$_OldOrderModel;

  factory _OldOrderModel.fromJson(Map<String, dynamic> json) =
      _$_OldOrderModel.fromJson;

  @override /* 旧受注-nanacoポイント利用判定 ``` true：旧受注-nanacoポイント利用あり false：旧受注-nanacoポイント利用なし ``` */
  bool get isNanacoPointUse;
  @override /* 旧受注-nanacoポイント利用額 */
  int get nanacoPointUsePoint;
  @override /* 旧受注ID */
  int get oldOrderId;
  @override
  @JsonKey(ignore: true)
  _$$_OldOrderModelCopyWith<_$_OldOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
