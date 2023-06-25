// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      isFavoriteAdded: json['is_favorite_added'] as bool? ?? false,
      isDisplayProductIcon: json['is_display_product_icon'] as bool? ?? false,
      advertisingIconCode: json['advertising_icon_code'] as String? ?? '',
      advertisingLabel: json['advertising_label'] as String? ?? '',
      isProductNumber: json['is_product_number'] as bool? ?? false,
      isDisplayPossibleBuyButton:
          json['is_display_possible_buy_button'] as bool? ?? false,
      isCounselingProduct: json['is_counseling_product'] as bool? ?? false,
      productId: json['product_id'] as String? ?? '',
      productName: json['product_name'] as String? ?? '',
      thumbnailImagePath: json['thumbnail_image_path'] as String? ?? '',
      thumbnailImageFileName:
          json['thumbnail_image_file_name'] as String? ?? '',
      frontThumbnailImageFullPath:
          json['front_thumbnail_image_full_path'] as String? ?? '',
      isDisplayWhiteImage: json['is_display_white_image'] as bool? ?? false,
      productCatchphrase: json['product_catchphrase'] as String? ?? '',
      isAdvertisingProduct: json['is_advertising_product'] as bool? ?? false,
      advertisingTerm: json['advertising_term'] as String? ?? '',
      isMarketDeliveryLimitedProduct:
          json['is_market_delivery_limited_product'] as bool? ?? false,
      marketTimes: (json['market_times'] as List<dynamic>?)
              ?.map((e) =>
                  MarketTimeFromToModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MarketTimeFromToModel>[],
      isPosOrderLimitedProduct:
          json['is_pos_order_limited_product'] as bool? ?? false,
      epochPosOrderLimitedDatetime: const NullableStringToEpochTimeConverter()
          .fromJson(json['pos_order_limited_datetime'] as String?),
      salesCapacity: json['sales_capacity'] as String? ?? '',
      cardMemberDiscounts: (json['card_member_discounts'] as List<dynamic>?)
              ?.map((e) =>
                  CardCustomerDiscountModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CardCustomerDiscountModel>[],
      nanacoPointUnitPoint: json['nanaco_point_unit_point'] as int? ?? 0,
      basePrice: json['base_price'] as int? ?? 0,
      isTaxExemptProduct: json['is_tax_exempt_product'] as bool? ?? false,
      price: json['price'] as int? ?? 0,
      unitPrice: json['unit_price'] as String? ?? '',
      isDiscountedPrice: json['is_discounted_price'] as bool? ?? false,
      isDiscountExclusionProduct:
          json['is_discount_exclusion_product'] as bool? ?? false,
      isNsPrice: json['is_ns_price'] as bool? ?? false,
      productDiscount: json['product_discount'] == null
          ? null
          : ProductDiscountModel.fromJson(
              json['product_discount'] as Map<String, dynamic>),
      isReserveProduct: json['is_reserve_product'] as bool? ?? false,
      isQuasiDrugs: json['is_quasi_drugs'] as bool? ?? false,
      topLabel: json['top_label'] == null
          ? const ProductLabel()
          : ProductLabel.fromJson(json['top_label'] as Map<String, dynamic>),
      topLabelList: (json['top_label_list'] as List<dynamic>?)
              ?.map((e) => ProductLabel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductLabel>[],
      bottomLabel: json['bottom_label'] == null
          ? const ProductLabel()
          : ProductLabel.fromJson(json['bottom_label'] as Map<String, dynamic>),
      bottomLabelList: (json['bottom_label_list'] as List<dynamic>?)
              ?.map((e) => ProductLabel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductLabel>[],
      liquorLabel: json['liquor_label'] == null
          ? const ProductLabel()
          : ProductLabel.fromJson(json['liquor_label'] as Map<String, dynamic>),
      liquorType:
          $enumDecodeNullable(_$LiquorTypeEnumMap, json['liquor_type']) ??
              LiquorType.other,
      isDisplayMileIcon: json['is_display_mile_icon'] as bool? ?? false,
      isAnsweredCounseling: json['is_answered_counseling'] as bool? ?? false,
      limitedNumber: json['limited_number'] as String? ?? '',
      maxBuyPossibleNumber: json['max_buy_possible_number'] as int? ?? 0,
      isRecommendProduct: json['is_recommend_product'] as bool? ?? false,
      shopCode: json['shop_code'] as String? ?? '',
      taxRateSwitch: json['tax_rate_switch'] == null
          ? null
          : TaxRateSwitchModel.fromJson(
              json['tax_rate_switch'] as Map<String, dynamic>),
      isAkachanHonpoAgencyShop:
          json['is_akachan_honpo_agency_shop'] as bool? ?? false,
      isAkachanHonpoProduct: json['is_akachan_honpo_product'] as bool? ?? false,
      isSellOutDisplayStart:
          json['is_sell_out_display_start'] as bool? ?? false,
      isInDeliveryTerm: json['is_in_delivery_term'] as bool? ?? false,
      epochDeliveryStartDatetime: const NullableStringToEpochTimeConverter()
          .fromJson(json['delivery_start_datetime'] as String?),
      epochDeliveryFinishDatetime: const NullableStringToEpochTimeConverter()
          .fromJson(json['delivery_finish_datetime'] as String?),
      isOrderOnlyProduct: json['is_order_only_product'] as bool? ?? false,
      isInDeliveryLeadTime: json['is_in_delivery_lead_time'] as bool? ?? false,
      deliveryLeadTimeDays: json['delivery_lead_time_days'] as int?,
      upperSalesCapacity: json['upper_sales_capacity'] as String? ?? '',
      lowerSalesCapacity: json['lower_sales_capacity'] as String? ?? '',
      upperPrice: json['upper_price'] as int? ?? 0,
      lowerPrice: json['lower_price'] as int? ?? 0,
      upperBasePrice: json['upper_base_price'] as int? ?? 0,
      lowerBasePrice: json['lower_base_price'] as int? ?? 0,
      isLimitedSaleDeliveryDate:
          json['is_limited_sale_delivery_date'] as bool? ?? false,
      isOrderChangingStatus: json['is_order_changing_status'] as bool? ?? false,
      isBeforeDeliveryPlanChangeClosingDatetime:
          json['is_before_delivery_plan_change_closing_datetime'] as bool? ??
              false,
      isTomorrowOnlySaleProduct:
          json['is_tomorrow_only_sale_product'] as bool? ?? false,
      epochNetsuperNextDatetime: json['netsuper_next_datetime'] == null
          ? 0
          : const StringToEpochTimeConverter()
              .fromJson(json['netsuper_next_datetime'] as String),
      isAfterDaySaleProduct:
          json['is_after_day_sale_product'] as bool? ?? false,
      epochEnablesSaleDeliveryDatetime:
          const NullableStringToEpochTimeConverter()
              .fromJson(json['enables_sale_delivery_datetime'] as String?),
      isChangeDeliveryClosingGuide:
          json['is_change_delivery_closing_guide'] as bool? ?? false,
      epochChangeProductClosingDatetime:
          const NullableStringToEpochTimeConverter()
              .fromJson(json['change_product_closing_datetime'] as String?),
      isDrugProduct: json['is_drug_product'] as bool? ?? false,
      isFirstClassDrugs: json['is_first_class_drugs'] as bool? ?? false,
      isDesignatedSecondClassDrugs:
          json['is_designated_second_class_drugs'] as bool? ?? false,
      isSecondClassDrugs: json['is_second_class_drugs'] as bool? ?? false,
      isThirdClassDrugs: json['is_third_class_drugs'] as bool? ?? false,
      isSumDiscount: json['is_sum_discount'] as bool? ?? false,
      isPeriodDiscount: json['is_period_discount'] as bool? ?? false,
      isCouponDiscount: json['is_coupon_discount'] as bool? ?? false,
      previousValue: json['previous_value'] as String? ?? '',
      departmentCode: json['department_code'] as String? ?? '',
      salesFloorCode: json['sales_floor_code'] as String? ?? '',
      productAssortmentCode: json['product_assortment_code'] as String? ?? '',
      isSetSaleProduct: json['is_set_sale_product'] as bool? ?? false,
      reserveSetSaleProducts:
          (json['reserve_set_sale_products'] as List<dynamic>?)
                  ?.map((e) =>
                      ReserveSetSaleModel.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const <ReserveSetSaleModel>[],
      isSaleEnd: json['is_sale_end'] as bool? ?? false,
      epochSaleEndDateTime: const NullableStringToEpochTimeConverter()
          .fromJson(json['sale_end_date_time'] as String?),
      isLimitNumberOnePerson:
          json['is_limit_number_one_person'] as bool? ?? false,
      limitNumberOnePerson: json['limit_number_one_person'] as String? ?? '',
      isShortestDeliveryDays:
          json['is_shortest_delivery_days'] as bool? ?? false,
      shortestDeliveryDays: json['shortest_delivery_days'] as String? ?? '',
      epochReserveDeliveryDateTime: const NullableStringToEpochTimeConverter()
          .fromJson(json['reserve_delivery_date_time'] as String?),
      reserveDeliveryDates: (json['reserve_delivery_dates'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      reserveDeliveryDateCsv:
          json['reserve_delivery_date_csv'] as String? ?? '',
      producingArea: json['producing_area'] as String? ?? '',
      isRegularShipmentProduct:
          json['is_regular_shipment_product'] as bool? ?? false,
      isSaleByMeasure: json['is_not_teikan'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'is_favorite_added': instance.isFavoriteAdded,
      'is_display_product_icon': instance.isDisplayProductIcon,
      'advertising_icon_code': instance.advertisingIconCode,
      'advertising_label': instance.advertisingLabel,
      'is_product_number': instance.isProductNumber,
      'is_display_possible_buy_button': instance.isDisplayPossibleBuyButton,
      'is_counseling_product': instance.isCounselingProduct,
      'product_id': instance.productId,
      'product_name': instance.productName,
      'thumbnail_image_path': instance.thumbnailImagePath,
      'thumbnail_image_file_name': instance.thumbnailImageFileName,
      'front_thumbnail_image_full_path': instance.frontThumbnailImageFullPath,
      'is_display_white_image': instance.isDisplayWhiteImage,
      'product_catchphrase': instance.productCatchphrase,
      'is_advertising_product': instance.isAdvertisingProduct,
      'advertising_term': instance.advertisingTerm,
      'is_market_delivery_limited_product':
          instance.isMarketDeliveryLimitedProduct,
      'market_times': instance.marketTimes.map((e) => e.toJson()).toList(),
      'is_pos_order_limited_product': instance.isPosOrderLimitedProduct,
      'pos_order_limited_datetime': const NullableStringToEpochTimeConverter()
          .toJson(instance.epochPosOrderLimitedDatetime),
      'sales_capacity': instance.salesCapacity,
      'card_member_discounts':
          instance.cardMemberDiscounts.map((e) => e.toJson()).toList(),
      'nanaco_point_unit_point': instance.nanacoPointUnitPoint,
      'base_price': instance.basePrice,
      'is_tax_exempt_product': instance.isTaxExemptProduct,
      'price': instance.price,
      'unit_price': instance.unitPrice,
      'is_discounted_price': instance.isDiscountedPrice,
      'is_discount_exclusion_product': instance.isDiscountExclusionProduct,
      'is_ns_price': instance.isNsPrice,
      'product_discount': instance.productDiscount?.toJson(),
      'is_reserve_product': instance.isReserveProduct,
      'is_quasi_drugs': instance.isQuasiDrugs,
      'top_label': instance.topLabel.toJson(),
      'top_label_list': instance.topLabelList.map((e) => e.toJson()).toList(),
      'bottom_label': instance.bottomLabel.toJson(),
      'bottom_label_list':
          instance.bottomLabelList.map((e) => e.toJson()).toList(),
      'liquor_label': instance.liquorLabel.toJson(),
      'liquor_type': _$LiquorTypeEnumMap[instance.liquorType]!,
      'is_display_mile_icon': instance.isDisplayMileIcon,
      'is_answered_counseling': instance.isAnsweredCounseling,
      'limited_number': instance.limitedNumber,
      'max_buy_possible_number': instance.maxBuyPossibleNumber,
      'is_recommend_product': instance.isRecommendProduct,
      'shop_code': instance.shopCode,
      'tax_rate_switch': instance.taxRateSwitch?.toJson(),
      'is_akachan_honpo_agency_shop': instance.isAkachanHonpoAgencyShop,
      'is_akachan_honpo_product': instance.isAkachanHonpoProduct,
      'is_sell_out_display_start': instance.isSellOutDisplayStart,
      'is_in_delivery_term': instance.isInDeliveryTerm,
      'delivery_start_datetime': const NullableStringToEpochTimeConverter()
          .toJson(instance.epochDeliveryStartDatetime),
      'delivery_finish_datetime': const NullableStringToEpochTimeConverter()
          .toJson(instance.epochDeliveryFinishDatetime),
      'is_order_only_product': instance.isOrderOnlyProduct,
      'is_in_delivery_lead_time': instance.isInDeliveryLeadTime,
      'delivery_lead_time_days': instance.deliveryLeadTimeDays,
      'upper_sales_capacity': instance.upperSalesCapacity,
      'lower_sales_capacity': instance.lowerSalesCapacity,
      'upper_price': instance.upperPrice,
      'lower_price': instance.lowerPrice,
      'upper_base_price': instance.upperBasePrice,
      'lower_base_price': instance.lowerBasePrice,
      'is_limited_sale_delivery_date': instance.isLimitedSaleDeliveryDate,
      'is_order_changing_status': instance.isOrderChangingStatus,
      'is_before_delivery_plan_change_closing_datetime':
          instance.isBeforeDeliveryPlanChangeClosingDatetime,
      'is_tomorrow_only_sale_product': instance.isTomorrowOnlySaleProduct,
      'netsuper_next_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochNetsuperNextDatetime),
      'is_after_day_sale_product': instance.isAfterDaySaleProduct,
      'enables_sale_delivery_datetime':
          const NullableStringToEpochTimeConverter()
              .toJson(instance.epochEnablesSaleDeliveryDatetime),
      'is_change_delivery_closing_guide': instance.isChangeDeliveryClosingGuide,
      'change_product_closing_datetime':
          const NullableStringToEpochTimeConverter()
              .toJson(instance.epochChangeProductClosingDatetime),
      'is_drug_product': instance.isDrugProduct,
      'is_first_class_drugs': instance.isFirstClassDrugs,
      'is_designated_second_class_drugs': instance.isDesignatedSecondClassDrugs,
      'is_second_class_drugs': instance.isSecondClassDrugs,
      'is_third_class_drugs': instance.isThirdClassDrugs,
      'is_sum_discount': instance.isSumDiscount,
      'is_period_discount': instance.isPeriodDiscount,
      'is_coupon_discount': instance.isCouponDiscount,
      'previous_value': instance.previousValue,
      'department_code': instance.departmentCode,
      'sales_floor_code': instance.salesFloorCode,
      'product_assortment_code': instance.productAssortmentCode,
      'is_set_sale_product': instance.isSetSaleProduct,
      'reserve_set_sale_products':
          instance.reserveSetSaleProducts.map((e) => e.toJson()).toList(),
      'is_sale_end': instance.isSaleEnd,
      'sale_end_date_time': const NullableStringToEpochTimeConverter()
          .toJson(instance.epochSaleEndDateTime),
      'is_limit_number_one_person': instance.isLimitNumberOnePerson,
      'limit_number_one_person': instance.limitNumberOnePerson,
      'is_shortest_delivery_days': instance.isShortestDeliveryDays,
      'shortest_delivery_days': instance.shortestDeliveryDays,
      'reserve_delivery_date_time': const NullableStringToEpochTimeConverter()
          .toJson(instance.epochReserveDeliveryDateTime),
      'reserve_delivery_dates': instance.reserveDeliveryDates,
      'reserve_delivery_date_csv': instance.reserveDeliveryDateCsv,
      'producing_area': instance.producingArea,
      'is_regular_shipment_product': instance.isRegularShipmentProduct,
      'is_not_teikan': instance.isSaleByMeasure,
    };

const _$LiquorTypeEnumMap = {
  LiquorType.alcohol: '1',
  LiquorType.mirin: '2',
  LiquorType.nonAlcohol: '3',
  LiquorType.other: '',
};
