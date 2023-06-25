// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_detail_view_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeDetailViewHistoryModel _$RecipeDetailViewHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _RecipeDetailViewHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$RecipeDetailViewHistoryModel {
  String get recipeId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeDetailViewHistoryModelCopyWith<RecipeDetailViewHistoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDetailViewHistoryModelCopyWith<$Res> {
  factory $RecipeDetailViewHistoryModelCopyWith(
          RecipeDetailViewHistoryModel value,
          $Res Function(RecipeDetailViewHistoryModel) then) =
      _$RecipeDetailViewHistoryModelCopyWithImpl<$Res,
          RecipeDetailViewHistoryModel>;
  @useResult
  $Res call({String recipeId, String title});
}

/// @nodoc
class _$RecipeDetailViewHistoryModelCopyWithImpl<$Res,
        $Val extends RecipeDetailViewHistoryModel>
    implements $RecipeDetailViewHistoryModelCopyWith<$Res> {
  _$RecipeDetailViewHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeDetailViewHistoryModelCopyWith<$Res>
    implements $RecipeDetailViewHistoryModelCopyWith<$Res> {
  factory _$$_RecipeDetailViewHistoryModelCopyWith(
          _$_RecipeDetailViewHistoryModel value,
          $Res Function(_$_RecipeDetailViewHistoryModel) then) =
      __$$_RecipeDetailViewHistoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String recipeId, String title});
}

/// @nodoc
class __$$_RecipeDetailViewHistoryModelCopyWithImpl<$Res>
    extends _$RecipeDetailViewHistoryModelCopyWithImpl<$Res,
        _$_RecipeDetailViewHistoryModel>
    implements _$$_RecipeDetailViewHistoryModelCopyWith<$Res> {
  __$$_RecipeDetailViewHistoryModelCopyWithImpl(
      _$_RecipeDetailViewHistoryModel _value,
      $Res Function(_$_RecipeDetailViewHistoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeId = null,
    Object? title = null,
  }) {
    return _then(_$_RecipeDetailViewHistoryModel(
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeDetailViewHistoryModel implements _RecipeDetailViewHistoryModel {
  const _$_RecipeDetailViewHistoryModel({this.recipeId = '', this.title = ''});

  factory _$_RecipeDetailViewHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeDetailViewHistoryModelFromJson(json);

  @override
  @JsonKey()
  final String recipeId;
  @override
  @JsonKey()
  final String title;

  @override
  String toString() {
    return 'RecipeDetailViewHistoryModel(recipeId: $recipeId, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeDetailViewHistoryModel &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recipeId, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeDetailViewHistoryModelCopyWith<_$_RecipeDetailViewHistoryModel>
      get copyWith => __$$_RecipeDetailViewHistoryModelCopyWithImpl<
          _$_RecipeDetailViewHistoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeDetailViewHistoryModelToJson(
      this,
    );
  }
}

abstract class _RecipeDetailViewHistoryModel
    implements RecipeDetailViewHistoryModel {
  const factory _RecipeDetailViewHistoryModel(
      {final String recipeId,
      final String title}) = _$_RecipeDetailViewHistoryModel;

  factory _RecipeDetailViewHistoryModel.fromJson(Map<String, dynamic> json) =
      _$_RecipeDetailViewHistoryModel.fromJson;

  @override
  String get recipeId;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeDetailViewHistoryModelCopyWith<_$_RecipeDetailViewHistoryModel>
      get copyWith => throw _privateConstructorUsedError;
}
