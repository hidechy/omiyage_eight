// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_history_customers_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderHistoryCustomersModel _$OrderHistoryCustomersModelFromJson(
    Map<String, dynamic> json) {
  return _OrderHistoryCustomersModel.fromJson(json);
}

/// @nodoc
mixin _$OrderHistoryCustomersModel {
/* 会員が企業・団体会員判定  ``` true：企業・団体会員 false：個人会員 ``` */
  bool get isCorporateCustomer =>
      throw _privateConstructorUsedError; /* メインメールアドレス */
  String get mainMailAddress =>
      throw _privateConstructorUsedError; /* サブメールアドレス */
  String get subMailAddress =>
      throw _privateConstructorUsedError; /* nanacoポイント/割引機能有効判定  ``` true：有効 false：無効 ``` */
  bool get isNanacoEnabled =>
      throw _privateConstructorUsedError; /* nanaco登録済み判定  ``` true：登録済み false：未登録 ``` */
  bool get isNanacoRegisted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderHistoryCustomersModelCopyWith<OrderHistoryCustomersModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryCustomersModelCopyWith<$Res> {
  factory $OrderHistoryCustomersModelCopyWith(OrderHistoryCustomersModel value,
          $Res Function(OrderHistoryCustomersModel) then) =
      _$OrderHistoryCustomersModelCopyWithImpl<$Res,
          OrderHistoryCustomersModel>;
  @useResult
  $Res call(
      {bool isCorporateCustomer,
      String mainMailAddress,
      String subMailAddress,
      bool isNanacoEnabled,
      bool isNanacoRegisted});
}

/// @nodoc
class _$OrderHistoryCustomersModelCopyWithImpl<$Res,
        $Val extends OrderHistoryCustomersModel>
    implements $OrderHistoryCustomersModelCopyWith<$Res> {
  _$OrderHistoryCustomersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCorporateCustomer = null,
    Object? mainMailAddress = null,
    Object? subMailAddress = null,
    Object? isNanacoEnabled = null,
    Object? isNanacoRegisted = null,
  }) {
    return _then(_value.copyWith(
      isCorporateCustomer: null == isCorporateCustomer
          ? _value.isCorporateCustomer
          : isCorporateCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      mainMailAddress: null == mainMailAddress
          ? _value.mainMailAddress
          : mainMailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      subMailAddress: null == subMailAddress
          ? _value.subMailAddress
          : subMailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      isNanacoEnabled: null == isNanacoEnabled
          ? _value.isNanacoEnabled
          : isNanacoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isNanacoRegisted: null == isNanacoRegisted
          ? _value.isNanacoRegisted
          : isNanacoRegisted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderHistoryCustomersModelCopyWith<$Res>
    implements $OrderHistoryCustomersModelCopyWith<$Res> {
  factory _$$_OrderHistoryCustomersModelCopyWith(
          _$_OrderHistoryCustomersModel value,
          $Res Function(_$_OrderHistoryCustomersModel) then) =
      __$$_OrderHistoryCustomersModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isCorporateCustomer,
      String mainMailAddress,
      String subMailAddress,
      bool isNanacoEnabled,
      bool isNanacoRegisted});
}

/// @nodoc
class __$$_OrderHistoryCustomersModelCopyWithImpl<$Res>
    extends _$OrderHistoryCustomersModelCopyWithImpl<$Res,
        _$_OrderHistoryCustomersModel>
    implements _$$_OrderHistoryCustomersModelCopyWith<$Res> {
  __$$_OrderHistoryCustomersModelCopyWithImpl(
      _$_OrderHistoryCustomersModel _value,
      $Res Function(_$_OrderHistoryCustomersModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCorporateCustomer = null,
    Object? mainMailAddress = null,
    Object? subMailAddress = null,
    Object? isNanacoEnabled = null,
    Object? isNanacoRegisted = null,
  }) {
    return _then(_$_OrderHistoryCustomersModel(
      isCorporateCustomer: null == isCorporateCustomer
          ? _value.isCorporateCustomer
          : isCorporateCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      mainMailAddress: null == mainMailAddress
          ? _value.mainMailAddress
          : mainMailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      subMailAddress: null == subMailAddress
          ? _value.subMailAddress
          : subMailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      isNanacoEnabled: null == isNanacoEnabled
          ? _value.isNanacoEnabled
          : isNanacoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isNanacoRegisted: null == isNanacoRegisted
          ? _value.isNanacoRegisted
          : isNanacoRegisted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderHistoryCustomersModel implements _OrderHistoryCustomersModel {
  const _$_OrderHistoryCustomersModel(
      {this.isCorporateCustomer = false,
      this.mainMailAddress = '',
      this.subMailAddress = '',
      this.isNanacoEnabled = false,
      this.isNanacoRegisted = false});

  factory _$_OrderHistoryCustomersModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderHistoryCustomersModelFromJson(json);

/* 会員が企業・団体会員判定  ``` true：企業・団体会員 false：個人会員 ``` */
  @override
  @JsonKey()
  final bool isCorporateCustomer;
/* メインメールアドレス */
  @override
  @JsonKey()
  final String mainMailAddress;
/* サブメールアドレス */
  @override
  @JsonKey()
  final String subMailAddress;
/* nanacoポイント/割引機能有効判定  ``` true：有効 false：無効 ``` */
  @override
  @JsonKey()
  final bool isNanacoEnabled;
/* nanaco登録済み判定  ``` true：登録済み false：未登録 ``` */
  @override
  @JsonKey()
  final bool isNanacoRegisted;

  @override
  String toString() {
    return 'OrderHistoryCustomersModel(isCorporateCustomer: $isCorporateCustomer, mainMailAddress: $mainMailAddress, subMailAddress: $subMailAddress, isNanacoEnabled: $isNanacoEnabled, isNanacoRegisted: $isNanacoRegisted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderHistoryCustomersModel &&
            (identical(other.isCorporateCustomer, isCorporateCustomer) ||
                other.isCorporateCustomer == isCorporateCustomer) &&
            (identical(other.mainMailAddress, mainMailAddress) ||
                other.mainMailAddress == mainMailAddress) &&
            (identical(other.subMailAddress, subMailAddress) ||
                other.subMailAddress == subMailAddress) &&
            (identical(other.isNanacoEnabled, isNanacoEnabled) ||
                other.isNanacoEnabled == isNanacoEnabled) &&
            (identical(other.isNanacoRegisted, isNanacoRegisted) ||
                other.isNanacoRegisted == isNanacoRegisted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isCorporateCustomer,
      mainMailAddress, subMailAddress, isNanacoEnabled, isNanacoRegisted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderHistoryCustomersModelCopyWith<_$_OrderHistoryCustomersModel>
      get copyWith => __$$_OrderHistoryCustomersModelCopyWithImpl<
          _$_OrderHistoryCustomersModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderHistoryCustomersModelToJson(
      this,
    );
  }
}

abstract class _OrderHistoryCustomersModel
    implements OrderHistoryCustomersModel {
  const factory _OrderHistoryCustomersModel(
      {final bool isCorporateCustomer,
      final String mainMailAddress,
      final String subMailAddress,
      final bool isNanacoEnabled,
      final bool isNanacoRegisted}) = _$_OrderHistoryCustomersModel;

  factory _OrderHistoryCustomersModel.fromJson(Map<String, dynamic> json) =
      _$_OrderHistoryCustomersModel.fromJson;

  @override /* 会員が企業・団体会員判定  ``` true：企業・団体会員 false：個人会員 ``` */
  bool get isCorporateCustomer;
  @override /* メインメールアドレス */
  String get mainMailAddress;
  @override /* サブメールアドレス */
  String get subMailAddress;
  @override /* nanacoポイント/割引機能有効判定  ``` true：有効 false：無効 ``` */
  bool get isNanacoEnabled;
  @override /* nanaco登録済み判定  ``` true：登録済み false：未登録 ``` */
  bool get isNanacoRegisted;
  @override
  @JsonKey(ignore: true)
  _$$_OrderHistoryCustomersModelCopyWith<_$_OrderHistoryCustomersModel>
      get copyWith => throw _privateConstructorUsedError;
}
