// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommended_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecommendedProductModel _$RecommendedProductModelFromJson(
    Map<String, dynamic> json) {
  return _RecommendedProductModel.fromJson(json);
}

/// @nodoc
mixin _$RecommendedProductModel {
  ProductModel get product => throw _privateConstructorUsedError;
  bool get hasStock => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecommendedProductModelCopyWith<RecommendedProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedProductModelCopyWith<$Res> {
  factory $RecommendedProductModelCopyWith(RecommendedProductModel value,
          $Res Function(RecommendedProductModel) then) =
      _$RecommendedProductModelCopyWithImpl<$Res, RecommendedProductModel>;
  @useResult
  $Res call({ProductModel product, bool hasStock});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$RecommendedProductModelCopyWithImpl<$Res,
        $Val extends RecommendedProductModel>
    implements $RecommendedProductModelCopyWith<$Res> {
  _$RecommendedProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? hasStock = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      hasStock: null == hasStock
          ? _value.hasStock
          : hasStock // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RecommendedProductModelCopyWith<$Res>
    implements $RecommendedProductModelCopyWith<$Res> {
  factory _$$_RecommendedProductModelCopyWith(_$_RecommendedProductModel value,
          $Res Function(_$_RecommendedProductModel) then) =
      __$$_RecommendedProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductModel product, bool hasStock});

  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$_RecommendedProductModelCopyWithImpl<$Res>
    extends _$RecommendedProductModelCopyWithImpl<$Res,
        _$_RecommendedProductModel>
    implements _$$_RecommendedProductModelCopyWith<$Res> {
  __$$_RecommendedProductModelCopyWithImpl(_$_RecommendedProductModel _value,
      $Res Function(_$_RecommendedProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? hasStock = null,
  }) {
    return _then(_$_RecommendedProductModel(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      hasStock: null == hasStock
          ? _value.hasStock
          : hasStock // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecommendedProductModel
    with DiagnosticableTreeMixin
    implements _RecommendedProductModel {
  const _$_RecommendedProductModel(
      {this.product = const ProductModel(), this.hasStock = false});

  factory _$_RecommendedProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_RecommendedProductModelFromJson(json);

  @override
  @JsonKey()
  final ProductModel product;
  @override
  @JsonKey()
  final bool hasStock;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecommendedProductModel(product: $product, hasStock: $hasStock)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecommendedProductModel'))
      ..add(DiagnosticsProperty('product', product))
      ..add(DiagnosticsProperty('hasStock', hasStock));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecommendedProductModel &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.hasStock, hasStock) ||
                other.hasStock == hasStock));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product, hasStock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecommendedProductModelCopyWith<_$_RecommendedProductModel>
      get copyWith =>
          __$$_RecommendedProductModelCopyWithImpl<_$_RecommendedProductModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecommendedProductModelToJson(
      this,
    );
  }
}

abstract class _RecommendedProductModel implements RecommendedProductModel {
  const factory _RecommendedProductModel(
      {final ProductModel product,
      final bool hasStock}) = _$_RecommendedProductModel;

  factory _RecommendedProductModel.fromJson(Map<String, dynamic> json) =
      _$_RecommendedProductModel.fromJson;

  @override
  ProductModel get product;
  @override
  bool get hasStock;
  @override
  @JsonKey(ignore: true)
  _$$_RecommendedProductModelCopyWith<_$_RecommendedProductModel>
      get copyWith => throw _privateConstructorUsedError;
}
