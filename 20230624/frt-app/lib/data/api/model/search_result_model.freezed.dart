// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResultModel _$SearchResultModelFromJson(Map<String, dynamic> json) {
  return _SearchResultModel.fromJson(json);
}

/// @nodoc
mixin _$SearchResultModel {
/* 検索カテゴリ情報 */
  List<SearchCategoryModel> get categories =>
      throw _privateConstructorUsedError; /* 検索ファセット情報 */
  List<SearchFacetModel> get facets =>
      throw _privateConstructorUsedError; /* 検索商品情報 */
  List<ProductModel> get products =>
      throw _privateConstructorUsedError; /* もしかして文言リスト */
  List<String> get correctionSearchWords =>
      throw _privateConstructorUsedError; /* すべてカテゴリ選択判定  ``` true：すべてカテゴリ選択 false：すべてカテゴリ選択でない ``` */
  bool get isSelectedAllCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultModelCopyWith<SearchResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultModelCopyWith<$Res> {
  factory $SearchResultModelCopyWith(
          SearchResultModel value, $Res Function(SearchResultModel) then) =
      _$SearchResultModelCopyWithImpl<$Res, SearchResultModel>;
  @useResult
  $Res call(
      {List<SearchCategoryModel> categories,
      List<SearchFacetModel> facets,
      List<ProductModel> products,
      List<String> correctionSearchWords,
      bool isSelectedAllCategory});
}

/// @nodoc
class _$SearchResultModelCopyWithImpl<$Res, $Val extends SearchResultModel>
    implements $SearchResultModelCopyWith<$Res> {
  _$SearchResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? facets = null,
    Object? products = null,
    Object? correctionSearchWords = null,
    Object? isSelectedAllCategory = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<SearchCategoryModel>,
      facets: null == facets
          ? _value.facets
          : facets // ignore: cast_nullable_to_non_nullable
              as List<SearchFacetModel>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      correctionSearchWords: null == correctionSearchWords
          ? _value.correctionSearchWords
          : correctionSearchWords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isSelectedAllCategory: null == isSelectedAllCategory
          ? _value.isSelectedAllCategory
          : isSelectedAllCategory // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchResultModelCopyWith<$Res>
    implements $SearchResultModelCopyWith<$Res> {
  factory _$$_SearchResultModelCopyWith(_$_SearchResultModel value,
          $Res Function(_$_SearchResultModel) then) =
      __$$_SearchResultModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SearchCategoryModel> categories,
      List<SearchFacetModel> facets,
      List<ProductModel> products,
      List<String> correctionSearchWords,
      bool isSelectedAllCategory});
}

/// @nodoc
class __$$_SearchResultModelCopyWithImpl<$Res>
    extends _$SearchResultModelCopyWithImpl<$Res, _$_SearchResultModel>
    implements _$$_SearchResultModelCopyWith<$Res> {
  __$$_SearchResultModelCopyWithImpl(
      _$_SearchResultModel _value, $Res Function(_$_SearchResultModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? facets = null,
    Object? products = null,
    Object? correctionSearchWords = null,
    Object? isSelectedAllCategory = null,
  }) {
    return _then(_$_SearchResultModel(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<SearchCategoryModel>,
      facets: null == facets
          ? _value._facets
          : facets // ignore: cast_nullable_to_non_nullable
              as List<SearchFacetModel>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      correctionSearchWords: null == correctionSearchWords
          ? _value._correctionSearchWords
          : correctionSearchWords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isSelectedAllCategory: null == isSelectedAllCategory
          ? _value.isSelectedAllCategory
          : isSelectedAllCategory // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResultModel implements _SearchResultModel {
  const _$_SearchResultModel(
      {final List<SearchCategoryModel> categories =
          const <SearchCategoryModel>[],
      final List<SearchFacetModel> facets = const <SearchFacetModel>[],
      final List<ProductModel> products = const <ProductModel>[],
      final List<String> correctionSearchWords = const <String>[],
      this.isSelectedAllCategory = false})
      : _categories = categories,
        _facets = facets,
        _products = products,
        _correctionSearchWords = correctionSearchWords;

  factory _$_SearchResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResultModelFromJson(json);

/* 検索カテゴリ情報 */
  final List<SearchCategoryModel> _categories;
/* 検索カテゴリ情報 */
  @override
  @JsonKey()
  List<SearchCategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

/* 検索ファセット情報 */
  final List<SearchFacetModel> _facets;
/* 検索ファセット情報 */
  @override
  @JsonKey()
  List<SearchFacetModel> get facets {
    if (_facets is EqualUnmodifiableListView) return _facets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_facets);
  }

/* 検索商品情報 */
  final List<ProductModel> _products;
/* 検索商品情報 */
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

/* もしかして文言リスト */
  final List<String> _correctionSearchWords;
/* もしかして文言リスト */
  @override
  @JsonKey()
  List<String> get correctionSearchWords {
    if (_correctionSearchWords is EqualUnmodifiableListView)
      return _correctionSearchWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_correctionSearchWords);
  }

/* すべてカテゴリ選択判定  ``` true：すべてカテゴリ選択 false：すべてカテゴリ選択でない ``` */
  @override
  @JsonKey()
  final bool isSelectedAllCategory;

  @override
  String toString() {
    return 'SearchResultModel(categories: $categories, facets: $facets, products: $products, correctionSearchWords: $correctionSearchWords, isSelectedAllCategory: $isSelectedAllCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResultModel &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._facets, _facets) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._correctionSearchWords, _correctionSearchWords) &&
            (identical(other.isSelectedAllCategory, isSelectedAllCategory) ||
                other.isSelectedAllCategory == isSelectedAllCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_facets),
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_correctionSearchWords),
      isSelectedAllCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchResultModelCopyWith<_$_SearchResultModel> get copyWith =>
      __$$_SearchResultModelCopyWithImpl<_$_SearchResultModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResultModelToJson(
      this,
    );
  }
}

abstract class _SearchResultModel implements SearchResultModel {
  const factory _SearchResultModel(
      {final List<SearchCategoryModel> categories,
      final List<SearchFacetModel> facets,
      final List<ProductModel> products,
      final List<String> correctionSearchWords,
      final bool isSelectedAllCategory}) = _$_SearchResultModel;

  factory _SearchResultModel.fromJson(Map<String, dynamic> json) =
      _$_SearchResultModel.fromJson;

  @override /* 検索カテゴリ情報 */
  List<SearchCategoryModel> get categories;
  @override /* 検索ファセット情報 */
  List<SearchFacetModel> get facets;
  @override /* 検索商品情報 */
  List<ProductModel> get products;
  @override /* もしかして文言リスト */
  List<String> get correctionSearchWords;
  @override /* すべてカテゴリ選択判定  ``` true：すべてカテゴリ選択 false：すべてカテゴリ選択でない ``` */
  bool get isSelectedAllCategory;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResultModelCopyWith<_$_SearchResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}
