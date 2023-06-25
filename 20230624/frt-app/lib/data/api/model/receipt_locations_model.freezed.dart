// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_locations_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReceiptLocationsModel _$ReceiptLocationsModelFromJson(
    Map<String, dynamic> json) {
  return _ReceiptLocationsModel.fromJson(json);
}

/// @nodoc
mixin _$ReceiptLocationsModel {
/* 店舗コード */
  String get shopCode => throw _privateConstructorUsedError; /* 受取地点名称 */
  String get receiptPointName =>
      throw _privateConstructorUsedError; /* 受取地点住所 */
  String get receiptPointAddress =>
      throw _privateConstructorUsedError; /* 受取地点緯度 */
  double get receiptPointLatitude =>
      throw _privateConstructorUsedError; /* 受取地点経度 */
  double get receiptPointLongitude =>
      throw _privateConstructorUsedError; /* 位置ID */
  String get locationId =>
      throw _privateConstructorUsedError; /* 店舗受取あり判定  ``` true：店舗受取あり false：店舗受取なし ``` */
  bool get hasShopReceipt =>
      throw _privateConstructorUsedError; /* ロッカー受取あり判定  ``` true：ロッカー受取あり false：ロッカー受取なし ``` */
  bool get hasLockerReceipt =>
      throw _privateConstructorUsedError; /* アイコン種別 ``` \"01\"：イトーヨーカドー \"02\"：7&iロッカー ``` */
  LocationIconType get iconType =>
      throw _privateConstructorUsedError; /* 配送拠点コード */
  String get deliveryBaseCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiptLocationsModelCopyWith<ReceiptLocationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptLocationsModelCopyWith<$Res> {
  factory $ReceiptLocationsModelCopyWith(ReceiptLocationsModel value,
          $Res Function(ReceiptLocationsModel) then) =
      _$ReceiptLocationsModelCopyWithImpl<$Res, ReceiptLocationsModel>;
  @useResult
  $Res call(
      {String shopCode,
      String receiptPointName,
      String receiptPointAddress,
      double receiptPointLatitude,
      double receiptPointLongitude,
      String locationId,
      bool hasShopReceipt,
      bool hasLockerReceipt,
      LocationIconType iconType,
      String deliveryBaseCode});
}

/// @nodoc
class _$ReceiptLocationsModelCopyWithImpl<$Res,
        $Val extends ReceiptLocationsModel>
    implements $ReceiptLocationsModelCopyWith<$Res> {
  _$ReceiptLocationsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopCode = null,
    Object? receiptPointName = null,
    Object? receiptPointAddress = null,
    Object? receiptPointLatitude = null,
    Object? receiptPointLongitude = null,
    Object? locationId = null,
    Object? hasShopReceipt = null,
    Object? hasLockerReceipt = null,
    Object? iconType = null,
    Object? deliveryBaseCode = null,
  }) {
    return _then(_value.copyWith(
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      receiptPointName: null == receiptPointName
          ? _value.receiptPointName
          : receiptPointName // ignore: cast_nullable_to_non_nullable
              as String,
      receiptPointAddress: null == receiptPointAddress
          ? _value.receiptPointAddress
          : receiptPointAddress // ignore: cast_nullable_to_non_nullable
              as String,
      receiptPointLatitude: null == receiptPointLatitude
          ? _value.receiptPointLatitude
          : receiptPointLatitude // ignore: cast_nullable_to_non_nullable
              as double,
      receiptPointLongitude: null == receiptPointLongitude
          ? _value.receiptPointLongitude
          : receiptPointLongitude // ignore: cast_nullable_to_non_nullable
              as double,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      hasShopReceipt: null == hasShopReceipt
          ? _value.hasShopReceipt
          : hasShopReceipt // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLockerReceipt: null == hasLockerReceipt
          ? _value.hasLockerReceipt
          : hasLockerReceipt // ignore: cast_nullable_to_non_nullable
              as bool,
      iconType: null == iconType
          ? _value.iconType
          : iconType // ignore: cast_nullable_to_non_nullable
              as LocationIconType,
      deliveryBaseCode: null == deliveryBaseCode
          ? _value.deliveryBaseCode
          : deliveryBaseCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReceiptLocationsModelCopyWith<$Res>
    implements $ReceiptLocationsModelCopyWith<$Res> {
  factory _$$_ReceiptLocationsModelCopyWith(_$_ReceiptLocationsModel value,
          $Res Function(_$_ReceiptLocationsModel) then) =
      __$$_ReceiptLocationsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String shopCode,
      String receiptPointName,
      String receiptPointAddress,
      double receiptPointLatitude,
      double receiptPointLongitude,
      String locationId,
      bool hasShopReceipt,
      bool hasLockerReceipt,
      LocationIconType iconType,
      String deliveryBaseCode});
}

/// @nodoc
class __$$_ReceiptLocationsModelCopyWithImpl<$Res>
    extends _$ReceiptLocationsModelCopyWithImpl<$Res, _$_ReceiptLocationsModel>
    implements _$$_ReceiptLocationsModelCopyWith<$Res> {
  __$$_ReceiptLocationsModelCopyWithImpl(_$_ReceiptLocationsModel _value,
      $Res Function(_$_ReceiptLocationsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopCode = null,
    Object? receiptPointName = null,
    Object? receiptPointAddress = null,
    Object? receiptPointLatitude = null,
    Object? receiptPointLongitude = null,
    Object? locationId = null,
    Object? hasShopReceipt = null,
    Object? hasLockerReceipt = null,
    Object? iconType = null,
    Object? deliveryBaseCode = null,
  }) {
    return _then(_$_ReceiptLocationsModel(
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      receiptPointName: null == receiptPointName
          ? _value.receiptPointName
          : receiptPointName // ignore: cast_nullable_to_non_nullable
              as String,
      receiptPointAddress: null == receiptPointAddress
          ? _value.receiptPointAddress
          : receiptPointAddress // ignore: cast_nullable_to_non_nullable
              as String,
      receiptPointLatitude: null == receiptPointLatitude
          ? _value.receiptPointLatitude
          : receiptPointLatitude // ignore: cast_nullable_to_non_nullable
              as double,
      receiptPointLongitude: null == receiptPointLongitude
          ? _value.receiptPointLongitude
          : receiptPointLongitude // ignore: cast_nullable_to_non_nullable
              as double,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      hasShopReceipt: null == hasShopReceipt
          ? _value.hasShopReceipt
          : hasShopReceipt // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLockerReceipt: null == hasLockerReceipt
          ? _value.hasLockerReceipt
          : hasLockerReceipt // ignore: cast_nullable_to_non_nullable
              as bool,
      iconType: null == iconType
          ? _value.iconType
          : iconType // ignore: cast_nullable_to_non_nullable
              as LocationIconType,
      deliveryBaseCode: null == deliveryBaseCode
          ? _value.deliveryBaseCode
          : deliveryBaseCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReceiptLocationsModel extends _ReceiptLocationsModel {
  const _$_ReceiptLocationsModel(
      {this.shopCode = '',
      this.receiptPointName = '',
      this.receiptPointAddress = '',
      this.receiptPointLatitude = 0.0,
      this.receiptPointLongitude = 0.0,
      this.locationId = '',
      this.hasShopReceipt = false,
      this.hasLockerReceipt = false,
      this.iconType = LocationIconType.iy,
      this.deliveryBaseCode = ''})
      : super._();

  factory _$_ReceiptLocationsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReceiptLocationsModelFromJson(json);

/* 店舗コード */
  @override
  @JsonKey()
  final String shopCode;
/* 受取地点名称 */
  @override
  @JsonKey()
  final String receiptPointName;
/* 受取地点住所 */
  @override
  @JsonKey()
  final String receiptPointAddress;
/* 受取地点緯度 */
  @override
  @JsonKey()
  final double receiptPointLatitude;
/* 受取地点経度 */
  @override
  @JsonKey()
  final double receiptPointLongitude;
/* 位置ID */
  @override
  @JsonKey()
  final String locationId;
/* 店舗受取あり判定  ``` true：店舗受取あり false：店舗受取なし ``` */
  @override
  @JsonKey()
  final bool hasShopReceipt;
/* ロッカー受取あり判定  ``` true：ロッカー受取あり false：ロッカー受取なし ``` */
  @override
  @JsonKey()
  final bool hasLockerReceipt;
/* アイコン種別 ``` \"01\"：イトーヨーカドー \"02\"：7&iロッカー ``` */
  @override
  @JsonKey()
  final LocationIconType iconType;
/* 配送拠点コード */
  @override
  @JsonKey()
  final String deliveryBaseCode;

  @override
  String toString() {
    return 'ReceiptLocationsModel(shopCode: $shopCode, receiptPointName: $receiptPointName, receiptPointAddress: $receiptPointAddress, receiptPointLatitude: $receiptPointLatitude, receiptPointLongitude: $receiptPointLongitude, locationId: $locationId, hasShopReceipt: $hasShopReceipt, hasLockerReceipt: $hasLockerReceipt, iconType: $iconType, deliveryBaseCode: $deliveryBaseCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceiptLocationsModel &&
            (identical(other.shopCode, shopCode) ||
                other.shopCode == shopCode) &&
            (identical(other.receiptPointName, receiptPointName) ||
                other.receiptPointName == receiptPointName) &&
            (identical(other.receiptPointAddress, receiptPointAddress) ||
                other.receiptPointAddress == receiptPointAddress) &&
            (identical(other.receiptPointLatitude, receiptPointLatitude) ||
                other.receiptPointLatitude == receiptPointLatitude) &&
            (identical(other.receiptPointLongitude, receiptPointLongitude) ||
                other.receiptPointLongitude == receiptPointLongitude) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.hasShopReceipt, hasShopReceipt) ||
                other.hasShopReceipt == hasShopReceipt) &&
            (identical(other.hasLockerReceipt, hasLockerReceipt) ||
                other.hasLockerReceipt == hasLockerReceipt) &&
            (identical(other.iconType, iconType) ||
                other.iconType == iconType) &&
            (identical(other.deliveryBaseCode, deliveryBaseCode) ||
                other.deliveryBaseCode == deliveryBaseCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      shopCode,
      receiptPointName,
      receiptPointAddress,
      receiptPointLatitude,
      receiptPointLongitude,
      locationId,
      hasShopReceipt,
      hasLockerReceipt,
      iconType,
      deliveryBaseCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReceiptLocationsModelCopyWith<_$_ReceiptLocationsModel> get copyWith =>
      __$$_ReceiptLocationsModelCopyWithImpl<_$_ReceiptLocationsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReceiptLocationsModelToJson(
      this,
    );
  }
}

abstract class _ReceiptLocationsModel extends ReceiptLocationsModel {
  const factory _ReceiptLocationsModel(
      {final String shopCode,
      final String receiptPointName,
      final String receiptPointAddress,
      final double receiptPointLatitude,
      final double receiptPointLongitude,
      final String locationId,
      final bool hasShopReceipt,
      final bool hasLockerReceipt,
      final LocationIconType iconType,
      final String deliveryBaseCode}) = _$_ReceiptLocationsModel;
  const _ReceiptLocationsModel._() : super._();

  factory _ReceiptLocationsModel.fromJson(Map<String, dynamic> json) =
      _$_ReceiptLocationsModel.fromJson;

  @override /* 店舗コード */
  String get shopCode;
  @override /* 受取地点名称 */
  String get receiptPointName;
  @override /* 受取地点住所 */
  String get receiptPointAddress;
  @override /* 受取地点緯度 */
  double get receiptPointLatitude;
  @override /* 受取地点経度 */
  double get receiptPointLongitude;
  @override /* 位置ID */
  String get locationId;
  @override /* 店舗受取あり判定  ``` true：店舗受取あり false：店舗受取なし ``` */
  bool get hasShopReceipt;
  @override /* ロッカー受取あり判定  ``` true：ロッカー受取あり false：ロッカー受取なし ``` */
  bool get hasLockerReceipt;
  @override /* アイコン種別 ``` \"01\"：イトーヨーカドー \"02\"：7&iロッカー ``` */
  LocationIconType get iconType;
  @override /* 配送拠点コード */
  String get deliveryBaseCode;
  @override
  @JsonKey(ignore: true)
  _$$_ReceiptLocationsModelCopyWith<_$_ReceiptLocationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
