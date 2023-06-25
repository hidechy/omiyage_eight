// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopInfoModel _$ShopInfoModelFromJson(Map<String, dynamic> json) {
  return _ShopInfoModel.fromJson(json);
}

/// @nodoc
mixin _$ShopInfoModel {
/* 店舗コード */
  String get shopCode => throw _privateConstructorUsedError; /* 店舗名 */
  String get shopName => throw _privateConstructorUsedError; /* お問合せ担当者1 */
  String get shopManagerName1 =>
      throw _privateConstructorUsedError; /* お問合せ担当者2 - お問合せ担当者2が設定されていない場合、nullを返却 */
  String get shopManagerName2 =>
      throw _privateConstructorUsedError; /* 店舗電話番号 */
  String get shopTelNumber => throw _privateConstructorUsedError; /* 店舗住所1 */
  String get shopAddress1 => throw _privateConstructorUsedError; /* 店舗住所2 */
  String get shopAddress2 => throw _privateConstructorUsedError; /* 郵便番号 */
  String get shopPostNo => throw _privateConstructorUsedError; /* ネットスーパー担当者1 */
  String get nsManagerName1 =>
      throw _privateConstructorUsedError; /* ネットスーパー担当者2 - ネットスーパー担当者2が設定されていない場合、nullを返却 */
  String get nsManagerName2 =>
      throw _privateConstructorUsedError; /* 店舗別NS電話番号 - ネットスーパー電話番号が設定されていない場合、nullを返却 */
  String get nsTelNumber =>
      throw _privateConstructorUsedError; /* 酒扱い店舗判定  ``` true：酒扱い店舗である false：酒扱い店舗でない ``` */
  bool get isLiquorShop =>
      throw _privateConstructorUsedError; /* 酒類販売管理者 - is_liquor_shopがfalseの場合、nullを返却 */
  String get liquorManagerName =>
      throw _privateConstructorUsedError; /* 酒類販売管理研修受講年月日　※フリーフォーマット - - is_liquor_shopがfalseの場合、nullを返却 */
  String get liquorManagerTrainingDate =>
      throw _privateConstructorUsedError; /* 次回研修の受講期限　※フリーフォーマット - - is_liquor_shopがfalseの場合、nullを返却 */
  String get liquorManagerNextTrainingLimitDate =>
      throw _privateConstructorUsedError; /* 研修実施団体名 - - is_liquor_shopがfalseの場合、nullを返却 */
  String get liquorOrganizationName =>
      throw _privateConstructorUsedError; /* 赤ちゃん本舗現在取扱い店舗判定  ``` true：赤ちゃん本舗現在取扱い店舗である false：赤ちゃん本舗現在取扱い店舗でない ``` */
  bool get isAkachanhonpoShop =>
      throw _privateConstructorUsedError; /* 赤ちゃん本舗対応店舗(リーステナント)代行実施中判定 ``` true：アカチャンホンポ対応店舗(リーステナント)代行実施中 false：アカチャンホンポ対応店舗(リーステナント)代行未実施 ``` */
  bool get isAkahonAgentShop =>
      throw _privateConstructorUsedError; /* 赤ちゃん本舗郵便番号 - is_akachanhonpo_shopがfalse、かつis_akahon_agent_shopがfalseの場合、nullを返却 */
  String get akachanhonpoPostNo =>
      throw _privateConstructorUsedError; /* 赤ちゃん本舗住所 - is_akachanhonpo_shopがfalse、かつis_akahon_agent_shopがfalseの場合、nullを返却 */
  String get akachanhonpoAddress =>
      throw _privateConstructorUsedError; /* 赤ちゃん本舗電話番号 - is_akachanhonpo_shopがfalse、かつis_akahon_agent_shopがfalseの場合、nullを返却 */
  String get akachanhonpoTel =>
      throw _privateConstructorUsedError; /* 赤ちゃん本舗担当者 - is_akachanhonpo_shopがfalse、かつis_akahon_agent_shopがfalseの場合、nullを返却 */
  String get akachanhonpoContactPerson =>
      throw _privateConstructorUsedError; /* 店別売価連動 ``` true：店別売価連動を行う false：店別売価連動を行わない ``` */
  bool get isSellingPriceCoopShop =>
      throw _privateConstructorUsedError; /* 店別販促連動  ``` true：店別販促連動を行う false：店別販促連動を行わない ``` */
  bool get isSalesPromotionCoopShop =>
      throw _privateConstructorUsedError; /* 丸大店舗 ``` true：丸大店舗 false：丸大店舗以外 ``` */
  bool get isMarudaiShop =>
      throw _privateConstructorUsedError; /* 定期便扱い判定 ``` true：定期便扱い可能 false：定期便扱い不可 ``` */
  bool get isEnableRegularShipment =>
      throw _privateConstructorUsedError; /* 営業日　※YYYY-MM-DDThh:mm:ss+09:00' */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'open_date')
  int get epochOpenDate =>
      throw _privateConstructorUsedError; /* センター店フラグ ``````` true：センター店 false：センター店でない ``````` */
  bool get isCenterShop =>
      throw _privateConstructorUsedError; /* 医薬品扱い店舗判定  ``` true：医薬品扱い店舗である false：医薬品扱い店舗でない ``` */
  bool get isDrugShop =>
      throw _privateConstructorUsedError; /* 構造改革店舗フラグ  ``` true：構造改革店舗(7日先までお届け可能) false：非構造改革店舗(当日翌日のみお届け可能) ``` */
  bool get isDayAfterNextDelivery =>
      throw _privateConstructorUsedError; /* ネット専用店フラグ  ``` true：ネット専用店である false：ネット専用店でない ``` */
  bool get isNetOnlyShop =>
      throw _privateConstructorUsedError; /* 店舗毎代引き可否フラグ */
  bool get isCashOnDelivery =>
      throw _privateConstructorUsedError; /* 都道府県またぎ店舗フラグ 店舗情報取得API以外はnullを返却 ``` true：都道府県またぎ店舗である false：都道府県またぎ店舗でない ``` */
  bool get isStraddlingPrefecturesShop => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopInfoModelCopyWith<ShopInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopInfoModelCopyWith<$Res> {
  factory $ShopInfoModelCopyWith(
          ShopInfoModel value, $Res Function(ShopInfoModel) then) =
      _$ShopInfoModelCopyWithImpl<$Res, ShopInfoModel>;
  @useResult
  $Res call(
      {String shopCode,
      String shopName,
      String shopManagerName1,
      String shopManagerName2,
      String shopTelNumber,
      String shopAddress1,
      String shopAddress2,
      String shopPostNo,
      String nsManagerName1,
      String nsManagerName2,
      String nsTelNumber,
      bool isLiquorShop,
      String liquorManagerName,
      String liquorManagerTrainingDate,
      String liquorManagerNextTrainingLimitDate,
      String liquorOrganizationName,
      bool isAkachanhonpoShop,
      bool isAkahonAgentShop,
      String akachanhonpoPostNo,
      String akachanhonpoAddress,
      String akachanhonpoTel,
      String akachanhonpoContactPerson,
      bool isSellingPriceCoopShop,
      bool isSalesPromotionCoopShop,
      bool isMarudaiShop,
      bool isEnableRegularShipment,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'open_date')
          int epochOpenDate,
      bool isCenterShop,
      bool isDrugShop,
      bool isDayAfterNextDelivery,
      bool isNetOnlyShop,
      bool isCashOnDelivery,
      bool isStraddlingPrefecturesShop});
}

/// @nodoc
class _$ShopInfoModelCopyWithImpl<$Res, $Val extends ShopInfoModel>
    implements $ShopInfoModelCopyWith<$Res> {
  _$ShopInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopCode = null,
    Object? shopName = null,
    Object? shopManagerName1 = null,
    Object? shopManagerName2 = null,
    Object? shopTelNumber = null,
    Object? shopAddress1 = null,
    Object? shopAddress2 = null,
    Object? shopPostNo = null,
    Object? nsManagerName1 = null,
    Object? nsManagerName2 = null,
    Object? nsTelNumber = null,
    Object? isLiquorShop = null,
    Object? liquorManagerName = null,
    Object? liquorManagerTrainingDate = null,
    Object? liquorManagerNextTrainingLimitDate = null,
    Object? liquorOrganizationName = null,
    Object? isAkachanhonpoShop = null,
    Object? isAkahonAgentShop = null,
    Object? akachanhonpoPostNo = null,
    Object? akachanhonpoAddress = null,
    Object? akachanhonpoTel = null,
    Object? akachanhonpoContactPerson = null,
    Object? isSellingPriceCoopShop = null,
    Object? isSalesPromotionCoopShop = null,
    Object? isMarudaiShop = null,
    Object? isEnableRegularShipment = null,
    Object? epochOpenDate = null,
    Object? isCenterShop = null,
    Object? isDrugShop = null,
    Object? isDayAfterNextDelivery = null,
    Object? isNetOnlyShop = null,
    Object? isCashOnDelivery = null,
    Object? isStraddlingPrefecturesShop = null,
  }) {
    return _then(_value.copyWith(
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      shopManagerName1: null == shopManagerName1
          ? _value.shopManagerName1
          : shopManagerName1 // ignore: cast_nullable_to_non_nullable
              as String,
      shopManagerName2: null == shopManagerName2
          ? _value.shopManagerName2
          : shopManagerName2 // ignore: cast_nullable_to_non_nullable
              as String,
      shopTelNumber: null == shopTelNumber
          ? _value.shopTelNumber
          : shopTelNumber // ignore: cast_nullable_to_non_nullable
              as String,
      shopAddress1: null == shopAddress1
          ? _value.shopAddress1
          : shopAddress1 // ignore: cast_nullable_to_non_nullable
              as String,
      shopAddress2: null == shopAddress2
          ? _value.shopAddress2
          : shopAddress2 // ignore: cast_nullable_to_non_nullable
              as String,
      shopPostNo: null == shopPostNo
          ? _value.shopPostNo
          : shopPostNo // ignore: cast_nullable_to_non_nullable
              as String,
      nsManagerName1: null == nsManagerName1
          ? _value.nsManagerName1
          : nsManagerName1 // ignore: cast_nullable_to_non_nullable
              as String,
      nsManagerName2: null == nsManagerName2
          ? _value.nsManagerName2
          : nsManagerName2 // ignore: cast_nullable_to_non_nullable
              as String,
      nsTelNumber: null == nsTelNumber
          ? _value.nsTelNumber
          : nsTelNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isLiquorShop: null == isLiquorShop
          ? _value.isLiquorShop
          : isLiquorShop // ignore: cast_nullable_to_non_nullable
              as bool,
      liquorManagerName: null == liquorManagerName
          ? _value.liquorManagerName
          : liquorManagerName // ignore: cast_nullable_to_non_nullable
              as String,
      liquorManagerTrainingDate: null == liquorManagerTrainingDate
          ? _value.liquorManagerTrainingDate
          : liquorManagerTrainingDate // ignore: cast_nullable_to_non_nullable
              as String,
      liquorManagerNextTrainingLimitDate: null ==
              liquorManagerNextTrainingLimitDate
          ? _value.liquorManagerNextTrainingLimitDate
          : liquorManagerNextTrainingLimitDate // ignore: cast_nullable_to_non_nullable
              as String,
      liquorOrganizationName: null == liquorOrganizationName
          ? _value.liquorOrganizationName
          : liquorOrganizationName // ignore: cast_nullable_to_non_nullable
              as String,
      isAkachanhonpoShop: null == isAkachanhonpoShop
          ? _value.isAkachanhonpoShop
          : isAkachanhonpoShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isAkahonAgentShop: null == isAkahonAgentShop
          ? _value.isAkahonAgentShop
          : isAkahonAgentShop // ignore: cast_nullable_to_non_nullable
              as bool,
      akachanhonpoPostNo: null == akachanhonpoPostNo
          ? _value.akachanhonpoPostNo
          : akachanhonpoPostNo // ignore: cast_nullable_to_non_nullable
              as String,
      akachanhonpoAddress: null == akachanhonpoAddress
          ? _value.akachanhonpoAddress
          : akachanhonpoAddress // ignore: cast_nullable_to_non_nullable
              as String,
      akachanhonpoTel: null == akachanhonpoTel
          ? _value.akachanhonpoTel
          : akachanhonpoTel // ignore: cast_nullable_to_non_nullable
              as String,
      akachanhonpoContactPerson: null == akachanhonpoContactPerson
          ? _value.akachanhonpoContactPerson
          : akachanhonpoContactPerson // ignore: cast_nullable_to_non_nullable
              as String,
      isSellingPriceCoopShop: null == isSellingPriceCoopShop
          ? _value.isSellingPriceCoopShop
          : isSellingPriceCoopShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isSalesPromotionCoopShop: null == isSalesPromotionCoopShop
          ? _value.isSalesPromotionCoopShop
          : isSalesPromotionCoopShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isMarudaiShop: null == isMarudaiShop
          ? _value.isMarudaiShop
          : isMarudaiShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableRegularShipment: null == isEnableRegularShipment
          ? _value.isEnableRegularShipment
          : isEnableRegularShipment // ignore: cast_nullable_to_non_nullable
              as bool,
      epochOpenDate: null == epochOpenDate
          ? _value.epochOpenDate
          : epochOpenDate // ignore: cast_nullable_to_non_nullable
              as int,
      isCenterShop: null == isCenterShop
          ? _value.isCenterShop
          : isCenterShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isDrugShop: null == isDrugShop
          ? _value.isDrugShop
          : isDrugShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isDayAfterNextDelivery: null == isDayAfterNextDelivery
          ? _value.isDayAfterNextDelivery
          : isDayAfterNextDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      isNetOnlyShop: null == isNetOnlyShop
          ? _value.isNetOnlyShop
          : isNetOnlyShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isCashOnDelivery: null == isCashOnDelivery
          ? _value.isCashOnDelivery
          : isCashOnDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      isStraddlingPrefecturesShop: null == isStraddlingPrefecturesShop
          ? _value.isStraddlingPrefecturesShop
          : isStraddlingPrefecturesShop // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShopInfoModelCopyWith<$Res>
    implements $ShopInfoModelCopyWith<$Res> {
  factory _$$_ShopInfoModelCopyWith(
          _$_ShopInfoModel value, $Res Function(_$_ShopInfoModel) then) =
      __$$_ShopInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String shopCode,
      String shopName,
      String shopManagerName1,
      String shopManagerName2,
      String shopTelNumber,
      String shopAddress1,
      String shopAddress2,
      String shopPostNo,
      String nsManagerName1,
      String nsManagerName2,
      String nsTelNumber,
      bool isLiquorShop,
      String liquorManagerName,
      String liquorManagerTrainingDate,
      String liquorManagerNextTrainingLimitDate,
      String liquorOrganizationName,
      bool isAkachanhonpoShop,
      bool isAkahonAgentShop,
      String akachanhonpoPostNo,
      String akachanhonpoAddress,
      String akachanhonpoTel,
      String akachanhonpoContactPerson,
      bool isSellingPriceCoopShop,
      bool isSalesPromotionCoopShop,
      bool isMarudaiShop,
      bool isEnableRegularShipment,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'open_date')
          int epochOpenDate,
      bool isCenterShop,
      bool isDrugShop,
      bool isDayAfterNextDelivery,
      bool isNetOnlyShop,
      bool isCashOnDelivery,
      bool isStraddlingPrefecturesShop});
}

/// @nodoc
class __$$_ShopInfoModelCopyWithImpl<$Res>
    extends _$ShopInfoModelCopyWithImpl<$Res, _$_ShopInfoModel>
    implements _$$_ShopInfoModelCopyWith<$Res> {
  __$$_ShopInfoModelCopyWithImpl(
      _$_ShopInfoModel _value, $Res Function(_$_ShopInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopCode = null,
    Object? shopName = null,
    Object? shopManagerName1 = null,
    Object? shopManagerName2 = null,
    Object? shopTelNumber = null,
    Object? shopAddress1 = null,
    Object? shopAddress2 = null,
    Object? shopPostNo = null,
    Object? nsManagerName1 = null,
    Object? nsManagerName2 = null,
    Object? nsTelNumber = null,
    Object? isLiquorShop = null,
    Object? liquorManagerName = null,
    Object? liquorManagerTrainingDate = null,
    Object? liquorManagerNextTrainingLimitDate = null,
    Object? liquorOrganizationName = null,
    Object? isAkachanhonpoShop = null,
    Object? isAkahonAgentShop = null,
    Object? akachanhonpoPostNo = null,
    Object? akachanhonpoAddress = null,
    Object? akachanhonpoTel = null,
    Object? akachanhonpoContactPerson = null,
    Object? isSellingPriceCoopShop = null,
    Object? isSalesPromotionCoopShop = null,
    Object? isMarudaiShop = null,
    Object? isEnableRegularShipment = null,
    Object? epochOpenDate = null,
    Object? isCenterShop = null,
    Object? isDrugShop = null,
    Object? isDayAfterNextDelivery = null,
    Object? isNetOnlyShop = null,
    Object? isCashOnDelivery = null,
    Object? isStraddlingPrefecturesShop = null,
  }) {
    return _then(_$_ShopInfoModel(
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      shopManagerName1: null == shopManagerName1
          ? _value.shopManagerName1
          : shopManagerName1 // ignore: cast_nullable_to_non_nullable
              as String,
      shopManagerName2: null == shopManagerName2
          ? _value.shopManagerName2
          : shopManagerName2 // ignore: cast_nullable_to_non_nullable
              as String,
      shopTelNumber: null == shopTelNumber
          ? _value.shopTelNumber
          : shopTelNumber // ignore: cast_nullable_to_non_nullable
              as String,
      shopAddress1: null == shopAddress1
          ? _value.shopAddress1
          : shopAddress1 // ignore: cast_nullable_to_non_nullable
              as String,
      shopAddress2: null == shopAddress2
          ? _value.shopAddress2
          : shopAddress2 // ignore: cast_nullable_to_non_nullable
              as String,
      shopPostNo: null == shopPostNo
          ? _value.shopPostNo
          : shopPostNo // ignore: cast_nullable_to_non_nullable
              as String,
      nsManagerName1: null == nsManagerName1
          ? _value.nsManagerName1
          : nsManagerName1 // ignore: cast_nullable_to_non_nullable
              as String,
      nsManagerName2: null == nsManagerName2
          ? _value.nsManagerName2
          : nsManagerName2 // ignore: cast_nullable_to_non_nullable
              as String,
      nsTelNumber: null == nsTelNumber
          ? _value.nsTelNumber
          : nsTelNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isLiquorShop: null == isLiquorShop
          ? _value.isLiquorShop
          : isLiquorShop // ignore: cast_nullable_to_non_nullable
              as bool,
      liquorManagerName: null == liquorManagerName
          ? _value.liquorManagerName
          : liquorManagerName // ignore: cast_nullable_to_non_nullable
              as String,
      liquorManagerTrainingDate: null == liquorManagerTrainingDate
          ? _value.liquorManagerTrainingDate
          : liquorManagerTrainingDate // ignore: cast_nullable_to_non_nullable
              as String,
      liquorManagerNextTrainingLimitDate: null ==
              liquorManagerNextTrainingLimitDate
          ? _value.liquorManagerNextTrainingLimitDate
          : liquorManagerNextTrainingLimitDate // ignore: cast_nullable_to_non_nullable
              as String,
      liquorOrganizationName: null == liquorOrganizationName
          ? _value.liquorOrganizationName
          : liquorOrganizationName // ignore: cast_nullable_to_non_nullable
              as String,
      isAkachanhonpoShop: null == isAkachanhonpoShop
          ? _value.isAkachanhonpoShop
          : isAkachanhonpoShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isAkahonAgentShop: null == isAkahonAgentShop
          ? _value.isAkahonAgentShop
          : isAkahonAgentShop // ignore: cast_nullable_to_non_nullable
              as bool,
      akachanhonpoPostNo: null == akachanhonpoPostNo
          ? _value.akachanhonpoPostNo
          : akachanhonpoPostNo // ignore: cast_nullable_to_non_nullable
              as String,
      akachanhonpoAddress: null == akachanhonpoAddress
          ? _value.akachanhonpoAddress
          : akachanhonpoAddress // ignore: cast_nullable_to_non_nullable
              as String,
      akachanhonpoTel: null == akachanhonpoTel
          ? _value.akachanhonpoTel
          : akachanhonpoTel // ignore: cast_nullable_to_non_nullable
              as String,
      akachanhonpoContactPerson: null == akachanhonpoContactPerson
          ? _value.akachanhonpoContactPerson
          : akachanhonpoContactPerson // ignore: cast_nullable_to_non_nullable
              as String,
      isSellingPriceCoopShop: null == isSellingPriceCoopShop
          ? _value.isSellingPriceCoopShop
          : isSellingPriceCoopShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isSalesPromotionCoopShop: null == isSalesPromotionCoopShop
          ? _value.isSalesPromotionCoopShop
          : isSalesPromotionCoopShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isMarudaiShop: null == isMarudaiShop
          ? _value.isMarudaiShop
          : isMarudaiShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isEnableRegularShipment: null == isEnableRegularShipment
          ? _value.isEnableRegularShipment
          : isEnableRegularShipment // ignore: cast_nullable_to_non_nullable
              as bool,
      epochOpenDate: null == epochOpenDate
          ? _value.epochOpenDate
          : epochOpenDate // ignore: cast_nullable_to_non_nullable
              as int,
      isCenterShop: null == isCenterShop
          ? _value.isCenterShop
          : isCenterShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isDrugShop: null == isDrugShop
          ? _value.isDrugShop
          : isDrugShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isDayAfterNextDelivery: null == isDayAfterNextDelivery
          ? _value.isDayAfterNextDelivery
          : isDayAfterNextDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      isNetOnlyShop: null == isNetOnlyShop
          ? _value.isNetOnlyShop
          : isNetOnlyShop // ignore: cast_nullable_to_non_nullable
              as bool,
      isCashOnDelivery: null == isCashOnDelivery
          ? _value.isCashOnDelivery
          : isCashOnDelivery // ignore: cast_nullable_to_non_nullable
              as bool,
      isStraddlingPrefecturesShop: null == isStraddlingPrefecturesShop
          ? _value.isStraddlingPrefecturesShop
          : isStraddlingPrefecturesShop // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopInfoModel extends _ShopInfoModel {
  const _$_ShopInfoModel(
      {this.shopCode = '',
      this.shopName = '',
      this.shopManagerName1 = '',
      this.shopManagerName2 = '',
      this.shopTelNumber = '',
      this.shopAddress1 = '',
      this.shopAddress2 = '',
      this.shopPostNo = '',
      this.nsManagerName1 = '',
      this.nsManagerName2 = '',
      this.nsTelNumber = '',
      this.isLiquorShop = false,
      this.liquorManagerName = '',
      this.liquorManagerTrainingDate = '',
      this.liquorManagerNextTrainingLimitDate = '',
      this.liquorOrganizationName = '',
      this.isAkachanhonpoShop = false,
      this.isAkahonAgentShop = false,
      this.akachanhonpoPostNo = '',
      this.akachanhonpoAddress = '',
      this.akachanhonpoTel = '',
      this.akachanhonpoContactPerson = '',
      this.isSellingPriceCoopShop = false,
      this.isSalesPromotionCoopShop = false,
      this.isMarudaiShop = false,
      this.isEnableRegularShipment = false,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'open_date')
          this.epochOpenDate = 0,
      this.isCenterShop = false,
      this.isDrugShop = false,
      this.isDayAfterNextDelivery = false,
      this.isNetOnlyShop = false,
      this.isCashOnDelivery = false,
      this.isStraddlingPrefecturesShop = false})
      : super._();

  factory _$_ShopInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShopInfoModelFromJson(json);

/* 店舗コード */
  @override
  @JsonKey()
  final String shopCode;
/* 店舗名 */
  @override
  @JsonKey()
  final String shopName;
/* お問合せ担当者1 */
  @override
  @JsonKey()
  final String shopManagerName1;
/* お問合せ担当者2 - お問合せ担当者2が設定されていない場合、nullを返却 */
  @override
  @JsonKey()
  final String shopManagerName2;
/* 店舗電話番号 */
  @override
  @JsonKey()
  final String shopTelNumber;
/* 店舗住所1 */
  @override
  @JsonKey()
  final String shopAddress1;
/* 店舗住所2 */
  @override
  @JsonKey()
  final String shopAddress2;
/* 郵便番号 */
  @override
  @JsonKey()
  final String shopPostNo;
/* ネットスーパー担当者1 */
  @override
  @JsonKey()
  final String nsManagerName1;
/* ネットスーパー担当者2 - ネットスーパー担当者2が設定されていない場合、nullを返却 */
  @override
  @JsonKey()
  final String nsManagerName2;
/* 店舗別NS電話番号 - ネットスーパー電話番号が設定されていない場合、nullを返却 */
  @override
  @JsonKey()
  final String nsTelNumber;
/* 酒扱い店舗判定  ``` true：酒扱い店舗である false：酒扱い店舗でない ``` */
  @override
  @JsonKey()
  final bool isLiquorShop;
/* 酒類販売管理者 - is_liquor_shopがfalseの場合、nullを返却 */
  @override
  @JsonKey()
  final String liquorManagerName;
/* 酒類販売管理研修受講年月日　※フリーフォーマット - - is_liquor_shopがfalseの場合、nullを返却 */
  @override
  @JsonKey()
  final String liquorManagerTrainingDate;
/* 次回研修の受講期限　※フリーフォーマット - - is_liquor_shopがfalseの場合、nullを返却 */
  @override
  @JsonKey()
  final String liquorManagerNextTrainingLimitDate;
/* 研修実施団体名 - - is_liquor_shopがfalseの場合、nullを返却 */
  @override
  @JsonKey()
  final String liquorOrganizationName;
/* 赤ちゃん本舗現在取扱い店舗判定  ``` true：赤ちゃん本舗現在取扱い店舗である false：赤ちゃん本舗現在取扱い店舗でない ``` */
  @override
  @JsonKey()
  final bool isAkachanhonpoShop;
/* 赤ちゃん本舗対応店舗(リーステナント)代行実施中判定 ``` true：アカチャンホンポ対応店舗(リーステナント)代行実施中 false：アカチャンホンポ対応店舗(リーステナント)代行未実施 ``` */
  @override
  @JsonKey()
  final bool isAkahonAgentShop;
/* 赤ちゃん本舗郵便番号 - is_akachanhonpo_shopがfalse、かつis_akahon_agent_shopがfalseの場合、nullを返却 */
  @override
  @JsonKey()
  final String akachanhonpoPostNo;
/* 赤ちゃん本舗住所 - is_akachanhonpo_shopがfalse、かつis_akahon_agent_shopがfalseの場合、nullを返却 */
  @override
  @JsonKey()
  final String akachanhonpoAddress;
/* 赤ちゃん本舗電話番号 - is_akachanhonpo_shopがfalse、かつis_akahon_agent_shopがfalseの場合、nullを返却 */
  @override
  @JsonKey()
  final String akachanhonpoTel;
/* 赤ちゃん本舗担当者 - is_akachanhonpo_shopがfalse、かつis_akahon_agent_shopがfalseの場合、nullを返却 */
  @override
  @JsonKey()
  final String akachanhonpoContactPerson;
/* 店別売価連動 ``` true：店別売価連動を行う false：店別売価連動を行わない ``` */
  @override
  @JsonKey()
  final bool isSellingPriceCoopShop;
/* 店別販促連動  ``` true：店別販促連動を行う false：店別販促連動を行わない ``` */
  @override
  @JsonKey()
  final bool isSalesPromotionCoopShop;
/* 丸大店舗 ``` true：丸大店舗 false：丸大店舗以外 ``` */
  @override
  @JsonKey()
  final bool isMarudaiShop;
/* 定期便扱い判定 ``` true：定期便扱い可能 false：定期便扱い不可 ``` */
  @override
  @JsonKey()
  final bool isEnableRegularShipment;
/* 営業日　※YYYY-MM-DDThh:mm:ss+09:00' */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'open_date')
  final int epochOpenDate;
/* センター店フラグ ``````` true：センター店 false：センター店でない ``````` */
  @override
  @JsonKey()
  final bool isCenterShop;
/* 医薬品扱い店舗判定  ``` true：医薬品扱い店舗である false：医薬品扱い店舗でない ``` */
  @override
  @JsonKey()
  final bool isDrugShop;
/* 構造改革店舗フラグ  ``` true：構造改革店舗(7日先までお届け可能) false：非構造改革店舗(当日翌日のみお届け可能) ``` */
  @override
  @JsonKey()
  final bool isDayAfterNextDelivery;
/* ネット専用店フラグ  ``` true：ネット専用店である false：ネット専用店でない ``` */
  @override
  @JsonKey()
  final bool isNetOnlyShop;
/* 店舗毎代引き可否フラグ */
  @override
  @JsonKey()
  final bool isCashOnDelivery;
/* 都道府県またぎ店舗フラグ 店舗情報取得API以外はnullを返却 ``` true：都道府県またぎ店舗である false：都道府県またぎ店舗でない ``` */
  @override
  @JsonKey()
  final bool isStraddlingPrefecturesShop;

  @override
  String toString() {
    return 'ShopInfoModel(shopCode: $shopCode, shopName: $shopName, shopManagerName1: $shopManagerName1, shopManagerName2: $shopManagerName2, shopTelNumber: $shopTelNumber, shopAddress1: $shopAddress1, shopAddress2: $shopAddress2, shopPostNo: $shopPostNo, nsManagerName1: $nsManagerName1, nsManagerName2: $nsManagerName2, nsTelNumber: $nsTelNumber, isLiquorShop: $isLiquorShop, liquorManagerName: $liquorManagerName, liquorManagerTrainingDate: $liquorManagerTrainingDate, liquorManagerNextTrainingLimitDate: $liquorManagerNextTrainingLimitDate, liquorOrganizationName: $liquorOrganizationName, isAkachanhonpoShop: $isAkachanhonpoShop, isAkahonAgentShop: $isAkahonAgentShop, akachanhonpoPostNo: $akachanhonpoPostNo, akachanhonpoAddress: $akachanhonpoAddress, akachanhonpoTel: $akachanhonpoTel, akachanhonpoContactPerson: $akachanhonpoContactPerson, isSellingPriceCoopShop: $isSellingPriceCoopShop, isSalesPromotionCoopShop: $isSalesPromotionCoopShop, isMarudaiShop: $isMarudaiShop, isEnableRegularShipment: $isEnableRegularShipment, epochOpenDate: $epochOpenDate, isCenterShop: $isCenterShop, isDrugShop: $isDrugShop, isDayAfterNextDelivery: $isDayAfterNextDelivery, isNetOnlyShop: $isNetOnlyShop, isCashOnDelivery: $isCashOnDelivery, isStraddlingPrefecturesShop: $isStraddlingPrefecturesShop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopInfoModel &&
            (identical(other.shopCode, shopCode) ||
                other.shopCode == shopCode) &&
            (identical(other.shopName, shopName) ||
                other.shopName == shopName) &&
            (identical(other.shopManagerName1, shopManagerName1) ||
                other.shopManagerName1 == shopManagerName1) &&
            (identical(other.shopManagerName2, shopManagerName2) ||
                other.shopManagerName2 == shopManagerName2) &&
            (identical(other.shopTelNumber, shopTelNumber) ||
                other.shopTelNumber == shopTelNumber) &&
            (identical(other.shopAddress1, shopAddress1) ||
                other.shopAddress1 == shopAddress1) &&
            (identical(other.shopAddress2, shopAddress2) ||
                other.shopAddress2 == shopAddress2) &&
            (identical(other.shopPostNo, shopPostNo) ||
                other.shopPostNo == shopPostNo) &&
            (identical(other.nsManagerName1, nsManagerName1) ||
                other.nsManagerName1 == nsManagerName1) &&
            (identical(other.nsManagerName2, nsManagerName2) ||
                other.nsManagerName2 == nsManagerName2) &&
            (identical(other.nsTelNumber, nsTelNumber) ||
                other.nsTelNumber == nsTelNumber) &&
            (identical(other.isLiquorShop, isLiquorShop) ||
                other.isLiquorShop == isLiquorShop) &&
            (identical(other.liquorManagerName, liquorManagerName) ||
                other.liquorManagerName == liquorManagerName) &&
            (identical(other.liquorManagerTrainingDate, liquorManagerTrainingDate) ||
                other.liquorManagerTrainingDate == liquorManagerTrainingDate) &&
            (identical(other.liquorManagerNextTrainingLimitDate, liquorManagerNextTrainingLimitDate) ||
                other.liquorManagerNextTrainingLimitDate ==
                    liquorManagerNextTrainingLimitDate) &&
            (identical(other.liquorOrganizationName, liquorOrganizationName) ||
                other.liquorOrganizationName == liquorOrganizationName) &&
            (identical(other.isAkachanhonpoShop, isAkachanhonpoShop) ||
                other.isAkachanhonpoShop == isAkachanhonpoShop) &&
            (identical(other.isAkahonAgentShop, isAkahonAgentShop) ||
                other.isAkahonAgentShop == isAkahonAgentShop) &&
            (identical(other.akachanhonpoPostNo, akachanhonpoPostNo) ||
                other.akachanhonpoPostNo == akachanhonpoPostNo) &&
            (identical(other.akachanhonpoAddress, akachanhonpoAddress) ||
                other.akachanhonpoAddress == akachanhonpoAddress) &&
            (identical(other.akachanhonpoTel, akachanhonpoTel) ||
                other.akachanhonpoTel == akachanhonpoTel) &&
            (identical(other.akachanhonpoContactPerson, akachanhonpoContactPerson) ||
                other.akachanhonpoContactPerson == akachanhonpoContactPerson) &&
            (identical(other.isSellingPriceCoopShop, isSellingPriceCoopShop) ||
                other.isSellingPriceCoopShop == isSellingPriceCoopShop) &&
            (identical(other.isSalesPromotionCoopShop, isSalesPromotionCoopShop) ||
                other.isSalesPromotionCoopShop == isSalesPromotionCoopShop) &&
            (identical(other.isMarudaiShop, isMarudaiShop) ||
                other.isMarudaiShop == isMarudaiShop) &&
            (identical(other.isEnableRegularShipment, isEnableRegularShipment) ||
                other.isEnableRegularShipment == isEnableRegularShipment) &&
            (identical(other.epochOpenDate, epochOpenDate) ||
                other.epochOpenDate == epochOpenDate) &&
            (identical(other.isCenterShop, isCenterShop) ||
                other.isCenterShop == isCenterShop) &&
            (identical(other.isDrugShop, isDrugShop) ||
                other.isDrugShop == isDrugShop) &&
            (identical(other.isDayAfterNextDelivery, isDayAfterNextDelivery) ||
                other.isDayAfterNextDelivery == isDayAfterNextDelivery) &&
            (identical(other.isNetOnlyShop, isNetOnlyShop) ||
                other.isNetOnlyShop == isNetOnlyShop) &&
            (identical(other.isCashOnDelivery, isCashOnDelivery) ||
                other.isCashOnDelivery == isCashOnDelivery) &&
            (identical(other.isStraddlingPrefecturesShop, isStraddlingPrefecturesShop) || other.isStraddlingPrefecturesShop == isStraddlingPrefecturesShop));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        shopCode,
        shopName,
        shopManagerName1,
        shopManagerName2,
        shopTelNumber,
        shopAddress1,
        shopAddress2,
        shopPostNo,
        nsManagerName1,
        nsManagerName2,
        nsTelNumber,
        isLiquorShop,
        liquorManagerName,
        liquorManagerTrainingDate,
        liquorManagerNextTrainingLimitDate,
        liquorOrganizationName,
        isAkachanhonpoShop,
        isAkahonAgentShop,
        akachanhonpoPostNo,
        akachanhonpoAddress,
        akachanhonpoTel,
        akachanhonpoContactPerson,
        isSellingPriceCoopShop,
        isSalesPromotionCoopShop,
        isMarudaiShop,
        isEnableRegularShipment,
        epochOpenDate,
        isCenterShop,
        isDrugShop,
        isDayAfterNextDelivery,
        isNetOnlyShop,
        isCashOnDelivery,
        isStraddlingPrefecturesShop
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopInfoModelCopyWith<_$_ShopInfoModel> get copyWith =>
      __$$_ShopInfoModelCopyWithImpl<_$_ShopInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopInfoModelToJson(
      this,
    );
  }
}

abstract class _ShopInfoModel extends ShopInfoModel {
  const factory _ShopInfoModel(
      {final String shopCode,
      final String shopName,
      final String shopManagerName1,
      final String shopManagerName2,
      final String shopTelNumber,
      final String shopAddress1,
      final String shopAddress2,
      final String shopPostNo,
      final String nsManagerName1,
      final String nsManagerName2,
      final String nsTelNumber,
      final bool isLiquorShop,
      final String liquorManagerName,
      final String liquorManagerTrainingDate,
      final String liquorManagerNextTrainingLimitDate,
      final String liquorOrganizationName,
      final bool isAkachanhonpoShop,
      final bool isAkahonAgentShop,
      final String akachanhonpoPostNo,
      final String akachanhonpoAddress,
      final String akachanhonpoTel,
      final String akachanhonpoContactPerson,
      final bool isSellingPriceCoopShop,
      final bool isSalesPromotionCoopShop,
      final bool isMarudaiShop,
      final bool isEnableRegularShipment,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'open_date')
          final int epochOpenDate,
      final bool isCenterShop,
      final bool isDrugShop,
      final bool isDayAfterNextDelivery,
      final bool isNetOnlyShop,
      final bool isCashOnDelivery,
      final bool isStraddlingPrefecturesShop}) = _$_ShopInfoModel;
  const _ShopInfoModel._() : super._();

  factory _ShopInfoModel.fromJson(Map<String, dynamic> json) =
      _$_ShopInfoModel.fromJson;

  @override /* 店舗コード */
  String get shopCode;
  @override /* 店舗名 */
  String get shopName;
  @override /* お問合せ担当者1 */
  String get shopManagerName1;
  @override /* お問合せ担当者2 - お問合せ担当者2が設定されていない場合、nullを返却 */
  String get shopManagerName2;
  @override /* 店舗電話番号 */
  String get shopTelNumber;
  @override /* 店舗住所1 */
  String get shopAddress1;
  @override /* 店舗住所2 */
  String get shopAddress2;
  @override /* 郵便番号 */
  String get shopPostNo;
  @override /* ネットスーパー担当者1 */
  String get nsManagerName1;
  @override /* ネットスーパー担当者2 - ネットスーパー担当者2が設定されていない場合、nullを返却 */
  String get nsManagerName2;
  @override /* 店舗別NS電話番号 - ネットスーパー電話番号が設定されていない場合、nullを返却 */
  String get nsTelNumber;
  @override /* 酒扱い店舗判定  ``` true：酒扱い店舗である false：酒扱い店舗でない ``` */
  bool get isLiquorShop;
  @override /* 酒類販売管理者 - is_liquor_shopがfalseの場合、nullを返却 */
  String get liquorManagerName;
  @override /* 酒類販売管理研修受講年月日　※フリーフォーマット - - is_liquor_shopがfalseの場合、nullを返却 */
  String get liquorManagerTrainingDate;
  @override /* 次回研修の受講期限　※フリーフォーマット - - is_liquor_shopがfalseの場合、nullを返却 */
  String get liquorManagerNextTrainingLimitDate;
  @override /* 研修実施団体名 - - is_liquor_shopがfalseの場合、nullを返却 */
  String get liquorOrganizationName;
  @override /* 赤ちゃん本舗現在取扱い店舗判定  ``` true：赤ちゃん本舗現在取扱い店舗である false：赤ちゃん本舗現在取扱い店舗でない ``` */
  bool get isAkachanhonpoShop;
  @override /* 赤ちゃん本舗対応店舗(リーステナント)代行実施中判定 ``` true：アカチャンホンポ対応店舗(リーステナント)代行実施中 false：アカチャンホンポ対応店舗(リーステナント)代行未実施 ``` */
  bool get isAkahonAgentShop;
  @override /* 赤ちゃん本舗郵便番号 - is_akachanhonpo_shopがfalse、かつis_akahon_agent_shopがfalseの場合、nullを返却 */
  String get akachanhonpoPostNo;
  @override /* 赤ちゃん本舗住所 - is_akachanhonpo_shopがfalse、かつis_akahon_agent_shopがfalseの場合、nullを返却 */
  String get akachanhonpoAddress;
  @override /* 赤ちゃん本舗電話番号 - is_akachanhonpo_shopがfalse、かつis_akahon_agent_shopがfalseの場合、nullを返却 */
  String get akachanhonpoTel;
  @override /* 赤ちゃん本舗担当者 - is_akachanhonpo_shopがfalse、かつis_akahon_agent_shopがfalseの場合、nullを返却 */
  String get akachanhonpoContactPerson;
  @override /* 店別売価連動 ``` true：店別売価連動を行う false：店別売価連動を行わない ``` */
  bool get isSellingPriceCoopShop;
  @override /* 店別販促連動  ``` true：店別販促連動を行う false：店別販促連動を行わない ``` */
  bool get isSalesPromotionCoopShop;
  @override /* 丸大店舗 ``` true：丸大店舗 false：丸大店舗以外 ``` */
  bool get isMarudaiShop;
  @override /* 定期便扱い判定 ``` true：定期便扱い可能 false：定期便扱い不可 ``` */
  bool get isEnableRegularShipment;
  @override /* 営業日　※YYYY-MM-DDThh:mm:ss+09:00' */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'open_date')
  int get epochOpenDate;
  @override /* センター店フラグ ``````` true：センター店 false：センター店でない ``````` */
  bool get isCenterShop;
  @override /* 医薬品扱い店舗判定  ``` true：医薬品扱い店舗である false：医薬品扱い店舗でない ``` */
  bool get isDrugShop;
  @override /* 構造改革店舗フラグ  ``` true：構造改革店舗(7日先までお届け可能) false：非構造改革店舗(当日翌日のみお届け可能) ``` */
  bool get isDayAfterNextDelivery;
  @override /* ネット専用店フラグ  ``` true：ネット専用店である false：ネット専用店でない ``` */
  bool get isNetOnlyShop;
  @override /* 店舗毎代引き可否フラグ */
  bool get isCashOnDelivery;
  @override /* 都道府県またぎ店舗フラグ 店舗情報取得API以外はnullを返却 ``` true：都道府県またぎ店舗である false：都道府県またぎ店舗でない ``` */
  bool get isStraddlingPrefecturesShop;
  @override
  @JsonKey(ignore: true)
  _$$_ShopInfoModelCopyWith<_$_ShopInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
