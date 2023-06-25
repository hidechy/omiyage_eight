// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_substitute_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageSubstituteModel _$MessageSubstituteModelFromJson(
    Map<String, dynamic> json) {
  return _MessageSubstituteModel.fromJson(json);
}

/// @nodoc
mixin _$MessageSubstituteModel {
/* 置換対象のkey番号 */
  String get key => throw _privateConstructorUsedError; /* 置換文字列 */
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageSubstituteModelCopyWith<MessageSubstituteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageSubstituteModelCopyWith<$Res> {
  factory $MessageSubstituteModelCopyWith(MessageSubstituteModel value,
          $Res Function(MessageSubstituteModel) then) =
      _$MessageSubstituteModelCopyWithImpl<$Res, MessageSubstituteModel>;
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class _$MessageSubstituteModelCopyWithImpl<$Res,
        $Val extends MessageSubstituteModel>
    implements $MessageSubstituteModelCopyWith<$Res> {
  _$MessageSubstituteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageSubstituteModelCopyWith<$Res>
    implements $MessageSubstituteModelCopyWith<$Res> {
  factory _$$_MessageSubstituteModelCopyWith(_$_MessageSubstituteModel value,
          $Res Function(_$_MessageSubstituteModel) then) =
      __$$_MessageSubstituteModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class __$$_MessageSubstituteModelCopyWithImpl<$Res>
    extends _$MessageSubstituteModelCopyWithImpl<$Res,
        _$_MessageSubstituteModel>
    implements _$$_MessageSubstituteModelCopyWith<$Res> {
  __$$_MessageSubstituteModelCopyWithImpl(_$_MessageSubstituteModel _value,
      $Res Function(_$_MessageSubstituteModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$_MessageSubstituteModel(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageSubstituteModel implements _MessageSubstituteModel {
  const _$_MessageSubstituteModel({this.key = '', this.value = ''});

  factory _$_MessageSubstituteModel.fromJson(Map<String, dynamic> json) =>
      _$$_MessageSubstituteModelFromJson(json);

/* 置換対象のkey番号 */
  @override
  @JsonKey()
  final String key;
/* 置換文字列 */
  @override
  @JsonKey()
  final String value;

  @override
  String toString() {
    return 'MessageSubstituteModel(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageSubstituteModel &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageSubstituteModelCopyWith<_$_MessageSubstituteModel> get copyWith =>
      __$$_MessageSubstituteModelCopyWithImpl<_$_MessageSubstituteModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageSubstituteModelToJson(
      this,
    );
  }
}

abstract class _MessageSubstituteModel implements MessageSubstituteModel {
  const factory _MessageSubstituteModel(
      {final String key, final String value}) = _$_MessageSubstituteModel;

  factory _MessageSubstituteModel.fromJson(Map<String, dynamic> json) =
      _$_MessageSubstituteModel.fromJson;

  @override /* 置換対象のkey番号 */
  String get key;
  @override /* 置換文字列 */
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_MessageSubstituteModelCopyWith<_$_MessageSubstituteModel> get copyWith =>
      throw _privateConstructorUsedError;
}
