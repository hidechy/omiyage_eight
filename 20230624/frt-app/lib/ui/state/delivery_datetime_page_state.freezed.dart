// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_datetime_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeliveryDatetimePageState {
  DeliverySchedulesFulfillmentType? get fulfillmentType =>
      throw _privateConstructorUsedError;
  bool get isAddressDifference => throw _privateConstructorUsedError;
  IndividualDeliveryPriceInformationModel?
      get individualDeliveryPriceInformation =>
          throw _privateConstructorUsedError;
  LivingStatusType? get livingStatus => throw _privateConstructorUsedError;
  DeliveryInformationModel get deliveryInformationModel =>
      throw _privateConstructorUsedError;
  ShoppingStartCheckResultModel get shoppingStartCheckResultModel =>
      throw _privateConstructorUsedError;
  ChangedCartModel get changedCartModel => throw _privateConstructorUsedError;
  SelectedShopInfo? get selectedShopInfo => throw _privateConstructorUsedError;
  bool get isAfterMigration =>
      throw _privateConstructorUsedError; // 便一覧画面では使用しないが、店舗選択画面へ渡すパラメータ用に緯度経度を定義する
  double? get initReceiptPointLatitude => throw _privateConstructorUsedError;
  double? get initReceiptPointLongitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryDatetimePageStateCopyWith<DeliveryDatetimePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryDatetimePageStateCopyWith<$Res> {
  factory $DeliveryDatetimePageStateCopyWith(DeliveryDatetimePageState value,
          $Res Function(DeliveryDatetimePageState) then) =
      _$DeliveryDatetimePageStateCopyWithImpl<$Res, DeliveryDatetimePageState>;
  @useResult
  $Res call(
      {DeliverySchedulesFulfillmentType? fulfillmentType,
      bool isAddressDifference,
      IndividualDeliveryPriceInformationModel?
          individualDeliveryPriceInformation,
      LivingStatusType? livingStatus,
      DeliveryInformationModel deliveryInformationModel,
      ShoppingStartCheckResultModel shoppingStartCheckResultModel,
      ChangedCartModel changedCartModel,
      SelectedShopInfo? selectedShopInfo,
      bool isAfterMigration,
      double? initReceiptPointLatitude,
      double? initReceiptPointLongitude});

  $IndividualDeliveryPriceInformationModelCopyWith<$Res>?
      get individualDeliveryPriceInformation;
  $DeliveryInformationModelCopyWith<$Res> get deliveryInformationModel;
  $ShoppingStartCheckResultModelCopyWith<$Res>
      get shoppingStartCheckResultModel;
  $ChangedCartModelCopyWith<$Res> get changedCartModel;
  $SelectedShopInfoCopyWith<$Res>? get selectedShopInfo;
}

/// @nodoc
class _$DeliveryDatetimePageStateCopyWithImpl<$Res,
        $Val extends DeliveryDatetimePageState>
    implements $DeliveryDatetimePageStateCopyWith<$Res> {
  _$DeliveryDatetimePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fulfillmentType = freezed,
    Object? isAddressDifference = null,
    Object? individualDeliveryPriceInformation = freezed,
    Object? livingStatus = freezed,
    Object? deliveryInformationModel = null,
    Object? shoppingStartCheckResultModel = null,
    Object? changedCartModel = null,
    Object? selectedShopInfo = freezed,
    Object? isAfterMigration = null,
    Object? initReceiptPointLatitude = freezed,
    Object? initReceiptPointLongitude = freezed,
  }) {
    return _then(_value.copyWith(
      fulfillmentType: freezed == fulfillmentType
          ? _value.fulfillmentType
          : fulfillmentType // ignore: cast_nullable_to_non_nullable
              as DeliverySchedulesFulfillmentType?,
      isAddressDifference: null == isAddressDifference
          ? _value.isAddressDifference
          : isAddressDifference // ignore: cast_nullable_to_non_nullable
              as bool,
      individualDeliveryPriceInformation: freezed ==
              individualDeliveryPriceInformation
          ? _value.individualDeliveryPriceInformation
          : individualDeliveryPriceInformation // ignore: cast_nullable_to_non_nullable
              as IndividualDeliveryPriceInformationModel?,
      livingStatus: freezed == livingStatus
          ? _value.livingStatus
          : livingStatus // ignore: cast_nullable_to_non_nullable
              as LivingStatusType?,
      deliveryInformationModel: null == deliveryInformationModel
          ? _value.deliveryInformationModel
          : deliveryInformationModel // ignore: cast_nullable_to_non_nullable
              as DeliveryInformationModel,
      shoppingStartCheckResultModel: null == shoppingStartCheckResultModel
          ? _value.shoppingStartCheckResultModel
          : shoppingStartCheckResultModel // ignore: cast_nullable_to_non_nullable
              as ShoppingStartCheckResultModel,
      changedCartModel: null == changedCartModel
          ? _value.changedCartModel
          : changedCartModel // ignore: cast_nullable_to_non_nullable
              as ChangedCartModel,
      selectedShopInfo: freezed == selectedShopInfo
          ? _value.selectedShopInfo
          : selectedShopInfo // ignore: cast_nullable_to_non_nullable
              as SelectedShopInfo?,
      isAfterMigration: null == isAfterMigration
          ? _value.isAfterMigration
          : isAfterMigration // ignore: cast_nullable_to_non_nullable
              as bool,
      initReceiptPointLatitude: freezed == initReceiptPointLatitude
          ? _value.initReceiptPointLatitude
          : initReceiptPointLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      initReceiptPointLongitude: freezed == initReceiptPointLongitude
          ? _value.initReceiptPointLongitude
          : initReceiptPointLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
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

  @override
  @pragma('vm:prefer-inline')
  $DeliveryInformationModelCopyWith<$Res> get deliveryInformationModel {
    return $DeliveryInformationModelCopyWith<$Res>(
        _value.deliveryInformationModel, (value) {
      return _then(_value.copyWith(deliveryInformationModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShoppingStartCheckResultModelCopyWith<$Res>
      get shoppingStartCheckResultModel {
    return $ShoppingStartCheckResultModelCopyWith<$Res>(
        _value.shoppingStartCheckResultModel, (value) {
      return _then(
          _value.copyWith(shoppingStartCheckResultModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChangedCartModelCopyWith<$Res> get changedCartModel {
    return $ChangedCartModelCopyWith<$Res>(_value.changedCartModel, (value) {
      return _then(_value.copyWith(changedCartModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SelectedShopInfoCopyWith<$Res>? get selectedShopInfo {
    if (_value.selectedShopInfo == null) {
      return null;
    }

    return $SelectedShopInfoCopyWith<$Res>(_value.selectedShopInfo!, (value) {
      return _then(_value.copyWith(selectedShopInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DeliveryDatetimePageStateCopyWith<$Res>
    implements $DeliveryDatetimePageStateCopyWith<$Res> {
  factory _$$_DeliveryDatetimePageStateCopyWith(
          _$_DeliveryDatetimePageState value,
          $Res Function(_$_DeliveryDatetimePageState) then) =
      __$$_DeliveryDatetimePageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DeliverySchedulesFulfillmentType? fulfillmentType,
      bool isAddressDifference,
      IndividualDeliveryPriceInformationModel?
          individualDeliveryPriceInformation,
      LivingStatusType? livingStatus,
      DeliveryInformationModel deliveryInformationModel,
      ShoppingStartCheckResultModel shoppingStartCheckResultModel,
      ChangedCartModel changedCartModel,
      SelectedShopInfo? selectedShopInfo,
      bool isAfterMigration,
      double? initReceiptPointLatitude,
      double? initReceiptPointLongitude});

  @override
  $IndividualDeliveryPriceInformationModelCopyWith<$Res>?
      get individualDeliveryPriceInformation;
  @override
  $DeliveryInformationModelCopyWith<$Res> get deliveryInformationModel;
  @override
  $ShoppingStartCheckResultModelCopyWith<$Res>
      get shoppingStartCheckResultModel;
  @override
  $ChangedCartModelCopyWith<$Res> get changedCartModel;
  @override
  $SelectedShopInfoCopyWith<$Res>? get selectedShopInfo;
}

/// @nodoc
class __$$_DeliveryDatetimePageStateCopyWithImpl<$Res>
    extends _$DeliveryDatetimePageStateCopyWithImpl<$Res,
        _$_DeliveryDatetimePageState>
    implements _$$_DeliveryDatetimePageStateCopyWith<$Res> {
  __$$_DeliveryDatetimePageStateCopyWithImpl(
      _$_DeliveryDatetimePageState _value,
      $Res Function(_$_DeliveryDatetimePageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fulfillmentType = freezed,
    Object? isAddressDifference = null,
    Object? individualDeliveryPriceInformation = freezed,
    Object? livingStatus = freezed,
    Object? deliveryInformationModel = null,
    Object? shoppingStartCheckResultModel = null,
    Object? changedCartModel = null,
    Object? selectedShopInfo = freezed,
    Object? isAfterMigration = null,
    Object? initReceiptPointLatitude = freezed,
    Object? initReceiptPointLongitude = freezed,
  }) {
    return _then(_$_DeliveryDatetimePageState(
      fulfillmentType: freezed == fulfillmentType
          ? _value.fulfillmentType
          : fulfillmentType // ignore: cast_nullable_to_non_nullable
              as DeliverySchedulesFulfillmentType?,
      isAddressDifference: null == isAddressDifference
          ? _value.isAddressDifference
          : isAddressDifference // ignore: cast_nullable_to_non_nullable
              as bool,
      individualDeliveryPriceInformation: freezed ==
              individualDeliveryPriceInformation
          ? _value.individualDeliveryPriceInformation
          : individualDeliveryPriceInformation // ignore: cast_nullable_to_non_nullable
              as IndividualDeliveryPriceInformationModel?,
      livingStatus: freezed == livingStatus
          ? _value.livingStatus
          : livingStatus // ignore: cast_nullable_to_non_nullable
              as LivingStatusType?,
      deliveryInformationModel: null == deliveryInformationModel
          ? _value.deliveryInformationModel
          : deliveryInformationModel // ignore: cast_nullable_to_non_nullable
              as DeliveryInformationModel,
      shoppingStartCheckResultModel: null == shoppingStartCheckResultModel
          ? _value.shoppingStartCheckResultModel
          : shoppingStartCheckResultModel // ignore: cast_nullable_to_non_nullable
              as ShoppingStartCheckResultModel,
      changedCartModel: null == changedCartModel
          ? _value.changedCartModel
          : changedCartModel // ignore: cast_nullable_to_non_nullable
              as ChangedCartModel,
      selectedShopInfo: freezed == selectedShopInfo
          ? _value.selectedShopInfo
          : selectedShopInfo // ignore: cast_nullable_to_non_nullable
              as SelectedShopInfo?,
      isAfterMigration: null == isAfterMigration
          ? _value.isAfterMigration
          : isAfterMigration // ignore: cast_nullable_to_non_nullable
              as bool,
      initReceiptPointLatitude: freezed == initReceiptPointLatitude
          ? _value.initReceiptPointLatitude
          : initReceiptPointLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      initReceiptPointLongitude: freezed == initReceiptPointLongitude
          ? _value.initReceiptPointLongitude
          : initReceiptPointLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_DeliveryDatetimePageState implements _DeliveryDatetimePageState {
  _$_DeliveryDatetimePageState(
      {this.fulfillmentType,
      this.isAddressDifference = false,
      this.individualDeliveryPriceInformation,
      this.livingStatus,
      this.deliveryInformationModel = const DeliveryInformationModel(),
      this.shoppingStartCheckResultModel =
          const ShoppingStartCheckResultModel(),
      this.changedCartModel = const ChangedCartModel(),
      this.selectedShopInfo,
      this.isAfterMigration = false,
      this.initReceiptPointLatitude,
      this.initReceiptPointLongitude});

  @override
  final DeliverySchedulesFulfillmentType? fulfillmentType;
  @override
  @JsonKey()
  final bool isAddressDifference;
  @override
  final IndividualDeliveryPriceInformationModel?
      individualDeliveryPriceInformation;
  @override
  final LivingStatusType? livingStatus;
  @override
  @JsonKey()
  final DeliveryInformationModel deliveryInformationModel;
  @override
  @JsonKey()
  final ShoppingStartCheckResultModel shoppingStartCheckResultModel;
  @override
  @JsonKey()
  final ChangedCartModel changedCartModel;
  @override
  final SelectedShopInfo? selectedShopInfo;
  @override
  @JsonKey()
  final bool isAfterMigration;
// 便一覧画面では使用しないが、店舗選択画面へ渡すパラメータ用に緯度経度を定義する
  @override
  final double? initReceiptPointLatitude;
  @override
  final double? initReceiptPointLongitude;

  @override
  String toString() {
    return 'DeliveryDatetimePageState(fulfillmentType: $fulfillmentType, isAddressDifference: $isAddressDifference, individualDeliveryPriceInformation: $individualDeliveryPriceInformation, livingStatus: $livingStatus, deliveryInformationModel: $deliveryInformationModel, shoppingStartCheckResultModel: $shoppingStartCheckResultModel, changedCartModel: $changedCartModel, selectedShopInfo: $selectedShopInfo, isAfterMigration: $isAfterMigration, initReceiptPointLatitude: $initReceiptPointLatitude, initReceiptPointLongitude: $initReceiptPointLongitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryDatetimePageState &&
            (identical(other.fulfillmentType, fulfillmentType) ||
                other.fulfillmentType == fulfillmentType) &&
            (identical(other.isAddressDifference, isAddressDifference) ||
                other.isAddressDifference == isAddressDifference) &&
            (identical(other.individualDeliveryPriceInformation,
                    individualDeliveryPriceInformation) ||
                other.individualDeliveryPriceInformation ==
                    individualDeliveryPriceInformation) &&
            (identical(other.livingStatus, livingStatus) ||
                other.livingStatus == livingStatus) &&
            (identical(
                    other.deliveryInformationModel, deliveryInformationModel) ||
                other.deliveryInformationModel == deliveryInformationModel) &&
            (identical(other.shoppingStartCheckResultModel,
                    shoppingStartCheckResultModel) ||
                other.shoppingStartCheckResultModel ==
                    shoppingStartCheckResultModel) &&
            (identical(other.changedCartModel, changedCartModel) ||
                other.changedCartModel == changedCartModel) &&
            (identical(other.selectedShopInfo, selectedShopInfo) ||
                other.selectedShopInfo == selectedShopInfo) &&
            (identical(other.isAfterMigration, isAfterMigration) ||
                other.isAfterMigration == isAfterMigration) &&
            (identical(
                    other.initReceiptPointLatitude, initReceiptPointLatitude) ||
                other.initReceiptPointLatitude == initReceiptPointLatitude) &&
            (identical(other.initReceiptPointLongitude,
                    initReceiptPointLongitude) ||
                other.initReceiptPointLongitude == initReceiptPointLongitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fulfillmentType,
      isAddressDifference,
      individualDeliveryPriceInformation,
      livingStatus,
      deliveryInformationModel,
      shoppingStartCheckResultModel,
      changedCartModel,
      selectedShopInfo,
      isAfterMigration,
      initReceiptPointLatitude,
      initReceiptPointLongitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryDatetimePageStateCopyWith<_$_DeliveryDatetimePageState>
      get copyWith => __$$_DeliveryDatetimePageStateCopyWithImpl<
          _$_DeliveryDatetimePageState>(this, _$identity);
}

abstract class _DeliveryDatetimePageState implements DeliveryDatetimePageState {
  factory _DeliveryDatetimePageState(
      {final DeliverySchedulesFulfillmentType? fulfillmentType,
      final bool isAddressDifference,
      final IndividualDeliveryPriceInformationModel?
          individualDeliveryPriceInformation,
      final LivingStatusType? livingStatus,
      final DeliveryInformationModel deliveryInformationModel,
      final ShoppingStartCheckResultModel shoppingStartCheckResultModel,
      final ChangedCartModel changedCartModel,
      final SelectedShopInfo? selectedShopInfo,
      final bool isAfterMigration,
      final double? initReceiptPointLatitude,
      final double? initReceiptPointLongitude}) = _$_DeliveryDatetimePageState;

  @override
  DeliverySchedulesFulfillmentType? get fulfillmentType;
  @override
  bool get isAddressDifference;
  @override
  IndividualDeliveryPriceInformationModel?
      get individualDeliveryPriceInformation;
  @override
  LivingStatusType? get livingStatus;
  @override
  DeliveryInformationModel get deliveryInformationModel;
  @override
  ShoppingStartCheckResultModel get shoppingStartCheckResultModel;
  @override
  ChangedCartModel get changedCartModel;
  @override
  SelectedShopInfo? get selectedShopInfo;
  @override
  bool get isAfterMigration;
  @override // 便一覧画面では使用しないが、店舗選択画面へ渡すパラメータ用に緯度経度を定義する
  double? get initReceiptPointLatitude;
  @override
  double? get initReceiptPointLongitude;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryDatetimePageStateCopyWith<_$_DeliveryDatetimePageState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectedShopInfo {
  String get shopCode => throw _privateConstructorUsedError;
  String get receiptPointName => throw _privateConstructorUsedError;
  String get receiptPointId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectedShopInfoCopyWith<SelectedShopInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedShopInfoCopyWith<$Res> {
  factory $SelectedShopInfoCopyWith(
          SelectedShopInfo value, $Res Function(SelectedShopInfo) then) =
      _$SelectedShopInfoCopyWithImpl<$Res, SelectedShopInfo>;
  @useResult
  $Res call({String shopCode, String receiptPointName, String receiptPointId});
}

/// @nodoc
class _$SelectedShopInfoCopyWithImpl<$Res, $Val extends SelectedShopInfo>
    implements $SelectedShopInfoCopyWith<$Res> {
  _$SelectedShopInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopCode = null,
    Object? receiptPointName = null,
    Object? receiptPointId = null,
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
      receiptPointId: null == receiptPointId
          ? _value.receiptPointId
          : receiptPointId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DelectedShopInfoCopyWith<$Res>
    implements $SelectedShopInfoCopyWith<$Res> {
  factory _$$_DelectedShopInfoCopyWith(
          _$_DelectedShopInfo value, $Res Function(_$_DelectedShopInfo) then) =
      __$$_DelectedShopInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String shopCode, String receiptPointName, String receiptPointId});
}

/// @nodoc
class __$$_DelectedShopInfoCopyWithImpl<$Res>
    extends _$SelectedShopInfoCopyWithImpl<$Res, _$_DelectedShopInfo>
    implements _$$_DelectedShopInfoCopyWith<$Res> {
  __$$_DelectedShopInfoCopyWithImpl(
      _$_DelectedShopInfo _value, $Res Function(_$_DelectedShopInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopCode = null,
    Object? receiptPointName = null,
    Object? receiptPointId = null,
  }) {
    return _then(_$_DelectedShopInfo(
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      receiptPointName: null == receiptPointName
          ? _value.receiptPointName
          : receiptPointName // ignore: cast_nullable_to_non_nullable
              as String,
      receiptPointId: null == receiptPointId
          ? _value.receiptPointId
          : receiptPointId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DelectedShopInfo implements _DelectedShopInfo {
  const _$_DelectedShopInfo(
      {required this.shopCode,
      required this.receiptPointName,
      required this.receiptPointId});

  @override
  final String shopCode;
  @override
  final String receiptPointName;
  @override
  final String receiptPointId;

  @override
  String toString() {
    return 'SelectedShopInfo(shopCode: $shopCode, receiptPointName: $receiptPointName, receiptPointId: $receiptPointId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DelectedShopInfo &&
            (identical(other.shopCode, shopCode) ||
                other.shopCode == shopCode) &&
            (identical(other.receiptPointName, receiptPointName) ||
                other.receiptPointName == receiptPointName) &&
            (identical(other.receiptPointId, receiptPointId) ||
                other.receiptPointId == receiptPointId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, shopCode, receiptPointName, receiptPointId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DelectedShopInfoCopyWith<_$_DelectedShopInfo> get copyWith =>
      __$$_DelectedShopInfoCopyWithImpl<_$_DelectedShopInfo>(this, _$identity);
}

abstract class _DelectedShopInfo implements SelectedShopInfo {
  const factory _DelectedShopInfo(
      {required final String shopCode,
      required final String receiptPointName,
      required final String receiptPointId}) = _$_DelectedShopInfo;

  @override
  String get shopCode;
  @override
  String get receiptPointName;
  @override
  String get receiptPointId;
  @override
  @JsonKey(ignore: true)
  _$$_DelectedShopInfoCopyWith<_$_DelectedShopInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
