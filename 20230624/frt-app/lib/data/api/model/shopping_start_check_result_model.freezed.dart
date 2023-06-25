// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_start_check_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShoppingStartCheckResultModel _$ShoppingStartCheckResultModelFromJson(
    Map<String, dynamic> json) {
  return _ShoppingStartCheckResultModel.fromJson(json);
}

/// @nodoc
mixin _$ShoppingStartCheckResultModel {
/* 配送日時限定商品あり判定  ``` true：商品あり false：商品なし ``` */
  bool get isLimitedDeliveryProduct =>
      throw _privateConstructorUsedError; /* 配送日時限定商品名リスト */
  List<String> get limitedDeliveryProductNames =>
      throw _privateConstructorUsedError; /* 購入不可商品あり判定  ``` true：商品あり false：商品なし ``` */
  bool get isCanNotBuyProduct =>
      throw _privateConstructorUsedError; /* 購入不可商品名リスト */
  List<String> get canNotBuyProductNames =>
      throw _privateConstructorUsedError; /* カートID - 買物開始チェック結果がNGの場合、nullを返却 */
  int? get cartId =>
      throw _privateConstructorUsedError; // range from 1 to 99999999//
  CartModel? get cart => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoppingStartCheckResultModelCopyWith<ShoppingStartCheckResultModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingStartCheckResultModelCopyWith<$Res> {
  factory $ShoppingStartCheckResultModelCopyWith(
          ShoppingStartCheckResultModel value,
          $Res Function(ShoppingStartCheckResultModel) then) =
      _$ShoppingStartCheckResultModelCopyWithImpl<$Res,
          ShoppingStartCheckResultModel>;
  @useResult
  $Res call(
      {bool isLimitedDeliveryProduct,
      List<String> limitedDeliveryProductNames,
      bool isCanNotBuyProduct,
      List<String> canNotBuyProductNames,
      int? cartId,
      CartModel? cart});

  $CartModelCopyWith<$Res>? get cart;
}

/// @nodoc
class _$ShoppingStartCheckResultModelCopyWithImpl<$Res,
        $Val extends ShoppingStartCheckResultModel>
    implements $ShoppingStartCheckResultModelCopyWith<$Res> {
  _$ShoppingStartCheckResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLimitedDeliveryProduct = null,
    Object? limitedDeliveryProductNames = null,
    Object? isCanNotBuyProduct = null,
    Object? canNotBuyProductNames = null,
    Object? cartId = freezed,
    Object? cart = freezed,
  }) {
    return _then(_value.copyWith(
      isLimitedDeliveryProduct: null == isLimitedDeliveryProduct
          ? _value.isLimitedDeliveryProduct
          : isLimitedDeliveryProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      limitedDeliveryProductNames: null == limitedDeliveryProductNames
          ? _value.limitedDeliveryProductNames
          : limitedDeliveryProductNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isCanNotBuyProduct: null == isCanNotBuyProduct
          ? _value.isCanNotBuyProduct
          : isCanNotBuyProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      canNotBuyProductNames: null == canNotBuyProductNames
          ? _value.canNotBuyProductNames
          : canNotBuyProductNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cartId: freezed == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as int?,
      cart: freezed == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<$Res>? get cart {
    if (_value.cart == null) {
      return null;
    }

    return $CartModelCopyWith<$Res>(_value.cart!, (value) {
      return _then(_value.copyWith(cart: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ShoppingStartCheckResultModelCopyWith<$Res>
    implements $ShoppingStartCheckResultModelCopyWith<$Res> {
  factory _$$_ShoppingStartCheckResultModelCopyWith(
          _$_ShoppingStartCheckResultModel value,
          $Res Function(_$_ShoppingStartCheckResultModel) then) =
      __$$_ShoppingStartCheckResultModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLimitedDeliveryProduct,
      List<String> limitedDeliveryProductNames,
      bool isCanNotBuyProduct,
      List<String> canNotBuyProductNames,
      int? cartId,
      CartModel? cart});

  @override
  $CartModelCopyWith<$Res>? get cart;
}

/// @nodoc
class __$$_ShoppingStartCheckResultModelCopyWithImpl<$Res>
    extends _$ShoppingStartCheckResultModelCopyWithImpl<$Res,
        _$_ShoppingStartCheckResultModel>
    implements _$$_ShoppingStartCheckResultModelCopyWith<$Res> {
  __$$_ShoppingStartCheckResultModelCopyWithImpl(
      _$_ShoppingStartCheckResultModel _value,
      $Res Function(_$_ShoppingStartCheckResultModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLimitedDeliveryProduct = null,
    Object? limitedDeliveryProductNames = null,
    Object? isCanNotBuyProduct = null,
    Object? canNotBuyProductNames = null,
    Object? cartId = freezed,
    Object? cart = freezed,
  }) {
    return _then(_$_ShoppingStartCheckResultModel(
      isLimitedDeliveryProduct: null == isLimitedDeliveryProduct
          ? _value.isLimitedDeliveryProduct
          : isLimitedDeliveryProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      limitedDeliveryProductNames: null == limitedDeliveryProductNames
          ? _value._limitedDeliveryProductNames
          : limitedDeliveryProductNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isCanNotBuyProduct: null == isCanNotBuyProduct
          ? _value.isCanNotBuyProduct
          : isCanNotBuyProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      canNotBuyProductNames: null == canNotBuyProductNames
          ? _value._canNotBuyProductNames
          : canNotBuyProductNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cartId: freezed == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as int?,
      cart: freezed == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShoppingStartCheckResultModel
    implements _ShoppingStartCheckResultModel {
  const _$_ShoppingStartCheckResultModel(
      {this.isLimitedDeliveryProduct = false,
      final List<String> limitedDeliveryProductNames = const <String>[],
      this.isCanNotBuyProduct = false,
      final List<String> canNotBuyProductNames = const <String>[],
      this.cartId,
      this.cart})
      : _limitedDeliveryProductNames = limitedDeliveryProductNames,
        _canNotBuyProductNames = canNotBuyProductNames;

  factory _$_ShoppingStartCheckResultModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_ShoppingStartCheckResultModelFromJson(json);

/* 配送日時限定商品あり判定  ``` true：商品あり false：商品なし ``` */
  @override
  @JsonKey()
  final bool isLimitedDeliveryProduct;
/* 配送日時限定商品名リスト */
  final List<String> _limitedDeliveryProductNames;
/* 配送日時限定商品名リスト */
  @override
  @JsonKey()
  List<String> get limitedDeliveryProductNames {
    if (_limitedDeliveryProductNames is EqualUnmodifiableListView)
      return _limitedDeliveryProductNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_limitedDeliveryProductNames);
  }

/* 購入不可商品あり判定  ``` true：商品あり false：商品なし ``` */
  @override
  @JsonKey()
  final bool isCanNotBuyProduct;
/* 購入不可商品名リスト */
  final List<String> _canNotBuyProductNames;
/* 購入不可商品名リスト */
  @override
  @JsonKey()
  List<String> get canNotBuyProductNames {
    if (_canNotBuyProductNames is EqualUnmodifiableListView)
      return _canNotBuyProductNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_canNotBuyProductNames);
  }

/* カートID - 買物開始チェック結果がNGの場合、nullを返却 */
  @override
  final int? cartId;
// range from 1 to 99999999//
  @override
  final CartModel? cart;

  @override
  String toString() {
    return 'ShoppingStartCheckResultModel(isLimitedDeliveryProduct: $isLimitedDeliveryProduct, limitedDeliveryProductNames: $limitedDeliveryProductNames, isCanNotBuyProduct: $isCanNotBuyProduct, canNotBuyProductNames: $canNotBuyProductNames, cartId: $cartId, cart: $cart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingStartCheckResultModel &&
            (identical(
                    other.isLimitedDeliveryProduct, isLimitedDeliveryProduct) ||
                other.isLimitedDeliveryProduct == isLimitedDeliveryProduct) &&
            const DeepCollectionEquality().equals(
                other._limitedDeliveryProductNames,
                _limitedDeliveryProductNames) &&
            (identical(other.isCanNotBuyProduct, isCanNotBuyProduct) ||
                other.isCanNotBuyProduct == isCanNotBuyProduct) &&
            const DeepCollectionEquality()
                .equals(other._canNotBuyProductNames, _canNotBuyProductNames) &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLimitedDeliveryProduct,
      const DeepCollectionEquality().hash(_limitedDeliveryProductNames),
      isCanNotBuyProduct,
      const DeepCollectionEquality().hash(_canNotBuyProductNames),
      cartId,
      cart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShoppingStartCheckResultModelCopyWith<_$_ShoppingStartCheckResultModel>
      get copyWith => __$$_ShoppingStartCheckResultModelCopyWithImpl<
          _$_ShoppingStartCheckResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShoppingStartCheckResultModelToJson(
      this,
    );
  }
}

abstract class _ShoppingStartCheckResultModel
    implements ShoppingStartCheckResultModel {
  const factory _ShoppingStartCheckResultModel(
      {final bool isLimitedDeliveryProduct,
      final List<String> limitedDeliveryProductNames,
      final bool isCanNotBuyProduct,
      final List<String> canNotBuyProductNames,
      final int? cartId,
      final CartModel? cart}) = _$_ShoppingStartCheckResultModel;

  factory _ShoppingStartCheckResultModel.fromJson(Map<String, dynamic> json) =
      _$_ShoppingStartCheckResultModel.fromJson;

  @override /* 配送日時限定商品あり判定  ``` true：商品あり false：商品なし ``` */
  bool get isLimitedDeliveryProduct;
  @override /* 配送日時限定商品名リスト */
  List<String> get limitedDeliveryProductNames;
  @override /* 購入不可商品あり判定  ``` true：商品あり false：商品なし ``` */
  bool get isCanNotBuyProduct;
  @override /* 購入不可商品名リスト */
  List<String> get canNotBuyProductNames;
  @override /* カートID - 買物開始チェック結果がNGの場合、nullを返却 */
  int? get cartId;
  @override // range from 1 to 99999999//
  CartModel? get cart;
  @override
  @JsonKey(ignore: true)
  _$$_ShoppingStartCheckResultModelCopyWith<_$_ShoppingStartCheckResultModel>
      get copyWith => throw _privateConstructorUsedError;
}
