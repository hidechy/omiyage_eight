// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../util/datetime_json_converter.dart';

part 'shop_info_model.freezed.dart';
part 'shop_info_model.g.dart';

@freezed
class ShopInfoModel with _$ShopInfoModel {
  const ShopInfoModel._();

  const factory ShopInfoModel({
    /* 店舗コード */
    @Default('') String shopCode,
/* 店舗名 */
    @Default('') String shopName,
/* お問合せ担当者1 */
    @Default('') String shopManagerName1,
/* お問合せ担当者2 - お問合せ担当者2が設定されていない場合、nullを返却 */
    @Default('') String shopManagerName2,
/* 店舗電話番号 */
    @Default('') String shopTelNumber,
/* 店舗住所1 */
    @Default('') String shopAddress1,
/* 店舗住所2 */
    @Default('') String shopAddress2,
/* 郵便番号 */
    @Default('') String shopPostNo,
/* ネットスーパー担当者1 */
    @Default('') String nsManagerName1,
/* ネットスーパー担当者2 - ネットスーパー担当者2が設定されていない場合、nullを返却 */
    @Default('') String nsManagerName2,
/* 店舗別NS電話番号 - ネットスーパー電話番号が設定されていない場合、nullを返却 */
    @Default('') String nsTelNumber,
/* 酒扱い店舗判定  ``` true：酒扱い店舗である false：酒扱い店舗でない ``` */
    @Default(false) bool isLiquorShop,
/* 酒類販売管理者 - is_liquor_shopがfalseの場合、nullを返却 */
    @Default('') String liquorManagerName,
/* 酒類販売管理研修受講年月日　※フリーフォーマット - - is_liquor_shopがfalseの場合、nullを返却 */
    @Default('') String liquorManagerTrainingDate,
/* 次回研修の受講期限　※フリーフォーマット - - is_liquor_shopがfalseの場合、nullを返却 */
    @Default('') String liquorManagerNextTrainingLimitDate,
/* 研修実施団体名 - - is_liquor_shopがfalseの場合、nullを返却 */
    @Default('') String liquorOrganizationName,
/* 赤ちゃん本舗現在取扱い店舗判定  ``` true：赤ちゃん本舗現在取扱い店舗である false：赤ちゃん本舗現在取扱い店舗でない ``` */
    @Default(false) bool isAkachanhonpoShop,
/* 赤ちゃん本舗対応店舗(リーステナント)代行実施中判定 ``` true：アカチャンホンポ対応店舗(リーステナント)代行実施中 false：アカチャンホンポ対応店舗(リーステナント)代行未実施 ``` */
    @Default(false) bool isAkahonAgentShop,
/* 赤ちゃん本舗郵便番号 - is_akachanhonpo_shopがfalse、かつis_akahon_agent_shopがfalseの場合、nullを返却 */
    @Default('') String akachanhonpoPostNo,
/* 赤ちゃん本舗住所 - is_akachanhonpo_shopがfalse、かつis_akahon_agent_shopがfalseの場合、nullを返却 */
    @Default('') String akachanhonpoAddress,
/* 赤ちゃん本舗電話番号 - is_akachanhonpo_shopがfalse、かつis_akahon_agent_shopがfalseの場合、nullを返却 */
    @Default('') String akachanhonpoTel,
/* 赤ちゃん本舗担当者 - is_akachanhonpo_shopがfalse、かつis_akahon_agent_shopがfalseの場合、nullを返却 */
    @Default('') String akachanhonpoContactPerson,
/* 店別売価連動 ``` true：店別売価連動を行う false：店別売価連動を行わない ``` */
    @Default(false) bool isSellingPriceCoopShop,
/* 店別販促連動  ``` true：店別販促連動を行う false：店別販促連動を行わない ``` */
    @Default(false) bool isSalesPromotionCoopShop,
/* 丸大店舗 ``` true：丸大店舗 false：丸大店舗以外 ``` */
    @Default(false) bool isMarudaiShop,
/* 定期便扱い判定 ``` true：定期便扱い可能 false：定期便扱い不可 ``` */
    @Default(false) bool isEnableRegularShipment,
/* 営業日　※YYYY-MM-DDThh:mm:ss+09:00' */
    @StringToEpochTimeConverter() @Default(0) @JsonKey(name: 'open_date') int epochOpenDate,
/* センター店フラグ ``````` true：センター店 false：センター店でない ``````` */
    @Default(false) bool isCenterShop,
/* 医薬品扱い店舗判定  ``` true：医薬品扱い店舗である false：医薬品扱い店舗でない ``` */
    @Default(false) bool isDrugShop,
/* 構造改革店舗フラグ  ``` true：構造改革店舗(7日先までお届け可能) false：非構造改革店舗(当日翌日のみお届け可能) ``` */
    @Default(false) bool isDayAfterNextDelivery,
/* ネット専用店フラグ  ``` true：ネット専用店である false：ネット専用店でない ``` */
    @Default(false) bool isNetOnlyShop,
/* 店舗毎代引き可否フラグ */
    @Default(false) bool isCashOnDelivery,
/* 都道府県またぎ店舗フラグ 店舗情報取得API以外はnullを返却 ``` true：都道府県またぎ店舗である false：都道府県またぎ店舗でない ``` */
    @Default(false) bool isStraddlingPrefecturesShop,
  }) = _ShopInfoModel;

  factory ShopInfoModel.fromJson(Map<String, dynamic> json) => _$ShopInfoModelFromJson(json);

  DateTime get openDate => const StringToEpochTimeConverter().toDateTime(epochOpenDate);
}
