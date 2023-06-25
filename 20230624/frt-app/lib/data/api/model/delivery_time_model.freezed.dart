// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_time_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryTimeModel _$DeliveryTimeModelFromJson(Map<String, dynamic> json) {
  return _DeliveryTimeModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryTimeModel {
/* 配達日モデルリスト */
  List<DeliveryDateModel> get deliveryDates =>
      throw _privateConstructorUsedError; /* 配送終了時間（時）　※HH */
  String get deliveryFinishHour =>
      throw _privateConstructorUsedError; /* 配送終了時間（分）　※mm */
  String get deliveryFinishMinute =>
      throw _privateConstructorUsedError; /* 配送開始時間（時）　※HH */
  String get deliveryStartHour =>
      throw _privateConstructorUsedError; /* 配送開始時間（分）　※mm */
  String get deliveryStartMinute =>
      throw _privateConstructorUsedError; /* 配送便種別：受取りボックス-判定 - true：配送便種別が受取りボックスである - false：配送便種別が受取りボックスでない */
  bool get isFulfillmentTypeLocker =>
      throw _privateConstructorUsedError; /* 配送便種別：置き配-判定 - true：配送便種別が置き配便である - false：配送便種別が置き配便でない */
  bool get isFulfillmentTypePackageDrop =>
      throw _privateConstructorUsedError; /* 配送便種別：店受-判定 - true：配送便種別が店舗受取である - false：配送便種別が店舗受取でない */
  bool get isFulfillmentTypeShop =>
      throw _privateConstructorUsedError; /* 受取先追加文言 */
  String get receiptLocationAdditionalText =>
      throw _privateConstructorUsedError; /* 受取先静的コンテンツURL */
  String get receiptLocationContentsUrl =>
      throw _privateConstructorUsedError; /* 非接触お届けサービス利用可能判定 */
  bool get isEnableNoContact => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryTimeModelCopyWith<DeliveryTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryTimeModelCopyWith<$Res> {
  factory $DeliveryTimeModelCopyWith(
          DeliveryTimeModel value, $Res Function(DeliveryTimeModel) then) =
      _$DeliveryTimeModelCopyWithImpl<$Res, DeliveryTimeModel>;
  @useResult
  $Res call(
      {List<DeliveryDateModel> deliveryDates,
      String deliveryFinishHour,
      String deliveryFinishMinute,
      String deliveryStartHour,
      String deliveryStartMinute,
      bool isFulfillmentTypeLocker,
      bool isFulfillmentTypePackageDrop,
      bool isFulfillmentTypeShop,
      String receiptLocationAdditionalText,
      String receiptLocationContentsUrl,
      bool isEnableNoContact});
}

/// @nodoc
class _$DeliveryTimeModelCopyWithImpl<$Res, $Val extends DeliveryTimeModel>
    implements $DeliveryTimeModelCopyWith<$Res> {
  _$DeliveryTimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryDates = null,
    Object? deliveryFinishHour = null,
    Object? deliveryFinishMinute = null,
    Object? deliveryStartHour = null,
    Object? deliveryStartMinute = null,
    Object? isFulfillmentTypeLocker = null,
    Object? isFulfillmentTypePackageDrop = null,
    Object? isFulfillmentTypeShop = null,
    Object? receiptLocationAdditionalText = null,
    Object? receiptLocationContentsUrl = null,
    Object? isEnableNoContact = null,
  }) {
    return _then(_value.copyWith(
      deliveryDates: null == deliveryDates
          ? _value.deliveryDates
          : deliveryDates // ignore: cast_nullable_to_non_nullable
              as List<DeliveryDateModel>,
      deliveryFinishHour: null == deliveryFinishHour
          ? _value.deliveryFinishHour
          : deliveryFinishHour // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryFinishMinute: null == deliveryFinishMinute
          ? _value.deliveryFinishMinute
          : deliveryFinishMinute // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStartHour: null == deliveryStartHour
          ? _value.deliveryStartHour
          : deliveryStartHour // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStartMinute: null == deliveryStartMinute
          ? _value.deliveryStartMinute
          : deliveryStartMinute // ignore: cast_nullable_to_non_nullable
              as String,
      isFulfillmentTypeLocker: null == isFulfillmentTypeLocker
          ? _value.isFulfillmentTypeLocker
          : isFulfillmentTypeLocker // ignore: cast_nullable_to_non_nullable
              as bool,
      isFulfillmentTypePackageDrop: null == isFulfillmentTypePackageDrop
          ? _value.isFulfillmentTypePackageDrop
          : isFulfillmentTypePackageDrop // ignore: cast_nullable_to_non_nullable
              as bool,
      isFulfillmentTypeShop: null == isFulfillmentTypeShop
          ? _value.isFulfillmentTypeShop
          : isFulfillmentTypeShop // ignore: cast_nullable_to_non_nullable
              as bool,
      receiptLocationAdditionalText: null == receiptLocationAdditionalText
          ? _value.receiptLocationAdditionalText
          : receiptLocationAdditionalText // ignore: cast_nullable_to_non_nullable
              as String,
      receiptLocationContentsUrl: null == receiptLocationContentsUrl
          ? _value.receiptLocationContentsUrl
          : receiptLocationContentsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isEnableNoContact: null == isEnableNoContact
          ? _value.isEnableNoContact
          : isEnableNoContact // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryTimeModelCopyWith<$Res>
    implements $DeliveryTimeModelCopyWith<$Res> {
  factory _$$_DeliveryTimeModelCopyWith(_$_DeliveryTimeModel value,
          $Res Function(_$_DeliveryTimeModel) then) =
      __$$_DeliveryTimeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DeliveryDateModel> deliveryDates,
      String deliveryFinishHour,
      String deliveryFinishMinute,
      String deliveryStartHour,
      String deliveryStartMinute,
      bool isFulfillmentTypeLocker,
      bool isFulfillmentTypePackageDrop,
      bool isFulfillmentTypeShop,
      String receiptLocationAdditionalText,
      String receiptLocationContentsUrl,
      bool isEnableNoContact});
}

/// @nodoc
class __$$_DeliveryTimeModelCopyWithImpl<$Res>
    extends _$DeliveryTimeModelCopyWithImpl<$Res, _$_DeliveryTimeModel>
    implements _$$_DeliveryTimeModelCopyWith<$Res> {
  __$$_DeliveryTimeModelCopyWithImpl(
      _$_DeliveryTimeModel _value, $Res Function(_$_DeliveryTimeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryDates = null,
    Object? deliveryFinishHour = null,
    Object? deliveryFinishMinute = null,
    Object? deliveryStartHour = null,
    Object? deliveryStartMinute = null,
    Object? isFulfillmentTypeLocker = null,
    Object? isFulfillmentTypePackageDrop = null,
    Object? isFulfillmentTypeShop = null,
    Object? receiptLocationAdditionalText = null,
    Object? receiptLocationContentsUrl = null,
    Object? isEnableNoContact = null,
  }) {
    return _then(_$_DeliveryTimeModel(
      deliveryDates: null == deliveryDates
          ? _value._deliveryDates
          : deliveryDates // ignore: cast_nullable_to_non_nullable
              as List<DeliveryDateModel>,
      deliveryFinishHour: null == deliveryFinishHour
          ? _value.deliveryFinishHour
          : deliveryFinishHour // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryFinishMinute: null == deliveryFinishMinute
          ? _value.deliveryFinishMinute
          : deliveryFinishMinute // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStartHour: null == deliveryStartHour
          ? _value.deliveryStartHour
          : deliveryStartHour // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStartMinute: null == deliveryStartMinute
          ? _value.deliveryStartMinute
          : deliveryStartMinute // ignore: cast_nullable_to_non_nullable
              as String,
      isFulfillmentTypeLocker: null == isFulfillmentTypeLocker
          ? _value.isFulfillmentTypeLocker
          : isFulfillmentTypeLocker // ignore: cast_nullable_to_non_nullable
              as bool,
      isFulfillmentTypePackageDrop: null == isFulfillmentTypePackageDrop
          ? _value.isFulfillmentTypePackageDrop
          : isFulfillmentTypePackageDrop // ignore: cast_nullable_to_non_nullable
              as bool,
      isFulfillmentTypeShop: null == isFulfillmentTypeShop
          ? _value.isFulfillmentTypeShop
          : isFulfillmentTypeShop // ignore: cast_nullable_to_non_nullable
              as bool,
      receiptLocationAdditionalText: null == receiptLocationAdditionalText
          ? _value.receiptLocationAdditionalText
          : receiptLocationAdditionalText // ignore: cast_nullable_to_non_nullable
              as String,
      receiptLocationContentsUrl: null == receiptLocationContentsUrl
          ? _value.receiptLocationContentsUrl
          : receiptLocationContentsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isEnableNoContact: null == isEnableNoContact
          ? _value.isEnableNoContact
          : isEnableNoContact // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryTimeModel implements _DeliveryTimeModel {
  const _$_DeliveryTimeModel(
      {final List<DeliveryDateModel> deliveryDates =
          const <DeliveryDateModel>[],
      this.deliveryFinishHour = '',
      this.deliveryFinishMinute = '',
      this.deliveryStartHour = '',
      this.deliveryStartMinute = '',
      this.isFulfillmentTypeLocker = false,
      this.isFulfillmentTypePackageDrop = false,
      this.isFulfillmentTypeShop = false,
      this.receiptLocationAdditionalText = '',
      this.receiptLocationContentsUrl = '',
      this.isEnableNoContact = false})
      : _deliveryDates = deliveryDates;

  factory _$_DeliveryTimeModel.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryTimeModelFromJson(json);

/* 配達日モデルリスト */
  final List<DeliveryDateModel> _deliveryDates;
/* 配達日モデルリスト */
  @override
  @JsonKey()
  List<DeliveryDateModel> get deliveryDates {
    if (_deliveryDates is EqualUnmodifiableListView) return _deliveryDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveryDates);
  }

/* 配送終了時間（時）　※HH */
  @override
  @JsonKey()
  final String deliveryFinishHour;
/* 配送終了時間（分）　※mm */
  @override
  @JsonKey()
  final String deliveryFinishMinute;
/* 配送開始時間（時）　※HH */
  @override
  @JsonKey()
  final String deliveryStartHour;
/* 配送開始時間（分）　※mm */
  @override
  @JsonKey()
  final String deliveryStartMinute;
/* 配送便種別：受取りボックス-判定 - true：配送便種別が受取りボックスである - false：配送便種別が受取りボックスでない */
  @override
  @JsonKey()
  final bool isFulfillmentTypeLocker;
/* 配送便種別：置き配-判定 - true：配送便種別が置き配便である - false：配送便種別が置き配便でない */
  @override
  @JsonKey()
  final bool isFulfillmentTypePackageDrop;
/* 配送便種別：店受-判定 - true：配送便種別が店舗受取である - false：配送便種別が店舗受取でない */
  @override
  @JsonKey()
  final bool isFulfillmentTypeShop;
/* 受取先追加文言 */
  @override
  @JsonKey()
  final String receiptLocationAdditionalText;
/* 受取先静的コンテンツURL */
  @override
  @JsonKey()
  final String receiptLocationContentsUrl;
/* 非接触お届けサービス利用可能判定 */
  @override
  @JsonKey()
  final bool isEnableNoContact;

  @override
  String toString() {
    return 'DeliveryTimeModel(deliveryDates: $deliveryDates, deliveryFinishHour: $deliveryFinishHour, deliveryFinishMinute: $deliveryFinishMinute, deliveryStartHour: $deliveryStartHour, deliveryStartMinute: $deliveryStartMinute, isFulfillmentTypeLocker: $isFulfillmentTypeLocker, isFulfillmentTypePackageDrop: $isFulfillmentTypePackageDrop, isFulfillmentTypeShop: $isFulfillmentTypeShop, receiptLocationAdditionalText: $receiptLocationAdditionalText, receiptLocationContentsUrl: $receiptLocationContentsUrl, isEnableNoContact: $isEnableNoContact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryTimeModel &&
            const DeepCollectionEquality()
                .equals(other._deliveryDates, _deliveryDates) &&
            (identical(other.deliveryFinishHour, deliveryFinishHour) ||
                other.deliveryFinishHour == deliveryFinishHour) &&
            (identical(other.deliveryFinishMinute, deliveryFinishMinute) ||
                other.deliveryFinishMinute == deliveryFinishMinute) &&
            (identical(other.deliveryStartHour, deliveryStartHour) ||
                other.deliveryStartHour == deliveryStartHour) &&
            (identical(other.deliveryStartMinute, deliveryStartMinute) ||
                other.deliveryStartMinute == deliveryStartMinute) &&
            (identical(
                    other.isFulfillmentTypeLocker, isFulfillmentTypeLocker) ||
                other.isFulfillmentTypeLocker == isFulfillmentTypeLocker) &&
            (identical(other.isFulfillmentTypePackageDrop,
                    isFulfillmentTypePackageDrop) ||
                other.isFulfillmentTypePackageDrop ==
                    isFulfillmentTypePackageDrop) &&
            (identical(other.isFulfillmentTypeShop, isFulfillmentTypeShop) ||
                other.isFulfillmentTypeShop == isFulfillmentTypeShop) &&
            (identical(other.receiptLocationAdditionalText,
                    receiptLocationAdditionalText) ||
                other.receiptLocationAdditionalText ==
                    receiptLocationAdditionalText) &&
            (identical(other.receiptLocationContentsUrl,
                    receiptLocationContentsUrl) ||
                other.receiptLocationContentsUrl ==
                    receiptLocationContentsUrl) &&
            (identical(other.isEnableNoContact, isEnableNoContact) ||
                other.isEnableNoContact == isEnableNoContact));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_deliveryDates),
      deliveryFinishHour,
      deliveryFinishMinute,
      deliveryStartHour,
      deliveryStartMinute,
      isFulfillmentTypeLocker,
      isFulfillmentTypePackageDrop,
      isFulfillmentTypeShop,
      receiptLocationAdditionalText,
      receiptLocationContentsUrl,
      isEnableNoContact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryTimeModelCopyWith<_$_DeliveryTimeModel> get copyWith =>
      __$$_DeliveryTimeModelCopyWithImpl<_$_DeliveryTimeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryTimeModelToJson(
      this,
    );
  }
}

abstract class _DeliveryTimeModel implements DeliveryTimeModel {
  const factory _DeliveryTimeModel(
      {final List<DeliveryDateModel> deliveryDates,
      final String deliveryFinishHour,
      final String deliveryFinishMinute,
      final String deliveryStartHour,
      final String deliveryStartMinute,
      final bool isFulfillmentTypeLocker,
      final bool isFulfillmentTypePackageDrop,
      final bool isFulfillmentTypeShop,
      final String receiptLocationAdditionalText,
      final String receiptLocationContentsUrl,
      final bool isEnableNoContact}) = _$_DeliveryTimeModel;

  factory _DeliveryTimeModel.fromJson(Map<String, dynamic> json) =
      _$_DeliveryTimeModel.fromJson;

  @override /* 配達日モデルリスト */
  List<DeliveryDateModel> get deliveryDates;
  @override /* 配送終了時間（時）　※HH */
  String get deliveryFinishHour;
  @override /* 配送終了時間（分）　※mm */
  String get deliveryFinishMinute;
  @override /* 配送開始時間（時）　※HH */
  String get deliveryStartHour;
  @override /* 配送開始時間（分）　※mm */
  String get deliveryStartMinute;
  @override /* 配送便種別：受取りボックス-判定 - true：配送便種別が受取りボックスである - false：配送便種別が受取りボックスでない */
  bool get isFulfillmentTypeLocker;
  @override /* 配送便種別：置き配-判定 - true：配送便種別が置き配便である - false：配送便種別が置き配便でない */
  bool get isFulfillmentTypePackageDrop;
  @override /* 配送便種別：店受-判定 - true：配送便種別が店舗受取である - false：配送便種別が店舗受取でない */
  bool get isFulfillmentTypeShop;
  @override /* 受取先追加文言 */
  String get receiptLocationAdditionalText;
  @override /* 受取先静的コンテンツURL */
  String get receiptLocationContentsUrl;
  @override /* 非接触お届けサービス利用可能判定 */
  bool get isEnableNoContact;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryTimeModelCopyWith<_$_DeliveryTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
