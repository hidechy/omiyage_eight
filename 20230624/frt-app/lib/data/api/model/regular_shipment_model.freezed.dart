// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regular_shipment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegularShipmentModel _$RegularShipmentModelFromJson(Map<String, dynamic> json) {
  return _RegularShipmentModel.fromJson(json);
}

/// @nodoc
mixin _$RegularShipmentModel {
/* 会員定期便申込ID */
  int get regularShipmentApplyId =>
      throw _privateConstructorUsedError; /* 店舗コード 5桁 */
  String get shopCode =>
      throw _privateConstructorUsedError; /* 初回申込日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'init_app_datetime')
  int get epochInitAppDatetime =>
      throw _privateConstructorUsedError; /* 申込日　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'app_datetime')
  int get epochAppDatetime =>
      throw _privateConstructorUsedError; /* 配達曜日区分 ````` 01_MON:月曜日 02_TUE:火曜日 03_WED:水曜日 04_THU:木曜日 05_FRI:金曜日 06_SAT:土曜日 07_SUN:日曜日 ````` */
  RegularShipmentDeliveryWeekDiv get deliveryWeekDiv =>
      throw _privateConstructorUsedError; /* 配送開始時間（時分）　※hhmm */
  String get deliveryStartTime =>
      throw _privateConstructorUsedError; /* 配送終了時間（時分）　※hhmm */
  String get deliveryFinishTime =>
      throw _privateConstructorUsedError; /* 配送時間帯ID */
  String get deliveryTimeId =>
      throw _privateConstructorUsedError; /* 初回配達予定日　※YYYYMMDD */
  String get initDeliveryScheduleDate =>
      throw _privateConstructorUsedError; /* PGT顧客ID */
  String get paygentClientId =>
      throw _privateConstructorUsedError; /* PGT顧客カードID */
  String get paygentClientCreditCardId =>
      throw _privateConstructorUsedError; /* オーソリエラー受注有無  ``` true：オーソリエラー受注あり false：オーソリエラー受注なし ``` */
  bool get hasAuthoryErrorOrder =>
      throw _privateConstructorUsedError; /* 会員定期便-配達スケジュールリスト */
  List<RegularShipmentDeliveryScheduleModel> get deliverySchedules =>
      throw _privateConstructorUsedError; /* 解約済みフラグ  ``` true：解約済み false：解約していない ``` */
  bool get isCanceled => throw _privateConstructorUsedError; /* 申込時-定期便割引率(%) */
  int get regularShipmentApplyDiscountRate =>
      throw _privateConstructorUsedError; /* 申込時-定期便割引額 */
  int get regularShipmentApplyDiscountPrice =>
      throw _privateConstructorUsedError; /* 商品総額 */
  int get productTotalPrice =>
      throw _privateConstructorUsedError; /* 商品総額（定期便割引後） */
  int get productTotalPriceAfterRegularShipmentDiscount =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegularShipmentModelCopyWith<RegularShipmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegularShipmentModelCopyWith<$Res> {
  factory $RegularShipmentModelCopyWith(RegularShipmentModel value,
          $Res Function(RegularShipmentModel) then) =
      _$RegularShipmentModelCopyWithImpl<$Res, RegularShipmentModel>;
  @useResult
  $Res call(
      {int regularShipmentApplyId,
      String shopCode,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'init_app_datetime')
          int epochInitAppDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'app_datetime')
          int epochAppDatetime,
      RegularShipmentDeliveryWeekDiv deliveryWeekDiv,
      String deliveryStartTime,
      String deliveryFinishTime,
      String deliveryTimeId,
      String initDeliveryScheduleDate,
      String paygentClientId,
      String paygentClientCreditCardId,
      bool hasAuthoryErrorOrder,
      List<RegularShipmentDeliveryScheduleModel> deliverySchedules,
      bool isCanceled,
      int regularShipmentApplyDiscountRate,
      int regularShipmentApplyDiscountPrice,
      int productTotalPrice,
      int productTotalPriceAfterRegularShipmentDiscount});
}

/// @nodoc
class _$RegularShipmentModelCopyWithImpl<$Res,
        $Val extends RegularShipmentModel>
    implements $RegularShipmentModelCopyWith<$Res> {
  _$RegularShipmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regularShipmentApplyId = null,
    Object? shopCode = null,
    Object? epochInitAppDatetime = null,
    Object? epochAppDatetime = null,
    Object? deliveryWeekDiv = null,
    Object? deliveryStartTime = null,
    Object? deliveryFinishTime = null,
    Object? deliveryTimeId = null,
    Object? initDeliveryScheduleDate = null,
    Object? paygentClientId = null,
    Object? paygentClientCreditCardId = null,
    Object? hasAuthoryErrorOrder = null,
    Object? deliverySchedules = null,
    Object? isCanceled = null,
    Object? regularShipmentApplyDiscountRate = null,
    Object? regularShipmentApplyDiscountPrice = null,
    Object? productTotalPrice = null,
    Object? productTotalPriceAfterRegularShipmentDiscount = null,
  }) {
    return _then(_value.copyWith(
      regularShipmentApplyId: null == regularShipmentApplyId
          ? _value.regularShipmentApplyId
          : regularShipmentApplyId // ignore: cast_nullable_to_non_nullable
              as int,
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      epochInitAppDatetime: null == epochInitAppDatetime
          ? _value.epochInitAppDatetime
          : epochInitAppDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochAppDatetime: null == epochAppDatetime
          ? _value.epochAppDatetime
          : epochAppDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryWeekDiv: null == deliveryWeekDiv
          ? _value.deliveryWeekDiv
          : deliveryWeekDiv // ignore: cast_nullable_to_non_nullable
              as RegularShipmentDeliveryWeekDiv,
      deliveryStartTime: null == deliveryStartTime
          ? _value.deliveryStartTime
          : deliveryStartTime // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryFinishTime: null == deliveryFinishTime
          ? _value.deliveryFinishTime
          : deliveryFinishTime // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryTimeId: null == deliveryTimeId
          ? _value.deliveryTimeId
          : deliveryTimeId // ignore: cast_nullable_to_non_nullable
              as String,
      initDeliveryScheduleDate: null == initDeliveryScheduleDate
          ? _value.initDeliveryScheduleDate
          : initDeliveryScheduleDate // ignore: cast_nullable_to_non_nullable
              as String,
      paygentClientId: null == paygentClientId
          ? _value.paygentClientId
          : paygentClientId // ignore: cast_nullable_to_non_nullable
              as String,
      paygentClientCreditCardId: null == paygentClientCreditCardId
          ? _value.paygentClientCreditCardId
          : paygentClientCreditCardId // ignore: cast_nullable_to_non_nullable
              as String,
      hasAuthoryErrorOrder: null == hasAuthoryErrorOrder
          ? _value.hasAuthoryErrorOrder
          : hasAuthoryErrorOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      deliverySchedules: null == deliverySchedules
          ? _value.deliverySchedules
          : deliverySchedules // ignore: cast_nullable_to_non_nullable
              as List<RegularShipmentDeliveryScheduleModel>,
      isCanceled: null == isCanceled
          ? _value.isCanceled
          : isCanceled // ignore: cast_nullable_to_non_nullable
              as bool,
      regularShipmentApplyDiscountRate: null == regularShipmentApplyDiscountRate
          ? _value.regularShipmentApplyDiscountRate
          : regularShipmentApplyDiscountRate // ignore: cast_nullable_to_non_nullable
              as int,
      regularShipmentApplyDiscountPrice: null ==
              regularShipmentApplyDiscountPrice
          ? _value.regularShipmentApplyDiscountPrice
          : regularShipmentApplyDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      productTotalPrice: null == productTotalPrice
          ? _value.productTotalPrice
          : productTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      productTotalPriceAfterRegularShipmentDiscount: null ==
              productTotalPriceAfterRegularShipmentDiscount
          ? _value.productTotalPriceAfterRegularShipmentDiscount
          : productTotalPriceAfterRegularShipmentDiscount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegularShipmentModelCopyWith<$Res>
    implements $RegularShipmentModelCopyWith<$Res> {
  factory _$$_RegularShipmentModelCopyWith(_$_RegularShipmentModel value,
          $Res Function(_$_RegularShipmentModel) then) =
      __$$_RegularShipmentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int regularShipmentApplyId,
      String shopCode,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'init_app_datetime')
          int epochInitAppDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'app_datetime')
          int epochAppDatetime,
      RegularShipmentDeliveryWeekDiv deliveryWeekDiv,
      String deliveryStartTime,
      String deliveryFinishTime,
      String deliveryTimeId,
      String initDeliveryScheduleDate,
      String paygentClientId,
      String paygentClientCreditCardId,
      bool hasAuthoryErrorOrder,
      List<RegularShipmentDeliveryScheduleModel> deliverySchedules,
      bool isCanceled,
      int regularShipmentApplyDiscountRate,
      int regularShipmentApplyDiscountPrice,
      int productTotalPrice,
      int productTotalPriceAfterRegularShipmentDiscount});
}

/// @nodoc
class __$$_RegularShipmentModelCopyWithImpl<$Res>
    extends _$RegularShipmentModelCopyWithImpl<$Res, _$_RegularShipmentModel>
    implements _$$_RegularShipmentModelCopyWith<$Res> {
  __$$_RegularShipmentModelCopyWithImpl(_$_RegularShipmentModel _value,
      $Res Function(_$_RegularShipmentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regularShipmentApplyId = null,
    Object? shopCode = null,
    Object? epochInitAppDatetime = null,
    Object? epochAppDatetime = null,
    Object? deliveryWeekDiv = null,
    Object? deliveryStartTime = null,
    Object? deliveryFinishTime = null,
    Object? deliveryTimeId = null,
    Object? initDeliveryScheduleDate = null,
    Object? paygentClientId = null,
    Object? paygentClientCreditCardId = null,
    Object? hasAuthoryErrorOrder = null,
    Object? deliverySchedules = null,
    Object? isCanceled = null,
    Object? regularShipmentApplyDiscountRate = null,
    Object? regularShipmentApplyDiscountPrice = null,
    Object? productTotalPrice = null,
    Object? productTotalPriceAfterRegularShipmentDiscount = null,
  }) {
    return _then(_$_RegularShipmentModel(
      regularShipmentApplyId: null == regularShipmentApplyId
          ? _value.regularShipmentApplyId
          : regularShipmentApplyId // ignore: cast_nullable_to_non_nullable
              as int,
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      epochInitAppDatetime: null == epochInitAppDatetime
          ? _value.epochInitAppDatetime
          : epochInitAppDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochAppDatetime: null == epochAppDatetime
          ? _value.epochAppDatetime
          : epochAppDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryWeekDiv: null == deliveryWeekDiv
          ? _value.deliveryWeekDiv
          : deliveryWeekDiv // ignore: cast_nullable_to_non_nullable
              as RegularShipmentDeliveryWeekDiv,
      deliveryStartTime: null == deliveryStartTime
          ? _value.deliveryStartTime
          : deliveryStartTime // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryFinishTime: null == deliveryFinishTime
          ? _value.deliveryFinishTime
          : deliveryFinishTime // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryTimeId: null == deliveryTimeId
          ? _value.deliveryTimeId
          : deliveryTimeId // ignore: cast_nullable_to_non_nullable
              as String,
      initDeliveryScheduleDate: null == initDeliveryScheduleDate
          ? _value.initDeliveryScheduleDate
          : initDeliveryScheduleDate // ignore: cast_nullable_to_non_nullable
              as String,
      paygentClientId: null == paygentClientId
          ? _value.paygentClientId
          : paygentClientId // ignore: cast_nullable_to_non_nullable
              as String,
      paygentClientCreditCardId: null == paygentClientCreditCardId
          ? _value.paygentClientCreditCardId
          : paygentClientCreditCardId // ignore: cast_nullable_to_non_nullable
              as String,
      hasAuthoryErrorOrder: null == hasAuthoryErrorOrder
          ? _value.hasAuthoryErrorOrder
          : hasAuthoryErrorOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      deliverySchedules: null == deliverySchedules
          ? _value._deliverySchedules
          : deliverySchedules // ignore: cast_nullable_to_non_nullable
              as List<RegularShipmentDeliveryScheduleModel>,
      isCanceled: null == isCanceled
          ? _value.isCanceled
          : isCanceled // ignore: cast_nullable_to_non_nullable
              as bool,
      regularShipmentApplyDiscountRate: null == regularShipmentApplyDiscountRate
          ? _value.regularShipmentApplyDiscountRate
          : regularShipmentApplyDiscountRate // ignore: cast_nullable_to_non_nullable
              as int,
      regularShipmentApplyDiscountPrice: null ==
              regularShipmentApplyDiscountPrice
          ? _value.regularShipmentApplyDiscountPrice
          : regularShipmentApplyDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      productTotalPrice: null == productTotalPrice
          ? _value.productTotalPrice
          : productTotalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      productTotalPriceAfterRegularShipmentDiscount: null ==
              productTotalPriceAfterRegularShipmentDiscount
          ? _value.productTotalPriceAfterRegularShipmentDiscount
          : productTotalPriceAfterRegularShipmentDiscount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegularShipmentModel implements _RegularShipmentModel {
  const _$_RegularShipmentModel(
      {this.regularShipmentApplyId = 0,
      this.shopCode = '',
      @StringToEpochTimeConverter()
      @JsonKey(name: 'init_app_datetime')
          this.epochInitAppDatetime = 0,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'app_datetime')
          this.epochAppDatetime = 0,
      this.deliveryWeekDiv = RegularShipmentDeliveryWeekDiv.monday,
      this.deliveryStartTime = '',
      this.deliveryFinishTime = '',
      this.deliveryTimeId = '',
      this.initDeliveryScheduleDate = '',
      this.paygentClientId = '',
      this.paygentClientCreditCardId = '',
      this.hasAuthoryErrorOrder = false,
      final List<RegularShipmentDeliveryScheduleModel> deliverySchedules =
          const <RegularShipmentDeliveryScheduleModel>[],
      this.isCanceled = false,
      this.regularShipmentApplyDiscountRate = 0,
      this.regularShipmentApplyDiscountPrice = 0,
      this.productTotalPrice = 0,
      this.productTotalPriceAfterRegularShipmentDiscount = 0})
      : _deliverySchedules = deliverySchedules;

  factory _$_RegularShipmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegularShipmentModelFromJson(json);

/* 会員定期便申込ID */
  @override
  @JsonKey()
  final int regularShipmentApplyId;
/* 店舗コード 5桁 */
  @override
  @JsonKey()
  final String shopCode;
/* 初回申込日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'init_app_datetime')
  final int epochInitAppDatetime;
/* 申込日　※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'app_datetime')
  final int epochAppDatetime;
/* 配達曜日区分 ````` 01_MON:月曜日 02_TUE:火曜日 03_WED:水曜日 04_THU:木曜日 05_FRI:金曜日 06_SAT:土曜日 07_SUN:日曜日 ````` */
  @override
  @JsonKey()
  final RegularShipmentDeliveryWeekDiv deliveryWeekDiv;
/* 配送開始時間（時分）　※hhmm */
  @override
  @JsonKey()
  final String deliveryStartTime;
/* 配送終了時間（時分）　※hhmm */
  @override
  @JsonKey()
  final String deliveryFinishTime;
/* 配送時間帯ID */
  @override
  @JsonKey()
  final String deliveryTimeId;
/* 初回配達予定日　※YYYYMMDD */
  @override
  @JsonKey()
  final String initDeliveryScheduleDate;
/* PGT顧客ID */
  @override
  @JsonKey()
  final String paygentClientId;
/* PGT顧客カードID */
  @override
  @JsonKey()
  final String paygentClientCreditCardId;
/* オーソリエラー受注有無  ``` true：オーソリエラー受注あり false：オーソリエラー受注なし ``` */
  @override
  @JsonKey()
  final bool hasAuthoryErrorOrder;
/* 会員定期便-配達スケジュールリスト */
  final List<RegularShipmentDeliveryScheduleModel> _deliverySchedules;
/* 会員定期便-配達スケジュールリスト */
  @override
  @JsonKey()
  List<RegularShipmentDeliveryScheduleModel> get deliverySchedules {
    if (_deliverySchedules is EqualUnmodifiableListView)
      return _deliverySchedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliverySchedules);
  }

/* 解約済みフラグ  ``` true：解約済み false：解約していない ``` */
  @override
  @JsonKey()
  final bool isCanceled;
/* 申込時-定期便割引率(%) */
  @override
  @JsonKey()
  final int regularShipmentApplyDiscountRate;
/* 申込時-定期便割引額 */
  @override
  @JsonKey()
  final int regularShipmentApplyDiscountPrice;
/* 商品総額 */
  @override
  @JsonKey()
  final int productTotalPrice;
/* 商品総額（定期便割引後） */
  @override
  @JsonKey()
  final int productTotalPriceAfterRegularShipmentDiscount;

  @override
  String toString() {
    return 'RegularShipmentModel(regularShipmentApplyId: $regularShipmentApplyId, shopCode: $shopCode, epochInitAppDatetime: $epochInitAppDatetime, epochAppDatetime: $epochAppDatetime, deliveryWeekDiv: $deliveryWeekDiv, deliveryStartTime: $deliveryStartTime, deliveryFinishTime: $deliveryFinishTime, deliveryTimeId: $deliveryTimeId, initDeliveryScheduleDate: $initDeliveryScheduleDate, paygentClientId: $paygentClientId, paygentClientCreditCardId: $paygentClientCreditCardId, hasAuthoryErrorOrder: $hasAuthoryErrorOrder, deliverySchedules: $deliverySchedules, isCanceled: $isCanceled, regularShipmentApplyDiscountRate: $regularShipmentApplyDiscountRate, regularShipmentApplyDiscountPrice: $regularShipmentApplyDiscountPrice, productTotalPrice: $productTotalPrice, productTotalPriceAfterRegularShipmentDiscount: $productTotalPriceAfterRegularShipmentDiscount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegularShipmentModel &&
            (identical(other.regularShipmentApplyId, regularShipmentApplyId) ||
                other.regularShipmentApplyId == regularShipmentApplyId) &&
            (identical(other.shopCode, shopCode) ||
                other.shopCode == shopCode) &&
            (identical(other.epochInitAppDatetime, epochInitAppDatetime) ||
                other.epochInitAppDatetime == epochInitAppDatetime) &&
            (identical(other.epochAppDatetime, epochAppDatetime) ||
                other.epochAppDatetime == epochAppDatetime) &&
            (identical(other.deliveryWeekDiv, deliveryWeekDiv) ||
                other.deliveryWeekDiv == deliveryWeekDiv) &&
            (identical(other.deliveryStartTime, deliveryStartTime) ||
                other.deliveryStartTime == deliveryStartTime) &&
            (identical(other.deliveryFinishTime, deliveryFinishTime) ||
                other.deliveryFinishTime == deliveryFinishTime) &&
            (identical(other.deliveryTimeId, deliveryTimeId) ||
                other.deliveryTimeId == deliveryTimeId) &&
            (identical(other.initDeliveryScheduleDate, initDeliveryScheduleDate) ||
                other.initDeliveryScheduleDate == initDeliveryScheduleDate) &&
            (identical(other.paygentClientId, paygentClientId) ||
                other.paygentClientId == paygentClientId) &&
            (identical(other.paygentClientCreditCardId, paygentClientCreditCardId) ||
                other.paygentClientCreditCardId == paygentClientCreditCardId) &&
            (identical(other.hasAuthoryErrorOrder, hasAuthoryErrorOrder) ||
                other.hasAuthoryErrorOrder == hasAuthoryErrorOrder) &&
            const DeepCollectionEquality()
                .equals(other._deliverySchedules, _deliverySchedules) &&
            (identical(other.isCanceled, isCanceled) ||
                other.isCanceled == isCanceled) &&
            (identical(other.regularShipmentApplyDiscountRate,
                    regularShipmentApplyDiscountRate) ||
                other.regularShipmentApplyDiscountRate ==
                    regularShipmentApplyDiscountRate) &&
            (identical(other.regularShipmentApplyDiscountPrice,
                    regularShipmentApplyDiscountPrice) ||
                other.regularShipmentApplyDiscountPrice ==
                    regularShipmentApplyDiscountPrice) &&
            (identical(other.productTotalPrice, productTotalPrice) ||
                other.productTotalPrice == productTotalPrice) &&
            (identical(other.productTotalPriceAfterRegularShipmentDiscount,
                    productTotalPriceAfterRegularShipmentDiscount) ||
                other.productTotalPriceAfterRegularShipmentDiscount ==
                    productTotalPriceAfterRegularShipmentDiscount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      regularShipmentApplyId,
      shopCode,
      epochInitAppDatetime,
      epochAppDatetime,
      deliveryWeekDiv,
      deliveryStartTime,
      deliveryFinishTime,
      deliveryTimeId,
      initDeliveryScheduleDate,
      paygentClientId,
      paygentClientCreditCardId,
      hasAuthoryErrorOrder,
      const DeepCollectionEquality().hash(_deliverySchedules),
      isCanceled,
      regularShipmentApplyDiscountRate,
      regularShipmentApplyDiscountPrice,
      productTotalPrice,
      productTotalPriceAfterRegularShipmentDiscount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegularShipmentModelCopyWith<_$_RegularShipmentModel> get copyWith =>
      __$$_RegularShipmentModelCopyWithImpl<_$_RegularShipmentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegularShipmentModelToJson(
      this,
    );
  }
}

abstract class _RegularShipmentModel implements RegularShipmentModel {
  const factory _RegularShipmentModel(
          {final int regularShipmentApplyId,
          final String shopCode,
          @StringToEpochTimeConverter()
          @JsonKey(name: 'init_app_datetime')
              final int epochInitAppDatetime,
          @StringToEpochTimeConverter()
          @JsonKey(name: 'app_datetime')
              final int epochAppDatetime,
          final RegularShipmentDeliveryWeekDiv deliveryWeekDiv,
          final String deliveryStartTime,
          final String deliveryFinishTime,
          final String deliveryTimeId,
          final String initDeliveryScheduleDate,
          final String paygentClientId,
          final String paygentClientCreditCardId,
          final bool hasAuthoryErrorOrder,
          final List<RegularShipmentDeliveryScheduleModel> deliverySchedules,
          final bool isCanceled,
          final int regularShipmentApplyDiscountRate,
          final int regularShipmentApplyDiscountPrice,
          final int productTotalPrice,
          final int productTotalPriceAfterRegularShipmentDiscount}) =
      _$_RegularShipmentModel;

  factory _RegularShipmentModel.fromJson(Map<String, dynamic> json) =
      _$_RegularShipmentModel.fromJson;

  @override /* 会員定期便申込ID */
  int get regularShipmentApplyId;
  @override /* 店舗コード 5桁 */
  String get shopCode;
  @override /* 初回申込日時　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'init_app_datetime')
  int get epochInitAppDatetime;
  @override /* 申込日　※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'app_datetime')
  int get epochAppDatetime;
  @override /* 配達曜日区分 ````` 01_MON:月曜日 02_TUE:火曜日 03_WED:水曜日 04_THU:木曜日 05_FRI:金曜日 06_SAT:土曜日 07_SUN:日曜日 ````` */
  RegularShipmentDeliveryWeekDiv get deliveryWeekDiv;
  @override /* 配送開始時間（時分）　※hhmm */
  String get deliveryStartTime;
  @override /* 配送終了時間（時分）　※hhmm */
  String get deliveryFinishTime;
  @override /* 配送時間帯ID */
  String get deliveryTimeId;
  @override /* 初回配達予定日　※YYYYMMDD */
  String get initDeliveryScheduleDate;
  @override /* PGT顧客ID */
  String get paygentClientId;
  @override /* PGT顧客カードID */
  String get paygentClientCreditCardId;
  @override /* オーソリエラー受注有無  ``` true：オーソリエラー受注あり false：オーソリエラー受注なし ``` */
  bool get hasAuthoryErrorOrder;
  @override /* 会員定期便-配達スケジュールリスト */
  List<RegularShipmentDeliveryScheduleModel> get deliverySchedules;
  @override /* 解約済みフラグ  ``` true：解約済み false：解約していない ``` */
  bool get isCanceled;
  @override /* 申込時-定期便割引率(%) */
  int get regularShipmentApplyDiscountRate;
  @override /* 申込時-定期便割引額 */
  int get regularShipmentApplyDiscountPrice;
  @override /* 商品総額 */
  int get productTotalPrice;
  @override /* 商品総額（定期便割引後） */
  int get productTotalPriceAfterRegularShipmentDiscount;
  @override
  @JsonKey(ignore: true)
  _$$_RegularShipmentModelCopyWith<_$_RegularShipmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
