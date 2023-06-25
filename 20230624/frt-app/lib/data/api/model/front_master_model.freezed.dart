// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'front_master_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FrontMasterModel _$FrontMasterModelFromJson(Map<String, dynamic> json) {
  return _FrontMasterModel.fromJson(json);
}

/// @nodoc
mixin _$FrontMasterModel {
/* カテゴリーマスタ情報 */
  List<FrontCategoryMasterModel> get categories =>
      throw _privateConstructorUsedError; /* レシピマスタ情報 */
  List<FrontRecipeMasterModel> get recipes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FrontMasterModelCopyWith<FrontMasterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrontMasterModelCopyWith<$Res> {
  factory $FrontMasterModelCopyWith(
          FrontMasterModel value, $Res Function(FrontMasterModel) then) =
      _$FrontMasterModelCopyWithImpl<$Res, FrontMasterModel>;
  @useResult
  $Res call(
      {List<FrontCategoryMasterModel> categories,
      List<FrontRecipeMasterModel> recipes});
}

/// @nodoc
class _$FrontMasterModelCopyWithImpl<$Res, $Val extends FrontMasterModel>
    implements $FrontMasterModelCopyWith<$Res> {
  _$FrontMasterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? recipes = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<FrontCategoryMasterModel>,
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<FrontRecipeMasterModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FrontMasterModelCopyWith<$Res>
    implements $FrontMasterModelCopyWith<$Res> {
  factory _$$_FrontMasterModelCopyWith(
          _$_FrontMasterModel value, $Res Function(_$_FrontMasterModel) then) =
      __$$_FrontMasterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FrontCategoryMasterModel> categories,
      List<FrontRecipeMasterModel> recipes});
}

/// @nodoc
class __$$_FrontMasterModelCopyWithImpl<$Res>
    extends _$FrontMasterModelCopyWithImpl<$Res, _$_FrontMasterModel>
    implements _$$_FrontMasterModelCopyWith<$Res> {
  __$$_FrontMasterModelCopyWithImpl(
      _$_FrontMasterModel _value, $Res Function(_$_FrontMasterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? recipes = null,
  }) {
    return _then(_$_FrontMasterModel(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<FrontCategoryMasterModel>,
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<FrontRecipeMasterModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FrontMasterModel implements _FrontMasterModel {
  const _$_FrontMasterModel(
      {final List<FrontCategoryMasterModel> categories =
          const <FrontCategoryMasterModel>[],
      final List<FrontRecipeMasterModel> recipes =
          const <FrontRecipeMasterModel>[]})
      : _categories = categories,
        _recipes = recipes;

  factory _$_FrontMasterModel.fromJson(Map<String, dynamic> json) =>
      _$$_FrontMasterModelFromJson(json);

/* カテゴリーマスタ情報 */
  final List<FrontCategoryMasterModel> _categories;
/* カテゴリーマスタ情報 */
  @override
  @JsonKey()
  List<FrontCategoryMasterModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

/* レシピマスタ情報 */
  final List<FrontRecipeMasterModel> _recipes;
/* レシピマスタ情報 */
  @override
  @JsonKey()
  List<FrontRecipeMasterModel> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString() {
    return 'FrontMasterModel(categories: $categories, recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FrontMasterModel &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_recipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FrontMasterModelCopyWith<_$_FrontMasterModel> get copyWith =>
      __$$_FrontMasterModelCopyWithImpl<_$_FrontMasterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FrontMasterModelToJson(
      this,
    );
  }
}

abstract class _FrontMasterModel implements FrontMasterModel {
  const factory _FrontMasterModel(
      {final List<FrontCategoryMasterModel> categories,
      final List<FrontRecipeMasterModel> recipes}) = _$_FrontMasterModel;

  factory _FrontMasterModel.fromJson(Map<String, dynamic> json) =
      _$_FrontMasterModel.fromJson;

  @override /* カテゴリーマスタ情報 */
  List<FrontCategoryMasterModel> get categories;
  @override /* レシピマスタ情報 */
  List<FrontRecipeMasterModel> get recipes;
  @override
  @JsonKey(ignore: true)
  _$$_FrontMasterModelCopyWith<_$_FrontMasterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
