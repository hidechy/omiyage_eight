// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_added_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartAddedItemModel _$CartAddedItemModelFromJson(Map<String, dynamic> json) {
  return _CartAddedItemModel.fromJson(json);
}

/// @nodoc
mixin _$CartAddedItemModel {
/* カウンセリング結果 以下の値に対するメッセージは、クライアント側で任意に設定する。 ``` \"1\"：販売可能 \"2\"：販売可能だが、商品の説明をよく読むなどの注意喚起の必要あり \"3\"：販売不可 \"4\"：未回答あり（全未回答含む） ``` */
  CounselingResult get counselingResult => throw _privateConstructorUsedError;
  CartModel get cart => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartAddedItemModelCopyWith<CartAddedItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartAddedItemModelCopyWith<$Res> {
  factory $CartAddedItemModelCopyWith(
          CartAddedItemModel value, $Res Function(CartAddedItemModel) then) =
      _$CartAddedItemModelCopyWithImpl<$Res, CartAddedItemModel>;
  @useResult
  $Res call({CounselingResult counselingResult, CartModel cart});

  $CartModelCopyWith<$Res> get cart;
}

/// @nodoc
class _$CartAddedItemModelCopyWithImpl<$Res, $Val extends CartAddedItemModel>
    implements $CartAddedItemModelCopyWith<$Res> {
  _$CartAddedItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counselingResult = null,
    Object? cart = null,
  }) {
    return _then(_value.copyWith(
      counselingResult: null == counselingResult
          ? _value.counselingResult
          : counselingResult // ignore: cast_nullable_to_non_nullable
              as CounselingResult,
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
abstract class _$$_CartAddedItemModelCopyWith<$Res>
    implements $CartAddedItemModelCopyWith<$Res> {
  factory _$$_CartAddedItemModelCopyWith(_$_CartAddedItemModel value,
          $Res Function(_$_CartAddedItemModel) then) =
      __$$_CartAddedItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CounselingResult counselingResult, CartModel cart});

  @override
  $CartModelCopyWith<$Res> get cart;
}

/// @nodoc
class __$$_CartAddedItemModelCopyWithImpl<$Res>
    extends _$CartAddedItemModelCopyWithImpl<$Res, _$_CartAddedItemModel>
    implements _$$_CartAddedItemModelCopyWith<$Res> {
  __$$_CartAddedItemModelCopyWithImpl(
      _$_CartAddedItemModel _value, $Res Function(_$_CartAddedItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counselingResult = null,
    Object? cart = null,
  }) {
    return _then(_$_CartAddedItemModel(
      counselingResult: null == counselingResult
          ? _value.counselingResult
          : counselingResult // ignore: cast_nullable_to_non_nullable
              as CounselingResult,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartAddedItemModel implements _CartAddedItemModel {
  const _$_CartAddedItemModel(
      {this.counselingResult = CounselingResult.unanswered,
      this.cart = const CartModel()});

  factory _$_CartAddedItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartAddedItemModelFromJson(json);

/* カウンセリング結果 以下の値に対するメッセージは、クライアント側で任意に設定する。 ``` \"1\"：販売可能 \"2\"：販売可能だが、商品の説明をよく読むなどの注意喚起の必要あり \"3\"：販売不可 \"4\"：未回答あり（全未回答含む） ``` */
  @override
  @JsonKey()
  final CounselingResult counselingResult;
  @override
  @JsonKey()
  final CartModel cart;

  @override
  String toString() {
    return 'CartAddedItemModel(counselingResult: $counselingResult, cart: $cart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartAddedItemModel &&
            (identical(other.counselingResult, counselingResult) ||
                other.counselingResult == counselingResult) &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, counselingResult, cart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartAddedItemModelCopyWith<_$_CartAddedItemModel> get copyWith =>
      __$$_CartAddedItemModelCopyWithImpl<_$_CartAddedItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartAddedItemModelToJson(
      this,
    );
  }
}

abstract class _CartAddedItemModel implements CartAddedItemModel {
  const factory _CartAddedItemModel(
      {final CounselingResult counselingResult,
      final CartModel cart}) = _$_CartAddedItemModel;

  factory _CartAddedItemModel.fromJson(Map<String, dynamic> json) =
      _$_CartAddedItemModel.fromJson;

  @override /* カウンセリング結果 以下の値に対するメッセージは、クライアント側で任意に設定する。 ``` \"1\"：販売可能 \"2\"：販売可能だが、商品の説明をよく読むなどの注意喚起の必要あり \"3\"：販売不可 \"4\"：未回答あり（全未回答含む） ``` */
  CounselingResult get counselingResult;
  @override
  CartModel get cart;
  @override
  @JsonKey(ignore: true)
  _$$_CartAddedItemModelCopyWith<_$_CartAddedItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
