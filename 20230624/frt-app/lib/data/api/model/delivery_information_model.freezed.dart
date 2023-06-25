// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_information_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryInformationModel _$DeliveryInformationModelFromJson(
    Map<String, dynamic> json) {
  return _DeliveryInformationModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryInformationModel {
/* 店舗配達情報-配送時間帯モデルのリスト */
  List<DeliveryTimeModel> get deliveryTimes =>
      throw _privateConstructorUsedError; /* 自宅外受取判定 - true：自宅外受取である - false：自宅外受取でない */
  bool get isPointReceipt => throw _privateConstructorUsedError; /* 受取地点ID */
  String get receiptPointId => throw _privateConstructorUsedError; /* 受取地点名称 */
  String get receiptPointName =>
      throw _privateConstructorUsedError; /* 梱包手数料-徴収対象会員・梱包まとめ方法未選択の判定 - true：梱包手数料徴収対象会員かつ梱包まとめ方法未選択である - false：梱包手数料徴収対象会員でないまたは梱包まとめ方法未選択でない */
  bool get isNotSelectedPackMethod =>
      throw _privateConstructorUsedError; /* 店舗受取便あり判定 - true：店舗受取便あり - false：店舗受取便なし */
  bool get hasShopReceipt => throw _privateConstructorUsedError; /* 店舗受取場所URL */
  String get shopReceiptPlaceUrl =>
      throw _privateConstructorUsedError; /* ロッカー受取便あり判定 - true：ロッカー受取便あり - false：ロッカー受取便なし */
  bool get hasLockerReceipt =>
      throw _privateConstructorUsedError; /* ロッカー受取場所URL */
  String get lockerReceiptPlaceUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryInformationModelCopyWith<DeliveryInformationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryInformationModelCopyWith<$Res> {
  factory $DeliveryInformationModelCopyWith(DeliveryInformationModel value,
          $Res Function(DeliveryInformationModel) then) =
      _$DeliveryInformationModelCopyWithImpl<$Res, DeliveryInformationModel>;
  @useResult
  $Res call(
      {List<DeliveryTimeModel> deliveryTimes,
      bool isPointReceipt,
      String receiptPointId,
      String receiptPointName,
      bool isNotSelectedPackMethod,
      bool hasShopReceipt,
      String shopReceiptPlaceUrl,
      bool hasLockerReceipt,
      String lockerReceiptPlaceUrl});
}

/// @nodoc
class _$DeliveryInformationModelCopyWithImpl<$Res,
        $Val extends DeliveryInformationModel>
    implements $DeliveryInformationModelCopyWith<$Res> {
  _$DeliveryInformationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryTimes = null,
    Object? isPointReceipt = null,
    Object? receiptPointId = null,
    Object? receiptPointName = null,
    Object? isNotSelectedPackMethod = null,
    Object? hasShopReceipt = null,
    Object? shopReceiptPlaceUrl = null,
    Object? hasLockerReceipt = null,
    Object? lockerReceiptPlaceUrl = null,
  }) {
    return _then(_value.copyWith(
      deliveryTimes: null == deliveryTimes
          ? _value.deliveryTimes
          : deliveryTimes // ignore: cast_nullable_to_non_nullable
              as List<DeliveryTimeModel>,
      isPointReceipt: null == isPointReceipt
          ? _value.isPointReceipt
          : isPointReceipt // ignore: cast_nullable_to_non_nullable
              as bool,
      receiptPointId: null == receiptPointId
          ? _value.receiptPointId
          : receiptPointId // ignore: cast_nullable_to_non_nullable
              as String,
      receiptPointName: null == receiptPointName
          ? _value.receiptPointName
          : receiptPointName // ignore: cast_nullable_to_non_nullable
              as String,
      isNotSelectedPackMethod: null == isNotSelectedPackMethod
          ? _value.isNotSelectedPackMethod
          : isNotSelectedPackMethod // ignore: cast_nullable_to_non_nullable
              as bool,
      hasShopReceipt: null == hasShopReceipt
          ? _value.hasShopReceipt
          : hasShopReceipt // ignore: cast_nullable_to_non_nullable
              as bool,
      shopReceiptPlaceUrl: null == shopReceiptPlaceUrl
          ? _value.shopReceiptPlaceUrl
          : shopReceiptPlaceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      hasLockerReceipt: null == hasLockerReceipt
          ? _value.hasLockerReceipt
          : hasLockerReceipt // ignore: cast_nullable_to_non_nullable
              as bool,
      lockerReceiptPlaceUrl: null == lockerReceiptPlaceUrl
          ? _value.lockerReceiptPlaceUrl
          : lockerReceiptPlaceUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryInformationModelCopyWith<$Res>
    implements $DeliveryInformationModelCopyWith<$Res> {
  factory _$$_DeliveryInformationModelCopyWith(
          _$_DeliveryInformationModel value,
          $Res Function(_$_DeliveryInformationModel) then) =
      __$$_DeliveryInformationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DeliveryTimeModel> deliveryTimes,
      bool isPointReceipt,
      String receiptPointId,
      String receiptPointName,
      bool isNotSelectedPackMethod,
      bool hasShopReceipt,
      String shopReceiptPlaceUrl,
      bool hasLockerReceipt,
      String lockerReceiptPlaceUrl});
}

/// @nodoc
class __$$_DeliveryInformationModelCopyWithImpl<$Res>
    extends _$DeliveryInformationModelCopyWithImpl<$Res,
        _$_DeliveryInformationModel>
    implements _$$_DeliveryInformationModelCopyWith<$Res> {
  __$$_DeliveryInformationModelCopyWithImpl(_$_DeliveryInformationModel _value,
      $Res Function(_$_DeliveryInformationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryTimes = null,
    Object? isPointReceipt = null,
    Object? receiptPointId = null,
    Object? receiptPointName = null,
    Object? isNotSelectedPackMethod = null,
    Object? hasShopReceipt = null,
    Object? shopReceiptPlaceUrl = null,
    Object? hasLockerReceipt = null,
    Object? lockerReceiptPlaceUrl = null,
  }) {
    return _then(_$_DeliveryInformationModel(
      deliveryTimes: null == deliveryTimes
          ? _value._deliveryTimes
          : deliveryTimes // ignore: cast_nullable_to_non_nullable
              as List<DeliveryTimeModel>,
      isPointReceipt: null == isPointReceipt
          ? _value.isPointReceipt
          : isPointReceipt // ignore: cast_nullable_to_non_nullable
              as bool,
      receiptPointId: null == receiptPointId
          ? _value.receiptPointId
          : receiptPointId // ignore: cast_nullable_to_non_nullable
              as String,
      receiptPointName: null == receiptPointName
          ? _value.receiptPointName
          : receiptPointName // ignore: cast_nullable_to_non_nullable
              as String,
      isNotSelectedPackMethod: null == isNotSelectedPackMethod
          ? _value.isNotSelectedPackMethod
          : isNotSelectedPackMethod // ignore: cast_nullable_to_non_nullable
              as bool,
      hasShopReceipt: null == hasShopReceipt
          ? _value.hasShopReceipt
          : hasShopReceipt // ignore: cast_nullable_to_non_nullable
              as bool,
      shopReceiptPlaceUrl: null == shopReceiptPlaceUrl
          ? _value.shopReceiptPlaceUrl
          : shopReceiptPlaceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      hasLockerReceipt: null == hasLockerReceipt
          ? _value.hasLockerReceipt
          : hasLockerReceipt // ignore: cast_nullable_to_non_nullable
              as bool,
      lockerReceiptPlaceUrl: null == lockerReceiptPlaceUrl
          ? _value.lockerReceiptPlaceUrl
          : lockerReceiptPlaceUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryInformationModel implements _DeliveryInformationModel {
  const _$_DeliveryInformationModel(
      {final List<DeliveryTimeModel> deliveryTimes =
          const <DeliveryTimeModel>[],
      this.isPointReceipt = false,
      this.receiptPointId = '',
      this.receiptPointName = '',
      this.isNotSelectedPackMethod = false,
      this.hasShopReceipt = false,
      this.shopReceiptPlaceUrl = '',
      this.hasLockerReceipt = false,
      this.lockerReceiptPlaceUrl = ''})
      : _deliveryTimes = deliveryTimes;

  factory _$_DeliveryInformationModel.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryInformationModelFromJson(json);

/* 店舗配達情報-配送時間帯モデルのリスト */
  final List<DeliveryTimeModel> _deliveryTimes;
/* 店舗配達情報-配送時間帯モデルのリスト */
  @override
  @JsonKey()
  List<DeliveryTimeModel> get deliveryTimes {
    if (_deliveryTimes is EqualUnmodifiableListView) return _deliveryTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveryTimes);
  }

/* 自宅外受取判定 - true：自宅外受取である - false：自宅外受取でない */
  @override
  @JsonKey()
  final bool isPointReceipt;
/* 受取地点ID */
  @override
  @JsonKey()
  final String receiptPointId;
/* 受取地点名称 */
  @override
  @JsonKey()
  final String receiptPointName;
/* 梱包手数料-徴収対象会員・梱包まとめ方法未選択の判定 - true：梱包手数料徴収対象会員かつ梱包まとめ方法未選択である - false：梱包手数料徴収対象会員でないまたは梱包まとめ方法未選択でない */
  @override
  @JsonKey()
  final bool isNotSelectedPackMethod;
/* 店舗受取便あり判定 - true：店舗受取便あり - false：店舗受取便なし */
  @override
  @JsonKey()
  final bool hasShopReceipt;
/* 店舗受取場所URL */
  @override
  @JsonKey()
  final String shopReceiptPlaceUrl;
/* ロッカー受取便あり判定 - true：ロッカー受取便あり - false：ロッカー受取便なし */
  @override
  @JsonKey()
  final bool hasLockerReceipt;
/* ロッカー受取場所URL */
  @override
  @JsonKey()
  final String lockerReceiptPlaceUrl;

  @override
  String toString() {
    return 'DeliveryInformationModel(deliveryTimes: $deliveryTimes, isPointReceipt: $isPointReceipt, receiptPointId: $receiptPointId, receiptPointName: $receiptPointName, isNotSelectedPackMethod: $isNotSelectedPackMethod, hasShopReceipt: $hasShopReceipt, shopReceiptPlaceUrl: $shopReceiptPlaceUrl, hasLockerReceipt: $hasLockerReceipt, lockerReceiptPlaceUrl: $lockerReceiptPlaceUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryInformationModel &&
            const DeepCollectionEquality()
                .equals(other._deliveryTimes, _deliveryTimes) &&
            (identical(other.isPointReceipt, isPointReceipt) ||
                other.isPointReceipt == isPointReceipt) &&
            (identical(other.receiptPointId, receiptPointId) ||
                other.receiptPointId == receiptPointId) &&
            (identical(other.receiptPointName, receiptPointName) ||
                other.receiptPointName == receiptPointName) &&
            (identical(
                    other.isNotSelectedPackMethod, isNotSelectedPackMethod) ||
                other.isNotSelectedPackMethod == isNotSelectedPackMethod) &&
            (identical(other.hasShopReceipt, hasShopReceipt) ||
                other.hasShopReceipt == hasShopReceipt) &&
            (identical(other.shopReceiptPlaceUrl, shopReceiptPlaceUrl) ||
                other.shopReceiptPlaceUrl == shopReceiptPlaceUrl) &&
            (identical(other.hasLockerReceipt, hasLockerReceipt) ||
                other.hasLockerReceipt == hasLockerReceipt) &&
            (identical(other.lockerReceiptPlaceUrl, lockerReceiptPlaceUrl) ||
                other.lockerReceiptPlaceUrl == lockerReceiptPlaceUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_deliveryTimes),
      isPointReceipt,
      receiptPointId,
      receiptPointName,
      isNotSelectedPackMethod,
      hasShopReceipt,
      shopReceiptPlaceUrl,
      hasLockerReceipt,
      lockerReceiptPlaceUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryInformationModelCopyWith<_$_DeliveryInformationModel>
      get copyWith => __$$_DeliveryInformationModelCopyWithImpl<
          _$_DeliveryInformationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryInformationModelToJson(
      this,
    );
  }
}

abstract class _DeliveryInformationModel implements DeliveryInformationModel {
  const factory _DeliveryInformationModel(
      {final List<DeliveryTimeModel> deliveryTimes,
      final bool isPointReceipt,
      final String receiptPointId,
      final String receiptPointName,
      final bool isNotSelectedPackMethod,
      final bool hasShopReceipt,
      final String shopReceiptPlaceUrl,
      final bool hasLockerReceipt,
      final String lockerReceiptPlaceUrl}) = _$_DeliveryInformationModel;

  factory _DeliveryInformationModel.fromJson(Map<String, dynamic> json) =
      _$_DeliveryInformationModel.fromJson;

  @override /* 店舗配達情報-配送時間帯モデルのリスト */
  List<DeliveryTimeModel> get deliveryTimes;
  @override /* 自宅外受取判定 - true：自宅外受取である - false：自宅外受取でない */
  bool get isPointReceipt;
  @override /* 受取地点ID */
  String get receiptPointId;
  @override /* 受取地点名称 */
  String get receiptPointName;
  @override /* 梱包手数料-徴収対象会員・梱包まとめ方法未選択の判定 - true：梱包手数料徴収対象会員かつ梱包まとめ方法未選択である - false：梱包手数料徴収対象会員でないまたは梱包まとめ方法未選択でない */
  bool get isNotSelectedPackMethod;
  @override /* 店舗受取便あり判定 - true：店舗受取便あり - false：店舗受取便なし */
  bool get hasShopReceipt;
  @override /* 店舗受取場所URL */
  String get shopReceiptPlaceUrl;
  @override /* ロッカー受取便あり判定 - true：ロッカー受取便あり - false：ロッカー受取便なし */
  bool get hasLockerReceipt;
  @override /* ロッカー受取場所URL */
  String get lockerReceiptPlaceUrl;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryInformationModelCopyWith<_$_DeliveryInformationModel>
      get copyWith => throw _privateConstructorUsedError;
}
