// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_search_results_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductSearchResultsPageState {
  SortNumber get selectedSortNumber => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;
  List<SearchCategoryModel> get categories =>
      throw _privateConstructorUsedError;
  int get totalSize => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductSearchResultsPageStateCopyWith<ProductSearchResultsPageState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSearchResultsPageStateCopyWith<$Res> {
  factory $ProductSearchResultsPageStateCopyWith(
          ProductSearchResultsPageState value,
          $Res Function(ProductSearchResultsPageState) then) =
      _$ProductSearchResultsPageStateCopyWithImpl<$Res,
          ProductSearchResultsPageState>;
  @useResult
  $Res call(
      {SortNumber selectedSortNumber,
      List<ProductModel> products,
      List<SearchCategoryModel> categories,
      int totalSize});
}

/// @nodoc
class _$ProductSearchResultsPageStateCopyWithImpl<$Res,
        $Val extends ProductSearchResultsPageState>
    implements $ProductSearchResultsPageStateCopyWith<$Res> {
  _$ProductSearchResultsPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSortNumber = null,
    Object? products = null,
    Object? categories = null,
    Object? totalSize = null,
  }) {
    return _then(_value.copyWith(
      selectedSortNumber: null == selectedSortNumber
          ? _value.selectedSortNumber
          : selectedSortNumber // ignore: cast_nullable_to_non_nullable
              as SortNumber,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<SearchCategoryModel>,
      totalSize: null == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductSearchResultsPageStateCopyWith<$Res>
    implements $ProductSearchResultsPageStateCopyWith<$Res> {
  factory _$$_ProductSearchResultsPageStateCopyWith(
          _$_ProductSearchResultsPageState value,
          $Res Function(_$_ProductSearchResultsPageState) then) =
      __$$_ProductSearchResultsPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortNumber selectedSortNumber,
      List<ProductModel> products,
      List<SearchCategoryModel> categories,
      int totalSize});
}

/// @nodoc
class __$$_ProductSearchResultsPageStateCopyWithImpl<$Res>
    extends _$ProductSearchResultsPageStateCopyWithImpl<$Res,
        _$_ProductSearchResultsPageState>
    implements _$$_ProductSearchResultsPageStateCopyWith<$Res> {
  __$$_ProductSearchResultsPageStateCopyWithImpl(
      _$_ProductSearchResultsPageState _value,
      $Res Function(_$_ProductSearchResultsPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSortNumber = null,
    Object? products = null,
    Object? categories = null,
    Object? totalSize = null,
  }) {
    return _then(_$_ProductSearchResultsPageState(
      selectedSortNumber: null == selectedSortNumber
          ? _value.selectedSortNumber
          : selectedSortNumber // ignore: cast_nullable_to_non_nullable
              as SortNumber,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<SearchCategoryModel>,
      totalSize: null == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ProductSearchResultsPageState
    implements _ProductSearchResultsPageState {
  _$_ProductSearchResultsPageState(
      {this.selectedSortNumber = SortNumber.recommendation,
      final List<ProductModel> products = const <ProductModel>[],
      final List<SearchCategoryModel> categories =
          const <SearchCategoryModel>[],
      this.totalSize = 0})
      : _products = products,
        _categories = categories;

  @override
  @JsonKey()
  final SortNumber selectedSortNumber;
  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<SearchCategoryModel> _categories;
  @override
  @JsonKey()
  List<SearchCategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final int totalSize;

  @override
  String toString() {
    return 'ProductSearchResultsPageState(selectedSortNumber: $selectedSortNumber, products: $products, categories: $categories, totalSize: $totalSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductSearchResultsPageState &&
            (identical(other.selectedSortNumber, selectedSortNumber) ||
                other.selectedSortNumber == selectedSortNumber) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.totalSize, totalSize) ||
                other.totalSize == totalSize));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedSortNumber,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_categories),
      totalSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductSearchResultsPageStateCopyWith<_$_ProductSearchResultsPageState>
      get copyWith => __$$_ProductSearchResultsPageStateCopyWithImpl<
          _$_ProductSearchResultsPageState>(this, _$identity);
}

abstract class _ProductSearchResultsPageState
    implements ProductSearchResultsPageState {
  factory _ProductSearchResultsPageState(
      {final SortNumber selectedSortNumber,
      final List<ProductModel> products,
      final List<SearchCategoryModel> categories,
      final int totalSize}) = _$_ProductSearchResultsPageState;

  @override
  SortNumber get selectedSortNumber;
  @override
  List<ProductModel> get products;
  @override
  List<SearchCategoryModel> get categories;
  @override
  int get totalSize;
  @override
  @JsonKey(ignore: true)
  _$$_ProductSearchResultsPageStateCopyWith<_$_ProductSearchResultsPageState>
      get copyWith => throw _privateConstructorUsedError;
}
