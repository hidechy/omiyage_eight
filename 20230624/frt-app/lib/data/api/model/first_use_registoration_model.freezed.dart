// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'first_use_registoration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirstUseRegistrationModel _$FirstUseRegistrationModelFromJson(
    Map<String, dynamic> json) {
  return _FirstUseRegistrationModel.fromJson(json);
}

/// @nodoc
mixin _$FirstUseRegistrationModel {
/* 初回利用登録クーポンモデル */
  List<CustomerDealCouponModel> get dealCoupons =>
      throw _privateConstructorUsedError; /* 購入不可商品あり判定 */
  bool get isCanNotBuyProduct =>
      throw _privateConstructorUsedError; /* 購入不可商品名リスト */
  List<String> get canNotBuyProductNames => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirstUseRegistrationModelCopyWith<FirstUseRegistrationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstUseRegistrationModelCopyWith<$Res> {
  factory $FirstUseRegistrationModelCopyWith(FirstUseRegistrationModel value,
          $Res Function(FirstUseRegistrationModel) then) =
      _$FirstUseRegistrationModelCopyWithImpl<$Res, FirstUseRegistrationModel>;
  @useResult
  $Res call(
      {List<CustomerDealCouponModel> dealCoupons,
      bool isCanNotBuyProduct,
      List<String> canNotBuyProductNames});
}

/// @nodoc
class _$FirstUseRegistrationModelCopyWithImpl<$Res,
        $Val extends FirstUseRegistrationModel>
    implements $FirstUseRegistrationModelCopyWith<$Res> {
  _$FirstUseRegistrationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dealCoupons = null,
    Object? isCanNotBuyProduct = null,
    Object? canNotBuyProductNames = null,
  }) {
    return _then(_value.copyWith(
      dealCoupons: null == dealCoupons
          ? _value.dealCoupons
          : dealCoupons // ignore: cast_nullable_to_non_nullable
              as List<CustomerDealCouponModel>,
      isCanNotBuyProduct: null == isCanNotBuyProduct
          ? _value.isCanNotBuyProduct
          : isCanNotBuyProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      canNotBuyProductNames: null == canNotBuyProductNames
          ? _value.canNotBuyProductNames
          : canNotBuyProductNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FirstUseRegistrationModelCopyWith<$Res>
    implements $FirstUseRegistrationModelCopyWith<$Res> {
  factory _$$_FirstUseRegistrationModelCopyWith(
          _$_FirstUseRegistrationModel value,
          $Res Function(_$_FirstUseRegistrationModel) then) =
      __$$_FirstUseRegistrationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CustomerDealCouponModel> dealCoupons,
      bool isCanNotBuyProduct,
      List<String> canNotBuyProductNames});
}

/// @nodoc
class __$$_FirstUseRegistrationModelCopyWithImpl<$Res>
    extends _$FirstUseRegistrationModelCopyWithImpl<$Res,
        _$_FirstUseRegistrationModel>
    implements _$$_FirstUseRegistrationModelCopyWith<$Res> {
  __$$_FirstUseRegistrationModelCopyWithImpl(
      _$_FirstUseRegistrationModel _value,
      $Res Function(_$_FirstUseRegistrationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dealCoupons = null,
    Object? isCanNotBuyProduct = null,
    Object? canNotBuyProductNames = null,
  }) {
    return _then(_$_FirstUseRegistrationModel(
      dealCoupons: null == dealCoupons
          ? _value._dealCoupons
          : dealCoupons // ignore: cast_nullable_to_non_nullable
              as List<CustomerDealCouponModel>,
      isCanNotBuyProduct: null == isCanNotBuyProduct
          ? _value.isCanNotBuyProduct
          : isCanNotBuyProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      canNotBuyProductNames: null == canNotBuyProductNames
          ? _value._canNotBuyProductNames
          : canNotBuyProductNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FirstUseRegistrationModel implements _FirstUseRegistrationModel {
  const _$_FirstUseRegistrationModel(
      {final List<CustomerDealCouponModel> dealCoupons =
          const <CustomerDealCouponModel>[],
      this.isCanNotBuyProduct = false,
      final List<String> canNotBuyProductNames = const <String>[]})
      : _dealCoupons = dealCoupons,
        _canNotBuyProductNames = canNotBuyProductNames;

  factory _$_FirstUseRegistrationModel.fromJson(Map<String, dynamic> json) =>
      _$$_FirstUseRegistrationModelFromJson(json);

/* 初回利用登録クーポンモデル */
  final List<CustomerDealCouponModel> _dealCoupons;
/* 初回利用登録クーポンモデル */
  @override
  @JsonKey()
  List<CustomerDealCouponModel> get dealCoupons {
    if (_dealCoupons is EqualUnmodifiableListView) return _dealCoupons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dealCoupons);
  }

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

  @override
  String toString() {
    return 'FirstUseRegistrationModel(dealCoupons: $dealCoupons, isCanNotBuyProduct: $isCanNotBuyProduct, canNotBuyProductNames: $canNotBuyProductNames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirstUseRegistrationModel &&
            const DeepCollectionEquality()
                .equals(other._dealCoupons, _dealCoupons) &&
            (identical(other.isCanNotBuyProduct, isCanNotBuyProduct) ||
                other.isCanNotBuyProduct == isCanNotBuyProduct) &&
            const DeepCollectionEquality()
                .equals(other._canNotBuyProductNames, _canNotBuyProductNames));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dealCoupons),
      isCanNotBuyProduct,
      const DeepCollectionEquality().hash(_canNotBuyProductNames));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirstUseRegistrationModelCopyWith<_$_FirstUseRegistrationModel>
      get copyWith => __$$_FirstUseRegistrationModelCopyWithImpl<
          _$_FirstUseRegistrationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FirstUseRegistrationModelToJson(
      this,
    );
  }
}

abstract class _FirstUseRegistrationModel implements FirstUseRegistrationModel {
  const factory _FirstUseRegistrationModel(
      {final List<CustomerDealCouponModel> dealCoupons,
      final bool isCanNotBuyProduct,
      final List<String> canNotBuyProductNames}) = _$_FirstUseRegistrationModel;

  factory _FirstUseRegistrationModel.fromJson(Map<String, dynamic> json) =
      _$_FirstUseRegistrationModel.fromJson;

  @override /* 初回利用登録クーポンモデル */
  List<CustomerDealCouponModel> get dealCoupons;
  @override /* 購入不可商品あり判定 */
  bool get isCanNotBuyProduct;
  @override /* 購入不可商品名リスト */
  List<String> get canNotBuyProductNames;
  @override
  @JsonKey(ignore: true)
  _$$_FirstUseRegistrationModelCopyWith<_$_FirstUseRegistrationModel>
      get copyWith => throw _privateConstructorUsedError;
}
