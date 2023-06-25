// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_time_from_to_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarketTimeFromToModel _$MarketTimeFromToModelFromJson(
    Map<String, dynamic> json) {
  return _MarketTimeFromToModel.fromJson(json);
}

/// @nodoc
mixin _$MarketTimeFromToModel {
/* 市商品開始時間（hh） */
  String get from => throw _privateConstructorUsedError; /* 市商品終了時間（hh） */
  String get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketTimeFromToModelCopyWith<MarketTimeFromToModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketTimeFromToModelCopyWith<$Res> {
  factory $MarketTimeFromToModelCopyWith(MarketTimeFromToModel value,
          $Res Function(MarketTimeFromToModel) then) =
      _$MarketTimeFromToModelCopyWithImpl<$Res, MarketTimeFromToModel>;
  @useResult
  $Res call({String from, String to});
}

/// @nodoc
class _$MarketTimeFromToModelCopyWithImpl<$Res,
        $Val extends MarketTimeFromToModel>
    implements $MarketTimeFromToModelCopyWith<$Res> {
  _$MarketTimeFromToModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MarketTimeFromToModelCopyWith<$Res>
    implements $MarketTimeFromToModelCopyWith<$Res> {
  factory _$$_MarketTimeFromToModelCopyWith(_$_MarketTimeFromToModel value,
          $Res Function(_$_MarketTimeFromToModel) then) =
      __$$_MarketTimeFromToModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String from, String to});
}

/// @nodoc
class __$$_MarketTimeFromToModelCopyWithImpl<$Res>
    extends _$MarketTimeFromToModelCopyWithImpl<$Res, _$_MarketTimeFromToModel>
    implements _$$_MarketTimeFromToModelCopyWith<$Res> {
  __$$_MarketTimeFromToModelCopyWithImpl(_$_MarketTimeFromToModel _value,
      $Res Function(_$_MarketTimeFromToModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_$_MarketTimeFromToModel(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MarketTimeFromToModel implements _MarketTimeFromToModel {
  const _$_MarketTimeFromToModel({this.from = '', this.to = ''});

  factory _$_MarketTimeFromToModel.fromJson(Map<String, dynamic> json) =>
      _$$_MarketTimeFromToModelFromJson(json);

/* 市商品開始時間（hh） */
  @override
  @JsonKey()
  final String from;
/* 市商品終了時間（hh） */
  @override
  @JsonKey()
  final String to;

  @override
  String toString() {
    return 'MarketTimeFromToModel(from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarketTimeFromToModel &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarketTimeFromToModelCopyWith<_$_MarketTimeFromToModel> get copyWith =>
      __$$_MarketTimeFromToModelCopyWithImpl<_$_MarketTimeFromToModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MarketTimeFromToModelToJson(
      this,
    );
  }
}

abstract class _MarketTimeFromToModel implements MarketTimeFromToModel {
  const factory _MarketTimeFromToModel({final String from, final String to}) =
      _$_MarketTimeFromToModel;

  factory _MarketTimeFromToModel.fromJson(Map<String, dynamic> json) =
      _$_MarketTimeFromToModel.fromJson;

  @override /* 市商品開始時間（hh） */
  String get from;
  @override /* 市商品終了時間（hh） */
  String get to;
  @override
  @JsonKey(ignore: true)
  _$$_MarketTimeFromToModelCopyWith<_$_MarketTimeFromToModel> get copyWith =>
      throw _privateConstructorUsedError;
}
