import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/living_status_type.dart';
import '../../../enum/pack_method_type.dart';
import 'delivery_information_model.dart';
import 'individual_delivery_price_information_model.dart';
import 'pack_method_information_model.dart';

part 'select_delivery_plan_model.freezed.dart';
part 'select_delivery_plan_model.g.dart';

/// 受取便選択モデル
@freezed
class SelectDeliveryPlanModel with _$SelectDeliveryPlanModel {
  const factory SelectDeliveryPlanModel({
    /* 入店規制判定 - true：入店規制中である - false：入店規制中でない */
    @Default(false) bool isEntranceRestrictions,
    /* 店舗受取利用可能判定 - true：店舗受取利用可能 - false：店舗受取利用不可 */
    @Default(false) bool isEnableShopReceipt,
    /* 受取便情報リスト */
    @Default(<DeliveryInformationModel>[]) List<DeliveryInformationModel> deliveryInformations,
    IndividualDeliveryPriceInformationModel? individualDeliveryPriceInformation,
    /* お届け先住所 */
    @Default('') String deliveryAddress,
    /* お住まいステータス null or "0" お住まい未確認 "1" お住まい確認済み "2" お住まい確認中 */
    @Default(LivingStatusType.unconfirmed) LivingStatusType livingStatus,
    /* 梱包手数料-徴収対象会員判定 - true：梱包手数料徴収対象会員である - false：梱包手数料徴収対象会員でない */
    @Default(false) bool isPackPriceTargetCustomer,
    /* 受取便変更元-受注ID */
    int? deliveryPlanChangeOriginOrderId,
    /* 梱包手数料-徴収対象会員・梱包まとめ方法未選択判定 - true：梱包手数料徴収対象会員かつ梱包まとめ方法未選択である - false：梱包手数料徴収対象会員でないまたは梱包まとめ方法未選択でない */
    @Default(false) bool isNotSelectedPackMethod,
    /* デフォルト梱包まとめ方法種別 ``` \"0\"：個別注文 \"1\"：複数注文(注文毎に個別梱包する) \"2\"：複数注文(まとめて梱包する) null：個人会員の場合``` */
    @Default(PackMethodType.none) PackMethodType defaultPackMethodType,
    @Default(<PackMethodInformationModel>[]) List<PackMethodInformationModel> packMethodInformations,
    /* 店コード */
    @Default('') String shopCode,
    /* 店舗名 */
    @Default('') String shopName,
    /* 初期受取場所の緯度 */
    double? initReceiptPointLatitude,
    /* 初期受取場所の経度 */
    double? initReceiptPointLongitude,
    /* 初期受取地点ID */
    @Default('') String initReceiptPointId,
  }) = _SelectDeliveryPlanModel;

  factory SelectDeliveryPlanModel.fromJson(Map<String, dynamic> json) => _$SelectDeliveryPlanModelFromJson(json);
}
