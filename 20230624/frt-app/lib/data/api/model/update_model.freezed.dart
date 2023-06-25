// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateModel _$UpdateModelFromJson(Map<String, dynamic> json) {
  return _UpdateModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateModel {
/* OS - Android or iOS 両OSが対象の場合、空文字列 */
  String get os =>
      throw _privateConstructorUsedError; /* OSバージョン - 全バージョンが対象の場合、空文字列 */
  String get osVersion =>
      throw _privateConstructorUsedError; /* 対象のアプリバージョン - 全バージョンが対象の場合、空文字列 */
  String get appVersion =>
      throw _privateConstructorUsedError; /* モーダルに表示するタイトル */
  String get title => throw _privateConstructorUsedError; /* モーダルに表示する本文 */
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateModelCopyWith<UpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateModelCopyWith<$Res> {
  factory $UpdateModelCopyWith(
          UpdateModel value, $Res Function(UpdateModel) then) =
      _$UpdateModelCopyWithImpl<$Res, UpdateModel>;
  @useResult
  $Res call(
      {String os,
      String osVersion,
      String appVersion,
      String title,
      String message});
}

/// @nodoc
class _$UpdateModelCopyWithImpl<$Res, $Val extends UpdateModel>
    implements $UpdateModelCopyWith<$Res> {
  _$UpdateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? os = null,
    Object? osVersion = null,
    Object? appVersion = null,
    Object? title = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      os: null == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateModelCopyWith<$Res>
    implements $UpdateModelCopyWith<$Res> {
  factory _$$_UpdateModelCopyWith(
          _$_UpdateModel value, $Res Function(_$_UpdateModel) then) =
      __$$_UpdateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String os,
      String osVersion,
      String appVersion,
      String title,
      String message});
}

/// @nodoc
class __$$_UpdateModelCopyWithImpl<$Res>
    extends _$UpdateModelCopyWithImpl<$Res, _$_UpdateModel>
    implements _$$_UpdateModelCopyWith<$Res> {
  __$$_UpdateModelCopyWithImpl(
      _$_UpdateModel _value, $Res Function(_$_UpdateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? os = null,
    Object? osVersion = null,
    Object? appVersion = null,
    Object? title = null,
    Object? message = null,
  }) {
    return _then(_$_UpdateModel(
      os: null == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String,
      osVersion: null == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String,
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateModel implements _UpdateModel {
  const _$_UpdateModel(
      {required this.os,
      required this.osVersion,
      required this.appVersion,
      this.title = '',
      this.message = ''});

  factory _$_UpdateModel.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateModelFromJson(json);

/* OS - Android or iOS 両OSが対象の場合、空文字列 */
  @override
  final String os;
/* OSバージョン - 全バージョンが対象の場合、空文字列 */
  @override
  final String osVersion;
/* 対象のアプリバージョン - 全バージョンが対象の場合、空文字列 */
  @override
  final String appVersion;
/* モーダルに表示するタイトル */
  @override
  @JsonKey()
  final String title;
/* モーダルに表示する本文 */
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'UpdateModel(os: $os, osVersion: $osVersion, appVersion: $appVersion, title: $title, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateModel &&
            (identical(other.os, os) || other.os == os) &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, os, osVersion, appVersion, title, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateModelCopyWith<_$_UpdateModel> get copyWith =>
      __$$_UpdateModelCopyWithImpl<_$_UpdateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateModelToJson(
      this,
    );
  }
}

abstract class _UpdateModel implements UpdateModel {
  const factory _UpdateModel(
      {required final String os,
      required final String osVersion,
      required final String appVersion,
      final String title,
      final String message}) = _$_UpdateModel;

  factory _UpdateModel.fromJson(Map<String, dynamic> json) =
      _$_UpdateModel.fromJson;

  @override /* OS - Android or iOS 両OSが対象の場合、空文字列 */
  String get os;
  @override /* OSバージョン - 全バージョンが対象の場合、空文字列 */
  String get osVersion;
  @override /* 対象のアプリバージョン - 全バージョンが対象の場合、空文字列 */
  String get appVersion;
  @override /* モーダルに表示するタイトル */
  String get title;
  @override /* モーダルに表示する本文 */
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateModelCopyWith<_$_UpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}
