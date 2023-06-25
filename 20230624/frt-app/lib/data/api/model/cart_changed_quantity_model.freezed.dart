// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_changed_quantity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartChangedQuantityModel _$CartChangedQuantityModelFromJson(
    Map<String, dynamic> json) {
  return _CartChangedQuantityModel.fromJson(json);
}

/// @nodoc
mixin _$CartChangedQuantityModel {
/* 価格変更要確認フラグ　true：価格変更要確認　false：価格変更確認不要 */
  bool get needPriceChangeConfirm =>
      throw _privateConstructorUsedError; /* カートモデル */
  CartModel get cart => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartChangedQuantityModelCopyWith<CartChangedQuantityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartChangedQuantityModelCopyWith<$Res> {
  factory $CartChangedQuantityModelCopyWith(CartChangedQuantityModel value,
          $Res Function(CartChangedQuantityModel) then) =
      _$CartChangedQuantityModelCopyWithImpl<$Res, CartChangedQuantityModel>;
  @useResult
  $Res call({bool needPriceChangeConfirm, CartModel cart});

  $CartModelCopyWith<$Res> get cart;
}

/// @nodoc
class _$CartChangedQuantityModelCopyWithImpl<$Res,
        $Val extends CartChangedQuantityModel>
    implements $CartChangedQuantityModelCopyWith<$Res> {
  _$CartChangedQuantityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? needPriceChangeConfirm = null,
    Object? cart = null,
  }) {
    return _then(_value.copyWith(
      needPriceChangeConfirm: null == needPriceChangeConfirm
          ? _value.needPriceChangeConfirm
          : needPriceChangeConfirm // ignore: cast_nullable_to_non_nullable
              as bool,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<$Res> get cart {
    return $CartModelCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartChangedQuantityModelCopyWith<$Res>
    implements $CartChangedQuantityModelCopyWith<$Res> {
  factory _$$_CartChangedQuantityModelCopyWith(
          _$_CartChangedQuantityModel value,
          $Res Function(_$_CartChangedQuantityModel) then) =
      __$$_CartChangedQuantityModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool needPriceChangeConfirm, CartModel cart});

  @override
  $CartModelCopyWith<$Res> get cart;
}

/// @nodoc
class __$$_CartChangedQuantityModelCopyWithImpl<$Res>
    extends _$CartChangedQuantityModelCopyWithImpl<$Res,
        _$_CartChangedQuantityModel>
    implements _$$_CartChangedQuantityModelCopyWith<$Res> {
  __$$_CartChangedQuantityModelCopyWithImpl(_$_CartChangedQuantityModel _value,
      $Res Function(_$_CartChangedQuantityModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? needPriceChangeConfirm = null,
    Object? cart = null,
  }) {
    return _then(_$_CartChangedQuantityModel(
      needPriceChangeConfirm: null == needPriceChangeConfirm
          ? _value.needPriceChangeConfirm
          : needPriceChangeConfirm // ignore: cast_nullable_to_non_nullable
              as bool,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartChangedQuantityModel implements _CartChangedQuantityModel {
  const _$_CartChangedQuantityModel(
      {this.needPriceChangeConfirm = false, this.cart = const CartModel()});

  factory _$_CartChangedQuantityModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartChangedQuantityModelFromJson(json);

/* 価格変更要確認フラグ　true：価格変更要確認　false：価格変更確認不要 */
  @override
  @JsonKey()
  final bool needPriceChangeConfirm;
/* カートモデル */
  @override
  @JsonKey()
  final CartModel cart;

  @override
  String toString() {
    return 'CartChangedQuantityModel(needPriceChangeConfirm: $needPriceChangeConfirm, cart: $cart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartChangedQuantityModel &&
            (identical(other.needPriceChangeConfirm, needPriceChangeConfirm) ||
                other.needPriceChangeConfirm == needPriceChangeConfirm) &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, needPriceChangeConfirm, cart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartChangedQuantityModelCopyWith<_$_CartChangedQuantityModel>
      get copyWith => __$$_CartChangedQuantityModelCopyWithImpl<
          _$_CartChangedQuantityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartChangedQuantityModelToJson(
      this,
    );
  }
}

abstract class _CartChangedQuantityModel implements CartChangedQuantityModel {
  const factory _CartChangedQuantityModel(
      {final bool needPriceChangeConfirm,
      final CartModel cart}) = _$_CartChangedQuantityModel;

  factory _CartChangedQuantityModel.fromJson(Map<String, dynamic> json) =
      _$_CartChangedQuantityModel.fromJson;

  @override /* 価格変更要確認フラグ　true：価格変更要確認　false：価格変更確認不要 */
  bool get needPriceChangeConfirm;
  @override /* カートモデル */
  CartModel get cart;
  @override
  @JsonKey(ignore: true)
  _$$_CartChangedQuantityModelCopyWith<_$_CartChangedQuantityModel>
      get copyWith => throw _privateConstructorUsedError;
}
