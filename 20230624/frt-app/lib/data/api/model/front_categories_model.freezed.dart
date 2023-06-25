// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'front_categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FrontCategoriesModel _$FrontCategoriesModelFromJson(Map<String, dynamic> json) {
  return _FrontCategoriesModel.fromJson(json);
}

/// @nodoc
mixin _$FrontCategoriesModel {
/* 階層レベル */
  int get categoryLevel => throw _privateConstructorUsedError; /* カテゴリコード */
  String get categoryCode => throw _privateConstructorUsedError; /* カテゴリ名称 */
  String get categoryName =>
      throw _privateConstructorUsedError; /* カテゴリサムネイルURL（相対） */
  String get categoryThumbnail => throw _privateConstructorUsedError; /* 表示順 */
  int get sortNumber => throw _privateConstructorUsedError; /* カテゴリ詳細 */
  List<FrontCategoryModel> get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FrontCategoriesModelCopyWith<FrontCategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrontCategoriesModelCopyWith<$Res> {
  factory $FrontCategoriesModelCopyWith(FrontCategoriesModel value,
          $Res Function(FrontCategoriesModel) then) =
      _$FrontCategoriesModelCopyWithImpl<$Res, FrontCategoriesModel>;
  @useResult
  $Res call(
      {int categoryLevel,
      String categoryCode,
      String categoryName,
      String categoryThumbnail,
      int sortNumber,
      List<FrontCategoryModel> children});
}

/// @nodoc
class _$FrontCategoriesModelCopyWithImpl<$Res,
        $Val extends FrontCategoriesModel>
    implements $FrontCategoriesModelCopyWith<$Res> {
  _$FrontCategoriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryLevel = null,
    Object? categoryCode = null,
    Object? categoryName = null,
    Object? categoryThumbnail = null,
    Object? sortNumber = null,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      categoryLevel: null == categoryLevel
          ? _value.categoryLevel
          : categoryLevel // ignore: cast_nullable_to_non_nullable
              as int,
      categoryCode: null == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryThumbnail: null == categoryThumbnail
          ? _value.categoryThumbnail
          : categoryThumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      sortNumber: null == sortNumber
          ? _value.sortNumber
          : sortNumber // ignore: cast_nullable_to_non_nullable
              as int,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<FrontCategoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FrontCategoriesModelCopyWith<$Res>
    implements $FrontCategoriesModelCopyWith<$Res> {
  factory _$$_FrontCategoriesModelCopyWith(_$_FrontCategoriesModel value,
          $Res Function(_$_FrontCategoriesModel) then) =
      __$$_FrontCategoriesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int categoryLevel,
      String categoryCode,
      String categoryName,
      String categoryThumbnail,
      int sortNumber,
      List<FrontCategoryModel> children});
}

/// @nodoc
class __$$_FrontCategoriesModelCopyWithImpl<$Res>
    extends _$FrontCategoriesModelCopyWithImpl<$Res, _$_FrontCategoriesModel>
    implements _$$_FrontCategoriesModelCopyWith<$Res> {
  __$$_FrontCategoriesModelCopyWithImpl(_$_FrontCategoriesModel _value,
      $Res Function(_$_FrontCategoriesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryLevel = null,
    Object? categoryCode = null,
    Object? categoryName = null,
    Object? categoryThumbnail = null,
    Object? sortNumber = null,
    Object? children = null,
  }) {
    return _then(_$_FrontCategoriesModel(
      categoryLevel: null == categoryLevel
          ? _value.categoryLevel
          : categoryLevel // ignore: cast_nullable_to_non_nullable
              as int,
      categoryCode: null == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryThumbnail: null == categoryThumbnail
          ? _value.categoryThumbnail
          : categoryThumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      sortNumber: null == sortNumber
          ? _value.sortNumber
          : sortNumber // ignore: cast_nullable_to_non_nullable
              as int,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<FrontCategoryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FrontCategoriesModel
    with BaseCategoryModel, BaseFrontCategoryModel
    implements _FrontCategoriesModel {
  const _$_FrontCategoriesModel(
      {this.categoryLevel = 0,
      this.categoryCode = '',
      this.categoryName = '',
      this.categoryThumbnail = '',
      this.sortNumber = 0,
      final List<FrontCategoryModel> children = const <FrontCategoryModel>[]})
      : _children = children;

  factory _$_FrontCategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$$_FrontCategoriesModelFromJson(json);

/* 階層レベル */
  @override
  @JsonKey()
  final int categoryLevel;
/* カテゴリコード */
  @override
  @JsonKey()
  final String categoryCode;
/* カテゴリ名称 */
  @override
  @JsonKey()
  final String categoryName;
/* カテゴリサムネイルURL（相対） */
  @override
  @JsonKey()
  final String categoryThumbnail;
/* 表示順 */
  @override
  @JsonKey()
  final int sortNumber;
/* カテゴリ詳細 */
  final List<FrontCategoryModel> _children;
/* カテゴリ詳細 */
  @override
  @JsonKey()
  List<FrontCategoryModel> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'FrontCategoriesModel(categoryLevel: $categoryLevel, categoryCode: $categoryCode, categoryName: $categoryName, categoryThumbnail: $categoryThumbnail, sortNumber: $sortNumber, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FrontCategoriesModel &&
            (identical(other.categoryLevel, categoryLevel) ||
                other.categoryLevel == categoryLevel) &&
            (identical(other.categoryCode, categoryCode) ||
                other.categoryCode == categoryCode) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryThumbnail, categoryThumbnail) ||
                other.categoryThumbnail == categoryThumbnail) &&
            (identical(other.sortNumber, sortNumber) ||
                other.sortNumber == sortNumber) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      categoryLevel,
      categoryCode,
      categoryName,
      categoryThumbnail,
      sortNumber,
      const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FrontCategoriesModelCopyWith<_$_FrontCategoriesModel> get copyWith =>
      __$$_FrontCategoriesModelCopyWithImpl<_$_FrontCategoriesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FrontCategoriesModelToJson(
      this,
    );
  }
}

abstract class _FrontCategoriesModel
    implements FrontCategoriesModel, BaseCategoryModel, BaseFrontCategoryModel {
  const factory _FrontCategoriesModel(
      {final int categoryLevel,
      final String categoryCode,
      final String categoryName,
      final String categoryThumbnail,
      final int sortNumber,
      final List<FrontCategoryModel> children}) = _$_FrontCategoriesModel;

  factory _FrontCategoriesModel.fromJson(Map<String, dynamic> json) =
      _$_FrontCategoriesModel.fromJson;

  @override /* 階層レベル */
  int get categoryLevel;
  @override /* カテゴリコード */
  String get categoryCode;
  @override /* カテゴリ名称 */
  String get categoryName;
  @override /* カテゴリサムネイルURL（相対） */
  String get categoryThumbnail;
  @override /* 表示順 */
  int get sortNumber;
  @override /* カテゴリ詳細 */
  List<FrontCategoryModel> get children;
  @override
  @JsonKey(ignore: true)
  _$$_FrontCategoriesModelCopyWith<_$_FrontCategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
