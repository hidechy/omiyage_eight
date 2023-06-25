// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'previous_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PreviousOrderModel _$PreviousOrderModelFromJson(Map<String, dynamic> json) {
  return _PreviousOrderModel.fromJson(json);
}

/// @nodoc
mixin _$PreviousOrderModel {
/* 商品画像パス(ミニカート表示用) */
  String get thumbnailImagePath =>
      throw _privateConstructorUsedError; /* 商品情報 */
  ProductModel get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreviousOrderModelCopyWith<PreviousOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviousOrderModelCopyWith<$Res> {
  factory $PreviousOrderModelCopyWith(
          PreviousOrderModel value, $Res Function(PreviousOrderModel) then) =
      _$PreviousOrderModelCopyWithImpl<$Res, PreviousOrderModel>;
  @useResult
  $Res call({String thumbnailImagePath, ProductModel product});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$PreviousOrderModelCopyWithImpl<$Res, $Val extends PreviousOrderModel>
    implements $PreviousOrderModelCopyWith<$Res> {
  _$PreviousOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnailImagePath = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      thumbnailImagePath: null == thumbnailImagePath
          ? _value.thumbnailImagePath
          : thumbnailImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
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
abstract class _$$_PreviousOrderModelCopyWith<$Res>
    implements $PreviousOrderModelCopyWith<$Res> {
  factory _$$_PreviousOrderModelCopyWith(_$_PreviousOrderModel value,
          $Res Function(_$_PreviousOrderModel) then) =
      __$$_PreviousOrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String thumbnailImagePath, ProductModel product});

  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$_PreviousOrderModelCopyWithImpl<$Res>
    extends _$PreviousOrderModelCopyWithImpl<$Res, _$_PreviousOrderModel>
    implements _$$_PreviousOrderModelCopyWith<$Res> {
  __$$_PreviousOrderModelCopyWithImpl(
      _$_PreviousOrderModel _value, $Res Function(_$_PreviousOrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnailImagePath = null,
    Object? product = null,
  }) {
    return _then(_$_PreviousOrderModel(
      thumbnailImagePath: null == thumbnailImagePath
          ? _value.thumbnailImagePath
          : thumbnailImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PreviousOrderModel implements _PreviousOrderModel {
  const _$_PreviousOrderModel(
      {this.thumbnailImagePath = '', this.product = const ProductModel()});

  factory _$_PreviousOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_PreviousOrderModelFromJson(json);

/* 商品画像パス(ミニカート表示用) */
  @override
  @JsonKey()
  final String thumbnailImagePath;
/* 商品情報 */
  @override
  @JsonKey()
  final ProductModel product;

  @override
  String toString() {
    return 'PreviousOrderModel(thumbnailImagePath: $thumbnailImagePath, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreviousOrderModel &&
            (identical(other.thumbnailImagePath, thumbnailImagePath) ||
                other.thumbnailImagePath == thumbnailImagePath) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, thumbnailImagePath, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreviousOrderModelCopyWith<_$_PreviousOrderModel> get copyWith =>
      __$$_PreviousOrderModelCopyWithImpl<_$_PreviousOrderModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PreviousOrderModelToJson(
      this,
    );
  }
}

abstract class _PreviousOrderModel implements PreviousOrderModel {
  const factory _PreviousOrderModel(
      {final String thumbnailImagePath,
      final ProductModel product}) = _$_PreviousOrderModel;

  factory _PreviousOrderModel.fromJson(Map<String, dynamic> json) =
      _$_PreviousOrderModel.fromJson;

  @override /* 商品画像パス(ミニカート表示用) */
  String get thumbnailImagePath;
  @override /* 商品情報 */
  ProductModel get product;
  @override
  @JsonKey(ignore: true)
  _$$_PreviousOrderModelCopyWith<_$_PreviousOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
