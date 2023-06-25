// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IngredientGroupModel _$IngredientGroupModelFromJson(Map<String, dynamic> json) {
  return _IngredientGroupModel.fromJson(json);
}

/// @nodoc
mixin _$IngredientGroupModel {
  String get name => throw _privateConstructorUsedError;
  List<IngredientModel> get ingredients => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientGroupModelCopyWith<IngredientGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientGroupModelCopyWith<$Res> {
  factory $IngredientGroupModelCopyWith(IngredientGroupModel value,
          $Res Function(IngredientGroupModel) then) =
      _$IngredientGroupModelCopyWithImpl<$Res, IngredientGroupModel>;
  @useResult
  $Res call({String name, List<IngredientModel> ingredients});
}

/// @nodoc
class _$IngredientGroupModelCopyWithImpl<$Res,
        $Val extends IngredientGroupModel>
    implements $IngredientGroupModelCopyWith<$Res> {
  _$IngredientGroupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? ingredients = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IngredientGroupModelCopyWith<$Res>
    implements $IngredientGroupModelCopyWith<$Res> {
  factory _$$_IngredientGroupModelCopyWith(_$_IngredientGroupModel value,
          $Res Function(_$_IngredientGroupModel) then) =
      __$$_IngredientGroupModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<IngredientModel> ingredients});
}

/// @nodoc
class __$$_IngredientGroupModelCopyWithImpl<$Res>
    extends _$IngredientGroupModelCopyWithImpl<$Res, _$_IngredientGroupModel>
    implements _$$_IngredientGroupModelCopyWith<$Res> {
  __$$_IngredientGroupModelCopyWithImpl(_$_IngredientGroupModel _value,
      $Res Function(_$_IngredientGroupModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? ingredients = null,
  }) {
    return _then(_$_IngredientGroupModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IngredientGroupModel implements _IngredientGroupModel {
  const _$_IngredientGroupModel(
      {this.name = '',
      final List<IngredientModel> ingredients = const <IngredientModel>[]})
      : _ingredients = ingredients;

  factory _$_IngredientGroupModel.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientGroupModelFromJson(json);

  @override
  @JsonKey()
  final String name;
  final List<IngredientModel> _ingredients;
  @override
  @JsonKey()
  List<IngredientModel> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  String toString() {
    return 'IngredientGroupModel(name: $name, ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientGroupModel &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_ingredients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientGroupModelCopyWith<_$_IngredientGroupModel> get copyWith =>
      __$$_IngredientGroupModelCopyWithImpl<_$_IngredientGroupModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IngredientGroupModelToJson(
      this,
    );
  }
}

abstract class _IngredientGroupModel implements IngredientGroupModel {
  const factory _IngredientGroupModel(
      {final String name,
      final List<IngredientModel> ingredients}) = _$_IngredientGroupModel;

  factory _IngredientGroupModel.fromJson(Map<String, dynamic> json) =
      _$_IngredientGroupModel.fromJson;

  @override
  String get name;
  @override
  List<IngredientModel> get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientGroupModelCopyWith<_$_IngredientGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}
