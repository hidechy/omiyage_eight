// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
/* 階層レベル */
  int get categoryLevel => throw _privateConstructorUsedError; /* カテゴリコード */
  String get categoryCode => throw _privateConstructorUsedError; /* カテゴリ名称 */
  String get categoryName => throw _privateConstructorUsedError; /* 表示順 */
  int get sortNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call(
      {int categoryLevel,
      String categoryCode,
      String categoryName,
      int sortNumber});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

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
    Object? sortNumber = null,
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
      sortNumber: null == sortNumber
          ? _value.sortNumber
          : sortNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryModelCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$_CategoryModelCopyWith(
          _$_CategoryModel value, $Res Function(_$_CategoryModel) then) =
      __$$_CategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int categoryLevel,
      String categoryCode,
      String categoryName,
      int sortNumber});
}

/// @nodoc
class __$$_CategoryModelCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$_CategoryModel>
    implements _$$_CategoryModelCopyWith<$Res> {
  __$$_CategoryModelCopyWithImpl(
      _$_CategoryModel _value, $Res Function(_$_CategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryLevel = null,
    Object? categoryCode = null,
    Object? categoryName = null,
    Object? sortNumber = null,
  }) {
    return _then(_$_CategoryModel(
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
      sortNumber: null == sortNumber
          ? _value.sortNumber
          : sortNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryModel with BaseCategoryModel implements _CategoryModel {
  const _$_CategoryModel(
      {this.categoryLevel = 0,
      this.categoryCode = '',
      this.categoryName = '',
      this.sortNumber = 0});

  factory _$_CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryModelFromJson(json);

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
/* 表示順 */
  @override
  @JsonKey()
  final int sortNumber;

  @override
  String toString() {
    return 'CategoryModel(categoryLevel: $categoryLevel, categoryCode: $categoryCode, categoryName: $categoryName, sortNumber: $sortNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryModel &&
            (identical(other.categoryLevel, categoryLevel) ||
                other.categoryLevel == categoryLevel) &&
            (identical(other.categoryCode, categoryCode) ||
                other.categoryCode == categoryCode) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.sortNumber, sortNumber) ||
                other.sortNumber == sortNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, categoryLevel, categoryCode, categoryName, sortNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryModelCopyWith<_$_CategoryModel> get copyWith =>
      __$$_CategoryModelCopyWithImpl<_$_CategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryModelToJson(
      this,
    );
  }
}

abstract class _CategoryModel implements CategoryModel, BaseCategoryModel {
  const factory _CategoryModel(
      {final int categoryLevel,
      final String categoryCode,
      final String categoryName,
      final int sortNumber}) = _$_CategoryModel;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryModel.fromJson;

  @override /* 階層レベル */
  int get categoryLevel;
  @override /* カテゴリコード */
  String get categoryCode;
  @override /* カテゴリ名称 */
  String get categoryName;
  @override /* 表示順 */
  int get sortNumber;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryModelCopyWith<_$_CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
