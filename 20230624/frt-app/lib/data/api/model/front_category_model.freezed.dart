// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'front_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FrontCategoryModel _$FrontCategoryModelFromJson(Map<String, dynamic> json) {
  return _FrontCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$FrontCategoryModel {
/* 階層レベル */
  int get categoryLevel => throw _privateConstructorUsedError; /* カテゴリコード */
  String get categoryCode => throw _privateConstructorUsedError; /* カテゴリ名称 */
  String get categoryName =>
      throw _privateConstructorUsedError; /* カテゴリサムネイルURL（相対） */
  String get categoryThumbnail => throw _privateConstructorUsedError; /* 表示順 */
  int get sortNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FrontCategoryModelCopyWith<FrontCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrontCategoryModelCopyWith<$Res> {
  factory $FrontCategoryModelCopyWith(
          FrontCategoryModel value, $Res Function(FrontCategoryModel) then) =
      _$FrontCategoryModelCopyWithImpl<$Res, FrontCategoryModel>;
  @useResult
  $Res call(
      {int categoryLevel,
      String categoryCode,
      String categoryName,
      String categoryThumbnail,
      int sortNumber});
}

/// @nodoc
class _$FrontCategoryModelCopyWithImpl<$Res, $Val extends FrontCategoryModel>
    implements $FrontCategoryModelCopyWith<$Res> {
  _$FrontCategoryModelCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FrontCategoryModelCopyWith<$Res>
    implements $FrontCategoryModelCopyWith<$Res> {
  factory _$$_FrontCategoryModelCopyWith(_$_FrontCategoryModel value,
          $Res Function(_$_FrontCategoryModel) then) =
      __$$_FrontCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int categoryLevel,
      String categoryCode,
      String categoryName,
      String categoryThumbnail,
      int sortNumber});
}

/// @nodoc
class __$$_FrontCategoryModelCopyWithImpl<$Res>
    extends _$FrontCategoryModelCopyWithImpl<$Res, _$_FrontCategoryModel>
    implements _$$_FrontCategoryModelCopyWith<$Res> {
  __$$_FrontCategoryModelCopyWithImpl(
      _$_FrontCategoryModel _value, $Res Function(_$_FrontCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryLevel = null,
    Object? categoryCode = null,
    Object? categoryName = null,
    Object? categoryThumbnail = null,
    Object? sortNumber = null,
  }) {
    return _then(_$_FrontCategoryModel(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FrontCategoryModel
    with BaseCategoryModel, BaseFrontCategoryModel
    implements _FrontCategoryModel {
  const _$_FrontCategoryModel(
      {this.categoryLevel = 0,
      this.categoryCode = '',
      this.categoryName = '',
      this.categoryThumbnail = '',
      this.sortNumber = 0});

  factory _$_FrontCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_FrontCategoryModelFromJson(json);

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

  @override
  String toString() {
    return 'FrontCategoryModel(categoryLevel: $categoryLevel, categoryCode: $categoryCode, categoryName: $categoryName, categoryThumbnail: $categoryThumbnail, sortNumber: $sortNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FrontCategoryModel &&
            (identical(other.categoryLevel, categoryLevel) ||
                other.categoryLevel == categoryLevel) &&
            (identical(other.categoryCode, categoryCode) ||
                other.categoryCode == categoryCode) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryThumbnail, categoryThumbnail) ||
                other.categoryThumbnail == categoryThumbnail) &&
            (identical(other.sortNumber, sortNumber) ||
                other.sortNumber == sortNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, categoryLevel, categoryCode,
      categoryName, categoryThumbnail, sortNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FrontCategoryModelCopyWith<_$_FrontCategoryModel> get copyWith =>
      __$$_FrontCategoryModelCopyWithImpl<_$_FrontCategoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FrontCategoryModelToJson(
      this,
    );
  }
}

abstract class _FrontCategoryModel
    implements FrontCategoryModel, BaseCategoryModel, BaseFrontCategoryModel {
  const factory _FrontCategoryModel(
      {final int categoryLevel,
      final String categoryCode,
      final String categoryName,
      final String categoryThumbnail,
      final int sortNumber}) = _$_FrontCategoryModel;

  factory _FrontCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_FrontCategoryModel.fromJson;

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
  @override
  @JsonKey(ignore: true)
  _$$_FrontCategoryModelCopyWith<_$_FrontCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
