// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopModel _$ShopModelFromJson(Map<String, dynamic> json) {
  return _ShopModel.fromJson(json);
}

/// @nodoc
mixin _$ShopModel {
/* 店舗名 */
  String get shopName => throw _privateConstructorUsedError; /* 電話番号 */
  String get telNumber => throw _privateConstructorUsedError; /* 店コード */
  String get shopCode =>
      throw _privateConstructorUsedError; /* アカチャンホンポ対応店舗判定 - true：アカチャンホンポ対応店舗 - false：アカチャンホンポ対応店舗でない */
  bool get isAkachanHonpoShop =>
      throw _privateConstructorUsedError; /* アカチャンホンポ店舗代行中判定 - true：アカチャンホンポ店舗代行中 - false：アカチャンホンポ店舗代行中でない */
  bool get isAkachanHonpoAgencyShop =>
      throw _privateConstructorUsedError; /* 医薬品扱い店舗判定  ``` true：医薬品扱い店舗である false：医薬品扱い店舗でない ``` */
  bool get isDrugShop => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopModelCopyWith<ShopModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopModelCopyWith<$Res> {
  factory $ShopModelCopyWith(ShopModel value, $Res Function(ShopModel) then) =
      _$ShopModelCopyWithImpl<$Res, ShopModel>;
  @useResult
  $Res call(
      {String shopName,
      String telNumber,
      String shopCode,
      bool isAkachanHonpoShop,
      bool isAkachanHonpoAgencyShop,
      bool isDrugShop});
}

/// @nodoc
class _$ShopModelCopyWithImpl<$Res, $Val extends ShopModel>
    implements $ShopModelCopyWith<$Res> {
  _$ShopModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopName = null,
    Object? telNumber = null,
    Object? shopCode = null,
    Object? isAkachanHonpoShop = null,
    Object? isAkachanHonpoAgencyShop = null,
    Object? isDrugShop = null,
  }) {
    return _then(_value.copyWith(
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      telNumber: null == telNumber
          ? _value.telNumber
          : telNumber // ignore: cast_nullable_to_non_nullable
              as String,
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      isAkachanHonpoShop: null == isAkachanHonpoShop
          ? _value.isAkachanHonpoShop
          : isAkachanHonpoShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isAkachanHonpoAgencyShop: null == isAkachanHonpoAgencyShop
          ? _value.isAkachanHonpoAgencyShop
          : isAkachanHonpoAgencyShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isDrugShop: null == isDrugShop
          ? _value.isDrugShop
          : isDrugShop // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShopModelCopyWith<$Res> implements $ShopModelCopyWith<$Res> {
  factory _$$_ShopModelCopyWith(
          _$_ShopModel value, $Res Function(_$_ShopModel) then) =
      __$$_ShopModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String shopName,
      String telNumber,
      String shopCode,
      bool isAkachanHonpoShop,
      bool isAkachanHonpoAgencyShop,
      bool isDrugShop});
}

/// @nodoc
class __$$_ShopModelCopyWithImpl<$Res>
    extends _$ShopModelCopyWithImpl<$Res, _$_ShopModel>
    implements _$$_ShopModelCopyWith<$Res> {
  __$$_ShopModelCopyWithImpl(
      _$_ShopModel _value, $Res Function(_$_ShopModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopName = null,
    Object? telNumber = null,
    Object? shopCode = null,
    Object? isAkachanHonpoShop = null,
    Object? isAkachanHonpoAgencyShop = null,
    Object? isDrugShop = null,
  }) {
    return _then(_$_ShopModel(
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      telNumber: null == telNumber
          ? _value.telNumber
          : telNumber // ignore: cast_nullable_to_non_nullable
              as String,
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      isAkachanHonpoShop: null == isAkachanHonpoShop
          ? _value.isAkachanHonpoShop
          : isAkachanHonpoShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isAkachanHonpoAgencyShop: null == isAkachanHonpoAgencyShop
          ? _value.isAkachanHonpoAgencyShop
          : isAkachanHonpoAgencyShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isDrugShop: null == isDrugShop
          ? _value.isDrugShop
          : isDrugShop // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopModel implements _ShopModel {
  const _$_ShopModel(
      {this.shopName = '',
      this.telNumber = '',
      this.shopCode = '',
      this.isAkachanHonpoShop = false,
      this.isAkachanHonpoAgencyShop = false,
      this.isDrugShop = false});

  factory _$_ShopModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShopModelFromJson(json);

/* 店舗名 */
  @override
  @JsonKey()
  final String shopName;
/* 電話番号 */
  @override
  @JsonKey()
  final String telNumber;
/* 店コード */
  @override
  @JsonKey()
  final String shopCode;
/* アカチャンホンポ対応店舗判定 - true：アカチャンホンポ対応店舗 - false：アカチャンホンポ対応店舗でない */
  @override
  @JsonKey()
  final bool isAkachanHonpoShop;
/* アカチャンホンポ店舗代行中判定 - true：アカチャンホンポ店舗代行中 - false：アカチャンホンポ店舗代行中でない */
  @override
  @JsonKey()
  final bool isAkachanHonpoAgencyShop;
/* 医薬品扱い店舗判定  ``` true：医薬品扱い店舗である false：医薬品扱い店舗でない ``` */
  @override
  @JsonKey()
  final bool isDrugShop;

  @override
  String toString() {
    return 'ShopModel(shopName: $shopName, telNumber: $telNumber, shopCode: $shopCode, isAkachanHonpoShop: $isAkachanHonpoShop, isAkachanHonpoAgencyShop: $isAkachanHonpoAgencyShop, isDrugShop: $isDrugShop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopModel &&
            (identical(other.shopName, shopName) ||
                other.shopName == shopName) &&
            (identical(other.telNumber, telNumber) ||
                other.telNumber == telNumber) &&
            (identical(other.shopCode, shopCode) ||
                other.shopCode == shopCode) &&
            (identical(other.isAkachanHonpoShop, isAkachanHonpoShop) ||
                other.isAkachanHonpoShop == isAkachanHonpoShop) &&
            (identical(
                    other.isAkachanHonpoAgencyShop, isAkachanHonpoAgencyShop) ||
                other.isAkachanHonpoAgencyShop == isAkachanHonpoAgencyShop) &&
            (identical(other.isDrugShop, isDrugShop) ||
                other.isDrugShop == isDrugShop));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, shopName, telNumber, shopCode,
      isAkachanHonpoShop, isAkachanHonpoAgencyShop, isDrugShop);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopModelCopyWith<_$_ShopModel> get copyWith =>
      __$$_ShopModelCopyWithImpl<_$_ShopModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopModelToJson(
      this,
    );
  }
}

abstract class _ShopModel implements ShopModel {
  const factory _ShopModel(
      {final String shopName,
      final String telNumber,
      final String shopCode,
      final bool isAkachanHonpoShop,
      final bool isAkachanHonpoAgencyShop,
      final bool isDrugShop}) = _$_ShopModel;

  factory _ShopModel.fromJson(Map<String, dynamic> json) =
      _$_ShopModel.fromJson;

  @override /* 店舗名 */
  String get shopName;
  @override /* 電話番号 */
  String get telNumber;
  @override /* 店コード */
  String get shopCode;
  @override /* アカチャンホンポ対応店舗判定 - true：アカチャンホンポ対応店舗 - false：アカチャンホンポ対応店舗でない */
  bool get isAkachanHonpoShop;
  @override /* アカチャンホンポ店舗代行中判定 - true：アカチャンホンポ店舗代行中 - false：アカチャンホンポ店舗代行中でない */
  bool get isAkachanHonpoAgencyShop;
  @override /* 医薬品扱い店舗判定  ``` true：医薬品扱い店舗である false：医薬品扱い店舗でない ``` */
  bool get isDrugShop;
  @override
  @JsonKey(ignore: true)
  _$$_ShopModelCopyWith<_$_ShopModel> get copyWith =>
      throw _privateConstructorUsedError;
}
