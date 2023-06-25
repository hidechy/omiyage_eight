// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'autolock_mansion_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AutoLockMansionModel _$AutoLockMansionModelFromJson(Map<String, dynamic> json) {
  return _AutoLockMansionModel.fromJson(json);
}

/// @nodoc
mixin _$AutoLockMansionModel {
/* お住まいステータス */
  LivingStatusType get livingStatus =>
      throw _privateConstructorUsedError; /* マンション情報 */
  DeliveryAutolockMansionModel? get deliveryAutolockMansion =>
      throw _privateConstructorUsedError; /* マンションアタックリスト存在フラグ */
  bool get existsMansionAttacklist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AutoLockMansionModelCopyWith<AutoLockMansionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoLockMansionModelCopyWith<$Res> {
  factory $AutoLockMansionModelCopyWith(AutoLockMansionModel value,
          $Res Function(AutoLockMansionModel) then) =
      _$AutoLockMansionModelCopyWithImpl<$Res, AutoLockMansionModel>;
  @useResult
  $Res call(
      {LivingStatusType livingStatus,
      DeliveryAutolockMansionModel? deliveryAutolockMansion,
      bool existsMansionAttacklist});

  $DeliveryAutolockMansionModelCopyWith<$Res>? get deliveryAutolockMansion;
}

/// @nodoc
class _$AutoLockMansionModelCopyWithImpl<$Res,
        $Val extends AutoLockMansionModel>
    implements $AutoLockMansionModelCopyWith<$Res> {
  _$AutoLockMansionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? livingStatus = null,
    Object? deliveryAutolockMansion = freezed,
    Object? existsMansionAttacklist = null,
  }) {
    return _then(_value.copyWith(
      livingStatus: null == livingStatus
          ? _value.livingStatus
          : livingStatus // ignore: cast_nullable_to_non_nullable
              as LivingStatusType,
      deliveryAutolockMansion: freezed == deliveryAutolockMansion
          ? _value.deliveryAutolockMansion
          : deliveryAutolockMansion // ignore: cast_nullable_to_non_nullable
              as DeliveryAutolockMansionModel?,
      existsMansionAttacklist: null == existsMansionAttacklist
          ? _value.existsMansionAttacklist
          : existsMansionAttacklist // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryAutolockMansionModelCopyWith<$Res>? get deliveryAutolockMansion {
    if (_value.deliveryAutolockMansion == null) {
      return null;
    }

    return $DeliveryAutolockMansionModelCopyWith<$Res>(
        _value.deliveryAutolockMansion!, (value) {
      return _then(_value.copyWith(deliveryAutolockMansion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AutoLockMansionModelCopyWith<$Res>
    implements $AutoLockMansionModelCopyWith<$Res> {
  factory _$$_AutoLockMansionModelCopyWith(_$_AutoLockMansionModel value,
          $Res Function(_$_AutoLockMansionModel) then) =
      __$$_AutoLockMansionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LivingStatusType livingStatus,
      DeliveryAutolockMansionModel? deliveryAutolockMansion,
      bool existsMansionAttacklist});

  @override
  $DeliveryAutolockMansionModelCopyWith<$Res>? get deliveryAutolockMansion;
}

/// @nodoc
class __$$_AutoLockMansionModelCopyWithImpl<$Res>
    extends _$AutoLockMansionModelCopyWithImpl<$Res, _$_AutoLockMansionModel>
    implements _$$_AutoLockMansionModelCopyWith<$Res> {
  __$$_AutoLockMansionModelCopyWithImpl(_$_AutoLockMansionModel _value,
      $Res Function(_$_AutoLockMansionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? livingStatus = null,
    Object? deliveryAutolockMansion = freezed,
    Object? existsMansionAttacklist = null,
  }) {
    return _then(_$_AutoLockMansionModel(
      livingStatus: null == livingStatus
          ? _value.livingStatus
          : livingStatus // ignore: cast_nullable_to_non_nullable
              as LivingStatusType,
      deliveryAutolockMansion: freezed == deliveryAutolockMansion
          ? _value.deliveryAutolockMansion
          : deliveryAutolockMansion // ignore: cast_nullable_to_non_nullable
              as DeliveryAutolockMansionModel?,
      existsMansionAttacklist: null == existsMansionAttacklist
          ? _value.existsMansionAttacklist
          : existsMansionAttacklist // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AutoLockMansionModel extends _AutoLockMansionModel {
  _$_AutoLockMansionModel(
      {this.livingStatus = LivingStatusType.unconfirmed,
      this.deliveryAutolockMansion,
      this.existsMansionAttacklist = false})
      : super._();

  factory _$_AutoLockMansionModel.fromJson(Map<String, dynamic> json) =>
      _$$_AutoLockMansionModelFromJson(json);

/* お住まいステータス */
  @override
  @JsonKey()
  final LivingStatusType livingStatus;
/* マンション情報 */
  @override
  final DeliveryAutolockMansionModel? deliveryAutolockMansion;
/* マンションアタックリスト存在フラグ */
  @override
  @JsonKey()
  final bool existsMansionAttacklist;

  @override
  String toString() {
    return 'AutoLockMansionModel(livingStatus: $livingStatus, deliveryAutolockMansion: $deliveryAutolockMansion, existsMansionAttacklist: $existsMansionAttacklist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AutoLockMansionModel &&
            (identical(other.livingStatus, livingStatus) ||
                other.livingStatus == livingStatus) &&
            (identical(
                    other.deliveryAutolockMansion, deliveryAutolockMansion) ||
                other.deliveryAutolockMansion == deliveryAutolockMansion) &&
            (identical(
                    other.existsMansionAttacklist, existsMansionAttacklist) ||
                other.existsMansionAttacklist == existsMansionAttacklist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, livingStatus,
      deliveryAutolockMansion, existsMansionAttacklist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AutoLockMansionModelCopyWith<_$_AutoLockMansionModel> get copyWith =>
      __$$_AutoLockMansionModelCopyWithImpl<_$_AutoLockMansionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AutoLockMansionModelToJson(
      this,
    );
  }
}

abstract class _AutoLockMansionModel extends AutoLockMansionModel {
  factory _AutoLockMansionModel(
      {final LivingStatusType livingStatus,
      final DeliveryAutolockMansionModel? deliveryAutolockMansion,
      final bool existsMansionAttacklist}) = _$_AutoLockMansionModel;
  _AutoLockMansionModel._() : super._();

  factory _AutoLockMansionModel.fromJson(Map<String, dynamic> json) =
      _$_AutoLockMansionModel.fromJson;

  @override /* お住まいステータス */
  LivingStatusType get livingStatus;
  @override /* マンション情報 */
  DeliveryAutolockMansionModel? get deliveryAutolockMansion;
  @override /* マンションアタックリスト存在フラグ */
  bool get existsMansionAttacklist;
  @override
  @JsonKey(ignore: true)
  _$$_AutoLockMansionModelCopyWith<_$_AutoLockMansionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryAutolockMansionModel _$DeliveryAutolockMansionModelFromJson(
    Map<String, dynamic> json) {
  return _DeliveryAutolockMansionModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryAutolockMansionModel {
/* マンションID */
  String get mansionId => throw _privateConstructorUsedError; /* マンション名 */
  String get mansionName => throw _privateConstructorUsedError; /* 交渉状況 */
  NegotiationStatusType get negotiationStatus =>
      throw _privateConstructorUsedError; /* 都道府県 */
  String get prefectureName => throw _privateConstructorUsedError; /* 市 */
  String get cityName => throw _privateConstructorUsedError; /* 町 */
  String get townName => throw _privateConstructorUsedError; /* 丁目 */
  String get chomeName => throw _privateConstructorUsedError; /* 住所詳細 */
  String get addressDetail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryAutolockMansionModelCopyWith<DeliveryAutolockMansionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryAutolockMansionModelCopyWith<$Res> {
  factory $DeliveryAutolockMansionModelCopyWith(
          DeliveryAutolockMansionModel value,
          $Res Function(DeliveryAutolockMansionModel) then) =
      _$DeliveryAutolockMansionModelCopyWithImpl<$Res,
          DeliveryAutolockMansionModel>;
  @useResult
  $Res call(
      {String mansionId,
      String mansionName,
      NegotiationStatusType negotiationStatus,
      String prefectureName,
      String cityName,
      String townName,
      String chomeName,
      String addressDetail});
}

/// @nodoc
class _$DeliveryAutolockMansionModelCopyWithImpl<$Res,
        $Val extends DeliveryAutolockMansionModel>
    implements $DeliveryAutolockMansionModelCopyWith<$Res> {
  _$DeliveryAutolockMansionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mansionId = null,
    Object? mansionName = null,
    Object? negotiationStatus = null,
    Object? prefectureName = null,
    Object? cityName = null,
    Object? townName = null,
    Object? chomeName = null,
    Object? addressDetail = null,
  }) {
    return _then(_value.copyWith(
      mansionId: null == mansionId
          ? _value.mansionId
          : mansionId // ignore: cast_nullable_to_non_nullable
              as String,
      mansionName: null == mansionName
          ? _value.mansionName
          : mansionName // ignore: cast_nullable_to_non_nullable
              as String,
      negotiationStatus: null == negotiationStatus
          ? _value.negotiationStatus
          : negotiationStatus // ignore: cast_nullable_to_non_nullable
              as NegotiationStatusType,
      prefectureName: null == prefectureName
          ? _value.prefectureName
          : prefectureName // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      townName: null == townName
          ? _value.townName
          : townName // ignore: cast_nullable_to_non_nullable
              as String,
      chomeName: null == chomeName
          ? _value.chomeName
          : chomeName // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetail: null == addressDetail
          ? _value.addressDetail
          : addressDetail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryAutolockMansionModelCopyWith<$Res>
    implements $DeliveryAutolockMansionModelCopyWith<$Res> {
  factory _$$_DeliveryAutolockMansionModelCopyWith(
          _$_DeliveryAutolockMansionModel value,
          $Res Function(_$_DeliveryAutolockMansionModel) then) =
      __$$_DeliveryAutolockMansionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String mansionId,
      String mansionName,
      NegotiationStatusType negotiationStatus,
      String prefectureName,
      String cityName,
      String townName,
      String chomeName,
      String addressDetail});
}

/// @nodoc
class __$$_DeliveryAutolockMansionModelCopyWithImpl<$Res>
    extends _$DeliveryAutolockMansionModelCopyWithImpl<$Res,
        _$_DeliveryAutolockMansionModel>
    implements _$$_DeliveryAutolockMansionModelCopyWith<$Res> {
  __$$_DeliveryAutolockMansionModelCopyWithImpl(
      _$_DeliveryAutolockMansionModel _value,
      $Res Function(_$_DeliveryAutolockMansionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mansionId = null,
    Object? mansionName = null,
    Object? negotiationStatus = null,
    Object? prefectureName = null,
    Object? cityName = null,
    Object? townName = null,
    Object? chomeName = null,
    Object? addressDetail = null,
  }) {
    return _then(_$_DeliveryAutolockMansionModel(
      mansionId: null == mansionId
          ? _value.mansionId
          : mansionId // ignore: cast_nullable_to_non_nullable
              as String,
      mansionName: null == mansionName
          ? _value.mansionName
          : mansionName // ignore: cast_nullable_to_non_nullable
              as String,
      negotiationStatus: null == negotiationStatus
          ? _value.negotiationStatus
          : negotiationStatus // ignore: cast_nullable_to_non_nullable
              as NegotiationStatusType,
      prefectureName: null == prefectureName
          ? _value.prefectureName
          : prefectureName // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      townName: null == townName
          ? _value.townName
          : townName // ignore: cast_nullable_to_non_nullable
              as String,
      chomeName: null == chomeName
          ? _value.chomeName
          : chomeName // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetail: null == addressDetail
          ? _value.addressDetail
          : addressDetail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryAutolockMansionModel implements _DeliveryAutolockMansionModel {
  _$_DeliveryAutolockMansionModel(
      {this.mansionId = '',
      this.mansionName = '',
      this.negotiationStatus = NegotiationStatusType.none,
      this.prefectureName = '',
      this.cityName = '',
      this.townName = '',
      this.chomeName = '',
      this.addressDetail = ''});

  factory _$_DeliveryAutolockMansionModel.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryAutolockMansionModelFromJson(json);

/* マンションID */
  @override
  @JsonKey()
  final String mansionId;
/* マンション名 */
  @override
  @JsonKey()
  final String mansionName;
/* 交渉状況 */
  @override
  @JsonKey()
  final NegotiationStatusType negotiationStatus;
/* 都道府県 */
  @override
  @JsonKey()
  final String prefectureName;
/* 市 */
  @override
  @JsonKey()
  final String cityName;
/* 町 */
  @override
  @JsonKey()
  final String townName;
/* 丁目 */
  @override
  @JsonKey()
  final String chomeName;
/* 住所詳細 */
  @override
  @JsonKey()
  final String addressDetail;

  @override
  String toString() {
    return 'DeliveryAutolockMansionModel(mansionId: $mansionId, mansionName: $mansionName, negotiationStatus: $negotiationStatus, prefectureName: $prefectureName, cityName: $cityName, townName: $townName, chomeName: $chomeName, addressDetail: $addressDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryAutolockMansionModel &&
            (identical(other.mansionId, mansionId) ||
                other.mansionId == mansionId) &&
            (identical(other.mansionName, mansionName) ||
                other.mansionName == mansionName) &&
            (identical(other.negotiationStatus, negotiationStatus) ||
                other.negotiationStatus == negotiationStatus) &&
            (identical(other.prefectureName, prefectureName) ||
                other.prefectureName == prefectureName) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.townName, townName) ||
                other.townName == townName) &&
            (identical(other.chomeName, chomeName) ||
                other.chomeName == chomeName) &&
            (identical(other.addressDetail, addressDetail) ||
                other.addressDetail == addressDetail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      mansionId,
      mansionName,
      negotiationStatus,
      prefectureName,
      cityName,
      townName,
      chomeName,
      addressDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryAutolockMansionModelCopyWith<_$_DeliveryAutolockMansionModel>
      get copyWith => __$$_DeliveryAutolockMansionModelCopyWithImpl<
          _$_DeliveryAutolockMansionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryAutolockMansionModelToJson(
      this,
    );
  }
}

abstract class _DeliveryAutolockMansionModel
    implements DeliveryAutolockMansionModel {
  factory _DeliveryAutolockMansionModel(
      {final String mansionId,
      final String mansionName,
      final NegotiationStatusType negotiationStatus,
      final String prefectureName,
      final String cityName,
      final String townName,
      final String chomeName,
      final String addressDetail}) = _$_DeliveryAutolockMansionModel;

  factory _DeliveryAutolockMansionModel.fromJson(Map<String, dynamic> json) =
      _$_DeliveryAutolockMansionModel.fromJson;

  @override /* マンションID */
  String get mansionId;
  @override /* マンション名 */
  String get mansionName;
  @override /* 交渉状況 */
  NegotiationStatusType get negotiationStatus;
  @override /* 都道府県 */
  String get prefectureName;
  @override /* 市 */
  String get cityName;
  @override /* 町 */
  String get townName;
  @override /* 丁目 */
  String get chomeName;
  @override /* 住所詳細 */
  String get addressDetail;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryAutolockMansionModelCopyWith<_$_DeliveryAutolockMansionModel>
      get copyWith => throw _privateConstructorUsedError;
}
