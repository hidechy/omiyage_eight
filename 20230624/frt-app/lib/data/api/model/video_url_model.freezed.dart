// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_url_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoUrlModel _$VideoUrlModelFromJson(Map<String, dynamic> json) {
  return _VideoUrlModel.fromJson(json);
}

/// @nodoc
mixin _$VideoUrlModel {
/* 長方形 or 正方形のレシピ画像を取得するためのURL */
  String get posterUrl =>
      throw _privateConstructorUsedError; /* 長方形 or 正方形のレシピ動画を取得するためのURL */
  String get videoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoUrlModelCopyWith<VideoUrlModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoUrlModelCopyWith<$Res> {
  factory $VideoUrlModelCopyWith(
          VideoUrlModel value, $Res Function(VideoUrlModel) then) =
      _$VideoUrlModelCopyWithImpl<$Res, VideoUrlModel>;
  @useResult
  $Res call({String posterUrl, String videoUrl});
}

/// @nodoc
class _$VideoUrlModelCopyWithImpl<$Res, $Val extends VideoUrlModel>
    implements $VideoUrlModelCopyWith<$Res> {
  _$VideoUrlModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterUrl = null,
    Object? videoUrl = null,
  }) {
    return _then(_value.copyWith(
      posterUrl: null == posterUrl
          ? _value.posterUrl
          : posterUrl // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideoUrlModelCopyWith<$Res>
    implements $VideoUrlModelCopyWith<$Res> {
  factory _$$_VideoUrlModelCopyWith(
          _$_VideoUrlModel value, $Res Function(_$_VideoUrlModel) then) =
      __$$_VideoUrlModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String posterUrl, String videoUrl});
}

/// @nodoc
class __$$_VideoUrlModelCopyWithImpl<$Res>
    extends _$VideoUrlModelCopyWithImpl<$Res, _$_VideoUrlModel>
    implements _$$_VideoUrlModelCopyWith<$Res> {
  __$$_VideoUrlModelCopyWithImpl(
      _$_VideoUrlModel _value, $Res Function(_$_VideoUrlModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterUrl = null,
    Object? videoUrl = null,
  }) {
    return _then(_$_VideoUrlModel(
      posterUrl: null == posterUrl
          ? _value.posterUrl
          : posterUrl // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoUrlModel implements _VideoUrlModel {
  const _$_VideoUrlModel({this.posterUrl = '', this.videoUrl = ''});

  factory _$_VideoUrlModel.fromJson(Map<String, dynamic> json) =>
      _$$_VideoUrlModelFromJson(json);

/* 長方形 or 正方形のレシピ画像を取得するためのURL */
  @override
  @JsonKey()
  final String posterUrl;
/* 長方形 or 正方形のレシピ動画を取得するためのURL */
  @override
  @JsonKey()
  final String videoUrl;

  @override
  String toString() {
    return 'VideoUrlModel(posterUrl: $posterUrl, videoUrl: $videoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoUrlModel &&
            (identical(other.posterUrl, posterUrl) ||
                other.posterUrl == posterUrl) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posterUrl, videoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoUrlModelCopyWith<_$_VideoUrlModel> get copyWith =>
      __$$_VideoUrlModelCopyWithImpl<_$_VideoUrlModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoUrlModelToJson(
      this,
    );
  }
}

abstract class _VideoUrlModel implements VideoUrlModel {
  const factory _VideoUrlModel(
      {final String posterUrl, final String videoUrl}) = _$_VideoUrlModel;

  factory _VideoUrlModel.fromJson(Map<String, dynamic> json) =
      _$_VideoUrlModel.fromJson;

  @override /* 長方形 or 正方形のレシピ画像を取得するためのURL */
  String get posterUrl;
  @override /* 長方形 or 正方形のレシピ動画を取得するためのURL */
  String get videoUrl;
  @override
  @JsonKey(ignore: true)
  _$$_VideoUrlModelCopyWith<_$_VideoUrlModel> get copyWith =>
      throw _privateConstructorUsedError;
}
