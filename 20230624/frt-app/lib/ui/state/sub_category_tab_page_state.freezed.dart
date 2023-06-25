// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_category_tab_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubCategoryTabPageState {
  SortNumber get selectedSortNumber => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;
  int get totalSize => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubCategoryTabPageStateCopyWith<SubCategoryTabPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryTabPageStateCopyWith<$Res> {
  factory $SubCategoryTabPageStateCopyWith(SubCategoryTabPageState value,
          $Res Function(SubCategoryTabPageState) then) =
      _$SubCategoryTabPageStateCopyWithImpl<$Res, SubCategoryTabPageState>;
  @useResult
  $Res call(
      {SortNumber selectedSortNumber,
      List<ProductModel> products,
      int totalSize});
}

/// @nodoc
class _$SubCategoryTabPageStateCopyWithImpl<$Res,
        $Val extends SubCategoryTabPageState>
    implements $SubCategoryTabPageStateCopyWith<$Res> {
  _$SubCategoryTabPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSortNumber = null,
    Object? products = null,
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
      totalSize: null == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubCategoryTabPageStateCopyWith<$Res>
    implements $SubCategoryTabPageStateCopyWith<$Res> {
  factory _$$_SubCategoryTabPageStateCopyWith(_$_SubCategoryTabPageState value,
          $Res Function(_$_SubCategoryTabPageState) then) =
      __$$_SubCategoryTabPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SortNumber selectedSortNumber,
      List<ProductModel> products,
      int totalSize});
}

/// @nodoc
class __$$_SubCategoryTabPageStateCopyWithImpl<$Res>
    extends _$SubCategoryTabPageStateCopyWithImpl<$Res,
        _$_SubCategoryTabPageState>
    implements _$$_SubCategoryTabPageStateCopyWith<$Res> {
  __$$_SubCategoryTabPageStateCopyWithImpl(_$_SubCategoryTabPageState _value,
      $Res Function(_$_SubCategoryTabPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSortNumber = null,
    Object? products = null,
    Object? totalSize = null,
  }) {
    return _then(_$_SubCategoryTabPageState(
      selectedSortNumber: null == selectedSortNumber
          ? _value.selectedSortNumber
          : selectedSortNumber // ignore: cast_nullable_to_non_nullable
              as SortNumber,
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

class _$_SubCategoryTabPageState implements _SubCategoryTabPageState {
  _$_SubCategoryTabPageState(
      {this.selectedSortNumber = SortNumber.recommendation,
      final List<ProductModel> products = const <ProductModel>[],
      this.totalSize = 0})
      : _products = products;

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

  @override
  @JsonKey()
  final int totalSize;

  @override
  String toString() {
    return 'SubCategoryTabPageState(selectedSortNumber: $selectedSortNumber, products: $products, totalSize: $totalSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubCategoryTabPageState &&
            (identical(other.selectedSortNumber, selectedSortNumber) ||
                other.selectedSortNumber == selectedSortNumber) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.totalSize, totalSize) ||
                other.totalSize == totalSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedSortNumber,
      const DeepCollectionEquality().hash(_products), totalSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubCategoryTabPageStateCopyWith<_$_SubCategoryTabPageState>
      get copyWith =>
          __$$_SubCategoryTabPageStateCopyWithImpl<_$_SubCategoryTabPageState>(
              this, _$identity);
}

abstract class _SubCategoryTabPageState implements SubCategoryTabPageState {
  factory _SubCategoryTabPageState(
      {final SortNumber selectedSortNumber,
      final List<ProductModel> products,
      final int totalSize}) = _$_SubCategoryTabPageState;

  @override
  SortNumber get selectedSortNumber;
  @override
  List<ProductModel> get products;
  @override
  int get totalSize;
  @override
  @JsonKey(ignore: true)
  _$$_SubCategoryTabPageStateCopyWith<_$_SubCategoryTabPageState>
      get copyWith => throw _privateConstructorUsedError;
}
