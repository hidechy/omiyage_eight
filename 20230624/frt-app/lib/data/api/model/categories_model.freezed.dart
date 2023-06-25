// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoriesModel _$CategoriesModelFromJson(Map<String, dynamic> json) {
  return _CategoriesModel.fromJson(json);
}

/// @nodoc
mixin _$CategoriesModel {
  @JsonKey()
  CategoryModel get target => throw _privateConstructorUsedError;
  @JsonKey()
  CategoryModel get parent =>
      throw _privateConstructorUsedError; /* 再起的に配下のカテゴリを取得する */
  List<CategoryModel> get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesModelCopyWith<CategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesModelCopyWith<$Res> {
  factory $CategoriesModelCopyWith(
          CategoriesModel value, $Res Function(CategoriesModel) then) =
      _$CategoriesModelCopyWithImpl<$Res, CategoriesModel>;
  @useResult
  $Res call(
      {@JsonKey() CategoryModel target,
      @JsonKey() CategoryModel parent,
      List<CategoryModel> children});

  $CategoryModelCopyWith<$Res> get target;
  $CategoryModelCopyWith<$Res> get parent;
}

/// @nodoc
class _$CategoriesModelCopyWithImpl<$Res, $Val extends CategoriesModel>
    implements $CategoriesModelCopyWith<$Res> {
  _$CategoriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? target = null,
    Object? parent = null,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res> get target {
    return $CategoryModelCopyWith<$Res>(_value.target, (value) {
      return _then(_value.copyWith(target: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res> get parent {
    return $CategoryModelCopyWith<$Res>(_value.parent, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CategoriesModelCopyWith<$Res>
    implements $CategoriesModelCopyWith<$Res> {
  factory _$$_CategoriesModelCopyWith(
          _$_CategoriesModel value, $Res Function(_$_CategoriesModel) then) =
      __$$_CategoriesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey() CategoryModel target,
      @JsonKey() CategoryModel parent,
      List<CategoryModel> children});

  @override
  $CategoryModelCopyWith<$Res> get target;
  @override
  $CategoryModelCopyWith<$Res> get parent;
}

/// @nodoc
class __$$_CategoriesModelCopyWithImpl<$Res>
    extends _$CategoriesModelCopyWithImpl<$Res, _$_CategoriesModel>
    implements _$$_CategoriesModelCopyWith<$Res> {
  __$$_CategoriesModelCopyWithImpl(
      _$_CategoriesModel _value, $Res Function(_$_CategoriesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? target = null,
    Object? parent = null,
    Object? children = null,
  }) {
    return _then(_$_CategoriesModel(
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      parent: null == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoriesModel implements _CategoriesModel {
  const _$_CategoriesModel(
      {@JsonKey() this.target = const CategoryModel(),
      @JsonKey() this.parent = const CategoryModel(),
      final List<CategoryModel> children = const <CategoryModel>[]})
      : _children = children;

  factory _$_CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoriesModelFromJson(json);

  @override
  @JsonKey()
  final CategoryModel target;
  @override
  @JsonKey()
  final CategoryModel parent;
/* 再起的に配下のカテゴリを取得する */
  final List<CategoryModel> _children;
/* 再起的に配下のカテゴリを取得する */
  @override
  @JsonKey()
  List<CategoryModel> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'CategoriesModel(target: $target, parent: $parent, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesModel &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, target, parent,
      const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoriesModelCopyWith<_$_CategoriesModel> get copyWith =>
      __$$_CategoriesModelCopyWithImpl<_$_CategoriesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoriesModelToJson(
      this,
    );
  }
}

abstract class _CategoriesModel implements CategoriesModel {
  const factory _CategoriesModel(
      {@JsonKey() final CategoryModel target,
      @JsonKey() final CategoryModel parent,
      final List<CategoryModel> children}) = _$_CategoriesModel;

  factory _CategoriesModel.fromJson(Map<String, dynamic> json) =
      _$_CategoriesModel.fromJson;

  @override
  @JsonKey()
  CategoryModel get target;
  @override
  @JsonKey()
  CategoryModel get parent;
  @override /* 再起的に配下のカテゴリを取得する */
  List<CategoryModel> get children;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesModelCopyWith<_$_CategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
