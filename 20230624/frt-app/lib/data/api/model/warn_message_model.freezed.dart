// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warn_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WarnMessageModel _$WarnMessageModelFromJson(Map<String, dynamic> json) {
  return _WarnMessageModel.fromJson(json);
}

/// @nodoc
mixin _$WarnMessageModel {
/* メッセージ */
  String get message => throw _privateConstructorUsedError;
  List<MessageSubstituteModel> get messageSubstitute =>
      throw _privateConstructorUsedError; /* メッセージコード */
  String get messageCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WarnMessageModelCopyWith<WarnMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarnMessageModelCopyWith<$Res> {
  factory $WarnMessageModelCopyWith(
          WarnMessageModel value, $Res Function(WarnMessageModel) then) =
      _$WarnMessageModelCopyWithImpl<$Res, WarnMessageModel>;
  @useResult
  $Res call(
      {String message,
      List<MessageSubstituteModel> messageSubstitute,
      String messageCode});
}

/// @nodoc
class _$WarnMessageModelCopyWithImpl<$Res, $Val extends WarnMessageModel>
    implements $WarnMessageModelCopyWith<$Res> {
  _$WarnMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? messageSubstitute = null,
    Object? messageCode = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      messageSubstitute: null == messageSubstitute
          ? _value.messageSubstitute
          : messageSubstitute // ignore: cast_nullable_to_non_nullable
              as List<MessageSubstituteModel>,
      messageCode: null == messageCode
          ? _value.messageCode
          : messageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WarnMessageModelCopyWith<$Res>
    implements $WarnMessageModelCopyWith<$Res> {
  factory _$$_WarnMessageModelCopyWith(
          _$_WarnMessageModel value, $Res Function(_$_WarnMessageModel) then) =
      __$$_WarnMessageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      List<MessageSubstituteModel> messageSubstitute,
      String messageCode});
}

/// @nodoc
class __$$_WarnMessageModelCopyWithImpl<$Res>
    extends _$WarnMessageModelCopyWithImpl<$Res, _$_WarnMessageModel>
    implements _$$_WarnMessageModelCopyWith<$Res> {
  __$$_WarnMessageModelCopyWithImpl(
      _$_WarnMessageModel _value, $Res Function(_$_WarnMessageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? messageSubstitute = null,
    Object? messageCode = null,
  }) {
    return _then(_$_WarnMessageModel(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      messageSubstitute: null == messageSubstitute
          ? _value._messageSubstitute
          : messageSubstitute // ignore: cast_nullable_to_non_nullable
              as List<MessageSubstituteModel>,
      messageCode: null == messageCode
          ? _value.messageCode
          : messageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WarnMessageModel implements _WarnMessageModel {
  const _$_WarnMessageModel(
      {this.message = '',
      final List<MessageSubstituteModel> messageSubstitute =
          const <MessageSubstituteModel>[],
      this.messageCode = ''})
      : _messageSubstitute = messageSubstitute;

  factory _$_WarnMessageModel.fromJson(Map<String, dynamic> json) =>
      _$$_WarnMessageModelFromJson(json);

/* メッセージ */
  @override
  @JsonKey()
  final String message;
  final List<MessageSubstituteModel> _messageSubstitute;
  @override
  @JsonKey()
  List<MessageSubstituteModel> get messageSubstitute {
    if (_messageSubstitute is EqualUnmodifiableListView)
      return _messageSubstitute;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messageSubstitute);
  }

/* メッセージコード */
  @override
  @JsonKey()
  final String messageCode;

  @override
  String toString() {
    return 'WarnMessageModel(message: $message, messageSubstitute: $messageSubstitute, messageCode: $messageCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WarnMessageModel &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._messageSubstitute, _messageSubstitute) &&
            (identical(other.messageCode, messageCode) ||
                other.messageCode == messageCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(_messageSubstitute), messageCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WarnMessageModelCopyWith<_$_WarnMessageModel> get copyWith =>
      __$$_WarnMessageModelCopyWithImpl<_$_WarnMessageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WarnMessageModelToJson(
      this,
    );
  }
}

abstract class _WarnMessageModel implements WarnMessageModel {
  const factory _WarnMessageModel(
      {final String message,
      final List<MessageSubstituteModel> messageSubstitute,
      final String messageCode}) = _$_WarnMessageModel;

  factory _WarnMessageModel.fromJson(Map<String, dynamic> json) =
      _$_WarnMessageModel.fromJson;

  @override /* メッセージ */
  String get message;
  @override
  List<MessageSubstituteModel> get messageSubstitute;
  @override /* メッセージコード */
  String get messageCode;
  @override
  @JsonKey(ignore: true)
  _$$_WarnMessageModelCopyWith<_$_WarnMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
