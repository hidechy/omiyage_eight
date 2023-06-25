// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDetailsModel _$$_OrderDetailsModelFromJson(Map<String, dynamic> json) =>
    _$_OrderDetailsModel(
      isPackPriceTargetCustomer:
          json['is_pack_price_target_customer'] as bool? ?? false,
      customerType: json['customer_type'] as String? ?? '',
      shopName: json['shop_name'] as String? ?? '',
      isAkachanHonpoShop: json['is_akachan_honpo_shop'] as bool? ?? false,
      isAkachanHonpoAgencyShop:
          json['is_akachan_honpo_agency_shop'] as bool? ?? false,
      isBeforeChangeClosingDatetime:
          json['is_before_change_closing_datetime'] as bool? ?? false,
      isAdditionalOrderTerm: json['is_additional_order_term'] as bool? ?? false,
      isCorporateCustomer: json['is_corporate_customer'] as bool? ?? false,
      isNoContact: json['is_no_contact'] as bool? ?? false,
      isFixSetSale: json['is_fix_set_sale'] as bool? ?? false,
      isDeliveryPriceFree: json['is_delivery_price_free'] as bool? ?? false,
      isCancelPriceLevyOrder:
          json['is_cancel_price_levy_order'] as bool? ?? false,
      isCouponNanacoPointPlus:
          json['is_coupon_nanaco_point_plus'] as bool? ?? false,
      isCouponNanacoPointTimes:
          json['is_coupon_nanaco_point_times'] as bool? ?? false,
      isBeforeClosingDatetime:
          json['is_before_closing_datetime'] as bool? ?? false,
      isChangeOrderLoginShop:
          json['is_change_order_login_shop'] as bool? ?? false,
      isReserveOrder: json['is_reserve_order'] as bool? ?? false,
      isAdditionalOrderLoginShop:
          json['is_additional_order_login_shop'] as bool? ?? false,
      isCardDiscount: json['is_card_discount'] as bool? ?? false,
      hasDiscountCouponProduct:
          json['has_discount_coupon_product'] as bool? ?? false,
      hasApplyIyCardProduct:
          json['has_apply_iy_card_product'] as bool? ?? false,
      needNoStockContact: json['need_no_stock_contact'] as bool? ?? false,
      isDisplayDiscountColumn:
          json['is_display_discount_column'] as bool? ?? false,
      orderId: json['order_id'] as int? ?? 0,
      epochOrderDate: json['order_date'] == null
          ? 0
          : const StringToEpochTimeConverter()
              .fromJson(json['order_date'] as String),
      epochDeliveryPlanStartDatetime:
          json['delivery_plan_start_datetime'] == null
              ? 0
              : const StringToEpochTimeConverter()
                  .fromJson(json['delivery_plan_start_datetime'] as String),
      epochDeliveryPlanFinishDatetime:
          json['delivery_plan_finish_datetime'] == null
              ? 0
              : const StringToEpochTimeConverter()
                  .fromJson(json['delivery_plan_finish_datetime'] as String),
      fulfillmentType: $enumDecodeNullable(
              _$ResponseFulfillmentTypeEnumMap, json['fulfillment_type']) ??
          ResponseFulfillmentType.common,
      noStockContactType: json['no_stock_contact_type'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['no_stock_contact_type'] as String),
      epochChangeOrderClosingDatetime:
          const NullableStringToEpochTimeConverter()
              .fromJson(json['change_order_closing_datetime'] as String?),
      epochCancelOrderClosingDatetime:
          const NullableStringToEpochTimeConverter()
              .fromJson(json['cancel_order_closing_datetime'] as String?),
      epochAdditionalOrderClosingDatetime:
          const NullableStringToEpochTimeConverter()
              .fromJson(json['additional_order_closing_datetime'] as String?),
      additionalOrderStartDatetime:
          json['additional_order_start_datetime'] as String? ?? '',
      epochChangeDeliveryPlanClosingDatetime:
          const NullableStringToEpochTimeConverter().fromJson(
              json['change_delivery_plan_closing_datetime'] as String?),
      remainingDatetimeChangeOrderClosing:
          json['remaining_datetime_change_order_closing'] as String? ?? '',
      remainingDatetimeCancelOrderClosing:
          json['remaining_datetime_cancel_order_closing'] as String? ?? '',
      remainingDatetimeAdditionalOrderClosing:
          json['remaining_datetime_additional_order_closing'] as String? ?? '',
      remainingDatetimeChangeDeliveryPlanClosing:
          json['remaining_datetime_change_delivery_plan_closing'] as String? ??
              '',
      nanacoPaymentMethod: $enumDecodeNullable(
              _$NanacoPaymentMethodEnumMap, json['nanaco_payment_method']) ??
          NanacoPaymentMethod.cashOnDelivery,
      nameOfReceipt: json['name_of_receipt'] as String? ?? '',
      packMaterialType: $enumDecodeNullable(
              _$PackMaterialTypeEnumMap, json['pack_material_type']) ??
          PackMaterialType.plasticBag,
      packMethodType: json['pack_method_type'] as String? ?? '',
      memo: json['memo'] as String? ?? '',
      deliveryStatus: $enumDecodeNullable(
              _$DeliveryStatusEnumMap, json['delivery_status']) ??
          DeliveryStatus.undelivered,
      iyCardDiscountPrice: json['iy_card_discount_price'] as int? ?? 0,
      totalCardMemberDiscountPrice:
          json['total_card_member_discount_price'] as int? ?? 0,
      totalMixMatchDiscountPrice:
          json['total_mix_match_discount_price'] as int? ?? 0,
      totalSetSaleDiscountPrice:
          json['total_set_sale_discount_price'] as int? ?? 0,
      totalProgressiveDiscountPrice:
          json['total_progressive_discount_price'] as int? ?? 0,
      couponProductTotalPrice: json['coupon_product_total_price'] as int? ?? 0,
      totalSellingOffPrice: json['total_selling_off_price'] as int? ?? 0,
      shoppingBagPrice: json['shopping_bag_price'] as int? ?? 0,
      redeliveryPrice: json['redelivery_price'] as int? ?? 0,
      deliveryPrice: json['delivery_price'] as int? ?? 0,
      packPrice: json['pack_price'] as int? ?? 0,
      cashDeliveryPrice: json['cash_delivery_price'] as int? ?? 0,
      iyCardFlag:
          $enumDecodeNullable(_$IyCardFlagEnumMap, json['iy_card_flag']) ??
              IyCardFlag.invalid,
      couponPrice: json['coupon_price'] as int? ?? 0,
      productTotalPrice: json['product_total_price'] as int? ?? 0,
      totalPrice: json['total_price'] as int? ?? 0,
      nanacoPointUsePoint: json['nanaco_point_use_point'] as int? ?? 0,
      paymentAmount: json['payment_amount'] as int? ?? 0,
      totalNanacoPoints: json['total_nanaco_points'] as int? ?? 0,
      bonusPoint: json['bonus_point'] as int? ?? 0,
      couponPoint: json['coupon_point'] as int? ?? 0,
      couponPointDiv: $enumDecodeNullable(
              _$CouponPointDivEnumMap, json['coupon_point_div']) ??
          CouponPointDiv.none,
      nanacoPointStatus: $enumDecodeNullable(
              _$NanacoPointStatusEnumMap, json['nanaco_point_status']) ??
          NanacoPointStatus.unsent,
      epochNanacoPointResultDatetime:
          json['nanaco_point_result_datetime'] == null
              ? 0
              : const StringToEpochTimeConverter()
                  .fromJson(json['nanaco_point_result_datetime'] as String),
      disableDeliveryPlanChangeStartFlag:
          json['disable_delivery_plan_change_start_flag'] == null
              ? false
              : const StringToBooleanConverter().fromJson(
                  json['disable_delivery_plan_change_start_flag'] as String),
      reserveStatus:
          $enumDecodeNullable(_$ReserveStatusEnumMap, json['reserve_status']) ??
              ReserveStatus.notReservedOrder,
      isOrderLimit: json['is_order_limit'] as bool? ?? false,
      productCount: json['product_count'] as int? ?? 0,
      details: (json['details'] as List<dynamic>?)
              ?.map((e) =>
                  OrderDetailsListModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <OrderDetailsListModel>[],
      orderSetSaleGroups: (json['order_set_sale_groups'] as List<dynamic>?)
              ?.map((e) => OrderSetSaleGroupListModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const <OrderSetSaleGroupListModel>[],
      cancels: (json['cancels'] as List<dynamic>?)
              ?.map((e) => CancelPriceInformationModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const <CancelPriceInformationModel>[],
      taxPrices: (json['tax_prices'] as List<dynamic>?)
              ?.map((e) =>
                  TaxPriceInformationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <TaxPriceInformationModel>[],
      nanacoPointInformations: (json['nanaco_point_informations']
                  as List<dynamic>?)
              ?.map((e) => NanacoPointModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <NanacoPointModel>[],
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductModel>[],
      isRegularShipmentOrder:
          json['is_regular_shipment_order'] as bool? ?? false,
      isEnableOrderCancel: json['is_enable_order_cancel'] as bool? ?? false,
      regularShipmentDiscountPrice:
          json['regular_shipment_discount_price'] as int? ?? 0,
      productTotalPriceAfterRegularShipmentDiscount:
          json['product_total_price_after_regular_shipment_discount'] as int?,
      deliveryStatusConfirmationScreenUrl:
          json['delivery_status_confirmation_screen_url'] as String? ?? '',
      individualDeliveryPriceDiv: $enumDecodeNullable(
              _$IndividualDeliveryPriceTypeEnumMap,
              json['individual_delivery_price_div']) ??
          IndividualDeliveryPriceType.fixedAmount,
      individualDeliveryName: json['individual_delivery_name'] as String? ?? '',
      individualDeliveryPrice: json['individual_delivery_price'] as int? ?? 0,
      isBeforeDeliveryQuestionAnswerExpired:
          json['is_before_delivery_question_answer_expired'] as bool? ?? false,
      deliveryQuestionUrl: json['delivery_question_url'] as String? ?? '',
      regularShipmentDiscountRate:
          json['regular_shipment_discount_rate'] as int? ?? 0,
      regularShipmentDiscountBeforeTotalPrice:
          json['regular_shipment_discount_before_total_price'] as int? ?? 0,
      status: $enumDecodeNullable(_$OrderStatusEnumMap, json['status']) ??
          OrderStatus.undeliveried,
      regularShipmentDiscountPlanPrice:
          json['regular_shipment_discount_plan_price'] as int?,
      switchedPackageDropFlag: json['switched_package_drop_flag'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['switched_package_drop_flag'] as String),
      packageDropPlace: $enumDecodeNullable(
              _$PackageDropPlaceEnumMap, json['package_drop_place']) ??
          PackageDropPlace.notPackageDropPlace,
      packageDropPlaceDetail:
          json['package_drop_place_detail'] as String? ?? '',
    );

Map<String, dynamic> _$$_OrderDetailsModelToJson(
        _$_OrderDetailsModel instance) =>
    <String, dynamic>{
      'is_pack_price_target_customer': instance.isPackPriceTargetCustomer,
      'customer_type': instance.customerType,
      'shop_name': instance.shopName,
      'is_akachan_honpo_shop': instance.isAkachanHonpoShop,
      'is_akachan_honpo_agency_shop': instance.isAkachanHonpoAgencyShop,
      'is_before_change_closing_datetime':
          instance.isBeforeChangeClosingDatetime,
      'is_additional_order_term': instance.isAdditionalOrderTerm,
      'is_corporate_customer': instance.isCorporateCustomer,
      'is_no_contact': instance.isNoContact,
      'is_fix_set_sale': instance.isFixSetSale,
      'is_delivery_price_free': instance.isDeliveryPriceFree,
      'is_cancel_price_levy_order': instance.isCancelPriceLevyOrder,
      'is_coupon_nanaco_point_plus': instance.isCouponNanacoPointPlus,
      'is_coupon_nanaco_point_times': instance.isCouponNanacoPointTimes,
      'is_before_closing_datetime': instance.isBeforeClosingDatetime,
      'is_change_order_login_shop': instance.isChangeOrderLoginShop,
      'is_reserve_order': instance.isReserveOrder,
      'is_additional_order_login_shop': instance.isAdditionalOrderLoginShop,
      'is_card_discount': instance.isCardDiscount,
      'has_discount_coupon_product': instance.hasDiscountCouponProduct,
      'has_apply_iy_card_product': instance.hasApplyIyCardProduct,
      'need_no_stock_contact': instance.needNoStockContact,
      'is_display_discount_column': instance.isDisplayDiscountColumn,
      'order_id': instance.orderId,
      'order_date':
          const StringToEpochTimeConverter().toJson(instance.epochOrderDate),
      'delivery_plan_start_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochDeliveryPlanStartDatetime),
      'delivery_plan_finish_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochDeliveryPlanFinishDatetime),
      'fulfillment_type':
          _$ResponseFulfillmentTypeEnumMap[instance.fulfillmentType]!,
      'no_stock_contact_type':
          const StringToBooleanConverter().toJson(instance.noStockContactType),
      'change_order_closing_datetime':
          const NullableStringToEpochTimeConverter()
              .toJson(instance.epochChangeOrderClosingDatetime),
      'cancel_order_closing_datetime':
          const NullableStringToEpochTimeConverter()
              .toJson(instance.epochCancelOrderClosingDatetime),
      'additional_order_closing_datetime':
          const NullableStringToEpochTimeConverter()
              .toJson(instance.epochAdditionalOrderClosingDatetime),
      'additional_order_start_datetime': instance.additionalOrderStartDatetime,
      'change_delivery_plan_closing_datetime':
          const NullableStringToEpochTimeConverter()
              .toJson(instance.epochChangeDeliveryPlanClosingDatetime),
      'remaining_datetime_change_order_closing':
          instance.remainingDatetimeChangeOrderClosing,
      'remaining_datetime_cancel_order_closing':
          instance.remainingDatetimeCancelOrderClosing,
      'remaining_datetime_additional_order_closing':
          instance.remainingDatetimeAdditionalOrderClosing,
      'remaining_datetime_change_delivery_plan_closing':
          instance.remainingDatetimeChangeDeliveryPlanClosing,
      'nanaco_payment_method':
          _$NanacoPaymentMethodEnumMap[instance.nanacoPaymentMethod]!,
      'name_of_receipt': instance.nameOfReceipt,
      'pack_material_type':
          _$PackMaterialTypeEnumMap[instance.packMaterialType]!,
      'pack_method_type': instance.packMethodType,
      'memo': instance.memo,
      'delivery_status': _$DeliveryStatusEnumMap[instance.deliveryStatus]!,
      'iy_card_discount_price': instance.iyCardDiscountPrice,
      'total_card_member_discount_price': instance.totalCardMemberDiscountPrice,
      'total_mix_match_discount_price': instance.totalMixMatchDiscountPrice,
      'total_set_sale_discount_price': instance.totalSetSaleDiscountPrice,
      'total_progressive_discount_price':
          instance.totalProgressiveDiscountPrice,
      'coupon_product_total_price': instance.couponProductTotalPrice,
      'total_selling_off_price': instance.totalSellingOffPrice,
      'shopping_bag_price': instance.shoppingBagPrice,
      'redelivery_price': instance.redeliveryPrice,
      'delivery_price': instance.deliveryPrice,
      'pack_price': instance.packPrice,
      'cash_delivery_price': instance.cashDeliveryPrice,
      'iy_card_flag': _$IyCardFlagEnumMap[instance.iyCardFlag]!,
      'coupon_price': instance.couponPrice,
      'product_total_price': instance.productTotalPrice,
      'total_price': instance.totalPrice,
      'nanaco_point_use_point': instance.nanacoPointUsePoint,
      'payment_amount': instance.paymentAmount,
      'total_nanaco_points': instance.totalNanacoPoints,
      'bonus_point': instance.bonusPoint,
      'coupon_point': instance.couponPoint,
      'coupon_point_div': _$CouponPointDivEnumMap[instance.couponPointDiv]!,
      'nanaco_point_status':
          _$NanacoPointStatusEnumMap[instance.nanacoPointStatus]!,
      'nanaco_point_result_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochNanacoPointResultDatetime),
      'disable_delivery_plan_change_start_flag':
          const StringToBooleanConverter()
              .toJson(instance.disableDeliveryPlanChangeStartFlag),
      'reserve_status': _$ReserveStatusEnumMap[instance.reserveStatus]!,
      'is_order_limit': instance.isOrderLimit,
      'product_count': instance.productCount,
      'details': instance.details.map((e) => e.toJson()).toList(),
      'order_set_sale_groups':
          instance.orderSetSaleGroups.map((e) => e.toJson()).toList(),
      'cancels': instance.cancels.map((e) => e.toJson()).toList(),
      'tax_prices': instance.taxPrices.map((e) => e.toJson()).toList(),
      'nanaco_point_informations':
          instance.nanacoPointInformations.map((e) => e.toJson()).toList(),
      'products': instance.products.map((e) => e.toJson()).toList(),
      'is_regular_shipment_order': instance.isRegularShipmentOrder,
      'is_enable_order_cancel': instance.isEnableOrderCancel,
      'regular_shipment_discount_price': instance.regularShipmentDiscountPrice,
      'product_total_price_after_regular_shipment_discount':
          instance.productTotalPriceAfterRegularShipmentDiscount,
      'delivery_status_confirmation_screen_url':
          instance.deliveryStatusConfirmationScreenUrl,
      'individual_delivery_price_div': _$IndividualDeliveryPriceTypeEnumMap[
          instance.individualDeliveryPriceDiv]!,
      'individual_delivery_name': instance.individualDeliveryName,
      'individual_delivery_price': instance.individualDeliveryPrice,
      'is_before_delivery_question_answer_expired':
          instance.isBeforeDeliveryQuestionAnswerExpired,
      'delivery_question_url': instance.deliveryQuestionUrl,
      'regular_shipment_discount_rate': instance.regularShipmentDiscountRate,
      'regular_shipment_discount_before_total_price':
          instance.regularShipmentDiscountBeforeTotalPrice,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'regular_shipment_discount_plan_price':
          instance.regularShipmentDiscountPlanPrice,
      'switched_package_drop_flag': const StringToBooleanConverter()
          .toJson(instance.switchedPackageDropFlag),
      'package_drop_place':
          _$PackageDropPlaceEnumMap[instance.packageDropPlace]!,
      'package_drop_place_detail': instance.packageDropPlaceDetail,
    };

const _$ResponseFulfillmentTypeEnumMap = {
  ResponseFulfillmentType.common: '01',
  ResponseFulfillmentType.commonRemote: '02',
  ResponseFulfillmentType.pickupStore: '03',
  ResponseFulfillmentType.packageDrop: '04',
  ResponseFulfillmentType.pickup7iLocker: '05',
  ResponseFulfillmentType.pickupStoreLocker: '06',
  ResponseFulfillmentType.none: '',
};

const _$NanacoPaymentMethodEnumMap = {
  NanacoPaymentMethod.cashOnDelivery: '1',
  NanacoPaymentMethod.creditCard: '2',
  NanacoPaymentMethod.creditCardAndPoints: '3',
  NanacoPaymentMethod.useFullPoints: '4',
  NanacoPaymentMethod.cashOnDeliveryAndPoints: '5',
  NanacoPaymentMethod.none: '',
};

const _$PackMaterialTypeEnumMap = {
  PackMaterialType.plasticBag: '0',
  PackMaterialType.ecoBag: '1',
  PackMaterialType.simplePackaging: '2',
  PackMaterialType.none: '',
};

const _$DeliveryStatusEnumMap = {
  DeliveryStatus.undelivered: '0',
  DeliveryStatus.notReceive: '1',
  DeliveryStatus.inDelivery: '2',
  DeliveryStatus.delivered: '3',
  DeliveryStatus.received: '4',
  DeliveryStatus.none: '',
};

const _$IyCardFlagEnumMap = {
  IyCardFlag.invalid: '0',
  IyCardFlag.iy: '1',
  IyCardFlag.nanaco: '2',
  IyCardFlag.seniorNanaco: '3',
  IyCardFlag.point: '4',
  IyCardFlag.none: '',
};

const _$CouponPointDivEnumMap = {
  CouponPointDiv.pointPlus: '1',
  CouponPointDiv.pointNTimes: '2',
  CouponPointDiv.none: '',
};

const _$NanacoPointStatusEnumMap = {
  NanacoPointStatus.unsent: '0',
  NanacoPointStatus.completeSent: '1',
  NanacoPointStatus.completeReceiveResultNormal: '2',
  NanacoPointStatus.completeReceiveResultError: '3',
  NanacoPointStatus.requestRegrant: '4',
  NanacoPointStatus.completeRequestRegrant: '5',
  NanacoPointStatus.none: '',
};

const _$ReserveStatusEnumMap = {
  ReserveStatus.notReservedOrder: '0',
  ReserveStatus.onlyReservedOrder: '1',
  ReserveStatus.hasReservedOrder: '2',
  ReserveStatus.none: '',
};

const _$IndividualDeliveryPriceTypeEnumMap = {
  IndividualDeliveryPriceType.fixedAmount: '1',
  IndividualDeliveryPriceType.percentDiscount: '2',
  IndividualDeliveryPriceType.standard: '',
};

const _$OrderStatusEnumMap = {
  OrderStatus.undeliveried: '0',
  OrderStatus.deliveried: '1',
  OrderStatus.recordSales: '2',
  OrderStatus.instructed: '3',
  OrderStatus.takeOut: '4',
  OrderStatus.creditError: '5',
  OrderStatus.autoCancel: '6',
  OrderStatus.undeliverableAll: '7',
  OrderStatus.undeliverablePart: '8',
  OrderStatus.none: '',
};

const _$PackageDropPlaceEnumMap = {
  PackageDropPlace.rightAtTheEntrance: '1',
  PackageDropPlace.leftAtTheEntrance: '2',
  PackageDropPlace.underTheIntercom: '3',
  PackageDropPlace.other: '9',
  PackageDropPlace.notPackageDropPlace: '',
};
