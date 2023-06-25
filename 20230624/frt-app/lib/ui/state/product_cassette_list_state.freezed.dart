// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_cassette_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductCassetteListState {
  List<ProductModel> get products => throw _privateConstructorUsedError;
  int get totalSize => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCassetteListStateCopyWith<ProductCassetteListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCassetteListStateCopyWith<$Res> {
  factory $ProductCassetteListStateCopyWith(ProductCassetteListState value,
          $Res Function(ProductCassetteListState) then) =
      _$ProductCassetteListStateCopyWithImpl<$Res, ProductCassetteListState>;
  @useResult
  $Res call({List<ProductModel> products, int totalSize});
}

/// @nodoc
class _$ProductCassetteListStateCopyWithImpl<$Res,
        $Val extends ProductCassetteListState>
    implements $ProductCassetteListStateCopyWith<$Res> {
  _$ProductCassetteListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? totalSize = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCassetteListStateCopyWith<$Res>
    implements $ProductCassetteListStateCopyWith<$Res> {
  factory _$$_ProductCassetteListStateCopyWith(
          _$_ProductCassetteListState value,
          $Res Function(_$_ProductCassetteListState) then) =
      __$$_ProductCassetteListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductModel> products, int totalSize});
}

/// @nodoc
class __$$_ProductCassetteListStateCopyWithImpl<$Res>
    extends _$ProductCassetteListStateCopyWithImpl<$Res,
        _$_ProductCassetteListState>
    implements _$$_ProductCassetteListStateCopyWith<$Res> {
  __$$_ProductCassetteListStateCopyWithImpl(_$_ProductCassetteListState _value,
      $Res Function(_$_ProductCassetteListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? totalSize = null,
  }) {
    return _then(_$_ProductCassetteListState(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      totalSize: null == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ProductCassetteListState extends _ProductCassetteListState {
  const _$_ProductCassetteListState(
      {final List<ProductModel> products = const <ProductModel>[],
      this.totalSize = 0})
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
  String toString() {
    return 'ProductCassetteListState(products: $products, totalSize: $totalSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductCassetteListState &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.totalSize, totalSize) ||
                other.totalSize == totalSize));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_products), totalSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCassetteListStateCopyWith<_$_ProductCassetteListState>
      get copyWith => __$$_ProductCassetteListStateCopyWithImpl<
          _$_ProductCassetteListState>(this, _$identity);
}

abstract class _ProductCassetteListState extends ProductCassetteListState {
  const factory _ProductCassetteListState(
      {final List<ProductModel> products,
      final int totalSize}) = _$_ProductCassetteListState;
  const _ProductCassetteListState._() : super._();

  @override
  List<ProductModel> get products;
  @override
  int get totalSize;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCassetteListStateCopyWith<_$_ProductCassetteListState>
      get copyWith => throw _privateConstructorUsedError;
}
