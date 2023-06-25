// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_recommendations_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeRecommendationsState {
  Map<String, List<RecipesModel>> get recommendations =>
      throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  FrontMasterModel get masterInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeRecommendationsStateCopyWith<RecipeRecommendationsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeRecommendationsStateCopyWith<$Res> {
  factory $RecipeRecommendationsStateCopyWith(RecipeRecommendationsState value,
          $Res Function(RecipeRecommendationsState) then) =
      _$RecipeRecommendationsStateCopyWithImpl<$Res,
          RecipeRecommendationsState>;
  @useResult
  $Res call(
      {Map<String, List<RecipesModel>> recommendations,
      int page,
      FrontMasterModel masterInfo});

  $FrontMasterModelCopyWith<$Res> get masterInfo;
}

/// @nodoc
class _$RecipeRecommendationsStateCopyWithImpl<$Res,
        $Val extends RecipeRecommendationsState>
    implements $RecipeRecommendationsStateCopyWith<$Res> {
  _$RecipeRecommendationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendations = null,
    Object? page = null,
    Object? masterInfo = null,
  }) {
    return _then(_value.copyWith(
      recommendations: null == recommendations
          ? _value.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as Map<String, List<RecipesModel>>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      masterInfo: null == masterInfo
          ? _value.masterInfo
          : masterInfo // ignore: cast_nullable_to_non_nullable
              as FrontMasterModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FrontMasterModelCopyWith<$Res> get masterInfo {
    return $FrontMasterModelCopyWith<$Res>(_value.masterInfo, (value) {
      return _then(_value.copyWith(masterInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RecipeRecommendationsStateCopyWith<$Res>
    implements $RecipeRecommendationsStateCopyWith<$Res> {
  factory _$$_RecipeRecommendationsStateCopyWith(
          _$_RecipeRecommendationsState value,
          $Res Function(_$_RecipeRecommendationsState) then) =
      __$$_RecipeRecommendationsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, List<RecipesModel>> recommendations,
      int page,
      FrontMasterModel masterInfo});

  @override
  $FrontMasterModelCopyWith<$Res> get masterInfo;
}

/// @nodoc
class __$$_RecipeRecommendationsStateCopyWithImpl<$Res>
    extends _$RecipeRecommendationsStateCopyWithImpl<$Res,
        _$_RecipeRecommendationsState>
    implements _$$_RecipeRecommendationsStateCopyWith<$Res> {
  __$$_RecipeRecommendationsStateCopyWithImpl(
      _$_RecipeRecommendationsState _value,
      $Res Function(_$_RecipeRecommendationsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendations = null,
    Object? page = null,
    Object? masterInfo = null,
  }) {
    return _then(_$_RecipeRecommendationsState(
      recommendations: null == recommendations
          ? _value._recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as Map<String, List<RecipesModel>>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      masterInfo: null == masterInfo
          ? _value.masterInfo
          : masterInfo // ignore: cast_nullable_to_non_nullable
              as FrontMasterModel,
    ));
  }
}

/// @nodoc

class _$_RecipeRecommendationsState extends _RecipeRecommendationsState {
  const _$_RecipeRecommendationsState(
      {final Map<String, List<RecipesModel>> recommendations =
          const <String, List<RecipesModel>>{},
      this.page = 0,
      this.masterInfo = const FrontMasterModel()})
      : _recommendations = recommendations,
        super._();

  final Map<String, List<RecipesModel>> _recommendations;
  @override
  @JsonKey()
  Map<String, List<RecipesModel>> get recommendations {
    if (_recommendations is EqualUnmodifiableMapView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_recommendations);
  }

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final FrontMasterModel masterInfo;

  @override
  String toString() {
    return 'RecipeRecommendationsState(recommendations: $recommendations, page: $page, masterInfo: $masterInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeRecommendationsState &&
            const DeepCollectionEquality()
                .equals(other._recommendations, _recommendations) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.masterInfo, masterInfo) ||
                other.masterInfo == masterInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_recommendations), page, masterInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeRecommendationsStateCopyWith<_$_RecipeRecommendationsState>
      get copyWith => __$$_RecipeRecommendationsStateCopyWithImpl<
          _$_RecipeRecommendationsState>(this, _$identity);
}

abstract class _RecipeRecommendationsState extends RecipeRecommendationsState {
  const factory _RecipeRecommendationsState(
      {final Map<String, List<RecipesModel>> recommendations,
      final int page,
      final FrontMasterModel masterInfo}) = _$_RecipeRecommendationsState;
  const _RecipeRecommendationsState._() : super._();

  @override
  Map<String, List<RecipesModel>> get recommendations;
  @override
  int get page;
  @override
  FrontMasterModel get masterInfo;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeRecommendationsStateCopyWith<_$_RecipeRecommendationsState>
      get copyWith => throw _privateConstructorUsedError;
}
