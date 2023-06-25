// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_summary_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategorySummaryDataModel _$CategorySummaryDataModelFromJson(
    Map<String, dynamic> json) {
  return _CategorySummaryDataModel.fromJson(json);
}

/// @nodoc
mixin _$CategorySummaryDataModel {
/* カテゴリコード */
  String get categoryCode => throw _privateConstructorUsedError; /* カテゴリ名 */
  String get categoryName =>
      throw _privateConstructorUsedError; /* カテゴリサムネイルURL（相対） */
  String get categoryThumbnail =>
      throw _privateConstructorUsedError; /* カテゴリ商品数 */
  int get productCount => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategorySummaryDataModelCopyWith<CategorySummaryDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategorySummaryDataModelCopyWith<$Res> {
  factory $CategorySummaryDataModelCopyWith(CategorySummaryDataModel value,
          $Res Function(CategorySummaryDataModel) then) =
      _$CategorySummaryDataModelCopyWithImpl<$Res, CategorySummaryDataModel>;
  @useResult
  $Res call(
      {String categoryCode,
      String categoryName,
      String categoryThumbnail,
      int productCount,
      List<ProductModel> products});
}

/// @nodoc
class _$CategorySummaryDataModelCopyWithImpl<$Res,
        $Val extends CategorySummaryDataModel>
    implements $CategorySummaryDataModelCopyWith<$Res> {
  _$CategorySummaryDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryCode = null,
    Object? categoryName = null,
    Object? categoryThumbnail = null,
    Object? productCount = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
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
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategorySummaryDataModelCopyWith<$Res>
    implements $CategorySummaryDataModelCopyWith<$Res> {
  factory _$$_CategorySummaryDataModelCopyWith(
          _$_CategorySummaryDataModel value,
          $Res Function(_$_CategorySummaryDataModel) then) =
      __$$_CategorySummaryDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String categoryCode,
      String categoryName,
      String categoryThumbnail,
      int productCount,
      List<ProductModel> products});
}

/// @nodoc
class __$$_CategorySummaryDataModelCopyWithImpl<$Res>
    extends _$CategorySummaryDataModelCopyWithImpl<$Res,
        _$_CategorySummaryDataModel>
    implements _$$_CategorySummaryDataModelCopyWith<$Res> {
  __$$_CategorySummaryDataModelCopyWithImpl(_$_CategorySummaryDataModel _value,
      $Res Function(_$_CategorySummaryDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryCode = null,
    Object? categoryName = null,
    Object? categoryThumbnail = null,
    Object? productCount = null,
    Object? products = null,
  }) {
    return _then(_$_CategorySummaryDataModel(
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
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategorySummaryDataModel extends _CategorySummaryDataModel
    with BaseCategoryModel {
  const _$_CategorySummaryDataModel(
      {this.categoryCode = '',
      this.categoryName = '',
      this.categoryThumbnail = '',
      this.productCount = 0,
      final List<ProductModel> products = const <ProductModel>[]})
      : _products = products,
        super._();

  factory _$_CategorySummaryDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategorySummaryDataModelFromJson(json);

/* カテゴリコード */
  @override
  @JsonKey()
  final String categoryCode;
/* カテゴリ名 */
  @override
  @JsonKey()
  final String categoryName;
/* カテゴリサムネイルURL（相対） */
  @override
  @JsonKey()
  final String categoryThumbnail;
/* カテゴリ商品数 */
  @override
  @JsonKey()
  final int productCount;
  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CategorySummaryDataModel(categoryCode: $categoryCode, categoryName: $categoryName, categoryThumbnail: $categoryThumbnail, productCount: $productCount, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategorySummaryDataModel &&
            (identical(other.categoryCode, categoryCode) ||
                other.categoryCode == categoryCode) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryThumbnail, categoryThumbnail) ||
                other.categoryThumbnail == categoryThumbnail) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      categoryCode,
      categoryName,
      categoryThumbnail,
      productCount,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategorySummaryDataModelCopyWith<_$_CategorySummaryDataModel>
      get copyWith => __$$_CategorySummaryDataModelCopyWithImpl<
          _$_CategorySummaryDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategorySummaryDataModelToJson(
      this,
    );
  }
}

abstract class _CategorySummaryDataModel extends CategorySummaryDataModel
    implements BaseCategoryModel {
  const factory _CategorySummaryDataModel(
      {final String categoryCode,
      final String categoryName,
      final String categoryThumbnail,
      final int productCount,
      final List<ProductModel> products}) = _$_CategorySummaryDataModel;
  const _CategorySummaryDataModel._() : super._();

  factory _CategorySummaryDataModel.fromJson(Map<String, dynamic> json) =
      _$_CategorySummaryDataModel.fromJson;

  @override /* カテゴリコード */
  String get categoryCode;
  @override /* カテゴリ名 */
  String get categoryName;
  @override /* カテゴリサムネイルURL（相対） */
  String get categoryThumbnail;
  @override /* カテゴリ商品数 */
  int get productCount;
  @override
  List<ProductModel> get products;
  @override
  @JsonKey(ignore: true)
  _$$_CategorySummaryDataModelCopyWith<_$_CategorySummaryDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
