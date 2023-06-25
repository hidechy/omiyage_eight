// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeDetailModel _$RecipeDetailModelFromJson(Map<String, dynamic> json) {
  return _RecipeDetailModel.fromJson(json);
}

/// @nodoc
mixin _$RecipeDetailModel {
  String get id => throw _privateConstructorUsedError;
  String get lead => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get cookingTime => throw _privateConstructorUsedError;
  String get calorie =>
      throw _privateConstructorUsedError; /* 長方形のレシピ画像・動画レスポンス unused */
  VideoUrlModel get rectVideo =>
      throw _privateConstructorUsedError; /* 正方形のレシピ画像・動画レスポンス */
  VideoUrlModel get squareVideo => throw _privateConstructorUsedError;
  String get servings => throw _privateConstructorUsedError;
  List<IngredientGroupModel> get ingredientGroups =>
      throw _privateConstructorUsedError;
  List<StepModel> get steps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeDetailModelCopyWith<RecipeDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDetailModelCopyWith<$Res> {
  factory $RecipeDetailModelCopyWith(
          RecipeDetailModel value, $Res Function(RecipeDetailModel) then) =
      _$RecipeDetailModelCopyWithImpl<$Res, RecipeDetailModel>;
  @useResult
  $Res call(
      {String id,
      String lead,
      String title,
      String description,
      String cookingTime,
      String calorie,
      VideoUrlModel rectVideo,
      VideoUrlModel squareVideo,
      String servings,
      List<IngredientGroupModel> ingredientGroups,
      List<StepModel> steps});

  $VideoUrlModelCopyWith<$Res> get rectVideo;
  $VideoUrlModelCopyWith<$Res> get squareVideo;
}

/// @nodoc
class _$RecipeDetailModelCopyWithImpl<$Res, $Val extends RecipeDetailModel>
    implements $RecipeDetailModelCopyWith<$Res> {
  _$RecipeDetailModelCopyWithImpl(this._value, this._then);

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
    Object? servings = null,
    Object? ingredientGroups = null,
    Object? steps = null,
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
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientGroups: null == ingredientGroups
          ? _value.ingredientGroups
          : ingredientGroups // ignore: cast_nullable_to_non_nullable
              as List<IngredientGroupModel>,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<StepModel>,
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
abstract class _$$_RecipeDetailModelCopyWith<$Res>
    implements $RecipeDetailModelCopyWith<$Res> {
  factory _$$_RecipeDetailModelCopyWith(_$_RecipeDetailModel value,
          $Res Function(_$_RecipeDetailModel) then) =
      __$$_RecipeDetailModelCopyWithImpl<$Res>;
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
      VideoUrlModel squareVideo,
      String servings,
      List<IngredientGroupModel> ingredientGroups,
      List<StepModel> steps});

  @override
  $VideoUrlModelCopyWith<$Res> get rectVideo;
  @override
  $VideoUrlModelCopyWith<$Res> get squareVideo;
}

/// @nodoc
class __$$_RecipeDetailModelCopyWithImpl<$Res>
    extends _$RecipeDetailModelCopyWithImpl<$Res, _$_RecipeDetailModel>
    implements _$$_RecipeDetailModelCopyWith<$Res> {
  __$$_RecipeDetailModelCopyWithImpl(
      _$_RecipeDetailModel _value, $Res Function(_$_RecipeDetailModel) _then)
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
    Object? servings = null,
    Object? ingredientGroups = null,
    Object? steps = null,
  }) {
    return _then(_$_RecipeDetailModel(
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
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientGroups: null == ingredientGroups
          ? _value._ingredientGroups
          : ingredientGroups // ignore: cast_nullable_to_non_nullable
              as List<IngredientGroupModel>,
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<StepModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeDetailModel implements _RecipeDetailModel {
  const _$_RecipeDetailModel(
      {this.id = '',
      this.lead = '',
      this.title = '',
      this.description = '',
      this.cookingTime = '',
      this.calorie = '',
      this.rectVideo = const VideoUrlModel(),
      this.squareVideo = const VideoUrlModel(),
      this.servings = '',
      final List<IngredientGroupModel> ingredientGroups =
          const <IngredientGroupModel>[],
      final List<StepModel> steps = const <StepModel>[]})
      : _ingredientGroups = ingredientGroups,
        _steps = steps;

  factory _$_RecipeDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeDetailModelFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String lead;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String cookingTime;
  @override
  @JsonKey()
  final String calorie;
/* 長方形のレシピ画像・動画レスポンス unused */
  @override
  @JsonKey()
  final VideoUrlModel rectVideo;
/* 正方形のレシピ画像・動画レスポンス */
  @override
  @JsonKey()
  final VideoUrlModel squareVideo;
  @override
  @JsonKey()
  final String servings;
  final List<IngredientGroupModel> _ingredientGroups;
  @override
  @JsonKey()
  List<IngredientGroupModel> get ingredientGroups {
    if (_ingredientGroups is EqualUnmodifiableListView)
      return _ingredientGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientGroups);
  }

  final List<StepModel> _steps;
  @override
  @JsonKey()
  List<StepModel> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  String toString() {
    return 'RecipeDetailModel(id: $id, lead: $lead, title: $title, description: $description, cookingTime: $cookingTime, calorie: $calorie, rectVideo: $rectVideo, squareVideo: $squareVideo, servings: $servings, ingredientGroups: $ingredientGroups, steps: $steps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeDetailModel &&
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
                other.squareVideo == squareVideo) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            const DeepCollectionEquality()
                .equals(other._ingredientGroups, _ingredientGroups) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      lead,
      title,
      description,
      cookingTime,
      calorie,
      rectVideo,
      squareVideo,
      servings,
      const DeepCollectionEquality().hash(_ingredientGroups),
      const DeepCollectionEquality().hash(_steps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeDetailModelCopyWith<_$_RecipeDetailModel> get copyWith =>
      __$$_RecipeDetailModelCopyWithImpl<_$_RecipeDetailModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeDetailModelToJson(
      this,
    );
  }
}

abstract class _RecipeDetailModel implements RecipeDetailModel {
  const factory _RecipeDetailModel(
      {final String id,
      final String lead,
      final String title,
      final String description,
      final String cookingTime,
      final String calorie,
      final VideoUrlModel rectVideo,
      final VideoUrlModel squareVideo,
      final String servings,
      final List<IngredientGroupModel> ingredientGroups,
      final List<StepModel> steps}) = _$_RecipeDetailModel;

  factory _RecipeDetailModel.fromJson(Map<String, dynamic> json) =
      _$_RecipeDetailModel.fromJson;

  @override
  String get id;
  @override
  String get lead;
  @override
  String get title;
  @override
  String get description;
  @override
  String get cookingTime;
  @override
  String get calorie;
  @override /* 長方形のレシピ画像・動画レスポンス unused */
  VideoUrlModel get rectVideo;
  @override /* 正方形のレシピ画像・動画レスポンス */
  VideoUrlModel get squareVideo;
  @override
  String get servings;
  @override
  List<IngredientGroupModel> get ingredientGroups;
  @override
  List<StepModel> get steps;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeDetailModelCopyWith<_$_RecipeDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
