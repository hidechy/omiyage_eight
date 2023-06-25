// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_keyword_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeKeywordSearchState {
  List<RecipesModel> get recipes => throw _privateConstructorUsedError;
  int get totalSize => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get pageHasNext => throw _privateConstructorUsedError;
  FrontMasterModel get masterInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeKeywordSearchStateCopyWith<RecipeKeywordSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeKeywordSearchStateCopyWith<$Res> {
  factory $RecipeKeywordSearchStateCopyWith(RecipeKeywordSearchState value,
          $Res Function(RecipeKeywordSearchState) then) =
      _$RecipeKeywordSearchStateCopyWithImpl<$Res, RecipeKeywordSearchState>;
  @useResult
  $Res call(
      {List<RecipesModel> recipes,
      int totalSize,
      int page,
      bool pageHasNext,
      FrontMasterModel masterInfo});

  $FrontMasterModelCopyWith<$Res> get masterInfo;
}

/// @nodoc
class _$RecipeKeywordSearchStateCopyWithImpl<$Res,
        $Val extends RecipeKeywordSearchState>
    implements $RecipeKeywordSearchStateCopyWith<$Res> {
  _$RecipeKeywordSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? totalSize = null,
    Object? page = null,
    Object? pageHasNext = null,
    Object? masterInfo = null,
  }) {
    return _then(_value.copyWith(
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipesModel>,
      totalSize: null == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageHasNext: null == pageHasNext
          ? _value.pageHasNext
          : pageHasNext // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_RecipeKeywordSearchStateCopyWith<$Res>
    implements $RecipeKeywordSearchStateCopyWith<$Res> {
  factory _$$_RecipeKeywordSearchStateCopyWith(
          _$_RecipeKeywordSearchState value,
          $Res Function(_$_RecipeKeywordSearchState) then) =
      __$$_RecipeKeywordSearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<RecipesModel> recipes,
      int totalSize,
      int page,
      bool pageHasNext,
      FrontMasterModel masterInfo});

  @override
  $FrontMasterModelCopyWith<$Res> get masterInfo;
}

/// @nodoc
class __$$_RecipeKeywordSearchStateCopyWithImpl<$Res>
    extends _$RecipeKeywordSearchStateCopyWithImpl<$Res,
        _$_RecipeKeywordSearchState>
    implements _$$_RecipeKeywordSearchStateCopyWith<$Res> {
  __$$_RecipeKeywordSearchStateCopyWithImpl(_$_RecipeKeywordSearchState _value,
      $Res Function(_$_RecipeKeywordSearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? totalSize = null,
    Object? page = null,
    Object? pageHasNext = null,
    Object? masterInfo = null,
  }) {
    return _then(_$_RecipeKeywordSearchState(
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipesModel>,
      totalSize: null == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageHasNext: null == pageHasNext
          ? _value.pageHasNext
          : pageHasNext // ignore: cast_nullable_to_non_nullable
              as bool,
      masterInfo: null == masterInfo
          ? _value.masterInfo
          : masterInfo // ignore: cast_nullable_to_non_nullable
              as FrontMasterModel,
    ));
  }
}

/// @nodoc

class _$_RecipeKeywordSearchState extends _RecipeKeywordSearchState {
  const _$_RecipeKeywordSearchState(
      {final List<RecipesModel> recipes = const <RecipesModel>[],
      this.totalSize = 0,
      this.page = 0,
      this.pageHasNext = false,
      this.masterInfo = const FrontMasterModel()})
      : _recipes = recipes,
        super._();

  final List<RecipesModel> _recipes;
  @override
  @JsonKey()
  List<RecipesModel> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  @JsonKey()
  final int totalSize;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final bool pageHasNext;
  @override
  @JsonKey()
  final FrontMasterModel masterInfo;

  @override
  String toString() {
    return 'RecipeKeywordSearchState(recipes: $recipes, totalSize: $totalSize, page: $page, pageHasNext: $pageHasNext, masterInfo: $masterInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeKeywordSearchState &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            (identical(other.totalSize, totalSize) ||
                other.totalSize == totalSize) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageHasNext, pageHasNext) ||
                other.pageHasNext == pageHasNext) &&
            (identical(other.masterInfo, masterInfo) ||
                other.masterInfo == masterInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recipes),
      totalSize,
      page,
      pageHasNext,
      masterInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeKeywordSearchStateCopyWith<_$_RecipeKeywordSearchState>
      get copyWith => __$$_RecipeKeywordSearchStateCopyWithImpl<
          _$_RecipeKeywordSearchState>(this, _$identity);
}

abstract class _RecipeKeywordSearchState extends RecipeKeywordSearchState {
  const factory _RecipeKeywordSearchState(
      {final List<RecipesModel> recipes,
      final int totalSize,
      final int page,
      final bool pageHasNext,
      final FrontMasterModel masterInfo}) = _$_RecipeKeywordSearchState;
  const _RecipeKeywordSearchState._() : super._();

  @override
  List<RecipesModel> get recipes;
  @override
  int get totalSize;
  @override
  int get page;
  @override
  bool get pageHasNext;
  @override
  FrontMasterModel get masterInfo;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeKeywordSearchStateCopyWith<_$_RecipeKeywordSearchState>
      get copyWith => throw _privateConstructorUsedError;
}
