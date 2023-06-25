// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopInfoModel _$$_ShopInfoModelFromJson(Map<String, dynamic> json) =>
    _$_ShopInfoModel(
      shopCode: json['shop_code'] as String? ?? '',
      shopName: json['shop_name'] as String? ?? '',
      shopManagerName1: json['shop_manager_name1'] as String? ?? '',
      shopManagerName2: json['shop_manager_name2'] as String? ?? '',
      shopTelNumber: json['shop_tel_number'] as String? ?? '',
      shopAddress1: json['shop_address1'] as String? ?? '',
      shopAddress2: json['shop_address2'] as String? ?? '',
      shopPostNo: json['shop_post_no'] as String? ?? '',
      nsManagerName1: json['ns_manager_name1'] as String? ?? '',
      nsManagerName2: json['ns_manager_name2'] as String? ?? '',
      nsTelNumber: json['ns_tel_number'] as String? ?? '',
      isLiquorShop: json['is_liquor_shop'] as bool? ?? false,
      liquorManagerName: json['liquor_manager_name'] as String? ?? '',
      liquorManagerTrainingDate:
          json['liquor_manager_training_date'] as String? ?? '',
      liquorManagerNextTrainingLimitDate:
          json['liquor_manager_next_training_limit_date'] as String? ?? '',
      liquorOrganizationName: json['liquor_organization_name'] as String? ?? '',
      isAkachanhonpoShop: json['is_akachanhonpo_shop'] as bool? ?? false,
      isAkahonAgentShop: json['is_akahon_agent_shop'] as bool? ?? false,
      akachanhonpoPostNo: json['akachanhonpo_post_no'] as String? ?? '',
      akachanhonpoAddress: json['akachanhonpo_address'] as String? ?? '',
      akachanhonpoTel: json['akachanhonpo_tel'] as String? ?? '',
      akachanhonpoContactPerson:
          json['akachanhonpo_contact_person'] as String? ?? '',
      isSellingPriceCoopShop:
          json['is_selling_price_coop_shop'] as bool? ?? false,
      isSalesPromotionCoopShop:
          json['is_sales_promotion_coop_shop'] as bool? ?? false,
      isMarudaiShop: json['is_marudai_shop'] as bool? ?? false,
      isEnableRegularShipment:
          json['is_enable_regular_shipment'] as bool? ?? false,
      epochOpenDate: json['open_date'] == null
          ? 0
          : const StringToEpochTimeConverter()
              .fromJson(json['open_date'] as String),
      isCenterShop: json['is_center_shop'] as bool? ?? false,
      isDrugShop: json['is_drug_shop'] as bool? ?? false,
      isDayAfterNextDelivery:
          json['is_day_after_next_delivery'] as bool? ?? false,
      isNetOnlyShop: json['is_net_only_shop'] as bool? ?? false,
      isCashOnDelivery: json['is_cash_on_delivery'] as bool? ?? false,
      isStraddlingPrefecturesShop:
          json['is_straddling_prefectures_shop'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ShopInfoModelToJson(_$_ShopInfoModel instance) =>
    <String, dynamic>{
      'shop_code': instance.shopCode,
      'shop_name': instance.shopName,
      'shop_manager_name1': instance.shopManagerName1,
      'shop_manager_name2': instance.shopManagerName2,
      'shop_tel_number': instance.shopTelNumber,
      'shop_address1': instance.shopAddress1,
      'shop_address2': instance.shopAddress2,
      'shop_post_no': instance.shopPostNo,
      'ns_manager_name1': instance.nsManagerName1,
      'ns_manager_name2': instance.nsManagerName2,
      'ns_tel_number': instance.nsTelNumber,
      'is_liquor_shop': instance.isLiquorShop,
      'liquor_manager_name': instance.liquorManagerName,
      'liquor_manager_training_date': instance.liquorManagerTrainingDate,
      'liquor_manager_next_training_limit_date':
          instance.liquorManagerNextTrainingLimitDate,
      'liquor_organization_name': instance.liquorOrganizationName,
      'is_akachanhonpo_shop': instance.isAkachanhonpoShop,
      'is_akahon_agent_shop': instance.isAkahonAgentShop,
      'akachanhonpo_post_no': instance.akachanhonpoPostNo,
      'akachanhonpo_address': instance.akachanhonpoAddress,
      'akachanhonpo_tel': instance.akachanhonpoTel,
      'akachanhonpo_contact_person': instance.akachanhonpoContactPerson,
      'is_selling_price_coop_shop': instance.isSellingPriceCoopShop,
      'is_sales_promotion_coop_shop': instance.isSalesPromotionCoopShop,
      'is_marudai_shop': instance.isMarudaiShop,
      'is_enable_regular_shipment': instance.isEnableRegularShipment,
      'open_date':
          const StringToEpochTimeConverter().toJson(instance.epochOpenDate),
      'is_center_shop': instance.isCenterShop,
      'is_drug_shop': instance.isDrugShop,
      'is_day_after_next_delivery': instance.isDayAfterNextDelivery,
      'is_net_only_shop': instance.isNetOnlyShop,
      'is_cash_on_delivery': instance.isCashOnDelivery,
      'is_straddling_prefectures_shop': instance.isStraddlingPrefecturesShop,
    };
