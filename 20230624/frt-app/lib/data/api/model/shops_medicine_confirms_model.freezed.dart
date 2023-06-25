// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shops_medicine_confirms_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopsMedicineConfirmsModel _$ShopsMedicineConfirmsModelFromJson(
    Map<String, dynamic> json) {
  return _ShopsMedicineConfirmsModel.fromJson(json);
}

/// @nodoc
mixin _$ShopsMedicineConfirmsModel {
/* 許可区分名 */
  String get permissionTypeName =>
      throw _privateConstructorUsedError; /* 開設者名 */
  String get establisherName => throw _privateConstructorUsedError; /* 開設者住所 */
  String get establisherAddress =>
      throw _privateConstructorUsedError; /* 開設代表者 */
  String get establishedRepresentative =>
      throw _privateConstructorUsedError; /* 医薬品許可番号 */
  String get permissionNumber => throw _privateConstructorUsedError; /* 許可店舗名 */
  String get permissionShopName =>
      throw _privateConstructorUsedError; /* 許可店舗住所 */
  String get permissionShopAddress =>
      throw _privateConstructorUsedError; /* 有効期間 */
  String get validityPeriod => throw _privateConstructorUsedError; /* 許可証氏名 */
  String get permissionName => throw _privateConstructorUsedError; /* 店舗管理者名 */
  String get shopAdministratorName =>
      throw _privateConstructorUsedError; /* 薬剤師名 右記の形式で返却 - X名　薬剤師名・薬剤師名・薬剤師名・... */
  String get pharmacists =>
      throw _privateConstructorUsedError; /* 登録販売者名 右記の形式で返却 - X名　登録販売者名・登録販売者名・登録販売者名・... */
  String get sellers =>
      throw _privateConstructorUsedError; /* 店頭第一類医薬品扱い販売区分 - 「要指導医薬品と第一類医薬品」の販売の有無  ``` \"1\"：第一類医薬品扱い店舗 上記以外の場合は販売を行っていない ``` */
  String get medicineSalesType =>
      throw _privateConstructorUsedError; /* 取扱医薬品種類 右記の形式で返却 - 取扱医薬品種類、取扱医薬品種類、取扱医薬品種類、... */
  String get handledMedicineTypes =>
      throw _privateConstructorUsedError; /* 薬剤師コメント */
  String get pharmacistComment =>
      throw _privateConstructorUsedError; /* 登録販売者コメント */
  String get sellerComment =>
      throw _privateConstructorUsedError; /* その他の従業員コメント */
  String get otherComment =>
      throw _privateConstructorUsedError; /* すべての曜日の医薬品営業時間が同じか判定 - true：同じ - false：異なる */
  bool get isEqualsMedicineBusinessTime =>
      throw _privateConstructorUsedError; /* 医薬品営業時間（月曜日）　※hh時mm分　～　hh時mm分 */
  String get mondayBusinessTime =>
      throw _privateConstructorUsedError; /* 医薬品営業時間（火曜日）　※hh時mm分　～　hh時mm分 */
  String get tuesdayBusinessTime =>
      throw _privateConstructorUsedError; /* 医薬品営業時間（水曜日）　※hh時mm分　～　hh時mm分 */
  String get wednesdayBusinessTime =>
      throw _privateConstructorUsedError; /* 医薬品営業時間（木曜日）　※hh時mm分　～　hh時mm分 */
  String get thursdayBusinessTime =>
      throw _privateConstructorUsedError; /* 医薬品営業時間（金曜日）　※hh時mm分　～　hh時mm分 */
  String get fridayBusinessTime =>
      throw _privateConstructorUsedError; /* 医薬品営業時間（土曜日）　※hh時mm分　～　hh時mm分 */
  String get saturdayBusinessTime =>
      throw _privateConstructorUsedError; /* 医薬品営業時間（日曜日）　※hh時mm分　～　hh時mm分 */
  String get sundayBusinessTime =>
      throw _privateConstructorUsedError; /* 営業時間補足 */
  String get businessTimeSupplement =>
      throw _privateConstructorUsedError; /* 店舗電話番号 */
  String get shopTelNumber =>
      throw _privateConstructorUsedError; /* ネットスーパー電話番号 */
  String get nsTelNumber => throw _privateConstructorUsedError; /* 保険機関窓口 */
  String get insuranceName =>
      throw _privateConstructorUsedError; /* 保険機関窓口電話番号 */
  String get insuranceTelNumber =>
      throw _privateConstructorUsedError; /* 医薬品扱い店舗判定 - true：医薬品扱い店舗である - false：医薬品扱い店舗でない */
  bool get isDrugShop =>
      throw _privateConstructorUsedError; /* 相談窓口表示フラグ - "1":表示する  - "0":表示しない */
  @StringToBooleanConverter()
  bool get inquiryFlag => throw _privateConstructorUsedError; /* 曜日別在籍一覧 */
  String get weekdayEnrollmentList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopsMedicineConfirmsModelCopyWith<ShopsMedicineConfirmsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopsMedicineConfirmsModelCopyWith<$Res> {
  factory $ShopsMedicineConfirmsModelCopyWith(ShopsMedicineConfirmsModel value,
          $Res Function(ShopsMedicineConfirmsModel) then) =
      _$ShopsMedicineConfirmsModelCopyWithImpl<$Res,
          ShopsMedicineConfirmsModel>;
  @useResult
  $Res call(
      {String permissionTypeName,
      String establisherName,
      String establisherAddress,
      String establishedRepresentative,
      String permissionNumber,
      String permissionShopName,
      String permissionShopAddress,
      String validityPeriod,
      String permissionName,
      String shopAdministratorName,
      String pharmacists,
      String sellers,
      String medicineSalesType,
      String handledMedicineTypes,
      String pharmacistComment,
      String sellerComment,
      String otherComment,
      bool isEqualsMedicineBusinessTime,
      String mondayBusinessTime,
      String tuesdayBusinessTime,
      String wednesdayBusinessTime,
      String thursdayBusinessTime,
      String fridayBusinessTime,
      String saturdayBusinessTime,
      String sundayBusinessTime,
      String businessTimeSupplement,
      String shopTelNumber,
      String nsTelNumber,
      String insuranceName,
      String insuranceTelNumber,
      bool isDrugShop,
      @StringToBooleanConverter() bool inquiryFlag,
      String weekdayEnrollmentList});
}

/// @nodoc
class _$ShopsMedicineConfirmsModelCopyWithImpl<$Res,
        $Val extends ShopsMedicineConfirmsModel>
    implements $ShopsMedicineConfirmsModelCopyWith<$Res> {
  _$ShopsMedicineConfirmsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permissionTypeName = null,
    Object? establisherName = null,
    Object? establisherAddress = null,
    Object? establishedRepresentative = null,
    Object? permissionNumber = null,
    Object? permissionShopName = null,
    Object? permissionShopAddress = null,
    Object? validityPeriod = null,
    Object? permissionName = null,
    Object? shopAdministratorName = null,
    Object? pharmacists = null,
    Object? sellers = null,
    Object? medicineSalesType = null,
    Object? handledMedicineTypes = null,
    Object? pharmacistComment = null,
    Object? sellerComment = null,
    Object? otherComment = null,
    Object? isEqualsMedicineBusinessTime = null,
    Object? mondayBusinessTime = null,
    Object? tuesdayBusinessTime = null,
    Object? wednesdayBusinessTime = null,
    Object? thursdayBusinessTime = null,
    Object? fridayBusinessTime = null,
    Object? saturdayBusinessTime = null,
    Object? sundayBusinessTime = null,
    Object? businessTimeSupplement = null,
    Object? shopTelNumber = null,
    Object? nsTelNumber = null,
    Object? insuranceName = null,
    Object? insuranceTelNumber = null,
    Object? isDrugShop = null,
    Object? inquiryFlag = null,
    Object? weekdayEnrollmentList = null,
  }) {
    return _then(_value.copyWith(
      permissionTypeName: null == permissionTypeName
          ? _value.permissionTypeName
          : permissionTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      establisherName: null == establisherName
          ? _value.establisherName
          : establisherName // ignore: cast_nullable_to_non_nullable
              as String,
      establisherAddress: null == establisherAddress
          ? _value.establisherAddress
          : establisherAddress // ignore: cast_nullable_to_non_nullable
              as String,
      establishedRepresentative: null == establishedRepresentative
          ? _value.establishedRepresentative
          : establishedRepresentative // ignore: cast_nullable_to_non_nullable
              as String,
      permissionNumber: null == permissionNumber
          ? _value.permissionNumber
          : permissionNumber // ignore: cast_nullable_to_non_nullable
              as String,
      permissionShopName: null == permissionShopName
          ? _value.permissionShopName
          : permissionShopName // ignore: cast_nullable_to_non_nullable
              as String,
      permissionShopAddress: null == permissionShopAddress
          ? _value.permissionShopAddress
          : permissionShopAddress // ignore: cast_nullable_to_non_nullable
              as String,
      validityPeriod: null == validityPeriod
          ? _value.validityPeriod
          : validityPeriod // ignore: cast_nullable_to_non_nullable
              as String,
      permissionName: null == permissionName
          ? _value.permissionName
          : permissionName // ignore: cast_nullable_to_non_nullable
              as String,
      shopAdministratorName: null == shopAdministratorName
          ? _value.shopAdministratorName
          : shopAdministratorName // ignore: cast_nullable_to_non_nullable
              as String,
      pharmacists: null == pharmacists
          ? _value.pharmacists
          : pharmacists // ignore: cast_nullable_to_non_nullable
              as String,
      sellers: null == sellers
          ? _value.sellers
          : sellers // ignore: cast_nullable_to_non_nullable
              as String,
      medicineSalesType: null == medicineSalesType
          ? _value.medicineSalesType
          : medicineSalesType // ignore: cast_nullable_to_non_nullable
              as String,
      handledMedicineTypes: null == handledMedicineTypes
          ? _value.handledMedicineTypes
          : handledMedicineTypes // ignore: cast_nullable_to_non_nullable
              as String,
      pharmacistComment: null == pharmacistComment
          ? _value.pharmacistComment
          : pharmacistComment // ignore: cast_nullable_to_non_nullable
              as String,
      sellerComment: null == sellerComment
          ? _value.sellerComment
          : sellerComment // ignore: cast_nullable_to_non_nullable
              as String,
      otherComment: null == otherComment
          ? _value.otherComment
          : otherComment // ignore: cast_nullable_to_non_nullable
              as String,
      isEqualsMedicineBusinessTime: null == isEqualsMedicineBusinessTime
          ? _value.isEqualsMedicineBusinessTime
          : isEqualsMedicineBusinessTime // ignore: cast_nullable_to_non_nullable
              as bool,
      mondayBusinessTime: null == mondayBusinessTime
          ? _value.mondayBusinessTime
          : mondayBusinessTime // ignore: cast_nullable_to_non_nullable
              as String,
      tuesdayBusinessTime: null == tuesdayBusinessTime
          ? _value.tuesdayBusinessTime
          : tuesdayBusinessTime // ignore: cast_nullable_to_non_nullable
              as String,
      wednesdayBusinessTime: null == wednesdayBusinessTime
          ? _value.wednesdayBusinessTime
          : wednesdayBusinessTime // ignore: cast_nullable_to_non_nullable
              as String,
      thursdayBusinessTime: null == thursdayBusinessTime
          ? _value.thursdayBusinessTime
          : thursdayBusinessTime // ignore: cast_nullable_to_non_nullable
              as String,
      fridayBusinessTime: null == fridayBusinessTime
          ? _value.fridayBusinessTime
          : fridayBusinessTime // ignore: cast_nullable_to_non_nullable
              as String,
      saturdayBusinessTime: null == saturdayBusinessTime
          ? _value.saturdayBusinessTime
          : saturdayBusinessTime // ignore: cast_nullable_to_non_nullable
              as String,
      sundayBusinessTime: null == sundayBusinessTime
          ? _value.sundayBusinessTime
          : sundayBusinessTime // ignore: cast_nullable_to_non_nullable
              as String,
      businessTimeSupplement: null == businessTimeSupplement
          ? _value.businessTimeSupplement
          : businessTimeSupplement // ignore: cast_nullable_to_non_nullable
              as String,
      shopTelNumber: null == shopTelNumber
          ? _value.shopTelNumber
          : shopTelNumber // ignore: cast_nullable_to_non_nullable
              as String,
      nsTelNumber: null == nsTelNumber
          ? _value.nsTelNumber
          : nsTelNumber // ignore: cast_nullable_to_non_nullable
              as String,
      insuranceName: null == insuranceName
          ? _value.insuranceName
          : insuranceName // ignore: cast_nullable_to_non_nullable
              as String,
      insuranceTelNumber: null == insuranceTelNumber
          ? _value.insuranceTelNumber
          : insuranceTelNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isDrugShop: null == isDrugShop
          ? _value.isDrugShop
          : isDrugShop // ignore: cast_nullable_to_non_nullable
              as bool,
      inquiryFlag: null == inquiryFlag
          ? _value.inquiryFlag
          : inquiryFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      weekdayEnrollmentList: null == weekdayEnrollmentList
          ? _value.weekdayEnrollmentList
          : weekdayEnrollmentList // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShopsMedicineConfirmsModelCopyWith<$Res>
    implements $ShopsMedicineConfirmsModelCopyWith<$Res> {
  factory _$$_ShopsMedicineConfirmsModelCopyWith(
          _$_ShopsMedicineConfirmsModel value,
          $Res Function(_$_ShopsMedicineConfirmsModel) then) =
      __$$_ShopsMedicineConfirmsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String permissionTypeName,
      String establisherName,
      String establisherAddress,
      String establishedRepresentative,
      String permissionNumber,
      String permissionShopName,
      String permissionShopAddress,
      String validityPeriod,
      String permissionName,
      String shopAdministratorName,
      String pharmacists,
      String sellers,
      String medicineSalesType,
      String handledMedicineTypes,
      String pharmacistComment,
      String sellerComment,
      String otherComment,
      bool isEqualsMedicineBusinessTime,
      String mondayBusinessTime,
      String tuesdayBusinessTime,
      String wednesdayBusinessTime,
      String thursdayBusinessTime,
      String fridayBusinessTime,
      String saturdayBusinessTime,
      String sundayBusinessTime,
      String businessTimeSupplement,
      String shopTelNumber,
      String nsTelNumber,
      String insuranceName,
      String insuranceTelNumber,
      bool isDrugShop,
      @StringToBooleanConverter() bool inquiryFlag,
      String weekdayEnrollmentList});
}

/// @nodoc
class __$$_ShopsMedicineConfirmsModelCopyWithImpl<$Res>
    extends _$ShopsMedicineConfirmsModelCopyWithImpl<$Res,
        _$_ShopsMedicineConfirmsModel>
    implements _$$_ShopsMedicineConfirmsModelCopyWith<$Res> {
  __$$_ShopsMedicineConfirmsModelCopyWithImpl(
      _$_ShopsMedicineConfirmsModel _value,
      $Res Function(_$_ShopsMedicineConfirmsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permissionTypeName = null,
    Object? establisherName = null,
    Object? establisherAddress = null,
    Object? establishedRepresentative = null,
    Object? permissionNumber = null,
    Object? permissionShopName = null,
    Object? permissionShopAddress = null,
    Object? validityPeriod = null,
    Object? permissionName = null,
    Object? shopAdministratorName = null,
    Object? pharmacists = null,
    Object? sellers = null,
    Object? medicineSalesType = null,
    Object? handledMedicineTypes = null,
    Object? pharmacistComment = null,
    Object? sellerComment = null,
    Object? otherComment = null,
    Object? isEqualsMedicineBusinessTime = null,
    Object? mondayBusinessTime = null,
    Object? tuesdayBusinessTime = null,
    Object? wednesdayBusinessTime = null,
    Object? thursdayBusinessTime = null,
    Object? fridayBusinessTime = null,
    Object? saturdayBusinessTime = null,
    Object? sundayBusinessTime = null,
    Object? businessTimeSupplement = null,
    Object? shopTelNumber = null,
    Object? nsTelNumber = null,
    Object? insuranceName = null,
    Object? insuranceTelNumber = null,
    Object? isDrugShop = null,
    Object? inquiryFlag = null,
    Object? weekdayEnrollmentList = null,
  }) {
    return _then(_$_ShopsMedicineConfirmsModel(
      permissionTypeName: null == permissionTypeName
          ? _value.permissionTypeName
          : permissionTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      establisherName: null == establisherName
          ? _value.establisherName
          : establisherName // ignore: cast_nullable_to_non_nullable
              as String,
      establisherAddress: null == establisherAddress
          ? _value.establisherAddress
          : establisherAddress // ignore: cast_nullable_to_non_nullable
              as String,
      establishedRepresentative: null == establishedRepresentative
          ? _value.establishedRepresentative
          : establishedRepresentative // ignore: cast_nullable_to_non_nullable
              as String,
      permissionNumber: null == permissionNumber
          ? _value.permissionNumber
          : permissionNumber // ignore: cast_nullable_to_non_nullable
              as String,
      permissionShopName: null == permissionShopName
          ? _value.permissionShopName
          : permissionShopName // ignore: cast_nullable_to_non_nullable
              as String,
      permissionShopAddress: null == permissionShopAddress
          ? _value.permissionShopAddress
          : permissionShopAddress // ignore: cast_nullable_to_non_nullable
              as String,
      validityPeriod: null == validityPeriod
          ? _value.validityPeriod
          : validityPeriod // ignore: cast_nullable_to_non_nullable
              as String,
      permissionName: null == permissionName
          ? _value.permissionName
          : permissionName // ignore: cast_nullable_to_non_nullable
              as String,
      shopAdministratorName: null == shopAdministratorName
          ? _value.shopAdministratorName
          : shopAdministratorName // ignore: cast_nullable_to_non_nullable
              as String,
      pharmacists: null == pharmacists
          ? _value.pharmacists
          : pharmacists // ignore: cast_nullable_to_non_nullable
              as String,
      sellers: null == sellers
          ? _value.sellers
          : sellers // ignore: cast_nullable_to_non_nullable
              as String,
      medicineSalesType: null == medicineSalesType
          ? _value.medicineSalesType
          : medicineSalesType // ignore: cast_nullable_to_non_nullable
              as String,
      handledMedicineTypes: null == handledMedicineTypes
          ? _value.handledMedicineTypes
          : handledMedicineTypes // ignore: cast_nullable_to_non_nullable
              as String,
      pharmacistComment: null == pharmacistComment
          ? _value.pharmacistComment
          : pharmacistComment // ignore: cast_nullable_to_non_nullable
              as String,
      sellerComment: null == sellerComment
          ? _value.sellerComment
          : sellerComment // ignore: cast_nullable_to_non_nullable
              as String,
      otherComment: null == otherComment
          ? _value.otherComment
          : otherComment // ignore: cast_nullable_to_non_nullable
              as String,
      isEqualsMedicineBusinessTime: null == isEqualsMedicineBusinessTime
          ? _value.isEqualsMedicineBusinessTime
          : isEqualsMedicineBusinessTime // ignore: cast_nullable_to_non_nullable
              as bool,
      mondayBusinessTime: null == mondayBusinessTime
          ? _value.mondayBusinessTime
          : mondayBusinessTime // ignore: cast_nullable_to_non_nullable
              as String,
      tuesdayBusinessTime: null == tuesdayBusinessTime
          ? _value.tuesdayBusinessTime
          : tuesdayBusinessTime // ignore: cast_nullable_to_non_nullable
              as String,
      wednesdayBusinessTime: null == wednesdayBusinessTime
          ? _value.wednesdayBusinessTime
          : wednesdayBusinessTime // ignore: cast_nullable_to_non_nullable
              as String,
      thursdayBusinessTime: null == thursdayBusinessTime
          ? _value.thursdayBusinessTime
          : thursdayBusinessTime // ignore: cast_nullable_to_non_nullable
              as String,
      fridayBusinessTime: null == fridayBusinessTime
          ? _value.fridayBusinessTime
          : fridayBusinessTime // ignore: cast_nullable_to_non_nullable
              as String,
      saturdayBusinessTime: null == saturdayBusinessTime
          ? _value.saturdayBusinessTime
          : saturdayBusinessTime // ignore: cast_nullable_to_non_nullable
              as String,
      sundayBusinessTime: null == sundayBusinessTime
          ? _value.sundayBusinessTime
          : sundayBusinessTime // ignore: cast_nullable_to_non_nullable
              as String,
      businessTimeSupplement: null == businessTimeSupplement
          ? _value.businessTimeSupplement
          : businessTimeSupplement // ignore: cast_nullable_to_non_nullable
              as String,
      shopTelNumber: null == shopTelNumber
          ? _value.shopTelNumber
          : shopTelNumber // ignore: cast_nullable_to_non_nullable
              as String,
      nsTelNumber: null == nsTelNumber
          ? _value.nsTelNumber
          : nsTelNumber // ignore: cast_nullable_to_non_nullable
              as String,
      insuranceName: null == insuranceName
          ? _value.insuranceName
          : insuranceName // ignore: cast_nullable_to_non_nullable
              as String,
      insuranceTelNumber: null == insuranceTelNumber
          ? _value.insuranceTelNumber
          : insuranceTelNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isDrugShop: null == isDrugShop
          ? _value.isDrugShop
          : isDrugShop // ignore: cast_nullable_to_non_nullable
              as bool,
      inquiryFlag: null == inquiryFlag
          ? _value.inquiryFlag
          : inquiryFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      weekdayEnrollmentList: null == weekdayEnrollmentList
          ? _value.weekdayEnrollmentList
          : weekdayEnrollmentList // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopsMedicineConfirmsModel implements _ShopsMedicineConfirmsModel {
  const _$_ShopsMedicineConfirmsModel(
      {this.permissionTypeName = '',
      this.establisherName = '',
      this.establisherAddress = '',
      this.establishedRepresentative = '',
      this.permissionNumber = '',
      this.permissionShopName = '',
      this.permissionShopAddress = '',
      this.validityPeriod = '',
      this.permissionName = '',
      this.shopAdministratorName = '',
      this.pharmacists = '',
      this.sellers = '',
      this.medicineSalesType = '',
      this.handledMedicineTypes = '',
      this.pharmacistComment = '',
      this.sellerComment = '',
      this.otherComment = '',
      this.isEqualsMedicineBusinessTime = false,
      this.mondayBusinessTime = '',
      this.tuesdayBusinessTime = '',
      this.wednesdayBusinessTime = '',
      this.thursdayBusinessTime = '',
      this.fridayBusinessTime = '',
      this.saturdayBusinessTime = '',
      this.sundayBusinessTime = '',
      this.businessTimeSupplement = '',
      this.shopTelNumber = '',
      this.nsTelNumber = '',
      this.insuranceName = '',
      this.insuranceTelNumber = '',
      this.isDrugShop = false,
      @StringToBooleanConverter() this.inquiryFlag = false,
      this.weekdayEnrollmentList = ''});

  factory _$_ShopsMedicineConfirmsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShopsMedicineConfirmsModelFromJson(json);

/* 許可区分名 */
  @override
  @JsonKey()
  final String permissionTypeName;
/* 開設者名 */
  @override
  @JsonKey()
  final String establisherName;
/* 開設者住所 */
  @override
  @JsonKey()
  final String establisherAddress;
/* 開設代表者 */
  @override
  @JsonKey()
  final String establishedRepresentative;
/* 医薬品許可番号 */
  @override
  @JsonKey()
  final String permissionNumber;
/* 許可店舗名 */
  @override
  @JsonKey()
  final String permissionShopName;
/* 許可店舗住所 */
  @override
  @JsonKey()
  final String permissionShopAddress;
/* 有効期間 */
  @override
  @JsonKey()
  final String validityPeriod;
/* 許可証氏名 */
  @override
  @JsonKey()
  final String permissionName;
/* 店舗管理者名 */
  @override
  @JsonKey()
  final String shopAdministratorName;
/* 薬剤師名 右記の形式で返却 - X名　薬剤師名・薬剤師名・薬剤師名・... */
  @override
  @JsonKey()
  final String pharmacists;
/* 登録販売者名 右記の形式で返却 - X名　登録販売者名・登録販売者名・登録販売者名・... */
  @override
  @JsonKey()
  final String sellers;
/* 店頭第一類医薬品扱い販売区分 - 「要指導医薬品と第一類医薬品」の販売の有無  ``` \"1\"：第一類医薬品扱い店舗 上記以外の場合は販売を行っていない ``` */
  @override
  @JsonKey()
  final String medicineSalesType;
/* 取扱医薬品種類 右記の形式で返却 - 取扱医薬品種類、取扱医薬品種類、取扱医薬品種類、... */
  @override
  @JsonKey()
  final String handledMedicineTypes;
/* 薬剤師コメント */
  @override
  @JsonKey()
  final String pharmacistComment;
/* 登録販売者コメント */
  @override
  @JsonKey()
  final String sellerComment;
/* その他の従業員コメント */
  @override
  @JsonKey()
  final String otherComment;
/* すべての曜日の医薬品営業時間が同じか判定 - true：同じ - false：異なる */
  @override
  @JsonKey()
  final bool isEqualsMedicineBusinessTime;
/* 医薬品営業時間（月曜日）　※hh時mm分　～　hh時mm分 */
  @override
  @JsonKey()
  final String mondayBusinessTime;
/* 医薬品営業時間（火曜日）　※hh時mm分　～　hh時mm分 */
  @override
  @JsonKey()
  final String tuesdayBusinessTime;
/* 医薬品営業時間（水曜日）　※hh時mm分　～　hh時mm分 */
  @override
  @JsonKey()
  final String wednesdayBusinessTime;
/* 医薬品営業時間（木曜日）　※hh時mm分　～　hh時mm分 */
  @override
  @JsonKey()
  final String thursdayBusinessTime;
/* 医薬品営業時間（金曜日）　※hh時mm分　～　hh時mm分 */
  @override
  @JsonKey()
  final String fridayBusinessTime;
/* 医薬品営業時間（土曜日）　※hh時mm分　～　hh時mm分 */
  @override
  @JsonKey()
  final String saturdayBusinessTime;
/* 医薬品営業時間（日曜日）　※hh時mm分　～　hh時mm分 */
  @override
  @JsonKey()
  final String sundayBusinessTime;
/* 営業時間補足 */
  @override
  @JsonKey()
  final String businessTimeSupplement;
/* 店舗電話番号 */
  @override
  @JsonKey()
  final String shopTelNumber;
/* ネットスーパー電話番号 */
  @override
  @JsonKey()
  final String nsTelNumber;
/* 保険機関窓口 */
  @override
  @JsonKey()
  final String insuranceName;
/* 保険機関窓口電話番号 */
  @override
  @JsonKey()
  final String insuranceTelNumber;
/* 医薬品扱い店舗判定 - true：医薬品扱い店舗である - false：医薬品扱い店舗でない */
  @override
  @JsonKey()
  final bool isDrugShop;
/* 相談窓口表示フラグ - "1":表示する  - "0":表示しない */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool inquiryFlag;
/* 曜日別在籍一覧 */
  @override
  @JsonKey()
  final String weekdayEnrollmentList;

  @override
  String toString() {
    return 'ShopsMedicineConfirmsModel(permissionTypeName: $permissionTypeName, establisherName: $establisherName, establisherAddress: $establisherAddress, establishedRepresentative: $establishedRepresentative, permissionNumber: $permissionNumber, permissionShopName: $permissionShopName, permissionShopAddress: $permissionShopAddress, validityPeriod: $validityPeriod, permissionName: $permissionName, shopAdministratorName: $shopAdministratorName, pharmacists: $pharmacists, sellers: $sellers, medicineSalesType: $medicineSalesType, handledMedicineTypes: $handledMedicineTypes, pharmacistComment: $pharmacistComment, sellerComment: $sellerComment, otherComment: $otherComment, isEqualsMedicineBusinessTime: $isEqualsMedicineBusinessTime, mondayBusinessTime: $mondayBusinessTime, tuesdayBusinessTime: $tuesdayBusinessTime, wednesdayBusinessTime: $wednesdayBusinessTime, thursdayBusinessTime: $thursdayBusinessTime, fridayBusinessTime: $fridayBusinessTime, saturdayBusinessTime: $saturdayBusinessTime, sundayBusinessTime: $sundayBusinessTime, businessTimeSupplement: $businessTimeSupplement, shopTelNumber: $shopTelNumber, nsTelNumber: $nsTelNumber, insuranceName: $insuranceName, insuranceTelNumber: $insuranceTelNumber, isDrugShop: $isDrugShop, inquiryFlag: $inquiryFlag, weekdayEnrollmentList: $weekdayEnrollmentList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopsMedicineConfirmsModel &&
            (identical(other.permissionTypeName, permissionTypeName) ||
                other.permissionTypeName == permissionTypeName) &&
            (identical(other.establisherName, establisherName) ||
                other.establisherName == establisherName) &&
            (identical(other.establisherAddress, establisherAddress) ||
                other.establisherAddress == establisherAddress) &&
            (identical(other.establishedRepresentative, establishedRepresentative) ||
                other.establishedRepresentative == establishedRepresentative) &&
            (identical(other.permissionNumber, permissionNumber) ||
                other.permissionNumber == permissionNumber) &&
            (identical(other.permissionShopName, permissionShopName) ||
                other.permissionShopName == permissionShopName) &&
            (identical(other.permissionShopAddress, permissionShopAddress) ||
                other.permissionShopAddress == permissionShopAddress) &&
            (identical(other.validityPeriod, validityPeriod) ||
                other.validityPeriod == validityPeriod) &&
            (identical(other.permissionName, permissionName) ||
                other.permissionName == permissionName) &&
            (identical(other.shopAdministratorName, shopAdministratorName) ||
                other.shopAdministratorName == shopAdministratorName) &&
            (identical(other.pharmacists, pharmacists) ||
                other.pharmacists == pharmacists) &&
            (identical(other.sellers, sellers) || other.sellers == sellers) &&
            (identical(other.medicineSalesType, medicineSalesType) ||
                other.medicineSalesType == medicineSalesType) &&
            (identical(other.handledMedicineTypes, handledMedicineTypes) ||
                other.handledMedicineTypes == handledMedicineTypes) &&
            (identical(other.pharmacistComment, pharmacistComment) ||
                other.pharmacistComment == pharmacistComment) &&
            (identical(other.sellerComment, sellerComment) ||
                other.sellerComment == sellerComment) &&
            (identical(other.otherComment, otherComment) ||
                other.otherComment == otherComment) &&
            (identical(other.isEqualsMedicineBusinessTime, isEqualsMedicineBusinessTime) ||
                other.isEqualsMedicineBusinessTime ==
                    isEqualsMedicineBusinessTime) &&
            (identical(other.mondayBusinessTime, mondayBusinessTime) ||
                other.mondayBusinessTime == mondayBusinessTime) &&
            (identical(other.tuesdayBusinessTime, tuesdayBusinessTime) ||
                other.tuesdayBusinessTime == tuesdayBusinessTime) &&
            (identical(other.wednesdayBusinessTime, wednesdayBusinessTime) ||
                other.wednesdayBusinessTime == wednesdayBusinessTime) &&
            (identical(other.thursdayBusinessTime, thursdayBusinessTime) ||
                other.thursdayBusinessTime == thursdayBusinessTime) &&
            (identical(other.fridayBusinessTime, fridayBusinessTime) ||
                other.fridayBusinessTime == fridayBusinessTime) &&
            (identical(other.saturdayBusinessTime, saturdayBusinessTime) ||
                other.saturdayBusinessTime == saturdayBusinessTime) &&
            (identical(other.sundayBusinessTime, sundayBusinessTime) ||
                other.sundayBusinessTime == sundayBusinessTime) &&
            (identical(other.businessTimeSupplement, businessTimeSupplement) ||
                other.businessTimeSupplement == businessTimeSupplement) &&
            (identical(other.shopTelNumber, shopTelNumber) ||
                other.shopTelNumber == shopTelNumber) &&
            (identical(other.nsTelNumber, nsTelNumber) ||
                other.nsTelNumber == nsTelNumber) &&
            (identical(other.insuranceName, insuranceName) ||
                other.insuranceName == insuranceName) &&
            (identical(other.insuranceTelNumber, insuranceTelNumber) ||
                other.insuranceTelNumber == insuranceTelNumber) &&
            (identical(other.isDrugShop, isDrugShop) ||
                other.isDrugShop == isDrugShop) &&
            (identical(other.inquiryFlag, inquiryFlag) ||
                other.inquiryFlag == inquiryFlag) &&
            (identical(other.weekdayEnrollmentList, weekdayEnrollmentList) || other.weekdayEnrollmentList == weekdayEnrollmentList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        permissionTypeName,
        establisherName,
        establisherAddress,
        establishedRepresentative,
        permissionNumber,
        permissionShopName,
        permissionShopAddress,
        validityPeriod,
        permissionName,
        shopAdministratorName,
        pharmacists,
        sellers,
        medicineSalesType,
        handledMedicineTypes,
        pharmacistComment,
        sellerComment,
        otherComment,
        isEqualsMedicineBusinessTime,
        mondayBusinessTime,
        tuesdayBusinessTime,
        wednesdayBusinessTime,
        thursdayBusinessTime,
        fridayBusinessTime,
        saturdayBusinessTime,
        sundayBusinessTime,
        businessTimeSupplement,
        shopTelNumber,
        nsTelNumber,
        insuranceName,
        insuranceTelNumber,
        isDrugShop,
        inquiryFlag,
        weekdayEnrollmentList
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopsMedicineConfirmsModelCopyWith<_$_ShopsMedicineConfirmsModel>
      get copyWith => __$$_ShopsMedicineConfirmsModelCopyWithImpl<
          _$_ShopsMedicineConfirmsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopsMedicineConfirmsModelToJson(
      this,
    );
  }
}

abstract class _ShopsMedicineConfirmsModel
    implements ShopsMedicineConfirmsModel {
  const factory _ShopsMedicineConfirmsModel(
      {final String permissionTypeName,
      final String establisherName,
      final String establisherAddress,
      final String establishedRepresentative,
      final String permissionNumber,
      final String permissionShopName,
      final String permissionShopAddress,
      final String validityPeriod,
      final String permissionName,
      final String shopAdministratorName,
      final String pharmacists,
      final String sellers,
      final String medicineSalesType,
      final String handledMedicineTypes,
      final String pharmacistComment,
      final String sellerComment,
      final String otherComment,
      final bool isEqualsMedicineBusinessTime,
      final String mondayBusinessTime,
      final String tuesdayBusinessTime,
      final String wednesdayBusinessTime,
      final String thursdayBusinessTime,
      final String fridayBusinessTime,
      final String saturdayBusinessTime,
      final String sundayBusinessTime,
      final String businessTimeSupplement,
      final String shopTelNumber,
      final String nsTelNumber,
      final String insuranceName,
      final String insuranceTelNumber,
      final bool isDrugShop,
      @StringToBooleanConverter() final bool inquiryFlag,
      final String weekdayEnrollmentList}) = _$_ShopsMedicineConfirmsModel;

  factory _ShopsMedicineConfirmsModel.fromJson(Map<String, dynamic> json) =
      _$_ShopsMedicineConfirmsModel.fromJson;

  @override /* 許可区分名 */
  String get permissionTypeName;
  @override /* 開設者名 */
  String get establisherName;
  @override /* 開設者住所 */
  String get establisherAddress;
  @override /* 開設代表者 */
  String get establishedRepresentative;
  @override /* 医薬品許可番号 */
  String get permissionNumber;
  @override /* 許可店舗名 */
  String get permissionShopName;
  @override /* 許可店舗住所 */
  String get permissionShopAddress;
  @override /* 有効期間 */
  String get validityPeriod;
  @override /* 許可証氏名 */
  String get permissionName;
  @override /* 店舗管理者名 */
  String get shopAdministratorName;
  @override /* 薬剤師名 右記の形式で返却 - X名　薬剤師名・薬剤師名・薬剤師名・... */
  String get pharmacists;
  @override /* 登録販売者名 右記の形式で返却 - X名　登録販売者名・登録販売者名・登録販売者名・... */
  String get sellers;
  @override /* 店頭第一類医薬品扱い販売区分 - 「要指導医薬品と第一類医薬品」の販売の有無  ``` \"1\"：第一類医薬品扱い店舗 上記以外の場合は販売を行っていない ``` */
  String get medicineSalesType;
  @override /* 取扱医薬品種類 右記の形式で返却 - 取扱医薬品種類、取扱医薬品種類、取扱医薬品種類、... */
  String get handledMedicineTypes;
  @override /* 薬剤師コメント */
  String get pharmacistComment;
  @override /* 登録販売者コメント */
  String get sellerComment;
  @override /* その他の従業員コメント */
  String get otherComment;
  @override /* すべての曜日の医薬品営業時間が同じか判定 - true：同じ - false：異なる */
  bool get isEqualsMedicineBusinessTime;
  @override /* 医薬品営業時間（月曜日）　※hh時mm分　～　hh時mm分 */
  String get mondayBusinessTime;
  @override /* 医薬品営業時間（火曜日）　※hh時mm分　～　hh時mm分 */
  String get tuesdayBusinessTime;
  @override /* 医薬品営業時間（水曜日）　※hh時mm分　～　hh時mm分 */
  String get wednesdayBusinessTime;
  @override /* 医薬品営業時間（木曜日）　※hh時mm分　～　hh時mm分 */
  String get thursdayBusinessTime;
  @override /* 医薬品営業時間（金曜日）　※hh時mm分　～　hh時mm分 */
  String get fridayBusinessTime;
  @override /* 医薬品営業時間（土曜日）　※hh時mm分　～　hh時mm分 */
  String get saturdayBusinessTime;
  @override /* 医薬品営業時間（日曜日）　※hh時mm分　～　hh時mm分 */
  String get sundayBusinessTime;
  @override /* 営業時間補足 */
  String get businessTimeSupplement;
  @override /* 店舗電話番号 */
  String get shopTelNumber;
  @override /* ネットスーパー電話番号 */
  String get nsTelNumber;
  @override /* 保険機関窓口 */
  String get insuranceName;
  @override /* 保険機関窓口電話番号 */
  String get insuranceTelNumber;
  @override /* 医薬品扱い店舗判定 - true：医薬品扱い店舗である - false：医薬品扱い店舗でない */
  bool get isDrugShop;
  @override /* 相談窓口表示フラグ - "1":表示する  - "0":表示しない */
  @StringToBooleanConverter()
  bool get inquiryFlag;
  @override /* 曜日別在籍一覧 */
  String get weekdayEnrollmentList;
  @override
  @JsonKey(ignore: true)
  _$$_ShopsMedicineConfirmsModelCopyWith<_$_ShopsMedicineConfirmsModel>
      get copyWith => throw _privateConstructorUsedError;
}
