// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'secure_decrypted_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SecureDecryptedModel _$SecureDecryptedModelFromJson(Map<String, dynamic> json) {
  return _SecureDecryptedModel.fromJson(json);
}

/// @nodoc
mixin _$SecureDecryptedModel {
/* デコードした値 */
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecureDecryptedModelCopyWith<SecureDecryptedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecureDecryptedModelCopyWith<$Res> {
  factory $SecureDecryptedModelCopyWith(SecureDecryptedModel value,
          $Res Function(SecureDecryptedModel) then) =
      _$SecureDecryptedModelCopyWithImpl<$Res, SecureDecryptedModel>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$SecureDecryptedModelCopyWithImpl<$Res,
        $Val extends SecureDecryptedModel>
    implements $SecureDecryptedModelCopyWith<$Res> {
  _$SecureDecryptedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SecureDecryptedModelCopyWith<$Res>
    implements $SecureDecryptedModelCopyWith<$Res> {
  factory _$$_SecureDecryptedModelCopyWith(_$_SecureDecryptedModel value,
          $Res Function(_$_SecureDecryptedModel) then) =
      __$$_SecureDecryptedModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_SecureDecryptedModelCopyWithImpl<$Res>
    extends _$SecureDecryptedModelCopyWithImpl<$Res, _$_SecureDecryptedModel>
    implements _$$_SecureDecryptedModelCopyWith<$Res> {
  __$$_SecureDecryptedModelCopyWithImpl(_$_SecureDecryptedModel _value,
      $Res Function(_$_SecureDecryptedModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_SecureDecryptedModel(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SecureDecryptedModel implements _SecureDecryptedModel {
  const _$_SecureDecryptedModel({this.value = ''});

  factory _$_SecureDecryptedModel.fromJson(Map<String, dynamic> json) =>
      _$$_SecureDecryptedModelFromJson(json);

/* デコードした値 */
  @override
  @JsonKey()
  final String value;

  @override
  String toString() {
    return 'SecureDecryptedModel(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SecureDecryptedModel &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SecureDecryptedModelCopyWith<_$_SecureDecryptedModel> get copyWith =>
      __$$_SecureDecryptedModelCopyWithImpl<_$_SecureDecryptedModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SecureDecryptedModelToJson(
      this,
    );
  }
}

abstract class _SecureDecryptedModel implements SecureDecryptedModel {
  const factory _SecureDecryptedModel({final String value}) =
      _$_SecureDecryptedModel;

  factory _SecureDecryptedModel.fromJson(Map<String, dynamic> json) =
      _$_SecureDecryptedModel.fromJson;

  @override /* デコードした値 */
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_SecureDecryptedModelCopyWith<_$_SecureDecryptedModel> get copyWith =>
      throw _privateConstructorUsedError;
}
