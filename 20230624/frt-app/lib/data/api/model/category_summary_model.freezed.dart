// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategorySummaryModel _$CategorySummaryModelFromJson(Map<String, dynamic> json) {
  return _CategorySummaryModel.fromJson(json);
}

/// @nodoc
mixin _$CategorySummaryModel {
/* 検索対象カテゴリコード */
  String get searchCategoryCode =>
      throw _privateConstructorUsedError; /* 検索対象カテゴリ名 */
  String get searchCategoryName => throw _privateConstructorUsedError;
  List<CategoryOverviewModel> get categoriesOverview =>
      throw _privateConstructorUsedError;
  List<CategorySummaryDataModel> get categorys =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategorySummaryModelCopyWith<CategorySummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategorySummaryModelCopyWith<$Res> {
  factory $CategorySummaryModelCopyWith(CategorySummaryModel value,
          $Res Function(CategorySummaryModel) then) =
      _$CategorySummaryModelCopyWithImpl<$Res, CategorySummaryModel>;
  @useResult
  $Res call(
      {String searchCategoryCode,
      String searchCategoryName,
      List<CategoryOverviewModel> categoriesOverview,
      List<CategorySummaryDataModel> categorys});
}

/// @nodoc
class _$CategorySummaryModelCopyWithImpl<$Res,
        $Val extends CategorySummaryModel>
    implements $CategorySummaryModelCopyWith<$Res> {
  _$CategorySummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchCategoryCode = null,
    Object? searchCategoryName = null,
    Object? categoriesOverview = null,
    Object? categorys = null,
  }) {
    return _then(_value.copyWith(
      searchCategoryCode: null == searchCategoryCode
          ? _value.searchCategoryCode
          : searchCategoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      searchCategoryName: null == searchCategoryName
          ? _value.searchCategoryName
          : searchCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoriesOverview: null == categoriesOverview
          ? _value.categoriesOverview
          : categoriesOverview // ignore: cast_nullable_to_non_nullable
              as List<CategoryOverviewModel>,
      categorys: null == categorys
          ? _value.categorys
          : categorys // ignore: cast_nullable_to_non_nullable
              as List<CategorySummaryDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategorySummaryModelCopyWith<$Res>
    implements $CategorySummaryModelCopyWith<$Res> {
  factory _$$_CategorySummaryModelCopyWith(_$_CategorySummaryModel value,
          $Res Function(_$_CategorySummaryModel) then) =
      __$$_CategorySummaryModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String searchCategoryCode,
      String searchCategoryName,
      List<CategoryOverviewModel> categoriesOverview,
      List<CategorySummaryDataModel> categorys});
}

/// @nodoc
class __$$_CategorySummaryModelCopyWithImpl<$Res>
    extends _$CategorySummaryModelCopyWithImpl<$Res, _$_CategorySummaryModel>
    implements _$$_CategorySummaryModelCopyWith<$Res> {
  __$$_CategorySummaryModelCopyWithImpl(_$_CategorySummaryModel _value,
      $Res Function(_$_CategorySummaryModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchCategoryCode = null,
    Object? searchCategoryName = null,
    Object? categoriesOverview = null,
    Object? categorys = null,
  }) {
    return _then(_$_CategorySummaryModel(
      searchCategoryCode: null == searchCategoryCode
          ? _value.searchCategoryCode
          : searchCategoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      searchCategoryName: null == searchCategoryName
          ? _value.searchCategoryName
          : searchCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoriesOverview: null == categoriesOverview
          ? _value._categoriesOverview
          : categoriesOverview // ignore: cast_nullable_to_non_nullable
              as List<CategoryOverviewModel>,
      categorys: null == categorys
          ? _value._categorys
          : categorys // ignore: cast_nullable_to_non_nullable
              as List<CategorySummaryDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategorySummaryModel implements _CategorySummaryModel {
  const _$_CategorySummaryModel(
      {this.searchCategoryCode = '',
      this.searchCategoryName = '',
      final List<CategoryOverviewModel> categoriesOverview =
          const <CategoryOverviewModel>[],
      final List<CategorySummaryDataModel> categorys =
          const <CategorySummaryDataModel>[]})
      : _categoriesOverview = categoriesOverview,
        _categorys = categorys;

  factory _$_CategorySummaryModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategorySummaryModelFromJson(json);

/* 検索対象カテゴリコード */
  @override
  @JsonKey()
  final String searchCategoryCode;
/* 検索対象カテゴリ名 */
  @override
  @JsonKey()
  final String searchCategoryName;
  final List<CategoryOverviewModel> _categoriesOverview;
  @override
  @JsonKey()
  List<CategoryOverviewModel> get categoriesOverview {
    if (_categoriesOverview is EqualUnmodifiableListView)
      return _categoriesOverview;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoriesOverview);
  }

  final List<CategorySummaryDataModel> _categorys;
  @override
  @JsonKey()
  List<CategorySummaryDataModel> get categorys {
    if (_categorys is EqualUnmodifiableListView) return _categorys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categorys);
  }

  @override
  String toString() {
    return 'CategorySummaryModel(searchCategoryCode: $searchCategoryCode, searchCategoryName: $searchCategoryName, categoriesOverview: $categoriesOverview, categorys: $categorys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategorySummaryModel &&
            (identical(other.searchCategoryCode, searchCategoryCode) ||
                other.searchCategoryCode == searchCategoryCode) &&
            (identical(other.searchCategoryName, searchCategoryName) ||
                other.searchCategoryName == searchCategoryName) &&
            const DeepCollectionEquality()
                .equals(other._categoriesOverview, _categoriesOverview) &&
            const DeepCollectionEquality()
                .equals(other._categorys, _categorys));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      searchCategoryCode,
      searchCategoryName,
      const DeepCollectionEquality().hash(_categoriesOverview),
      const DeepCollectionEquality().hash(_categorys));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategorySummaryModelCopyWith<_$_CategorySummaryModel> get copyWith =>
      __$$_CategorySummaryModelCopyWithImpl<_$_CategorySummaryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategorySummaryModelToJson(
      this,
    );
  }
}

abstract class _CategorySummaryModel implements CategorySummaryModel {
  const factory _CategorySummaryModel(
          {final String searchCategoryCode,
          final String searchCategoryName,
          final List<CategoryOverviewModel> categoriesOverview,
          final List<CategorySummaryDataModel> categorys}) =
      _$_CategorySummaryModel;

  factory _CategorySummaryModel.fromJson(Map<String, dynamic> json) =
      _$_CategorySummaryModel.fromJson;

  @override /* 検索対象カテゴリコード */
  String get searchCategoryCode;
  @override /* 検索対象カテゴリ名 */
  String get searchCategoryName;
  @override
  List<CategoryOverviewModel> get categoriesOverview;
  @override
  List<CategorySummaryDataModel> get categorys;
  @override
  @JsonKey(ignore: true)
  _$$_CategorySummaryModelCopyWith<_$_CategorySummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
