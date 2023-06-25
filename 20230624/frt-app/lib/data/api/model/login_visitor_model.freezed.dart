// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_visitor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginVisitorModel _$LoginVisitorModelFromJson(Map<String, dynamic> json) {
  return _LoginVisitorModel.fromJson(json);
}

/// @nodoc
mixin _$LoginVisitorModel {
  String get shopCode => throw _privateConstructorUsedError;
  CartModel get cart => throw _privateConstructorUsedError;
  String get deliveryBaseCode => throw _privateConstructorUsedError;
  String get iyVisitId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginVisitorModelCopyWith<LoginVisitorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginVisitorModelCopyWith<$Res> {
  factory $LoginVisitorModelCopyWith(
          LoginVisitorModel value, $Res Function(LoginVisitorModel) then) =
      _$LoginVisitorModelCopyWithImpl<$Res, LoginVisitorModel>;
  @useResult
  $Res call(
      {String shopCode,
      CartModel cart,
      String deliveryBaseCode,
      String iyVisitId});

  $CartModelCopyWith<$Res> get cart;
}

/// @nodoc
class _$LoginVisitorModelCopyWithImpl<$Res, $Val extends LoginVisitorModel>
    implements $LoginVisitorModelCopyWith<$Res> {
  _$LoginVisitorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopCode = null,
    Object? cart = null,
    Object? deliveryBaseCode = null,
    Object? iyVisitId = null,
  }) {
    return _then(_value.copyWith(
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartModel,
      deliveryBaseCode: null == deliveryBaseCode
          ? _value.deliveryBaseCode
          : deliveryBaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      iyVisitId: null == iyVisitId
          ? _value.iyVisitId
          : iyVisitId // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_LoginVisitorModelCopyWith<$Res>
    implements $LoginVisitorModelCopyWith<$Res> {
  factory _$$_LoginVisitorModelCopyWith(_$_LoginVisitorModel value,
          $Res Function(_$_LoginVisitorModel) then) =
      __$$_LoginVisitorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String shopCode,
      CartModel cart,
      String deliveryBaseCode,
      String iyVisitId});

  @override
  $CartModelCopyWith<$Res> get cart;
}

/// @nodoc
class __$$_LoginVisitorModelCopyWithImpl<$Res>
    extends _$LoginVisitorModelCopyWithImpl<$Res, _$_LoginVisitorModel>
    implements _$$_LoginVisitorModelCopyWith<$Res> {
  __$$_LoginVisitorModelCopyWithImpl(
      _$_LoginVisitorModel _value, $Res Function(_$_LoginVisitorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopCode = null,
    Object? cart = null,
    Object? deliveryBaseCode = null,
    Object? iyVisitId = null,
  }) {
    return _then(_$_LoginVisitorModel(
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartModel,
      deliveryBaseCode: null == deliveryBaseCode
          ? _value.deliveryBaseCode
          : deliveryBaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      iyVisitId: null == iyVisitId
          ? _value.iyVisitId
          : iyVisitId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginVisitorModel implements _LoginVisitorModel {
  const _$_LoginVisitorModel(
      {this.shopCode = '',
      this.cart = const CartModel(),
      this.deliveryBaseCode = '',
      this.iyVisitId = ''});

  factory _$_LoginVisitorModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginVisitorModelFromJson(json);

  @override
  @JsonKey()
  final String shopCode;
  @override
  @JsonKey()
  final CartModel cart;
  @override
  @JsonKey()
  final String deliveryBaseCode;
  @override
  @JsonKey()
  final String iyVisitId;

  @override
  String toString() {
    return 'LoginVisitorModel(shopCode: $shopCode, cart: $cart, deliveryBaseCode: $deliveryBaseCode, iyVisitId: $iyVisitId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginVisitorModel &&
            (identical(other.shopCode, shopCode) ||
                other.shopCode == shopCode) &&
            (identical(other.cart, cart) || other.cart == cart) &&
            (identical(other.deliveryBaseCode, deliveryBaseCode) ||
                other.deliveryBaseCode == deliveryBaseCode) &&
            (identical(other.iyVisitId, iyVisitId) ||
                other.iyVisitId == iyVisitId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, shopCode, cart, deliveryBaseCode, iyVisitId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginVisitorModelCopyWith<_$_LoginVisitorModel> get copyWith =>
      __$$_LoginVisitorModelCopyWithImpl<_$_LoginVisitorModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginVisitorModelToJson(
      this,
    );
  }
}

abstract class _LoginVisitorModel implements LoginVisitorModel {
  const factory _LoginVisitorModel(
      {final String shopCode,
      final CartModel cart,
      final String deliveryBaseCode,
      final String iyVisitId}) = _$_LoginVisitorModel;

  factory _LoginVisitorModel.fromJson(Map<String, dynamic> json) =
      _$_LoginVisitorModel.fromJson;

  @override
  String get shopCode;
  @override
  CartModel get cart;
  @override
  String get deliveryBaseCode;
  @override
  String get iyVisitId;
  @override
  @JsonKey(ignore: true)
  _$$_LoginVisitorModelCopyWith<_$_LoginVisitorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
