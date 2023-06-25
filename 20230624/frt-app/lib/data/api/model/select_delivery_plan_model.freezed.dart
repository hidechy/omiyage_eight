// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_delivery_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SelectDeliveryPlanModel _$SelectDeliveryPlanModelFromJson(
    Map<String, dynamic> json) {
  return _SelectDeliveryPlanModel.fromJson(json);
}

/// @nodoc
mixin _$SelectDeliveryPlanModel {
/* 入店規制判定 - true：入店規制中である - false：入店規制中でない */
  bool get isEntranceRestrictions =>
      throw _privateConstructorUsedError; /* 店舗受取利用可能判定 - true：店舗受取利用可能 - false：店舗受取利用不可 */
  bool get isEnableShopReceipt =>
      throw _privateConstructorUsedError; /* 受取便情報リスト */
  List<DeliveryInformationModel> get deliveryInformations =>
      throw _privateConstructorUsedError;
  IndividualDeliveryPriceInformationModel?
      get individualDeliveryPriceInformation =>
          throw _privateConstructorUsedError; /* お届け先住所 */
  String get deliveryAddress =>
      throw _privateConstructorUsedError; /* お住まいステータス null or "0" お住まい未確認 "1" お住まい確認済み "2" お住まい確認中 */
  LivingStatusType get livingStatus =>
      throw _privateConstructorUsedError; /* 梱包手数料-徴収対象会員判定 - true：梱包手数料徴収対象会員である - false：梱包手数料徴収対象会員でない */
  bool get isPackPriceTargetCustomer =>
      throw _privateConstructorUsedError; /* 受取便変更元-受注ID */
  int? get deliveryPlanChangeOriginOrderId =>
      throw _privateConstructorUsedError; /* 梱包手数料-徴収対象会員・梱包まとめ方法未選択判定 - true：梱包手数料徴収対象会員かつ梱包まとめ方法未選択である - false：梱包手数料徴収対象会員でないまたは梱包まとめ方法未選択でない */
  bool get isNotSelectedPackMethod =>
      throw _privateConstructorUsedError; /* デフォルト梱包まとめ方法種別 ``` \"0\"：個別注文 \"1\"：複数注文(注文毎に個別梱包する) \"2\"：複数注文(まとめて梱包する) null：個人会員の場合``` */
  PackMethodType get defaultPackMethodType =>
      throw _privateConstructorUsedError;
  List<PackMethodInformationModel> get packMethodInformations =>
      throw _privateConstructorUsedError; /* 店コード */
  String get shopCode => throw _privateConstructorUsedError; /* 店舗名 */
  String get shopName => throw _privateConstructorUsedError; /* 初期受取場所の緯度 */
  double? get initReceiptPointLatitude =>
      throw _privateConstructorUsedError; /* 初期受取場所の経度 */
  double? get initReceiptPointLongitude =>
      throw _privateConstructorUsedError; /* 初期受取地点ID */
  String get initReceiptPointId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectDeliveryPlanModelCopyWith<SelectDeliveryPlanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectDeliveryPlanModelCopyWith<$Res> {
  factory $SelectDeliveryPlanModelCopyWith(SelectDeliveryPlanModel value,
          $Res Function(SelectDeliveryPlanModel) then) =
      _$SelectDeliveryPlanModelCopyWithImpl<$Res, SelectDeliveryPlanModel>;
  @useResult
  $Res call(
      {bool isEntranceRestrictions,
      bool isEnableShopReceipt,
      List<DeliveryInformationModel> deliveryInformations,
      IndividualDeliveryPriceInformationModel?
          individualDeliveryPriceInformation,
      String deliveryAddress,
      LivingStatusType livingStatus,
      bool isPackPriceTargetCustomer,
      int? deliveryPlanChangeOriginOrderId,
      bool isNotSelectedPackMethod,
      PackMethodType defaultPackMethodType,
      List<PackMethodInformationModel> packMethodInformations,
      String shopCode,
      String shopName,
      double? initReceiptPointLatitude,
      double? initReceiptPointLongitude,
      String initReceiptPointId});

  $IndividualDeliveryPriceInformationModelCopyWith<$Res>?
      get individualDeliveryPriceInformation;
}

/// @nodoc
class _$SelectDeliveryPlanModelCopyWithImpl<$Res,
        $Val extends SelectDeliveryPlanModel>
    implements $SelectDeliveryPlanModelCopyWith<$Res> {
  _$SelectDeliveryPlanModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEntranceRestrictions = null,
    Object? isEnableShopReceipt = null,
    Object? deliveryInformations = null,
    Object? individualDeliveryPriceInformation = freezed,
    Object? deliveryAddress = null,
    Object? livingStatus = null,
    Object? isPackPriceTargetCustomer = null,
    Object? deliveryPlanChangeOriginOrderId = freezed,
    Object? isNotSelectedPackMethod = null,
    Object? defaultPackMethodType = null,
    Object? packMethodInformations = null,
    Object? shopCode = null,
    Object? shopName = null,
    Object? initReceiptPointLatitude = freezed,
    Object? initReceiptPointLongitude = freezed,
    Object? initReceiptPointId = null,
  }) {
    return _then(_value.copyWith(
      isEntranceRestrictions: null == isEntranceRestrictions
          ? _value.isEntranceRestrictions
          : isEntranceRestrictions // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableShopReceipt: null == isEnableShopReceipt
          ? _value.isEnableShopReceipt
          : isEnableShopReceipt // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryInformations: null == deliveryInformations
          ? _value.deliveryInformations
          : deliveryInformations // ignore: cast_nullable_to_non_nullable
              as List<DeliveryInformationModel>,
      individualDeliveryPriceInformation: freezed ==
              individualDeliveryPriceInformation
          ? _value.individualDeliveryPriceInformation
          : individualDeliveryPriceInformation // ignore: cast_nullable_to_non_nullable
              as IndividualDeliveryPriceInformationModel?,
      deliveryAddress: null == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String,
      livingStatus: null == livingStatus
          ? _value.livingStatus
          : livingStatus // ignore: cast_nullable_to_non_nullable
              as LivingStatusType,
      isPackPriceTargetCustomer: null == isPackPriceTargetCustomer
          ? _value.isPackPriceTargetCustomer
          : isPackPriceTargetCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryPlanChangeOriginOrderId: freezed ==
              deliveryPlanChangeOriginOrderId
          ? _value.deliveryPlanChangeOriginOrderId
          : deliveryPlanChangeOriginOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      isNotSelectedPackMethod: null == isNotSelectedPackMethod
          ? _value.isNotSelectedPackMethod
          : isNotSelectedPackMethod // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultPackMethodType: null == defaultPackMethodType
          ? _value.defaultPackMethodType
          : defaultPackMethodType // ignore: cast_nullable_to_non_nullable
              as PackMethodType,
      packMethodInformations: null == packMethodInformations
          ? _value.packMethodInformations
          : packMethodInformations // ignore: cast_nullable_to_non_nullable
              as List<PackMethodInformationModel>,
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      initReceiptPointLatitude: freezed == initReceiptPointLatitude
          ? _value.initReceiptPointLatitude
          : initReceiptPointLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      initReceiptPointLongitude: freezed == initReceiptPointLongitude
          ? _value.initReceiptPointLongitude
          : initReceiptPointLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      initReceiptPointId: null == initReceiptPointId
          ? _value.initReceiptPointId
          : initReceiptPointId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IndividualDeliveryPriceInformationModelCopyWith<$Res>?
      get individualDeliveryPriceInformation {
    if (_value.individualDeliveryPriceInformation == null) {
      return null;
    }

    return $IndividualDeliveryPriceInformationModelCopyWith<$Res>(
        _value.individualDeliveryPriceInformation!, (value) {
      return _then(
          _value.copyWith(individualDeliveryPriceInformation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SelectDeliveryPlanModelCopyWith<$Res>
    implements $SelectDeliveryPlanModelCopyWith<$Res> {
  factory _$$_SelectDeliveryPlanModelCopyWith(_$_SelectDeliveryPlanModel value,
          $Res Function(_$_SelectDeliveryPlanModel) then) =
      __$$_SelectDeliveryPlanModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isEntranceRestrictions,
      bool isEnableShopReceipt,
      List<DeliveryInformationModel> deliveryInformations,
      IndividualDeliveryPriceInformationModel?
          individualDeliveryPriceInformation,
      String deliveryAddress,
      LivingStatusType livingStatus,
      bool isPackPriceTargetCustomer,
      int? deliveryPlanChangeOriginOrderId,
      bool isNotSelectedPackMethod,
      PackMethodType defaultPackMethodType,
      List<PackMethodInformationModel> packMethodInformations,
      String shopCode,
      String shopName,
      double? initReceiptPointLatitude,
      double? initReceiptPointLongitude,
      String initReceiptPointId});

  @override
  $IndividualDeliveryPriceInformationModelCopyWith<$Res>?
      get individualDeliveryPriceInformation;
}

/// @nodoc
class __$$_SelectDeliveryPlanModelCopyWithImpl<$Res>
    extends _$SelectDeliveryPlanModelCopyWithImpl<$Res,
        _$_SelectDeliveryPlanModel>
    implements _$$_SelectDeliveryPlanModelCopyWith<$Res> {
  __$$_SelectDeliveryPlanModelCopyWithImpl(_$_SelectDeliveryPlanModel _value,
      $Res Function(_$_SelectDeliveryPlanModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEntranceRestrictions = null,
    Object? isEnableShopReceipt = null,
    Object? deliveryInformations = null,
    Object? individualDeliveryPriceInformation = freezed,
    Object? deliveryAddress = null,
    Object? livingStatus = null,
    Object? isPackPriceTargetCustomer = null,
    Object? deliveryPlanChangeOriginOrderId = freezed,
    Object? isNotSelectedPackMethod = null,
    Object? defaultPackMethodType = null,
    Object? packMethodInformations = null,
    Object? shopCode = null,
    Object? shopName = null,
    Object? initReceiptPointLatitude = freezed,
    Object? initReceiptPointLongitude = freezed,
    Object? initReceiptPointId = null,
  }) {
    return _then(_$_SelectDeliveryPlanModel(
      isEntranceRestrictions: null == isEntranceRestrictions
          ? _value.isEntranceRestrictions
          : isEntranceRestrictions // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableShopReceipt: null == isEnableShopReceipt
          ? _value.isEnableShopReceipt
          : isEnableShopReceipt // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryInformations: null == deliveryInformations
          ? _value._deliveryInformations
          : deliveryInformations // ignore: cast_nullable_to_non_nullable
              as List<DeliveryInformationModel>,
      individualDeliveryPriceInformation: freezed ==
              individualDeliveryPriceInformation
          ? _value.individualDeliveryPriceInformation
          : individualDeliveryPriceInformation // ignore: cast_nullable_to_non_nullable
              as IndividualDeliveryPriceInformationModel?,
      deliveryAddress: null == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String,
      livingStatus: null == livingStatus
          ? _value.livingStatus
          : livingStatus // ignore: cast_nullable_to_non_nullable
              as LivingStatusType,
      isPackPriceTargetCustomer: null == isPackPriceTargetCustomer
          ? _value.isPackPriceTargetCustomer
          : isPackPriceTargetCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryPlanChangeOriginOrderId: freezed ==
              deliveryPlanChangeOriginOrderId
          ? _value.deliveryPlanChangeOriginOrderId
          : deliveryPlanChangeOriginOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      isNotSelectedPackMethod: null == isNotSelectedPackMethod
          ? _value.isNotSelectedPackMethod
          : isNotSelectedPackMethod // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultPackMethodType: null == defaultPackMethodType
          ? _value.defaultPackMethodType
          : defaultPackMethodType // ignore: cast_nullable_to_non_nullable
              as PackMethodType,
      packMethodInformations: null == packMethodInformations
          ? _value._packMethodInformations
          : packMethodInformations // ignore: cast_nullable_to_non_nullable
              as List<PackMethodInformationModel>,
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      initReceiptPointLatitude: freezed == initReceiptPointLatitude
          ? _value.initReceiptPointLatitude
          : initReceiptPointLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      initReceiptPointLongitude: freezed == initReceiptPointLongitude
          ? _value.initReceiptPointLongitude
          : initReceiptPointLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      initReceiptPointId: null == initReceiptPointId
          ? _value.initReceiptPointId
          : initReceiptPointId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SelectDeliveryPlanModel implements _SelectDeliveryPlanModel {
  const _$_SelectDeliveryPlanModel(
      {this.isEntranceRestrictions = false,
      this.isEnableShopReceipt = false,
      final List<DeliveryInformationModel> deliveryInformations =
          const <DeliveryInformationModel>[],
      this.individualDeliveryPriceInformation,
      this.deliveryAddress = '',
      this.livingStatus = LivingStatusType.unconfirmed,
      this.isPackPriceTargetCustomer = false,
      this.deliveryPlanChangeOriginOrderId,
      this.isNotSelectedPackMethod = false,
      this.defaultPackMethodType = PackMethodType.none,
      final List<PackMethodInformationModel> packMethodInformations =
          const <PackMethodInformationModel>[],
      this.shopCode = '',
      this.shopName = '',
      this.initReceiptPointLatitude,
      this.initReceiptPointLongitude,
      this.initReceiptPointId = ''})
      : _deliveryInformations = deliveryInformations,
        _packMethodInformations = packMethodInformations;

  factory _$_SelectDeliveryPlanModel.fromJson(Map<String, dynamic> json) =>
      _$$_SelectDeliveryPlanModelFromJson(json);

/* 入店規制判定 - true：入店規制中である - false：入店規制中でない */
  @override
  @JsonKey()
  final bool isEntranceRestrictions;
/* 店舗受取利用可能判定 - true：店舗受取利用可能 - false：店舗受取利用不可 */
  @override
  @JsonKey()
  final bool isEnableShopReceipt;
/* 受取便情報リスト */
  final List<DeliveryInformationModel> _deliveryInformations;
/* 受取便情報リスト */
  @override
  @JsonKey()
  List<DeliveryInformationModel> get deliveryInformations {
    if (_deliveryInformations is EqualUnmodifiableListView)
      return _deliveryInformations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveryInformations);
  }

  @override
  final IndividualDeliveryPriceInformationModel?
      individualDeliveryPriceInformation;
/* お届け先住所 */
  @override
  @JsonKey()
  final String deliveryAddress;
/* お住まいステータス null or "0" お住まい未確認 "1" お住まい確認済み "2" お住まい確認中 */
  @override
  @JsonKey()
  final LivingStatusType livingStatus;
/* 梱包手数料-徴収対象会員判定 - true：梱包手数料徴収対象会員である - false：梱包手数料徴収対象会員でない */
  @override
  @JsonKey()
  final bool isPackPriceTargetCustomer;
/* 受取便変更元-受注ID */
  @override
  final int? deliveryPlanChangeOriginOrderId;
/* 梱包手数料-徴収対象会員・梱包まとめ方法未選択判定 - true：梱包手数料徴収対象会員かつ梱包まとめ方法未選択である - false：梱包手数料徴収対象会員でないまたは梱包まとめ方法未選択でない */
  @override
  @JsonKey()
  final bool isNotSelectedPackMethod;
/* デフォルト梱包まとめ方法種別 ``` \"0\"：個別注文 \"1\"：複数注文(注文毎に個別梱包する) \"2\"：複数注文(まとめて梱包する) null：個人会員の場合``` */
  @override
  @JsonKey()
  final PackMethodType defaultPackMethodType;
  final List<PackMethodInformationModel> _packMethodInformations;
  @override
  @JsonKey()
  List<PackMethodInformationModel> get packMethodInformations {
    if (_packMethodInformations is EqualUnmodifiableListView)
      return _packMethodInformations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packMethodInformations);
  }

/* 店コード */
  @override
  @JsonKey()
  final String shopCode;
/* 店舗名 */
  @override
  @JsonKey()
  final String shopName;
/* 初期受取場所の緯度 */
  @override
  final double? initReceiptPointLatitude;
/* 初期受取場所の経度 */
  @override
  final double? initReceiptPointLongitude;
/* 初期受取地点ID */
  @override
  @JsonKey()
  final String initReceiptPointId;

  @override
  String toString() {
    return 'SelectDeliveryPlanModel(isEntranceRestrictions: $isEntranceRestrictions, isEnableShopReceipt: $isEnableShopReceipt, deliveryInformations: $deliveryInformations, individualDeliveryPriceInformation: $individualDeliveryPriceInformation, deliveryAddress: $deliveryAddress, livingStatus: $livingStatus, isPackPriceTargetCustomer: $isPackPriceTargetCustomer, deliveryPlanChangeOriginOrderId: $deliveryPlanChangeOriginOrderId, isNotSelectedPackMethod: $isNotSelectedPackMethod, defaultPackMethodType: $defaultPackMethodType, packMethodInformations: $packMethodInformations, shopCode: $shopCode, shopName: $shopName, initReceiptPointLatitude: $initReceiptPointLatitude, initReceiptPointLongitude: $initReceiptPointLongitude, initReceiptPointId: $initReceiptPointId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectDeliveryPlanModel &&
            (identical(other.isEntranceRestrictions, isEntranceRestrictions) ||
                other.isEntranceRestrictions == isEntranceRestrictions) &&
            (identical(other.isEnableShopReceipt, isEnableShopReceipt) ||
                other.isEnableShopReceipt == isEnableShopReceipt) &&
            const DeepCollectionEquality()
                .equals(other._deliveryInformations, _deliveryInformations) &&
            (identical(other.individualDeliveryPriceInformation,
                    individualDeliveryPriceInformation) ||
                other.individualDeliveryPriceInformation ==
                    individualDeliveryPriceInformation) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.livingStatus, livingStatus) ||
                other.livingStatus == livingStatus) &&
            (identical(other.isPackPriceTargetCustomer, isPackPriceTargetCustomer) ||
                other.isPackPriceTargetCustomer == isPackPriceTargetCustomer) &&
            (identical(other.deliveryPlanChangeOriginOrderId,
                    deliveryPlanChangeOriginOrderId) ||
                other.deliveryPlanChangeOriginOrderId ==
                    deliveryPlanChangeOriginOrderId) &&
            (identical(other.isNotSelectedPackMethod, isNotSelectedPackMethod) ||
                other.isNotSelectedPackMethod == isNotSelectedPackMethod) &&
            (identical(other.defaultPackMethodType, defaultPackMethodType) ||
                other.defaultPackMethodType == defaultPackMethodType) &&
            const DeepCollectionEquality().equals(
                other._packMethodInformations, _packMethodInformations) &&
            (identical(other.shopCode, shopCode) ||
                other.shopCode == shopCode) &&
            (identical(other.shopName, shopName) ||
                other.shopName == shopName) &&
            (identical(other.initReceiptPointLatitude, initReceiptPointLatitude) ||
                other.initReceiptPointLatitude == initReceiptPointLatitude) &&
            (identical(other.initReceiptPointLongitude, initReceiptPointLongitude) ||
                other.initReceiptPointLongitude == initReceiptPointLongitude) &&
            (identical(other.initReceiptPointId, initReceiptPointId) ||
                other.initReceiptPointId == initReceiptPointId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isEntranceRestrictions,
      isEnableShopReceipt,
      const DeepCollectionEquality().hash(_deliveryInformations),
      individualDeliveryPriceInformation,
      deliveryAddress,
      livingStatus,
      isPackPriceTargetCustomer,
      deliveryPlanChangeOriginOrderId,
      isNotSelectedPackMethod,
      defaultPackMethodType,
      const DeepCollectionEquality().hash(_packMethodInformations),
      shopCode,
      shopName,
      initReceiptPointLatitude,
      initReceiptPointLongitude,
      initReceiptPointId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectDeliveryPlanModelCopyWith<_$_SelectDeliveryPlanModel>
      get copyWith =>
          __$$_SelectDeliveryPlanModelCopyWithImpl<_$_SelectDeliveryPlanModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SelectDeliveryPlanModelToJson(
      this,
    );
  }
}

abstract class _SelectDeliveryPlanModel implements SelectDeliveryPlanModel {
  const factory _SelectDeliveryPlanModel(
      {final bool isEntranceRestrictions,
      final bool isEnableShopReceipt,
      final List<DeliveryInformationModel> deliveryInformations,
      final IndividualDeliveryPriceInformationModel?
          individualDeliveryPriceInformation,
      final String deliveryAddress,
      final LivingStatusType livingStatus,
      final bool isPackPriceTargetCustomer,
      final int? deliveryPlanChangeOriginOrderId,
      final bool isNotSelectedPackMethod,
      final PackMethodType defaultPackMethodType,
      final List<PackMethodInformationModel> packMethodInformations,
      final String shopCode,
      final String shopName,
      final double? initReceiptPointLatitude,
      final double? initReceiptPointLongitude,
      final String initReceiptPointId}) = _$_SelectDeliveryPlanModel;

  factory _SelectDeliveryPlanModel.fromJson(Map<String, dynamic> json) =
      _$_SelectDeliveryPlanModel.fromJson;

  @override /* 入店規制判定 - true：入店規制中である - false：入店規制中でない */
  bool get isEntranceRestrictions;
  @override /* 店舗受取利用可能判定 - true：店舗受取利用可能 - false：店舗受取利用不可 */
  bool get isEnableShopReceipt;
  @override /* 受取便情報リスト */
  List<DeliveryInformationModel> get deliveryInformations;
  @override
  IndividualDeliveryPriceInformationModel?
      get individualDeliveryPriceInformation;
  @override /* お届け先住所 */
  String get deliveryAddress;
  @override /* お住まいステータス null or "0" お住まい未確認 "1" お住まい確認済み "2" お住まい確認中 */
  LivingStatusType get livingStatus;
  @override /* 梱包手数料-徴収対象会員判定 - true：梱包手数料徴収対象会員である - false：梱包手数料徴収対象会員でない */
  bool get isPackPriceTargetCustomer;
  @override /* 受取便変更元-受注ID */
  int? get deliveryPlanChangeOriginOrderId;
  @override /* 梱包手数料-徴収対象会員・梱包まとめ方法未選択判定 - true：梱包手数料徴収対象会員かつ梱包まとめ方法未選択である - false：梱包手数料徴収対象会員でないまたは梱包まとめ方法未選択でない */
  bool get isNotSelectedPackMethod;
  @override /* デフォルト梱包まとめ方法種別 ``` \"0\"：個別注文 \"1\"：複数注文(注文毎に個別梱包する) \"2\"：複数注文(まとめて梱包する) null：個人会員の場合``` */
  PackMethodType get defaultPackMethodType;
  @override
  List<PackMethodInformationModel> get packMethodInformations;
  @override /* 店コード */
  String get shopCode;
  @override /* 店舗名 */
  String get shopName;
  @override /* 初期受取場所の緯度 */
  double? get initReceiptPointLatitude;
  @override /* 初期受取場所の経度 */
  double? get initReceiptPointLongitude;
  @override /* 初期受取地点ID */
  String get initReceiptPointId;
  @override
  @JsonKey(ignore: true)
  _$$_SelectDeliveryPlanModelCopyWith<_$_SelectDeliveryPlanModel>
      get copyWith => throw _privateConstructorUsedError;
}
