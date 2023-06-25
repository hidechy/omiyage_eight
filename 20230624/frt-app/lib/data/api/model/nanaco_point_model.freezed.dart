// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nanaco_point_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NanacoPointModel _$NanacoPointModelFromJson(Map<String, dynamic> json) {
  return _NanacoPointModel.fromJson(json);
}

/// @nodoc
mixin _$NanacoPointModel {
/* 付与単位ポイント */
  int get nanacoPointUnitPoint =>
      throw _privateConstructorUsedError; /* nanacoポイント付与対象額 */
  int get nanacoPointPrice =>
      throw _privateConstructorUsedError; /* 上位ポイント繰越額 */
  int get nanacoPointCarryOver =>
      throw _privateConstructorUsedError; /* nanacoポイント付与対象額-繰越額  ~~~ 上位ポイント繰越額が0より多い場合は(nanacoポイント付与対象額-上位ポイント繰越額) 上位ポイント繰越額が0以下の場合はnanacoポイント付与対象額を返却 ~~~ */
  int get nanacoPointOriginalPrice =>
      throw _privateConstructorUsedError; /* 付与単位ポイントの合計付与ポイント */
  int get nanacoPointTotalPoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NanacoPointModelCopyWith<NanacoPointModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NanacoPointModelCopyWith<$Res> {
  factory $NanacoPointModelCopyWith(
          NanacoPointModel value, $Res Function(NanacoPointModel) then) =
      _$NanacoPointModelCopyWithImpl<$Res, NanacoPointModel>;
  @useResult
  $Res call(
      {int nanacoPointUnitPoint,
      int nanacoPointPrice,
      int nanacoPointCarryOver,
      int nanacoPointOriginalPrice,
      int nanacoPointTotalPoint});
}

/// @nodoc
class _$NanacoPointModelCopyWithImpl<$Res, $Val extends NanacoPointModel>
    implements $NanacoPointModelCopyWith<$Res> {
  _$NanacoPointModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nanacoPointUnitPoint = null,
    Object? nanacoPointPrice = null,
    Object? nanacoPointCarryOver = null,
    Object? nanacoPointOriginalPrice = null,
    Object? nanacoPointTotalPoint = null,
  }) {
    return _then(_value.copyWith(
      nanacoPointUnitPoint: null == nanacoPointUnitPoint
          ? _value.nanacoPointUnitPoint
          : nanacoPointUnitPoint // ignore: cast_nullable_to_non_nullable
              as int,
      nanacoPointPrice: null == nanacoPointPrice
          ? _value.nanacoPointPrice
          : nanacoPointPrice // ignore: cast_nullable_to_non_nullable
              as int,
      nanacoPointCarryOver: null == nanacoPointCarryOver
          ? _value.nanacoPointCarryOver
          : nanacoPointCarryOver // ignore: cast_nullable_to_non_nullable
              as int,
      nanacoPointOriginalPrice: null == nanacoPointOriginalPrice
          ? _value.nanacoPointOriginalPrice
          : nanacoPointOriginalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      nanacoPointTotalPoint: null == nanacoPointTotalPoint
          ? _value.nanacoPointTotalPoint
          : nanacoPointTotalPoint // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NanacoPointModelCopyWith<$Res>
    implements $NanacoPointModelCopyWith<$Res> {
  factory _$$_NanacoPointModelCopyWith(
          _$_NanacoPointModel value, $Res Function(_$_NanacoPointModel) then) =
      __$$_NanacoPointModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int nanacoPointUnitPoint,
      int nanacoPointPrice,
      int nanacoPointCarryOver,
      int nanacoPointOriginalPrice,
      int nanacoPointTotalPoint});
}

/// @nodoc
class __$$_NanacoPointModelCopyWithImpl<$Res>
    extends _$NanacoPointModelCopyWithImpl<$Res, _$_NanacoPointModel>
    implements _$$_NanacoPointModelCopyWith<$Res> {
  __$$_NanacoPointModelCopyWithImpl(
      _$_NanacoPointModel _value, $Res Function(_$_NanacoPointModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nanacoPointUnitPoint = null,
    Object? nanacoPointPrice = null,
    Object? nanacoPointCarryOver = null,
    Object? nanacoPointOriginalPrice = null,
    Object? nanacoPointTotalPoint = null,
  }) {
    return _then(_$_NanacoPointModel(
      nanacoPointUnitPoint: null == nanacoPointUnitPoint
          ? _value.nanacoPointUnitPoint
          : nanacoPointUnitPoint // ignore: cast_nullable_to_non_nullable
              as int,
      nanacoPointPrice: null == nanacoPointPrice
          ? _value.nanacoPointPrice
          : nanacoPointPrice // ignore: cast_nullable_to_non_nullable
              as int,
      nanacoPointCarryOver: null == nanacoPointCarryOver
          ? _value.nanacoPointCarryOver
          : nanacoPointCarryOver // ignore: cast_nullable_to_non_nullable
              as int,
      nanacoPointOriginalPrice: null == nanacoPointOriginalPrice
          ? _value.nanacoPointOriginalPrice
          : nanacoPointOriginalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      nanacoPointTotalPoint: null == nanacoPointTotalPoint
          ? _value.nanacoPointTotalPoint
          : nanacoPointTotalPoint // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NanacoPointModel implements _NanacoPointModel {
  const _$_NanacoPointModel(
      {this.nanacoPointUnitPoint = 0,
      this.nanacoPointPrice = 0,
      this.nanacoPointCarryOver = 0,
      this.nanacoPointOriginalPrice = 0,
      this.nanacoPointTotalPoint = 0});

  factory _$_NanacoPointModel.fromJson(Map<String, dynamic> json) =>
      _$$_NanacoPointModelFromJson(json);

/* 付与単位ポイント */
  @override
  @JsonKey()
  final int nanacoPointUnitPoint;
/* nanacoポイント付与対象額 */
  @override
  @JsonKey()
  final int nanacoPointPrice;
/* 上位ポイント繰越額 */
  @override
  @JsonKey()
  final int nanacoPointCarryOver;
/* nanacoポイント付与対象額-繰越額  ~~~ 上位ポイント繰越額が0より多い場合は(nanacoポイント付与対象額-上位ポイント繰越額) 上位ポイント繰越額が0以下の場合はnanacoポイント付与対象額を返却 ~~~ */
  @override
  @JsonKey()
  final int nanacoPointOriginalPrice;
/* 付与単位ポイントの合計付与ポイント */
  @override
  @JsonKey()
  final int nanacoPointTotalPoint;

  @override
  String toString() {
    return 'NanacoPointModel(nanacoPointUnitPoint: $nanacoPointUnitPoint, nanacoPointPrice: $nanacoPointPrice, nanacoPointCarryOver: $nanacoPointCarryOver, nanacoPointOriginalPrice: $nanacoPointOriginalPrice, nanacoPointTotalPoint: $nanacoPointTotalPoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NanacoPointModel &&
            (identical(other.nanacoPointUnitPoint, nanacoPointUnitPoint) ||
                other.nanacoPointUnitPoint == nanacoPointUnitPoint) &&
            (identical(other.nanacoPointPrice, nanacoPointPrice) ||
                other.nanacoPointPrice == nanacoPointPrice) &&
            (identical(other.nanacoPointCarryOver, nanacoPointCarryOver) ||
                other.nanacoPointCarryOver == nanacoPointCarryOver) &&
            (identical(
                    other.nanacoPointOriginalPrice, nanacoPointOriginalPrice) ||
                other.nanacoPointOriginalPrice == nanacoPointOriginalPrice) &&
            (identical(other.nanacoPointTotalPoint, nanacoPointTotalPoint) ||
                other.nanacoPointTotalPoint == nanacoPointTotalPoint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nanacoPointUnitPoint,
      nanacoPointPrice,
      nanacoPointCarryOver,
      nanacoPointOriginalPrice,
      nanacoPointTotalPoint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NanacoPointModelCopyWith<_$_NanacoPointModel> get copyWith =>
      __$$_NanacoPointModelCopyWithImpl<_$_NanacoPointModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NanacoPointModelToJson(
      this,
    );
  }
}

abstract class _NanacoPointModel implements NanacoPointModel {
  const factory _NanacoPointModel(
      {final int nanacoPointUnitPoint,
      final int nanacoPointPrice,
      final int nanacoPointCarryOver,
      final int nanacoPointOriginalPrice,
      final int nanacoPointTotalPoint}) = _$_NanacoPointModel;

  factory _NanacoPointModel.fromJson(Map<String, dynamic> json) =
      _$_NanacoPointModel.fromJson;

  @override /* 付与単位ポイント */
  int get nanacoPointUnitPoint;
  @override /* nanacoポイント付与対象額 */
  int get nanacoPointPrice;
  @override /* 上位ポイント繰越額 */
  int get nanacoPointCarryOver;
  @override /* nanacoポイント付与対象額-繰越額  ~~~ 上位ポイント繰越額が0より多い場合は(nanacoポイント付与対象額-上位ポイント繰越額) 上位ポイント繰越額が0以下の場合はnanacoポイント付与対象額を返却 ~~~ */
  int get nanacoPointOriginalPrice;
  @override /* 付与単位ポイントの合計付与ポイント */
  int get nanacoPointTotalPoint;
  @override
  @JsonKey(ignore: true)
  _$$_NanacoPointModelCopyWith<_$_NanacoPointModel> get copyWith =>
      throw _privateConstructorUsedError;
}
