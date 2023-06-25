// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfigModel _$ConfigModelFromJson(Map<String, dynamic> json) {
  return _ConfigModel.fromJson(json);
}

/// @nodoc
mixin _$ConfigModel {
  bool get isVisitorAllowed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigModelCopyWith<ConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigModelCopyWith<$Res> {
  factory $ConfigModelCopyWith(
          ConfigModel value, $Res Function(ConfigModel) then) =
      _$ConfigModelCopyWithImpl<$Res, ConfigModel>;
  @useResult
  $Res call({bool isVisitorAllowed});
}

/// @nodoc
class _$ConfigModelCopyWithImpl<$Res, $Val extends ConfigModel>
    implements $ConfigModelCopyWith<$Res> {
  _$ConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVisitorAllowed = null,
  }) {
    return _then(_value.copyWith(
      isVisitorAllowed: null == isVisitorAllowed
          ? _value.isVisitorAllowed
          : isVisitorAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConfigModelCopyWith<$Res>
    implements $ConfigModelCopyWith<$Res> {
  factory _$$_ConfigModelCopyWith(
          _$_ConfigModel value, $Res Function(_$_ConfigModel) then) =
      __$$_ConfigModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isVisitorAllowed});
}

/// @nodoc
class __$$_ConfigModelCopyWithImpl<$Res>
    extends _$ConfigModelCopyWithImpl<$Res, _$_ConfigModel>
    implements _$$_ConfigModelCopyWith<$Res> {
  __$$_ConfigModelCopyWithImpl(
      _$_ConfigModel _value, $Res Function(_$_ConfigModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVisitorAllowed = null,
  }) {
    return _then(_$_ConfigModel(
      isVisitorAllowed: null == isVisitorAllowed
          ? _value.isVisitorAllowed
          : isVisitorAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConfigModel extends _ConfigModel {
  const _$_ConfigModel({this.isVisitorAllowed = false}) : super._();

  factory _$_ConfigModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConfigModelFromJson(json);

  @override
  @JsonKey()
  final bool isVisitorAllowed;

  @override
  String toString() {
    return 'ConfigModel(isVisitorAllowed: $isVisitorAllowed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfigModel &&
            (identical(other.isVisitorAllowed, isVisitorAllowed) ||
                other.isVisitorAllowed == isVisitorAllowed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isVisitorAllowed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfigModelCopyWith<_$_ConfigModel> get copyWith =>
      __$$_ConfigModelCopyWithImpl<_$_ConfigModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfigModelToJson(
      this,
    );
  }
}

abstract class _ConfigModel extends ConfigModel {
  const factory _ConfigModel({final bool isVisitorAllowed}) = _$_ConfigModel;
  const _ConfigModel._() : super._();

  factory _ConfigModel.fromJson(Map<String, dynamic> json) =
      _$_ConfigModel.fromJson;

  @override
  bool get isVisitorAllowed;
  @override
  @JsonKey(ignore: true)
  _$$_ConfigModelCopyWith<_$_ConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}
