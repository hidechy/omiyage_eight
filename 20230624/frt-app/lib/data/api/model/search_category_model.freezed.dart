// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchCategoryModel _$SearchCategoryModelFromJson(Map<String, dynamic> json) {
  return _SearchCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$SearchCategoryModel {
/* 第１カテゴリコード - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
  String get category1Code =>
      throw _privateConstructorUsedError; /* 第１カテゴリ名 - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
  String get category1Name =>
      throw _privateConstructorUsedError; /* 第２カテゴリコード - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
  String get category2Code =>
      throw _privateConstructorUsedError; /* 第２カテゴリ名 - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
  String get category2Name =>
      throw _privateConstructorUsedError; /* 第３カテゴリコード - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
  String get category3Code =>
      throw _privateConstructorUsedError; /* 第３カテゴリ名 - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
  String get category3Name =>
      throw _privateConstructorUsedError; /* 第４カテゴリコード - カテゴリ名または関連用語が設定されていない場合、nullを返 */
  String get category4Code =>
      throw _privateConstructorUsedError; /* 第４カテゴリ名 - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
  String get category4Name =>
      throw _privateConstructorUsedError; /* 医薬品カテゴリ判定 ``` true：医薬品カテゴリ false：医薬品カテゴリでない ``` */
  bool get isMedicineCategory =>
      throw _privateConstructorUsedError; /* カテゴリ配下の商品数 */
  int get productCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchCategoryModelCopyWith<SearchCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCategoryModelCopyWith<$Res> {
  factory $SearchCategoryModelCopyWith(
          SearchCategoryModel value, $Res Function(SearchCategoryModel) then) =
      _$SearchCategoryModelCopyWithImpl<$Res, SearchCategoryModel>;
  @useResult
  $Res call(
      {String category1Code,
      String category1Name,
      String category2Code,
      String category2Name,
      String category3Code,
      String category3Name,
      String category4Code,
      String category4Name,
      bool isMedicineCategory,
      int productCount});
}

/// @nodoc
class _$SearchCategoryModelCopyWithImpl<$Res, $Val extends SearchCategoryModel>
    implements $SearchCategoryModelCopyWith<$Res> {
  _$SearchCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category1Code = null,
    Object? category1Name = null,
    Object? category2Code = null,
    Object? category2Name = null,
    Object? category3Code = null,
    Object? category3Name = null,
    Object? category4Code = null,
    Object? category4Name = null,
    Object? isMedicineCategory = null,
    Object? productCount = null,
  }) {
    return _then(_value.copyWith(
      category1Code: null == category1Code
          ? _value.category1Code
          : category1Code // ignore: cast_nullable_to_non_nullable
              as String,
      category1Name: null == category1Name
          ? _value.category1Name
          : category1Name // ignore: cast_nullable_to_non_nullable
              as String,
      category2Code: null == category2Code
          ? _value.category2Code
          : category2Code // ignore: cast_nullable_to_non_nullable
              as String,
      category2Name: null == category2Name
          ? _value.category2Name
          : category2Name // ignore: cast_nullable_to_non_nullable
              as String,
      category3Code: null == category3Code
          ? _value.category3Code
          : category3Code // ignore: cast_nullable_to_non_nullable
              as String,
      category3Name: null == category3Name
          ? _value.category3Name
          : category3Name // ignore: cast_nullable_to_non_nullable
              as String,
      category4Code: null == category4Code
          ? _value.category4Code
          : category4Code // ignore: cast_nullable_to_non_nullable
              as String,
      category4Name: null == category4Name
          ? _value.category4Name
          : category4Name // ignore: cast_nullable_to_non_nullable
              as String,
      isMedicineCategory: null == isMedicineCategory
          ? _value.isMedicineCategory
          : isMedicineCategory // ignore: cast_nullable_to_non_nullable
              as bool,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchCategoryModelCopyWith<$Res>
    implements $SearchCategoryModelCopyWith<$Res> {
  factory _$$_SearchCategoryModelCopyWith(_$_SearchCategoryModel value,
          $Res Function(_$_SearchCategoryModel) then) =
      __$$_SearchCategoryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String category1Code,
      String category1Name,
      String category2Code,
      String category2Name,
      String category3Code,
      String category3Name,
      String category4Code,
      String category4Name,
      bool isMedicineCategory,
      int productCount});
}

/// @nodoc
class __$$_SearchCategoryModelCopyWithImpl<$Res>
    extends _$SearchCategoryModelCopyWithImpl<$Res, _$_SearchCategoryModel>
    implements _$$_SearchCategoryModelCopyWith<$Res> {
  __$$_SearchCategoryModelCopyWithImpl(_$_SearchCategoryModel _value,
      $Res Function(_$_SearchCategoryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category1Code = null,
    Object? category1Name = null,
    Object? category2Code = null,
    Object? category2Name = null,
    Object? category3Code = null,
    Object? category3Name = null,
    Object? category4Code = null,
    Object? category4Name = null,
    Object? isMedicineCategory = null,
    Object? productCount = null,
  }) {
    return _then(_$_SearchCategoryModel(
      category1Code: null == category1Code
          ? _value.category1Code
          : category1Code // ignore: cast_nullable_to_non_nullable
              as String,
      category1Name: null == category1Name
          ? _value.category1Name
          : category1Name // ignore: cast_nullable_to_non_nullable
              as String,
      category2Code: null == category2Code
          ? _value.category2Code
          : category2Code // ignore: cast_nullable_to_non_nullable
              as String,
      category2Name: null == category2Name
          ? _value.category2Name
          : category2Name // ignore: cast_nullable_to_non_nullable
              as String,
      category3Code: null == category3Code
          ? _value.category3Code
          : category3Code // ignore: cast_nullable_to_non_nullable
              as String,
      category3Name: null == category3Name
          ? _value.category3Name
          : category3Name // ignore: cast_nullable_to_non_nullable
              as String,
      category4Code: null == category4Code
          ? _value.category4Code
          : category4Code // ignore: cast_nullable_to_non_nullable
              as String,
      category4Name: null == category4Name
          ? _value.category4Name
          : category4Name // ignore: cast_nullable_to_non_nullable
              as String,
      isMedicineCategory: null == isMedicineCategory
          ? _value.isMedicineCategory
          : isMedicineCategory // ignore: cast_nullable_to_non_nullable
              as bool,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchCategoryModel extends _SearchCategoryModel {
  const _$_SearchCategoryModel(
      {this.category1Code = '',
      this.category1Name = '',
      this.category2Code = '',
      this.category2Name = '',
      this.category3Code = '',
      this.category3Name = '',
      this.category4Code = '',
      this.category4Name = '',
      this.isMedicineCategory = false,
      this.productCount = 0})
      : super._();

  factory _$_SearchCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchCategoryModelFromJson(json);

/* 第１カテゴリコード - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
  @override
  @JsonKey()
  final String category1Code;
/* 第１カテゴリ名 - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
  @override
  @JsonKey()
  final String category1Name;
/* 第２カテゴリコード - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
  @override
  @JsonKey()
  final String category2Code;
/* 第２カテゴリ名 - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
  @override
  @JsonKey()
  final String category2Name;
/* 第３カテゴリコード - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
  @override
  @JsonKey()
  final String category3Code;
/* 第３カテゴリ名 - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
  @override
  @JsonKey()
  final String category3Name;
/* 第４カテゴリコード - カテゴリ名または関連用語が設定されていない場合、nullを返 */
  @override
  @JsonKey()
  final String category4Code;
/* 第４カテゴリ名 - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
  @override
  @JsonKey()
  final String category4Name;
/* 医薬品カテゴリ判定 ``` true：医薬品カテゴリ false：医薬品カテゴリでない ``` */
  @override
  @JsonKey()
  final bool isMedicineCategory;
/* カテゴリ配下の商品数 */
  @override
  @JsonKey()
  final int productCount;

  @override
  String toString() {
    return 'SearchCategoryModel(category1Code: $category1Code, category1Name: $category1Name, category2Code: $category2Code, category2Name: $category2Name, category3Code: $category3Code, category3Name: $category3Name, category4Code: $category4Code, category4Name: $category4Name, isMedicineCategory: $isMedicineCategory, productCount: $productCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchCategoryModel &&
            (identical(other.category1Code, category1Code) ||
                other.category1Code == category1Code) &&
            (identical(other.category1Name, category1Name) ||
                other.category1Name == category1Name) &&
            (identical(other.category2Code, category2Code) ||
                other.category2Code == category2Code) &&
            (identical(other.category2Name, category2Name) ||
                other.category2Name == category2Name) &&
            (identical(other.category3Code, category3Code) ||
                other.category3Code == category3Code) &&
            (identical(other.category3Name, category3Name) ||
                other.category3Name == category3Name) &&
            (identical(other.category4Code, category4Code) ||
                other.category4Code == category4Code) &&
            (identical(other.category4Name, category4Name) ||
                other.category4Name == category4Name) &&
            (identical(other.isMedicineCategory, isMedicineCategory) ||
                other.isMedicineCategory == isMedicineCategory) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      category1Code,
      category1Name,
      category2Code,
      category2Name,
      category3Code,
      category3Name,
      category4Code,
      category4Name,
      isMedicineCategory,
      productCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchCategoryModelCopyWith<_$_SearchCategoryModel> get copyWith =>
      __$$_SearchCategoryModelCopyWithImpl<_$_SearchCategoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchCategoryModelToJson(
      this,
    );
  }
}

abstract class _SearchCategoryModel extends SearchCategoryModel {
  const factory _SearchCategoryModel(
      {final String category1Code,
      final String category1Name,
      final String category2Code,
      final String category2Name,
      final String category3Code,
      final String category3Name,
      final String category4Code,
      final String category4Name,
      final bool isMedicineCategory,
      final int productCount}) = _$_SearchCategoryModel;
  const _SearchCategoryModel._() : super._();

  factory _SearchCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_SearchCategoryModel.fromJson;

  @override /* 第１カテゴリコード - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
  String get category1Code;
  @override /* 第１カテゴリ名 - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
  String get category1Name;
  @override /* 第２カテゴリコード - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
  String get category2Code;
  @override /* 第２カテゴリ名 - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
  String get category2Name;
  @override /* 第３カテゴリコード - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
  String get category3Code;
  @override /* 第３カテゴリ名 - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
  String get category3Name;
  @override /* 第４カテゴリコード - カテゴリ名または関連用語が設定されていない場合、nullを返 */
  String get category4Code;
  @override /* 第４カテゴリ名 - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
  String get category4Name;
  @override /* 医薬品カテゴリ判定 ``` true：医薬品カテゴリ false：医薬品カテゴリでない ``` */
  bool get isMedicineCategory;
  @override /* カテゴリ配下の商品数 */
  int get productCount;
  @override
  @JsonKey(ignore: true)
  _$$_SearchCategoryModelCopyWith<_$_SearchCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
