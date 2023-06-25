// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'changed_cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChangedCartModel _$ChangedCartModelFromJson(Map<String, dynamic> json) {
  return _ChangedCartModel.fromJson(json);
}

/// @nodoc
mixin _$ChangedCartModel {
/* 購入不可商品あり判定 */
  bool get isCanNotBuyProduct =>
      throw _privateConstructorUsedError; /* 購入不可商品名リスト */
  List<String> get canNotBuyProductNames =>
      throw _privateConstructorUsedError; /* 配達料金変更フラグ ``` \"0\"：配達料金変更なし \"1\"：配達料金変更あり ``` */
  @StringToBooleanConverter()
  bool get deliveryPriceChangeFlag =>
      throw _privateConstructorUsedError; /* クーポン適用の自動解除フラグ ``` \"0\"：自動解除なし \"1\"：自動解除あり ``` */
  @StringToBooleanConverter()
  bool get couponChangeFlag =>
      throw _privateConstructorUsedError; /* 配送日時限定商品あり判定  ``` true：配送日時限定商品あり false：配送日時限定商品なし ``` */
  bool get isLimitedDeliveryProduct =>
      throw _privateConstructorUsedError; /* 配送日時限定商品名リスト */
  List<String> get limitedDeliveryProductNames =>
      throw _privateConstructorUsedError; /* 警告メッセージリスト */
  List<WarnMessageModel> get warnMessages => throw _privateConstructorUsedError;
  CartModel? get cart => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangedCartModelCopyWith<ChangedCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangedCartModelCopyWith<$Res> {
  factory $ChangedCartModelCopyWith(
          ChangedCartModel value, $Res Function(ChangedCartModel) then) =
      _$ChangedCartModelCopyWithImpl<$Res, ChangedCartModel>;
  @useResult
  $Res call(
      {bool isCanNotBuyProduct,
      List<String> canNotBuyProductNames,
      @StringToBooleanConverter() bool deliveryPriceChangeFlag,
      @StringToBooleanConverter() bool couponChangeFlag,
      bool isLimitedDeliveryProduct,
      List<String> limitedDeliveryProductNames,
      List<WarnMessageModel> warnMessages,
      CartModel? cart});

  $CartModelCopyWith<$Res>? get cart;
}

/// @nodoc
class _$ChangedCartModelCopyWithImpl<$Res, $Val extends ChangedCartModel>
    implements $ChangedCartModelCopyWith<$Res> {
  _$ChangedCartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCanNotBuyProduct = null,
    Object? canNotBuyProductNames = null,
    Object? deliveryPriceChangeFlag = null,
    Object? couponChangeFlag = null,
    Object? isLimitedDeliveryProduct = null,
    Object? limitedDeliveryProductNames = null,
    Object? warnMessages = null,
    Object? cart = freezed,
  }) {
    return _then(_value.copyWith(
      isCanNotBuyProduct: null == isCanNotBuyProduct
          ? _value.isCanNotBuyProduct
          : isCanNotBuyProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      canNotBuyProductNames: null == canNotBuyProductNames
          ? _value.canNotBuyProductNames
          : canNotBuyProductNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      deliveryPriceChangeFlag: null == deliveryPriceChangeFlag
          ? _value.deliveryPriceChangeFlag
          : deliveryPriceChangeFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      couponChangeFlag: null == couponChangeFlag
          ? _value.couponChangeFlag
          : couponChangeFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      isLimitedDeliveryProduct: null == isLimitedDeliveryProduct
          ? _value.isLimitedDeliveryProduct
          : isLimitedDeliveryProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      limitedDeliveryProductNames: null == limitedDeliveryProductNames
          ? _value.limitedDeliveryProductNames
          : limitedDeliveryProductNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      warnMessages: null == warnMessages
          ? _value.warnMessages
          : warnMessages // ignore: cast_nullable_to_non_nullable
              as List<WarnMessageModel>,
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
abstract class _$$_ChangedCartModelCopyWith<$Res>
    implements $ChangedCartModelCopyWith<$Res> {
  factory _$$_ChangedCartModelCopyWith(
          _$_ChangedCartModel value, $Res Function(_$_ChangedCartModel) then) =
      __$$_ChangedCartModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isCanNotBuyProduct,
      List<String> canNotBuyProductNames,
      @StringToBooleanConverter() bool deliveryPriceChangeFlag,
      @StringToBooleanConverter() bool couponChangeFlag,
      bool isLimitedDeliveryProduct,
      List<String> limitedDeliveryProductNames,
      List<WarnMessageModel> warnMessages,
      CartModel? cart});

  @override
  $CartModelCopyWith<$Res>? get cart;
}

/// @nodoc
class __$$_ChangedCartModelCopyWithImpl<$Res>
    extends _$ChangedCartModelCopyWithImpl<$Res, _$_ChangedCartModel>
    implements _$$_ChangedCartModelCopyWith<$Res> {
  __$$_ChangedCartModelCopyWithImpl(
      _$_ChangedCartModel _value, $Res Function(_$_ChangedCartModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCanNotBuyProduct = null,
    Object? canNotBuyProductNames = null,
    Object? deliveryPriceChangeFlag = null,
    Object? couponChangeFlag = null,
    Object? isLimitedDeliveryProduct = null,
    Object? limitedDeliveryProductNames = null,
    Object? warnMessages = null,
    Object? cart = freezed,
  }) {
    return _then(_$_ChangedCartModel(
      isCanNotBuyProduct: null == isCanNotBuyProduct
          ? _value.isCanNotBuyProduct
          : isCanNotBuyProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      canNotBuyProductNames: null == canNotBuyProductNames
          ? _value._canNotBuyProductNames
          : canNotBuyProductNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      deliveryPriceChangeFlag: null == deliveryPriceChangeFlag
          ? _value.deliveryPriceChangeFlag
          : deliveryPriceChangeFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      couponChangeFlag: null == couponChangeFlag
          ? _value.couponChangeFlag
          : couponChangeFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      isLimitedDeliveryProduct: null == isLimitedDeliveryProduct
          ? _value.isLimitedDeliveryProduct
          : isLimitedDeliveryProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      limitedDeliveryProductNames: null == limitedDeliveryProductNames
          ? _value._limitedDeliveryProductNames
          : limitedDeliveryProductNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      warnMessages: null == warnMessages
          ? _value._warnMessages
          : warnMessages // ignore: cast_nullable_to_non_nullable
              as List<WarnMessageModel>,
      cart: freezed == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChangedCartModel implements _ChangedCartModel {
  const _$_ChangedCartModel(
      {this.isCanNotBuyProduct = false,
      final List<String> canNotBuyProductNames = const <String>[],
      @StringToBooleanConverter() this.deliveryPriceChangeFlag = false,
      @StringToBooleanConverter() this.couponChangeFlag = false,
      this.isLimitedDeliveryProduct = false,
      final List<String> limitedDeliveryProductNames = const <String>[],
      final List<WarnMessageModel> warnMessages = const <WarnMessageModel>[],
      this.cart})
      : _canNotBuyProductNames = canNotBuyProductNames,
        _limitedDeliveryProductNames = limitedDeliveryProductNames,
        _warnMessages = warnMessages;

  factory _$_ChangedCartModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChangedCartModelFromJson(json);

/* 購入不可商品あり判定 */
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

/* 配達料金変更フラグ ``` \"0\"：配達料金変更なし \"1\"：配達料金変更あり ``` */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool deliveryPriceChangeFlag;
/* クーポン適用の自動解除フラグ ``` \"0\"：自動解除なし \"1\"：自動解除あり ``` */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool couponChangeFlag;
/* 配送日時限定商品あり判定  ``` true：配送日時限定商品あり false：配送日時限定商品なし ``` */
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

/* 警告メッセージリスト */
  final List<WarnMessageModel> _warnMessages;
/* 警告メッセージリスト */
  @override
  @JsonKey()
  List<WarnMessageModel> get warnMessages {
    if (_warnMessages is EqualUnmodifiableListView) return _warnMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_warnMessages);
  }

  @override
  final CartModel? cart;

  @override
  String toString() {
    return 'ChangedCartModel(isCanNotBuyProduct: $isCanNotBuyProduct, canNotBuyProductNames: $canNotBuyProductNames, deliveryPriceChangeFlag: $deliveryPriceChangeFlag, couponChangeFlag: $couponChangeFlag, isLimitedDeliveryProduct: $isLimitedDeliveryProduct, limitedDeliveryProductNames: $limitedDeliveryProductNames, warnMessages: $warnMessages, cart: $cart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangedCartModel &&
            (identical(other.isCanNotBuyProduct, isCanNotBuyProduct) ||
                other.isCanNotBuyProduct == isCanNotBuyProduct) &&
            const DeepCollectionEquality()
                .equals(other._canNotBuyProductNames, _canNotBuyProductNames) &&
            (identical(
                    other.deliveryPriceChangeFlag, deliveryPriceChangeFlag) ||
                other.deliveryPriceChangeFlag == deliveryPriceChangeFlag) &&
            (identical(other.couponChangeFlag, couponChangeFlag) ||
                other.couponChangeFlag == couponChangeFlag) &&
            (identical(
                    other.isLimitedDeliveryProduct, isLimitedDeliveryProduct) ||
                other.isLimitedDeliveryProduct == isLimitedDeliveryProduct) &&
            const DeepCollectionEquality().equals(
                other._limitedDeliveryProductNames,
                _limitedDeliveryProductNames) &&
            const DeepCollectionEquality()
                .equals(other._warnMessages, _warnMessages) &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isCanNotBuyProduct,
      const DeepCollectionEquality().hash(_canNotBuyProductNames),
      deliveryPriceChangeFlag,
      couponChangeFlag,
      isLimitedDeliveryProduct,
      const DeepCollectionEquality().hash(_limitedDeliveryProductNames),
      const DeepCollectionEquality().hash(_warnMessages),
      cart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangedCartModelCopyWith<_$_ChangedCartModel> get copyWith =>
      __$$_ChangedCartModelCopyWithImpl<_$_ChangedCartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChangedCartModelToJson(
      this,
    );
  }
}

abstract class _ChangedCartModel implements ChangedCartModel {
  const factory _ChangedCartModel(
      {final bool isCanNotBuyProduct,
      final List<String> canNotBuyProductNames,
      @StringToBooleanConverter() final bool deliveryPriceChangeFlag,
      @StringToBooleanConverter() final bool couponChangeFlag,
      final bool isLimitedDeliveryProduct,
      final List<String> limitedDeliveryProductNames,
      final List<WarnMessageModel> warnMessages,
      final CartModel? cart}) = _$_ChangedCartModel;

  factory _ChangedCartModel.fromJson(Map<String, dynamic> json) =
      _$_ChangedCartModel.fromJson;

  @override /* 購入不可商品あり判定 */
  bool get isCanNotBuyProduct;
  @override /* 購入不可商品名リスト */
  List<String> get canNotBuyProductNames;
  @override /* 配達料金変更フラグ ``` \"0\"：配達料金変更なし \"1\"：配達料金変更あり ``` */
  @StringToBooleanConverter()
  bool get deliveryPriceChangeFlag;
  @override /* クーポン適用の自動解除フラグ ``` \"0\"：自動解除なし \"1\"：自動解除あり ``` */
  @StringToBooleanConverter()
  bool get couponChangeFlag;
  @override /* 配送日時限定商品あり判定  ``` true：配送日時限定商品あり false：配送日時限定商品なし ``` */
  bool get isLimitedDeliveryProduct;
  @override /* 配送日時限定商品名リスト */
  List<String> get limitedDeliveryProductNames;
  @override /* 警告メッセージリスト */
  List<WarnMessageModel> get warnMessages;
  @override
  CartModel? get cart;
  @override
  @JsonKey(ignore: true)
  _$$_ChangedCartModelCopyWith<_$_ChangedCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}
