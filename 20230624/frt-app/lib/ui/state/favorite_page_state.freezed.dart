// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoritePageState {
  List<ProductModel> get products => throw _privateConstructorUsedError;
  int get totalSize => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoritePageStateCopyWith<FavoritePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritePageStateCopyWith<$Res> {
  factory $FavoritePageStateCopyWith(
          FavoritePageState value, $Res Function(FavoritePageState) then) =
      _$FavoritePageStateCopyWithImpl<$Res, FavoritePageState>;
  @useResult
  $Res call(
      {List<ProductModel> products, int totalSize, int page, bool isLastPage});
}

/// @nodoc
class _$FavoritePageStateCopyWithImpl<$Res, $Val extends FavoritePageState>
    implements $FavoritePageStateCopyWith<$Res> {
  _$FavoritePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? totalSize = null,
    Object? page = null,
    Object? isLastPage = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      totalSize: null == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FavoritePageStateCopyWith<$Res>
    implements $FavoritePageStateCopyWith<$Res> {
  factory _$$_FavoritePageStateCopyWith(_$_FavoritePageState value,
          $Res Function(_$_FavoritePageState) then) =
      __$$_FavoritePageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductModel> products, int totalSize, int page, bool isLastPage});
}

/// @nodoc
class __$$_FavoritePageStateCopyWithImpl<$Res>
    extends _$FavoritePageStateCopyWithImpl<$Res, _$_FavoritePageState>
    implements _$$_FavoritePageStateCopyWith<$Res> {
  __$$_FavoritePageStateCopyWithImpl(
      _$_FavoritePageState _value, $Res Function(_$_FavoritePageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? totalSize = null,
    Object? page = null,
    Object? isLastPage = null,
  }) {
    return _then(_$_FavoritePageState(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      totalSize: null == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FavoritePageState extends _FavoritePageState {
  const _$_FavoritePageState(
      {final List<ProductModel> products = const <ProductModel>[],
      this.totalSize = 0,
      this.page = 1,
      this.isLastPage = false})
      : _products = products,
        super._();

  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final int totalSize;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final bool isLastPage;

  @override
  String toString() {
    return 'FavoritePageState(products: $products, totalSize: $totalSize, page: $page, isLastPage: $isLastPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoritePageState &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.totalSize, totalSize) ||
                other.totalSize == totalSize) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      totalSize,
      page,
      isLastPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoritePageStateCopyWith<_$_FavoritePageState> get copyWith =>
      __$$_FavoritePageStateCopyWithImpl<_$_FavoritePageState>(
          this, _$identity);
}

abstract class _FavoritePageState extends FavoritePageState {
  const factory _FavoritePageState(
      {final List<ProductModel> products,
      final int totalSize,
      final int page,
      final bool isLastPage}) = _$_FavoritePageState;
  const _FavoritePageState._() : super._();

  @override
  List<ProductModel> get products;
  @override
  int get totalSize;
  @override
  int get page;
  @override
  bool get isLastPage;
  @override
  @JsonKey(ignore: true)
  _$$_FavoritePageStateCopyWith<_$_FavoritePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
