// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartDetailsModel _$$_CartDetailsModelFromJson(Map<String, dynamic> json) =>
    _$_CartDetailsModel(
      reserveCode: json['reserve_code'] as String? ?? '',
      productId: json['product_id'] as String? ?? '',
      quantity: json['quantity'] as int? ?? 0,
      isDrugProduct: json['is_drug_product'] as bool? ?? false,
      isFavoriteAdded: json['is_favorite_added'] as bool? ?? false,
      productImagePath: json['product_image_path'] as String? ?? '',
      frontProductImageFullPath:
          json['front_product_image_full_path'] as String? ?? '',
      isDisplayWhiteImage: json['is_display_white_image'] as bool? ?? false,
      productImageAlt: json['product_image_alt'] as String? ?? '',
      isReducedTaxRateProduct:
          json['is_reduced_tax_rate_product'] as bool? ?? false,
      isTodayDeliveryLimitedProduct:
          json['is_today_delivery_limited_product'] as bool? ?? false,
      todayDeliveryLimitedDatetime:
          json['today_delivery_limited_datetime'] as String? ?? '',
      isMarketDeliveryLimitedProduct:
          json['is_market_delivery_limited_product'] as bool? ?? false,
      marketTimes: (json['market_times'] as List<dynamic>?)
              ?.map((e) =>
                  MarketTimeFromToModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MarketTimeFromToModel>[],
      isPosOrderLimitedProduct:
          json['is_pos_order_limited_product'] as bool? ?? false,
      isPosOrderAllLimitedProduct:
          json['is_pos_order_all_limited_product'] as bool? ?? false,
      posOrderLimitedDatetime:
          json['pos_order_limited_datetime'] as String? ?? '',
      isNanacoPointPromotionDetails:
          json['is_nanaco_point_promotion_details'] as bool? ?? false,
      nanacoPointUnitPoint: json['nanaco_point_unit_point'] as int? ?? 0,
      isExceedStock: json['is_exceed_stock'] as bool? ?? false,
      productName: json['product_name'] as String? ?? '',
      isMixMatchDiscount: json['is_mix_match_discount'] as bool? ?? false,
      isSetSaleDiscount: json['is_set_sale_discount'] as bool? ?? false,
      isProgressiveDiscount: json['is_progressive_discount'] as bool? ?? false,
      isCardMemberDiscount: json['is_card_member_discount'] as bool? ?? false,
      isIyCardDiscount: json['is_iy_card_discount'] as bool? ?? false,
      isCouponDiscount: json['is_coupon_discount'] as bool? ?? false,
      isSellingOffDiscount: json['is_selling_off_discount'] as bool? ?? false,
      price: json['price'] as int? ?? 0,
      noTaxPrice: json['no_tax_price'] as int? ?? 0,
      maxBuyCount: json['max_buy_count'] as int? ?? 0,
      productDetailKey: json['product_detail_key'] as String? ?? '',
      salePrice: json['sale_price'] as int? ?? 0,
      isTaxIncluded: json['is_tax_included'] as bool? ?? false,
      isInDeliveryLeadTime: json['is_in_delivery_lead_time'] as bool? ?? false,
      isReserveProduct: json['is_reserve_product'] as bool? ?? false,
      isBeforeChangeProductClosingDatetime:
          json['is_before_change_product_closing_datetime'] as bool? ?? false,
      epochChangeProductClosingDatetime:
          const NullableStringToEpochTimeConverter()
              .fromJson(json['change_product_closing_datetime'] as String?),
      isRegularShipmentApplyProduct:
          json['is_regular_shipment_apply_product'] as bool? ?? false,
      isRegularShipmentDiscount:
          json['is_regular_shipment_discount'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CartDetailsModelToJson(_$_CartDetailsModel instance) =>
    <String, dynamic>{
      'reserve_code': instance.reserveCode,
      'product_id': instance.productId,
      'quantity': instance.quantity,
      'is_drug_product': instance.isDrugProduct,
      'is_favorite_added': instance.isFavoriteAdded,
      'product_image_path': instance.productImagePath,
      'front_product_image_full_path': instance.frontProductImageFullPath,
      'is_display_white_image': instance.isDisplayWhiteImage,
      'product_image_alt': instance.productImageAlt,
      'is_reduced_tax_rate_product': instance.isReducedTaxRateProduct,
      'is_today_delivery_limited_product':
          instance.isTodayDeliveryLimitedProduct,
      'today_delivery_limited_datetime': instance.todayDeliveryLimitedDatetime,
      'is_market_delivery_limited_product':
          instance.isMarketDeliveryLimitedProduct,
      'market_times': instance.marketTimes.map((e) => e.toJson()).toList(),
      'is_pos_order_limited_product': instance.isPosOrderLimitedProduct,
      'is_pos_order_all_limited_product': instance.isPosOrderAllLimitedProduct,
      'pos_order_limited_datetime': instance.posOrderLimitedDatetime,
      'is_nanaco_point_promotion_details':
          instance.isNanacoPointPromotionDetails,
      'nanaco_point_unit_point': instance.nanacoPointUnitPoint,
      'is_exceed_stock': instance.isExceedStock,
      'product_name': instance.productName,
      'is_mix_match_discount': instance.isMixMatchDiscount,
      'is_set_sale_discount': instance.isSetSaleDiscount,
      'is_progressive_discount': instance.isProgressiveDiscount,
      'is_card_member_discount': instance.isCardMemberDiscount,
      'is_iy_card_discount': instance.isIyCardDiscount,
      'is_coupon_discount': instance.isCouponDiscount,
      'is_selling_off_discount': instance.isSellingOffDiscount,
      'price': instance.price,
      'no_tax_price': instance.noTaxPrice,
      'max_buy_count': instance.maxBuyCount,
      'product_detail_key': instance.productDetailKey,
      'sale_price': instance.salePrice,
      'is_tax_included': instance.isTaxIncluded,
      'is_in_delivery_lead_time': instance.isInDeliveryLeadTime,
      'is_reserve_product': instance.isReserveProduct,
      'is_before_change_product_closing_datetime':
          instance.isBeforeChangeProductClosingDatetime,
      'change_product_closing_datetime':
          const NullableStringToEpochTimeConverter()
              .toJson(instance.epochChangeProductClosingDatetime),
      'is_regular_shipment_apply_product':
          instance.isRegularShipmentApplyProduct,
      'is_regular_shipment_discount': instance.isRegularShipmentDiscount,
    };
