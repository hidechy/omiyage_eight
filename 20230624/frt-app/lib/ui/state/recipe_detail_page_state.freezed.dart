// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_detail_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeDetailPageState {
  RecipeDetailModel get detailModel => throw _privateConstructorUsedError;
  List<RecipesModel> get recommendationRecipes =>
      throw _privateConstructorUsedError;
  FrontMasterModel get masterInfo => throw _privateConstructorUsedError;
  bool get recipeDetailVisible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeDetailPageStateCopyWith<RecipeDetailPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDetailPageStateCopyWith<$Res> {
  factory $RecipeDetailPageStateCopyWith(RecipeDetailPageState value,
          $Res Function(RecipeDetailPageState) then) =
      _$RecipeDetailPageStateCopyWithImpl<$Res, RecipeDetailPageState>;
  @useResult
  $Res call(
      {RecipeDetailModel detailModel,
      List<RecipesModel> recommendationRecipes,
      FrontMasterModel masterInfo,
      bool recipeDetailVisible});

  $RecipeDetailModelCopyWith<$Res> get detailModel;
  $FrontMasterModelCopyWith<$Res> get masterInfo;
}

/// @nodoc
class _$RecipeDetailPageStateCopyWithImpl<$Res,
        $Val extends RecipeDetailPageState>
    implements $RecipeDetailPageStateCopyWith<$Res> {
  _$RecipeDetailPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailModel = null,
    Object? recommendationRecipes = null,
    Object? masterInfo = null,
    Object? recipeDetailVisible = null,
  }) {
    return _then(_value.copyWith(
      detailModel: null == detailModel
          ? _value.detailModel
          : detailModel // ignore: cast_nullable_to_non_nullable
              as RecipeDetailModel,
      recommendationRecipes: null == recommendationRecipes
          ? _value.recommendationRecipes
          : recommendationRecipes // ignore: cast_nullable_to_non_nullable
              as List<RecipesModel>,
      masterInfo: null == masterInfo
          ? _value.masterInfo
          : masterInfo // ignore: cast_nullable_to_non_nullable
              as FrontMasterModel,
      recipeDetailVisible: null == recipeDetailVisible
          ? _value.recipeDetailVisible
          : recipeDetailVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeDetailModelCopyWith<$Res> get detailModel {
    return $RecipeDetailModelCopyWith<$Res>(_value.detailModel, (value) {
      return _then(_value.copyWith(detailModel: value) as $Val);
    });
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
abstract class _$$_RecipeDetailPageStateCopyWith<$Res>
    implements $RecipeDetailPageStateCopyWith<$Res> {
  factory _$$_RecipeDetailPageStateCopyWith(_$_RecipeDetailPageState value,
          $Res Function(_$_RecipeDetailPageState) then) =
      __$$_RecipeDetailPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RecipeDetailModel detailModel,
      List<RecipesModel> recommendationRecipes,
      FrontMasterModel masterInfo,
      bool recipeDetailVisible});

  @override
  $RecipeDetailModelCopyWith<$Res> get detailModel;
  @override
  $FrontMasterModelCopyWith<$Res> get masterInfo;
}

/// @nodoc
class __$$_RecipeDetailPageStateCopyWithImpl<$Res>
    extends _$RecipeDetailPageStateCopyWithImpl<$Res, _$_RecipeDetailPageState>
    implements _$$_RecipeDetailPageStateCopyWith<$Res> {
  __$$_RecipeDetailPageStateCopyWithImpl(_$_RecipeDetailPageState _value,
      $Res Function(_$_RecipeDetailPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailModel = null,
    Object? recommendationRecipes = null,
    Object? masterInfo = null,
    Object? recipeDetailVisible = null,
  }) {
    return _then(_$_RecipeDetailPageState(
      detailModel: null == detailModel
          ? _value.detailModel
          : detailModel // ignore: cast_nullable_to_non_nullable
              as RecipeDetailModel,
      recommendationRecipes: null == recommendationRecipes
          ? _value._recommendationRecipes
          : recommendationRecipes // ignore: cast_nullable_to_non_nullable
              as List<RecipesModel>,
      masterInfo: null == masterInfo
          ? _value.masterInfo
          : masterInfo // ignore: cast_nullable_to_non_nullable
              as FrontMasterModel,
      recipeDetailVisible: null == recipeDetailVisible
          ? _value.recipeDetailVisible
          : recipeDetailVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RecipeDetailPageState implements _RecipeDetailPageState {
  _$_RecipeDetailPageState(
      {this.detailModel = const RecipeDetailModel(),
      final List<RecipesModel> recommendationRecipes = const <RecipesModel>[],
      this.masterInfo = const FrontMasterModel(),
      this.recipeDetailVisible = true})
      : _recommendationRecipes = recommendationRecipes;

  @override
  @JsonKey()
  final RecipeDetailModel detailModel;
  final List<RecipesModel> _recommendationRecipes;
  @override
  @JsonKey()
  List<RecipesModel> get recommendationRecipes {
    if (_recommendationRecipes is EqualUnmodifiableListView)
      return _recommendationRecipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendationRecipes);
  }

  @override
  @JsonKey()
  final FrontMasterModel masterInfo;
  @override
  @JsonKey()
  final bool recipeDetailVisible;

  @override
  String toString() {
    return 'RecipeDetailPageState(detailModel: $detailModel, recommendationRecipes: $recommendationRecipes, masterInfo: $masterInfo, recipeDetailVisible: $recipeDetailVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeDetailPageState &&
            (identical(other.detailModel, detailModel) ||
                other.detailModel == detailModel) &&
            const DeepCollectionEquality()
                .equals(other._recommendationRecipes, _recommendationRecipes) &&
            (identical(other.masterInfo, masterInfo) ||
                other.masterInfo == masterInfo) &&
            (identical(other.recipeDetailVisible, recipeDetailVisible) ||
                other.recipeDetailVisible == recipeDetailVisible));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      detailModel,
      const DeepCollectionEquality().hash(_recommendationRecipes),
      masterInfo,
      recipeDetailVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeDetailPageStateCopyWith<_$_RecipeDetailPageState> get copyWith =>
      __$$_RecipeDetailPageStateCopyWithImpl<_$_RecipeDetailPageState>(
          this, _$identity);
}

abstract class _RecipeDetailPageState implements RecipeDetailPageState {
  factory _RecipeDetailPageState(
      {final RecipeDetailModel detailModel,
      final List<RecipesModel> recommendationRecipes,
      final FrontMasterModel masterInfo,
      final bool recipeDetailVisible}) = _$_RecipeDetailPageState;

  @override
  RecipeDetailModel get detailModel;
  @override
  List<RecipesModel> get recommendationRecipes;
  @override
  FrontMasterModel get masterInfo;
  @override
  bool get recipeDetailVisible;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeDetailPageStateCopyWith<_$_RecipeDetailPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
