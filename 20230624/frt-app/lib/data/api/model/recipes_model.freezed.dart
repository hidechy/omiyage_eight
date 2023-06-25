// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipesModel _$RecipesModelFromJson(Map<String, dynamic> json) {
  return _RecipesModel.fromJson(json);
}

/// @nodoc
mixin _$RecipesModel {
/* レシピを識別するユニークなID */
  String get id => throw _privateConstructorUsedError; /* レシピの特徴を示した文言 */
  String get lead => throw _privateConstructorUsedError; /* レシピのタイトル */
  String get title => throw _privateConstructorUsedError; /* レシピの説明文 */
  String get description =>
      throw _privateConstructorUsedError; /* お料理の摂取カロリー量 例 "514kcal/人" */
  String get cookingTime =>
      throw _privateConstructorUsedError; /* お料理所要時間 例　30分 */
  String get calorie => throw _privateConstructorUsedError; /* 長方形表示の画像素材 */
  VideoUrlModel get rectVideo =>
      throw _privateConstructorUsedError; /* 正方形表示の画像素材 */
  VideoUrlModel get squareVideo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipesModelCopyWith<RecipesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipesModelCopyWith<$Res> {
  factory $RecipesModelCopyWith(
          RecipesModel value, $Res Function(RecipesModel) then) =
      _$RecipesModelCopyWithImpl<$Res, RecipesModel>;
  @useResult
  $Res call(
      {String id,
      String lead,
      String title,
      String description,
      String cookingTime,
      String calorie,
      VideoUrlModel rectVideo,
      VideoUrlModel squareVideo});

  $VideoUrlModelCopyWith<$Res> get rectVideo;
  $VideoUrlModelCopyWith<$Res> get squareVideo;
}

/// @nodoc
class _$RecipesModelCopyWithImpl<$Res, $Val extends RecipesModel>
    implements $RecipesModelCopyWith<$Res> {
  _$RecipesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lead = null,
    Object? title = null,
    Object? description = null,
    Object? cookingTime = null,
    Object? calorie = null,
    Object? rectVideo = null,
    Object? squareVideo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lead: null == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cookingTime: null == cookingTime
          ? _value.cookingTime
          : cookingTime // ignore: cast_nullable_to_non_nullable
              as String,
      calorie: null == calorie
          ? _value.calorie
          : calorie // ignore: cast_nullable_to_non_nullable
              as String,
      rectVideo: null == rectVideo
          ? _value.rectVideo
          : rectVideo // ignore: cast_nullable_to_non_nullable
              as VideoUrlModel,
      squareVideo: null == squareVideo
          ? _value.squareVideo
          : squareVideo // ignore: cast_nullable_to_non_nullable
              as VideoUrlModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoUrlModelCopyWith<$Res> get rectVideo {
    return $VideoUrlModelCopyWith<$Res>(_value.rectVideo, (value) {
      return _then(_value.copyWith(rectVideo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoUrlModelCopyWith<$Res> get squareVideo {
    return $VideoUrlModelCopyWith<$Res>(_value.squareVideo, (value) {
      return _then(_value.copyWith(squareVideo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RecipesModelCopyWith<$Res>
    implements $RecipesModelCopyWith<$Res> {
  factory _$$_RecipesModelCopyWith(
          _$_RecipesModel value, $Res Function(_$_RecipesModel) then) =
      __$$_RecipesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String lead,
      String title,
      String description,
      String cookingTime,
      String calorie,
      VideoUrlModel rectVideo,
      VideoUrlModel squareVideo});

  @override
  $VideoUrlModelCopyWith<$Res> get rectVideo;
  @override
  $VideoUrlModelCopyWith<$Res> get squareVideo;
}

/// @nodoc
class __$$_RecipesModelCopyWithImpl<$Res>
    extends _$RecipesModelCopyWithImpl<$Res, _$_RecipesModel>
    implements _$$_RecipesModelCopyWith<$Res> {
  __$$_RecipesModelCopyWithImpl(
      _$_RecipesModel _value, $Res Function(_$_RecipesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lead = null,
    Object? title = null,
    Object? description = null,
    Object? cookingTime = null,
    Object? calorie = null,
    Object? rectVideo = null,
    Object? squareVideo = null,
  }) {
    return _then(_$_RecipesModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lead: null == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      cookingTime: null == cookingTime
          ? _value.cookingTime
          : cookingTime // ignore: cast_nullable_to_non_nullable
              as String,
      calorie: null == calorie
          ? _value.calorie
          : calorie // ignore: cast_nullable_to_non_nullable
              as String,
      rectVideo: null == rectVideo
          ? _value.rectVideo
          : rectVideo // ignore: cast_nullable_to_non_nullable
              as VideoUrlModel,
      squareVideo: null == squareVideo
          ? _value.squareVideo
          : squareVideo // ignore: cast_nullable_to_non_nullable
              as VideoUrlModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipesModel implements _RecipesModel {
  const _$_RecipesModel(
      {this.id = '',
      this.lead = '',
      this.title = '',
      this.description = '',
      this.cookingTime = '',
      this.calorie = '',
      this.rectVideo = const VideoUrlModel(),
      this.squareVideo = const VideoUrlModel()});

  factory _$_RecipesModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecipesModelFromJson(json);

/* レシピを識別するユニークなID */
  @override
  @JsonKey()
  final String id;
/* レシピの特徴を示した文言 */
  @override
  @JsonKey()
  final String lead;
/* レシピのタイトル */
  @override
  @JsonKey()
  final String title;
/* レシピの説明文 */
  @override
  @JsonKey()
  final String description;
/* お料理の摂取カロリー量 例 "514kcal/人" */
  @override
  @JsonKey()
  final String cookingTime;
/* お料理所要時間 例　30分 */
  @override
  @JsonKey()
  final String calorie;
/* 長方形表示の画像素材 */
  @override
  @JsonKey()
  final VideoUrlModel rectVideo;
/* 正方形表示の画像素材 */
  @override
  @JsonKey()
  final VideoUrlModel squareVideo;

  @override
  String toString() {
    return 'RecipesModel(id: $id, lead: $lead, title: $title, description: $description, cookingTime: $cookingTime, calorie: $calorie, rectVideo: $rectVideo, squareVideo: $squareVideo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipesModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lead, lead) || other.lead == lead) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.cookingTime, cookingTime) ||
                other.cookingTime == cookingTime) &&
            (identical(other.calorie, calorie) || other.calorie == calorie) &&
            (identical(other.rectVideo, rectVideo) ||
                other.rectVideo == rectVideo) &&
            (identical(other.squareVideo, squareVideo) ||
                other.squareVideo == squareVideo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, lead, title, description,
      cookingTime, calorie, rectVideo, squareVideo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipesModelCopyWith<_$_RecipesModel> get copyWith =>
      __$$_RecipesModelCopyWithImpl<_$_RecipesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipesModelToJson(
      this,
    );
  }
}

abstract class _RecipesModel implements RecipesModel {
  const factory _RecipesModel(
      {final String id,
      final String lead,
      final String title,
      final String description,
      final String cookingTime,
      final String calorie,
      final VideoUrlModel rectVideo,
      final VideoUrlModel squareVideo}) = _$_RecipesModel;

  factory _RecipesModel.fromJson(Map<String, dynamic> json) =
      _$_RecipesModel.fromJson;

  @override /* レシピを識別するユニークなID */
  String get id;
  @override /* レシピの特徴を示した文言 */
  String get lead;
  @override /* レシピのタイトル */
  String get title;
  @override /* レシピの説明文 */
  String get description;
  @override /* お料理の摂取カロリー量 例 "514kcal/人" */
  String get cookingTime;
  @override /* お料理所要時間 例　30分 */
  String get calorie;
  @override /* 長方形表示の画像素材 */
  VideoUrlModel get rectVideo;
  @override /* 正方形表示の画像素材 */
  VideoUrlModel get squareVideo;
  @override
  @JsonKey(ignore: true)
  _$$_RecipesModelCopyWith<_$_RecipesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
