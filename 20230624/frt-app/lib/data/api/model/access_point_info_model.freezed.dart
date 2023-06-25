// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_point_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccessPointInfoModel _$AccessPointInfoModelFromJson(Map<String, dynamic> json) {
  return _AccessPointInfoModel.fromJson(json);
}

/// @nodoc
mixin _$AccessPointInfoModel {
/* IYNS WebAPI基本URL */
  String get iynsApiBaseUrl =>
      throw _privateConstructorUsedError; /* IYNS 基本URL */
  String get iynsBaseUrl =>
      throw _privateConstructorUsedError; /* 会員基盤認証基本URL */
  String get iynsAuthBaseUrl =>
      throw _privateConstructorUsedError; /* 会員基盤会員アカウント基本URL */
  String get iynsAccountBaseUrl =>
      throw _privateConstructorUsedError; /* セブンマイルプログラムURL */
  String get iynsMileProgramBaseUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessPointInfoModelCopyWith<AccessPointInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessPointInfoModelCopyWith<$Res> {
  factory $AccessPointInfoModelCopyWith(AccessPointInfoModel value,
          $Res Function(AccessPointInfoModel) then) =
      _$AccessPointInfoModelCopyWithImpl<$Res, AccessPointInfoModel>;
  @useResult
  $Res call(
      {String iynsApiBaseUrl,
      String iynsBaseUrl,
      String iynsAuthBaseUrl,
      String iynsAccountBaseUrl,
      String iynsMileProgramBaseUrl});
}

/// @nodoc
class _$AccessPointInfoModelCopyWithImpl<$Res,
        $Val extends AccessPointInfoModel>
    implements $AccessPointInfoModelCopyWith<$Res> {
  _$AccessPointInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iynsApiBaseUrl = null,
    Object? iynsBaseUrl = null,
    Object? iynsAuthBaseUrl = null,
    Object? iynsAccountBaseUrl = null,
    Object? iynsMileProgramBaseUrl = null,
  }) {
    return _then(_value.copyWith(
      iynsApiBaseUrl: null == iynsApiBaseUrl
          ? _value.iynsApiBaseUrl
          : iynsApiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      iynsBaseUrl: null == iynsBaseUrl
          ? _value.iynsBaseUrl
          : iynsBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      iynsAuthBaseUrl: null == iynsAuthBaseUrl
          ? _value.iynsAuthBaseUrl
          : iynsAuthBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      iynsAccountBaseUrl: null == iynsAccountBaseUrl
          ? _value.iynsAccountBaseUrl
          : iynsAccountBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      iynsMileProgramBaseUrl: null == iynsMileProgramBaseUrl
          ? _value.iynsMileProgramBaseUrl
          : iynsMileProgramBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccessPointInfoModelCopyWith<$Res>
    implements $AccessPointInfoModelCopyWith<$Res> {
  factory _$$_AccessPointInfoModelCopyWith(_$_AccessPointInfoModel value,
          $Res Function(_$_AccessPointInfoModel) then) =
      __$$_AccessPointInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String iynsApiBaseUrl,
      String iynsBaseUrl,
      String iynsAuthBaseUrl,
      String iynsAccountBaseUrl,
      String iynsMileProgramBaseUrl});
}

/// @nodoc
class __$$_AccessPointInfoModelCopyWithImpl<$Res>
    extends _$AccessPointInfoModelCopyWithImpl<$Res, _$_AccessPointInfoModel>
    implements _$$_AccessPointInfoModelCopyWith<$Res> {
  __$$_AccessPointInfoModelCopyWithImpl(_$_AccessPointInfoModel _value,
      $Res Function(_$_AccessPointInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iynsApiBaseUrl = null,
    Object? iynsBaseUrl = null,
    Object? iynsAuthBaseUrl = null,
    Object? iynsAccountBaseUrl = null,
    Object? iynsMileProgramBaseUrl = null,
  }) {
    return _then(_$_AccessPointInfoModel(
      iynsApiBaseUrl: null == iynsApiBaseUrl
          ? _value.iynsApiBaseUrl
          : iynsApiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      iynsBaseUrl: null == iynsBaseUrl
          ? _value.iynsBaseUrl
          : iynsBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      iynsAuthBaseUrl: null == iynsAuthBaseUrl
          ? _value.iynsAuthBaseUrl
          : iynsAuthBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      iynsAccountBaseUrl: null == iynsAccountBaseUrl
          ? _value.iynsAccountBaseUrl
          : iynsAccountBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      iynsMileProgramBaseUrl: null == iynsMileProgramBaseUrl
          ? _value.iynsMileProgramBaseUrl
          : iynsMileProgramBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccessPointInfoModel extends _AccessPointInfoModel {
  const _$_AccessPointInfoModel(
      {this.iynsApiBaseUrl = '',
      this.iynsBaseUrl = '',
      this.iynsAuthBaseUrl = '',
      this.iynsAccountBaseUrl = '',
      this.iynsMileProgramBaseUrl = ''})
      : super._();

  factory _$_AccessPointInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_AccessPointInfoModelFromJson(json);

/* IYNS WebAPI基本URL */
  @override
  @JsonKey()
  final String iynsApiBaseUrl;
/* IYNS 基本URL */
  @override
  @JsonKey()
  final String iynsBaseUrl;
/* 会員基盤認証基本URL */
  @override
  @JsonKey()
  final String iynsAuthBaseUrl;
/* 会員基盤会員アカウント基本URL */
  @override
  @JsonKey()
  final String iynsAccountBaseUrl;
/* セブンマイルプログラムURL */
  @override
  @JsonKey()
  final String iynsMileProgramBaseUrl;

  @override
  String toString() {
    return 'AccessPointInfoModel(iynsApiBaseUrl: $iynsApiBaseUrl, iynsBaseUrl: $iynsBaseUrl, iynsAuthBaseUrl: $iynsAuthBaseUrl, iynsAccountBaseUrl: $iynsAccountBaseUrl, iynsMileProgramBaseUrl: $iynsMileProgramBaseUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccessPointInfoModel &&
            (identical(other.iynsApiBaseUrl, iynsApiBaseUrl) ||
                other.iynsApiBaseUrl == iynsApiBaseUrl) &&
            (identical(other.iynsBaseUrl, iynsBaseUrl) ||
                other.iynsBaseUrl == iynsBaseUrl) &&
            (identical(other.iynsAuthBaseUrl, iynsAuthBaseUrl) ||
                other.iynsAuthBaseUrl == iynsAuthBaseUrl) &&
            (identical(other.iynsAccountBaseUrl, iynsAccountBaseUrl) ||
                other.iynsAccountBaseUrl == iynsAccountBaseUrl) &&
            (identical(other.iynsMileProgramBaseUrl, iynsMileProgramBaseUrl) ||
                other.iynsMileProgramBaseUrl == iynsMileProgramBaseUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iynsApiBaseUrl, iynsBaseUrl,
      iynsAuthBaseUrl, iynsAccountBaseUrl, iynsMileProgramBaseUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccessPointInfoModelCopyWith<_$_AccessPointInfoModel> get copyWith =>
      __$$_AccessPointInfoModelCopyWithImpl<_$_AccessPointInfoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccessPointInfoModelToJson(
      this,
    );
  }
}

abstract class _AccessPointInfoModel extends AccessPointInfoModel {
  const factory _AccessPointInfoModel(
      {final String iynsApiBaseUrl,
      final String iynsBaseUrl,
      final String iynsAuthBaseUrl,
      final String iynsAccountBaseUrl,
      final String iynsMileProgramBaseUrl}) = _$_AccessPointInfoModel;
  const _AccessPointInfoModel._() : super._();

  factory _AccessPointInfoModel.fromJson(Map<String, dynamic> json) =
      _$_AccessPointInfoModel.fromJson;

  @override /* IYNS WebAPI基本URL */
  String get iynsApiBaseUrl;
  @override /* IYNS 基本URL */
  String get iynsBaseUrl;
  @override /* 会員基盤認証基本URL */
  String get iynsAuthBaseUrl;
  @override /* 会員基盤会員アカウント基本URL */
  String get iynsAccountBaseUrl;
  @override /* セブンマイルプログラムURL */
  String get iynsMileProgramBaseUrl;
  @override
  @JsonKey(ignore: true)
  _$$_AccessPointInfoModelCopyWith<_$_AccessPointInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
