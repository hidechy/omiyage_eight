// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_platform_characters_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckPlatformCharactersModel _$CheckPlatformCharactersModelFromJson(
    Map<String, dynamic> json) {
  return _CheckPlatformCharactersModel.fromJson(json);
}

/// @nodoc
mixin _$CheckPlatformCharactersModel {
  bool get isValid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckPlatformCharactersModelCopyWith<CheckPlatformCharactersModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckPlatformCharactersModelCopyWith<$Res> {
  factory $CheckPlatformCharactersModelCopyWith(
          CheckPlatformCharactersModel value,
          $Res Function(CheckPlatformCharactersModel) then) =
      _$CheckPlatformCharactersModelCopyWithImpl<$Res,
          CheckPlatformCharactersModel>;
  @useResult
  $Res call({bool isValid});
}

/// @nodoc
class _$CheckPlatformCharactersModelCopyWithImpl<$Res,
        $Val extends CheckPlatformCharactersModel>
    implements $CheckPlatformCharactersModelCopyWith<$Res> {
  _$CheckPlatformCharactersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheckPlatformCharactersModelCopyWith<$Res>
    implements $CheckPlatformCharactersModelCopyWith<$Res> {
  factory _$$_CheckPlatformCharactersModelCopyWith(
          _$_CheckPlatformCharactersModel value,
          $Res Function(_$_CheckPlatformCharactersModel) then) =
      __$$_CheckPlatformCharactersModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isValid});
}

/// @nodoc
class __$$_CheckPlatformCharactersModelCopyWithImpl<$Res>
    extends _$CheckPlatformCharactersModelCopyWithImpl<$Res,
        _$_CheckPlatformCharactersModel>
    implements _$$_CheckPlatformCharactersModelCopyWith<$Res> {
  __$$_CheckPlatformCharactersModelCopyWithImpl(
      _$_CheckPlatformCharactersModel _value,
      $Res Function(_$_CheckPlatformCharactersModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = null,
  }) {
    return _then(_$_CheckPlatformCharactersModel(
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckPlatformCharactersModel implements _CheckPlatformCharactersModel {
  const _$_CheckPlatformCharactersModel({this.isValid = true});

  factory _$_CheckPlatformCharactersModel.fromJson(Map<String, dynamic> json) =>
      _$$_CheckPlatformCharactersModelFromJson(json);

  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'CheckPlatformCharactersModel(isValid: $isValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckPlatformCharactersModel &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckPlatformCharactersModelCopyWith<_$_CheckPlatformCharactersModel>
      get copyWith => __$$_CheckPlatformCharactersModelCopyWithImpl<
          _$_CheckPlatformCharactersModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckPlatformCharactersModelToJson(
      this,
    );
  }
}

abstract class _CheckPlatformCharactersModel
    implements CheckPlatformCharactersModel {
  const factory _CheckPlatformCharactersModel({final bool isValid}) =
      _$_CheckPlatformCharactersModel;

  factory _CheckPlatformCharactersModel.fromJson(Map<String, dynamic> json) =
      _$_CheckPlatformCharactersModel.fromJson;

  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$_CheckPlatformCharactersModelCopyWith<_$_CheckPlatformCharactersModel>
      get copyWith => throw _privateConstructorUsedError;
}
