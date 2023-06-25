// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartModel _$$_CartModelFromJson(Map<String, dynamic> json) => _$_CartModel(
      cartId: json['cart_id'] as int? ?? -1,
      cartStatus:
          $enumDecodeNullable(_$CartStatusEnumMap, json['cart_status']) ??
              CartStatus.visitorHomeDelivery,
      shop: json['shop'] == null
          ? const ShopModel()
          : ShopModel.fromJson(json['shop'] as Map<String, dynamic>),
      memo: json['memo'] as String? ?? '',
      isReserveOrder: json['is_reserve_order'] as bool? ?? false,
      isAdditionalOrderTerm: json['is_additional_order_term'] as bool? ?? false,
      epochReserveClosingDatetime: json['reserve_closing_datetime'] == null
          ? 0
          : const StringToEpochTimeConverter()
              .fromJson(json['reserve_closing_datetime'] as String),
      isDisplayAbsent: json['is_display_absent'] as bool? ?? false,
      isPointReceiptOrder: json['is_point_receipt_order'] as bool? ?? false,
      cartDetails: (json['cart_details'] as List<dynamic>?)
              ?.map((e) => CartDetailsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CartDetailsModel>[],
      warnMessages: json['warn_messages'] == null
          ? const <WarnMessageModel>[]
          : _warnMessagesFromJson(json['warn_messages'] as List?),
      isDeliveryPriceChange: json['is_delivery_price_change'] as bool? ?? false,
      isSelectedDeliveryTime:
          json['is_selected_delivery_time'] as bool? ?? false,
      epochDeliveryPlanFromDatetime: json['delivery_plan_from_datetime'] == null
          ? 0
          : const StringToEpochTimeConverter()
              .fromJson(json['delivery_plan_from_datetime'] as String),
      epochDeliveryPlanToDatetime: json['delivery_plan_to_datetime'] == null
          ? 0
          : const StringToEpochTimeConverter()
              .fromJson(json['delivery_plan_to_datetime'] as String),
      epochReserveDeliveryDatetime: json['reserve_delivery_datetime'] == null
          ? 0
          : const StringToEpochTimeConverter()
              .fromJson(json['reserve_delivery_datetime'] as String),
      deliveryTimeId: json['delivery_time_id'] as String? ?? '',
      isBeforeChangeClosingDatetime:
          json['is_before_change_closing_datetime'] as bool? ?? false,
      isCartAllocationValid: json['is_cart_allocation_valid'] as bool? ?? false,
      fulfillmentType: $enumDecodeNullable(
              _$CartFulfillmentTypeEnumMap, json['fulfillment_type']) ??
          CartFulfillmentType.none,
      deliveryAddress: json['delivery_address'] == null
          ? null
          : CartDeliveryAddressModel.fromJson(
              json['delivery_address'] as Map<String, dynamic>),
      receiptPointName: json['receipt_point_name'] as String? ?? '',
      receiptPointId: json['receipt_point_id'] as String? ?? '',
      isCorporateCustomer: json['is_corporate_customer'] as bool? ?? false,
      packMaterialType: $enumDecodeNullable(
              _$PackMaterialTypeEnumMap, json['pack_material_type']) ??
          PackMaterialType.none,
      isRequestEcoBasketReturn:
          json['is_request_eco_basket_return'] as bool? ?? false,
      shoppingBagPrice: json['shopping_bag_price'] as int? ?? 0,
      nameOfReceipt: json['name_of_receipt'] as String? ?? '',
      isPackPriceTargetCustomer:
          json['is_pack_price_target_customer'] as bool? ?? false,
      packMethodType: $enumDecodeNullable(
              _$PackMethodTypeEnumMap, json['pack_method_type']) ??
          PackMethodType.individualOrder,
      packMethodInformations:
          (json['pack_method_informations'] as List<dynamic>?)
                  ?.map((e) => PackMethodInformationModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              const <PackMethodInformationModel>[],
      paymentMethod: $enumDecodeNullable(
              _$PaymentMethodTypeEnumMap, json['payment_method']) ??
          PaymentMethodType.none,
      hasNanacoNumber: json['has_nanaco_number'] as bool? ?? false,
      isLimitedCreditCardUse:
          json['is_limited_credit_card_use'] as bool? ?? false,
      creditCardLastFourDigits:
          json['credit_card_last_four_digits'] as String? ?? '',
      isNanacoPointUse: json['is_nanaco_point_use'] as bool? ?? false,
      nanacoPointUsePoint: json['nanaco_point_use_point'] as int? ?? 0,
      canUseNanacoPoint: json['can_use_nanaco_point'] as int? ?? 0,
      nanacoPointUseType: $enumDecodeNullable(
              _$NanacoPointUseTypeEnumMap, json['nanaco_point_use_type']) ??
          NanacoPointUseType.useAllPoints,
      couponName: json['coupon_name'] as String? ?? '',
      hasDiscountCouponProduct:
          json['has_discount_coupon_product'] as bool? ?? false,
      isCouponUse: json['is_coupon_use'] as bool? ?? false,
      couponCode: json['coupon_code'] as String? ?? '',
      couponUseRemainingNumber: json['coupon_use_remaining_number'] as int?,
      epochCouponUseDeliveryStartDate:
          const NullableStringToEpochTimeConverter()
              .fromJson(json['coupon_use_delivery_start_date'] as String?),
      epochCouponUseDeliveryFinishDatetime:
          const NullableStringToEpochTimeConverter()
              .fromJson(json['coupon_use_delivery_finish_datetime'] as String?),
      couponGuide: json['coupon_guide'] as String? ?? '',
      needNoStockContact: json['need_no_stock_contact'] as bool? ?? false,
      canUseNoContact: json['can_use_no_contact'] as bool? ?? false,
      mainMailAddress: json['main_mail_address'] as String? ?? '',
      subMailAddress: json['sub_mail_address'] as String? ?? '',
      totalMixMatchDiscountPrice:
          json['total_mix_match_discount_price'] as int? ?? 0,
      totalSetSaleDiscountPrice:
          json['total_set_sale_discount_price'] as int? ?? 0,
      totalProgressiveDiscountPrice:
          json['total_progressive_discount_price'] as int? ?? 0,
      totalCardMemberDiscountPrice:
          json['total_card_member_discount_price'] as int? ?? 0,
      couponProductTotalPrice: json['coupon_product_total_price'] as int? ?? 0,
      totalSellingOffDiscountPrice:
          json['total_selling_off_discount_price'] as int? ?? 0,
      deliveryPrice: json['delivery_price'] as int? ?? 0,
      isDeliveryPriceCampaign:
          json['is_delivery_price_campaign'] as bool? ?? false,
      nextDifferenceDeliveryPrice:
          json['next_difference_delivery_price'] as int? ?? 0,
      nextDeliveryPrice: json['next_delivery_price'] as int? ?? 0,
      differenceDeliveryFree: json['difference_delivery_free'] as int? ?? 0,
      maxDeliveryPrice: json['max_delivery_price'] as int? ?? 0,
      deliveryType: $enumDecodeNullable(
              _$DeliveryFeeTypeEnumMap, json['delivery_type']) ??
          DeliveryFeeType.normalDeliveryFee,
      isIndividualDeliveryPriceTargetCustomer:
          json['is_individual_delivery_price_target_customer'] as bool? ??
              false,
      individualDeliveryPriceType: $enumDecodeNullable(
              _$IndividualDeliveryPriceTypeEnumMap,
              json['individual_delivery_price_type']) ??
          IndividualDeliveryPriceType.standard,
      individualDeliveryName: json['individual_delivery_name'] as String? ?? '',
      individualDeliveryPrice: json['individual_delivery_price'] as int?,
      epochDeliveryTypeStartDatetime: const NullableStringToEpochTimeConverter()
          .fromJson(json['delivery_type_start_datetime'] as String?),
      epochDeliveryTypeFinishDatetime:
          const NullableStringToEpochTimeConverter()
              .fromJson(json['delivery_type_finish_datetime'] as String?),
      individualDeliveryDiscountRate:
          json['individual_delivery_discount_rate'] as int?,
      packPrice: json['pack_price'] as int? ?? 0,
      cashDeliveryPrice: json['cash_delivery_price'] as int? ?? 0,
      cancelPriceInformations:
          (json['cancel_price_informations'] as List<dynamic>?)
                  ?.map((e) => CancelPriceInformationModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList() ??
              const <CancelPriceInformationModel>[],
      iyCardDiscountPrice: json['iy_card_discount_price'] as int? ?? 0,
      couponPrice: json['coupon_price'] as int? ?? 0,
      totalPrice: json['total_price'] as int? ?? 0,
      noTaxTotalPrice: json['no_tax_total_price'] as int? ?? 0,
      taxPriceInformations: (json['tax_price_informations'] as List<dynamic>?)
              ?.map((e) =>
                  TaxPriceInformationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <TaxPriceInformationModel>[],
      paymentAmount: json['payment_amount'] as int? ?? 0,
      ticketCount: json['ticket_count'] as int? ?? 0,
      totalNanacoPoints: json['total_nanaco_points'] as int? ?? 0,
      nanacoPointInformations: (json['nanaco_point_informations']
                  as List<dynamic>?)
              ?.map((e) => NanacoPointModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <NanacoPointModel>[],
      bonusPoint: json['bonus_point'] as int? ?? 0,
      isCouponNanacoPointPlus:
          json['is_coupon_nanaco_point_plus'] as bool? ?? false,
      couponPoint: json['coupon_point'] as int? ?? 0,
      isCouponNanacoPointTimes:
          json['is_coupon_nanaco_point_times'] as bool? ?? false,
      isNoContact: json['is_no_contact'] as bool? ?? false,
      shopCashDeliveryPrice: json['shop_cash_delivery_price'] as int? ?? 0,
      creditCardInformationKey:
          json['credit_card_information_key'] as String? ?? '',
      hasLockoutCreditCard: json['has_lockout_credit_card'] as bool? ?? false,
      isDisplaySecurityCodeInput:
          json['is_display_security_code_input'] as bool? ?? false,
      creditCardNewsText: json['credit_card_news_text'] as String? ?? '',
      maskedNanacoNumber: json['masked_nanaco_number'] as String? ?? '',
      orderStatus: $enumDecodeNullable(
              _$CartOrderStatusTypeEnumMap, json['order_status']) ??
          CartOrderStatusType.notOrdered,
      nanacoPointUseTargetPrice:
          json['nanaco_point_use_target_price'] as int? ?? 0,
      oldOrder: json['old_order'] == null
          ? null
          : OldOrderModel.fromJson(json['old_order'] as Map<String, dynamic>),
      isApplyNanacoPoint: json['is_apply_nanaco_point'] as bool? ?? false,
      hasApplyIyCardMemberDiscountProduct:
          json['has_apply_iy_card_member_discount_product'] as bool? ?? false,
      sevenCsFlag: $enumDecodeNullable(
              _$SevenCSCertificationTypeEnumMap, json['seven_cs_flag']) ??
          SevenCSCertificationType.unauthenticated,
      productCount: json['product_count'] as int? ?? 0,
      productTotalPrice: json['product_total_price'] as int? ?? 0,
      subProductTotalPrice: json['sub_product_total_price'] as int? ?? 0,
      noTaxSubProductTotalPrice:
          json['no_tax_sub_product_total_price'] as int? ?? 0,
      noTaxProductTotalPrice: json['no_tax_product_total_price'] as int? ?? 0,
      hasNanacoPointProduct: json['has_nanaco_point_product'] as bool? ?? false,
      isDisplayCouponSelect: json['is_display_coupon_select'] as bool? ?? false,
      redeliveryPrice: json['redelivery_price'] as int? ?? 0,
      isDebitPrepaidCardPayWarn:
          json['is_debit_prepaid_card_pay_warn'] as bool? ?? false,
      isNanacoNumberAuthentication:
          json['is_nanaco_number_authentication'] as bool? ?? false,
      nanacoConfirmType: $enumDecodeNullable(
              _$NanacoConfirmTypeEnumMap, json['nanaco_confirm_type']) ??
          NanacoConfirmType.securityCodeAuthentication,
      reserveStatus: $enumDecodeNullable(
              _$CartReserveStatusTypeEnumMap, json['reserve_status']) ??
          CartReserveStatusType.nonReservedOrders,
      reserveDeliveryDates: (json['reserve_delivery_dates'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      isRegularShipmentApplyCart:
          json['is_regular_shipment_apply_cart'] as bool? ?? false,
      regularShipmentDiscountRate:
          json['regular_shipment_discount_rate'] as int?,
      regularShipmentDiscountPrice:
          json['regular_shipment_discount_price'] as int?,
      regularShipmentDeliveryWeekDiv: $enumDecodeNullable(
              _$RegularShipmentDeliveryWeekDivEnumMap,
              json['regular_shipment_delivery_week_div']) ??
          RegularShipmentDeliveryWeekDiv.none,
      epochRegularShipmentDeliveryDate:
          const NullableStringToEpochTimeConverter()
              .fromJson(json['regular_shipment_delivery_date'] as String?),
      regularShipmentDeliveryStartTime:
          json['regular_shipment_delivery_start_time'] as String?,
      regularShipmentDeliveryFinishTime:
          json['regular_shipment_delivery_finish_time'] as String?,
      isRegularShipmentOrder:
          json['is_regular_shipment_order'] as bool? ?? false,
      productTotalPriceAfterRegularShipmentDiscount:
          json['product_total_price_after_regular_shipment_discount'] as int?,
      isConsentMedicine: json['is_consent_medicine'] as bool? ?? false,
      isConsentAkachanHonpo: json['is_consent_akachan_honpo'] as bool? ?? false,
      isEarlyCancelOrderClosing:
          json['is_early_cancel_order_closing'] as bool? ?? false,
      epochCancelOrderClosingDatetime:
          const NullableStringToEpochTimeConverter()
              .fromJson(json['cancel_order_closing_datetime'] as String?),
      visitorCartFlag: json['visitor_cart_flag'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['visitor_cart_flag'] as String),
      deemedDeliveryCartFlag: json['deemed_delivery_cart_flag'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['deemed_delivery_cart_flag'] as String),
      packageDropPlace: $enumDecodeNullable(
              _$PackageDropPlaceEnumMap, json['package_drop_place']) ??
          PackageDropPlace.notPackageDropPlace,
      packageDropPlaceDetail:
          json['package_drop_place_detail'] as String? ?? '',
      epochUpdateDatetime: json['update_datetime'] == null
          ? 0
          : const StringToEpochTimeConverter()
              .fromJson(json['update_datetime'] as String),
      switchedPackageDropFlag: json['switched_package_drop_flag'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['switched_package_drop_flag'] as String),
      switchablePackageDropFlag: json['switchable_package_drop_flag'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['switchable_package_drop_flag'] as String),
      epochCartDeleteDatetime: json['cart_delete_datetime'] == null
          ? 0
          : const StringToEpochTimeConverter()
              .fromJson(json['cart_delete_datetime'] as String),
      remainingTimeUntilCartDelete:
          json['remaining_time_until_cart_delete'] as String? ?? '',
    );

Map<String, dynamic> _$$_CartModelToJson(_$_CartModel instance) =>
    <String, dynamic>{
      'cart_id': instance.cartId,
      'cart_status': _$CartStatusEnumMap[instance.cartStatus]!,
      'shop': instance.shop.toJson(),
      'memo': instance.memo,
      'is_reserve_order': instance.isReserveOrder,
      'is_additional_order_term': instance.isAdditionalOrderTerm,
      'reserve_closing_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochReserveClosingDatetime),
      'is_display_absent': instance.isDisplayAbsent,
      'is_point_receipt_order': instance.isPointReceiptOrder,
      'cart_details': instance.cartDetails.map((e) => e.toJson()).toList(),
      'warn_messages': instance.warnMessages.map((e) => e.toJson()).toList(),
      'is_delivery_price_change': instance.isDeliveryPriceChange,
      'is_selected_delivery_time': instance.isSelectedDeliveryTime,
      'delivery_plan_from_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochDeliveryPlanFromDatetime),
      'delivery_plan_to_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochDeliveryPlanToDatetime),
      'reserve_delivery_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochReserveDeliveryDatetime),
      'delivery_time_id': instance.deliveryTimeId,
      'is_before_change_closing_datetime':
          instance.isBeforeChangeClosingDatetime,
      'is_cart_allocation_valid': instance.isCartAllocationValid,
      'fulfillment_type':
          _$CartFulfillmentTypeEnumMap[instance.fulfillmentType]!,
      'delivery_address': instance.deliveryAddress?.toJson(),
      'receipt_point_name': instance.receiptPointName,
      'receipt_point_id': instance.receiptPointId,
      'is_corporate_customer': instance.isCorporateCustomer,
      'pack_material_type':
          _$PackMaterialTypeEnumMap[instance.packMaterialType]!,
      'is_request_eco_basket_return': instance.isRequestEcoBasketReturn,
      'shopping_bag_price': instance.shoppingBagPrice,
      'name_of_receipt': instance.nameOfReceipt,
      'is_pack_price_target_customer': instance.isPackPriceTargetCustomer,
      'pack_method_type': _$PackMethodTypeEnumMap[instance.packMethodType]!,
      'pack_method_informations':
          instance.packMethodInformations.map((e) => e.toJson()).toList(),
      'payment_method': _$PaymentMethodTypeEnumMap[instance.paymentMethod]!,
      'has_nanaco_number': instance.hasNanacoNumber,
      'is_limited_credit_card_use': instance.isLimitedCreditCardUse,
      'credit_card_last_four_digits': instance.creditCardLastFourDigits,
      'is_nanaco_point_use': instance.isNanacoPointUse,
      'nanaco_point_use_point': instance.nanacoPointUsePoint,
      'can_use_nanaco_point': instance.canUseNanacoPoint,
      'nanaco_point_use_type':
          _$NanacoPointUseTypeEnumMap[instance.nanacoPointUseType]!,
      'coupon_name': instance.couponName,
      'has_discount_coupon_product': instance.hasDiscountCouponProduct,
      'is_coupon_use': instance.isCouponUse,
      'coupon_code': instance.couponCode,
      'coupon_use_remaining_number': instance.couponUseRemainingNumber,
      'coupon_use_delivery_start_date':
          const NullableStringToEpochTimeConverter()
              .toJson(instance.epochCouponUseDeliveryStartDate),
      'coupon_use_delivery_finish_datetime':
          const NullableStringToEpochTimeConverter()
              .toJson(instance.epochCouponUseDeliveryFinishDatetime),
      'coupon_guide': instance.couponGuide,
      'need_no_stock_contact': instance.needNoStockContact,
      'can_use_no_contact': instance.canUseNoContact,
      'main_mail_address': instance.mainMailAddress,
      'sub_mail_address': instance.subMailAddress,
      'total_mix_match_discount_price': instance.totalMixMatchDiscountPrice,
      'total_set_sale_discount_price': instance.totalSetSaleDiscountPrice,
      'total_progressive_discount_price':
          instance.totalProgressiveDiscountPrice,
      'total_card_member_discount_price': instance.totalCardMemberDiscountPrice,
      'coupon_product_total_price': instance.couponProductTotalPrice,
      'total_selling_off_discount_price': instance.totalSellingOffDiscountPrice,
      'delivery_price': instance.deliveryPrice,
      'is_delivery_price_campaign': instance.isDeliveryPriceCampaign,
      'next_difference_delivery_price': instance.nextDifferenceDeliveryPrice,
      'next_delivery_price': instance.nextDeliveryPrice,
      'difference_delivery_free': instance.differenceDeliveryFree,
      'max_delivery_price': instance.maxDeliveryPrice,
      'delivery_type': _$DeliveryFeeTypeEnumMap[instance.deliveryType]!,
      'is_individual_delivery_price_target_customer':
          instance.isIndividualDeliveryPriceTargetCustomer,
      'individual_delivery_price_type': _$IndividualDeliveryPriceTypeEnumMap[
          instance.individualDeliveryPriceType]!,
      'individual_delivery_name': instance.individualDeliveryName,
      'individual_delivery_price': instance.individualDeliveryPrice,
      'delivery_type_start_datetime': const NullableStringToEpochTimeConverter()
          .toJson(instance.epochDeliveryTypeStartDatetime),
      'delivery_type_finish_datetime':
          const NullableStringToEpochTimeConverter()
              .toJson(instance.epochDeliveryTypeFinishDatetime),
      'individual_delivery_discount_rate':
          instance.individualDeliveryDiscountRate,
      'pack_price': instance.packPrice,
      'cash_delivery_price': instance.cashDeliveryPrice,
      'cancel_price_informations':
          instance.cancelPriceInformations.map((e) => e.toJson()).toList(),
      'iy_card_discount_price': instance.iyCardDiscountPrice,
      'coupon_price': instance.couponPrice,
      'total_price': instance.totalPrice,
      'no_tax_total_price': instance.noTaxTotalPrice,
      'tax_price_informations':
          instance.taxPriceInformations.map((e) => e.toJson()).toList(),
      'payment_amount': instance.paymentAmount,
      'ticket_count': instance.ticketCount,
      'total_nanaco_points': instance.totalNanacoPoints,
      'nanaco_point_informations':
          instance.nanacoPointInformations.map((e) => e.toJson()).toList(),
      'bonus_point': instance.bonusPoint,
      'is_coupon_nanaco_point_plus': instance.isCouponNanacoPointPlus,
      'coupon_point': instance.couponPoint,
      'is_coupon_nanaco_point_times': instance.isCouponNanacoPointTimes,
      'is_no_contact': instance.isNoContact,
      'shop_cash_delivery_price': instance.shopCashDeliveryPrice,
      'credit_card_information_key': instance.creditCardInformationKey,
      'has_lockout_credit_card': instance.hasLockoutCreditCard,
      'is_display_security_code_input': instance.isDisplaySecurityCodeInput,
      'credit_card_news_text': instance.creditCardNewsText,
      'masked_nanaco_number': instance.maskedNanacoNumber,
      'order_status': _$CartOrderStatusTypeEnumMap[instance.orderStatus]!,
      'nanaco_point_use_target_price': instance.nanacoPointUseTargetPrice,
      'old_order': instance.oldOrder?.toJson(),
      'is_apply_nanaco_point': instance.isApplyNanacoPoint,
      'has_apply_iy_card_member_discount_product':
          instance.hasApplyIyCardMemberDiscountProduct,
      'seven_cs_flag': _$SevenCSCertificationTypeEnumMap[instance.sevenCsFlag]!,
      'product_count': instance.productCount,
      'product_total_price': instance.productTotalPrice,
      'sub_product_total_price': instance.subProductTotalPrice,
      'no_tax_sub_product_total_price': instance.noTaxSubProductTotalPrice,
      'no_tax_product_total_price': instance.noTaxProductTotalPrice,
      'has_nanaco_point_product': instance.hasNanacoPointProduct,
      'is_display_coupon_select': instance.isDisplayCouponSelect,
      'redelivery_price': instance.redeliveryPrice,
      'is_debit_prepaid_card_pay_warn': instance.isDebitPrepaidCardPayWarn,
      'is_nanaco_number_authentication': instance.isNanacoNumberAuthentication,
      'nanaco_confirm_type':
          _$NanacoConfirmTypeEnumMap[instance.nanacoConfirmType]!,
      'reserve_status': _$CartReserveStatusTypeEnumMap[instance.reserveStatus]!,
      'reserve_delivery_dates': instance.reserveDeliveryDates,
      'is_regular_shipment_apply_cart': instance.isRegularShipmentApplyCart,
      'regular_shipment_discount_rate': instance.regularShipmentDiscountRate,
      'regular_shipment_discount_price': instance.regularShipmentDiscountPrice,
      'regular_shipment_delivery_week_div':
          _$RegularShipmentDeliveryWeekDivEnumMap[
              instance.regularShipmentDeliveryWeekDiv]!,
      'regular_shipment_delivery_date':
          const NullableStringToEpochTimeConverter()
              .toJson(instance.epochRegularShipmentDeliveryDate),
      'regular_shipment_delivery_start_time':
          instance.regularShipmentDeliveryStartTime,
      'regular_shipment_delivery_finish_time':
          instance.regularShipmentDeliveryFinishTime,
      'is_regular_shipment_order': instance.isRegularShipmentOrder,
      'product_total_price_after_regular_shipment_discount':
          instance.productTotalPriceAfterRegularShipmentDiscount,
      'is_consent_medicine': instance.isConsentMedicine,
      'is_consent_akachan_honpo': instance.isConsentAkachanHonpo,
      'is_early_cancel_order_closing': instance.isEarlyCancelOrderClosing,
      'cancel_order_closing_datetime':
          const NullableStringToEpochTimeConverter()
              .toJson(instance.epochCancelOrderClosingDatetime),
      'visitor_cart_flag':
          const StringToBooleanConverter().toJson(instance.visitorCartFlag),
      'deemed_delivery_cart_flag': const StringToBooleanConverter()
          .toJson(instance.deemedDeliveryCartFlag),
      'package_drop_place':
          _$PackageDropPlaceEnumMap[instance.packageDropPlace]!,
      'package_drop_place_detail': instance.packageDropPlaceDetail,
      'update_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochUpdateDatetime),
      'switched_package_drop_flag': const StringToBooleanConverter()
          .toJson(instance.switchedPackageDropFlag),
      'switchable_package_drop_flag': const StringToBooleanConverter()
          .toJson(instance.switchablePackageDropFlag),
      'cart_delete_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochCartDeleteDatetime),
      'remaining_time_until_cart_delete': instance.remainingTimeUntilCartDelete,
    };

const _$CartStatusEnumMap = {
  CartStatus.visitorHomeDelivery: '1',
  CartStatus.deemedHomeDelivery: '2',
  CartStatus.normalHomeDelivery: '3',
  CartStatus.normalHomeDeliveryOrderChanging: '4',
  CartStatus.normalPickupStoreLocker: '5',
  CartStatus.normalPickupStoreLockerOrderChanging: '6',
  CartStatus.reserveHomeDeliveryOrderAdding: '7',
  CartStatus.reservePickupStoreLockerOrderAdding: '8',
  CartStatus.regularOrderAdding: '9',
  CartStatus.reserveHomeDelivery: '10',
  CartStatus.reserveHomeDeliveryOrderChanging: '11',
  CartStatus.reservePickupStoreLocker: '12',
  CartStatus.reservePickupStoreLockerOrderChanging: '13',
  CartStatus.regularHomeDelivery: '14',
  CartStatus.regularHomeDeliveryOrderChanging: '15',
};

const _$CartFulfillmentTypeEnumMap = {
  CartFulfillmentType.normal: '01',
  CartFulfillmentType.remoteNormal: '02',
  CartFulfillmentType.shopReceipt: '03',
  CartFulfillmentType.placement: '04',
  CartFulfillmentType.sevenAndILockerReceipt: '05',
  CartFulfillmentType.shopLockerReceipt: '06',
  CartFulfillmentType.none: '',
};

const _$PackMaterialTypeEnumMap = {
  PackMaterialType.plasticBag: '0',
  PackMaterialType.ecoBag: '1',
  PackMaterialType.simplePackaging: '2',
  PackMaterialType.none: '',
};

const _$PackMethodTypeEnumMap = {
  PackMethodType.individualOrder: '0',
  PackMethodType.multipleOrder: '1',
  PackMethodType.collectivelyPacked: '2',
  PackMethodType.none: '',
};

const _$PaymentMethodTypeEnumMap = {
  PaymentMethodType.cashOnDelivery: '1',
  PaymentMethodType.creditCard: '2',
  PaymentMethodType.useFullPoints: '4',
  PaymentMethodType.none: '',
};

const _$NanacoPointUseTypeEnumMap = {
  NanacoPointUseType.useAllPoints: '1',
  NanacoPointUseType.useNPoints: '2',
  NanacoPointUseType.doNotUsePoints: '9',
  NanacoPointUseType.none: '',
};

const _$DeliveryFeeTypeEnumMap = {
  DeliveryFeeType.normalDeliveryFee: '0',
  DeliveryFeeType.indvidualDeliveryFee: '1',
  DeliveryFeeType.fixedDeliveryFee: '2',
  DeliveryFeeType.areaShippingFee: '3',
  DeliveryFeeType.shippingFeeByService: '4',
  DeliveryFeeType.campaignShippingFee: '5',
  DeliveryFeeType.multiOrderShippingFee: '6',
  DeliveryFeeType.regularShipment: '7',
  DeliveryFeeType.none: '',
};

const _$IndividualDeliveryPriceTypeEnumMap = {
  IndividualDeliveryPriceType.fixedAmount: '1',
  IndividualDeliveryPriceType.percentDiscount: '2',
  IndividualDeliveryPriceType.standard: '',
};

const _$CartOrderStatusTypeEnumMap = {
  CartOrderStatusType.notOrdered: '3',
  CartOrderStatusType.nowChanging: '4',
  CartOrderStatusType.none: '',
};

const _$SevenCSCertificationTypeEnumMap = {
  SevenCSCertificationType.unauthenticated: '0',
  SevenCSCertificationType.clubOnMillenniumIDCertified: '1',
  SevenCSCertificationType.noClubOnMillenniumID: '2',
  SevenCSCertificationType.none: '',
};

const _$NanacoConfirmTypeEnumMap = {
  NanacoConfirmType.securityCodeAuthentication: '1',
  NanacoConfirmType.passwordAuthentication: '2',
  NanacoConfirmType.none: '',
};

const _$CartReserveStatusTypeEnumMap = {
  CartReserveStatusType.nonReservedOrders: '0',
  CartReserveStatusType.ordersOnlyForReservations: '1',
  CartReserveStatusType.ordersIncludingReservations: '2',
  CartReserveStatusType.none: '',
};

const _$RegularShipmentDeliveryWeekDivEnumMap = {
  RegularShipmentDeliveryWeekDiv.monday: '01_MON',
  RegularShipmentDeliveryWeekDiv.tuesday: '02_TUE',
  RegularShipmentDeliveryWeekDiv.wednesday: '03_WED',
  RegularShipmentDeliveryWeekDiv.thursday: '04_THU',
  RegularShipmentDeliveryWeekDiv.friday: '05_FRI',
  RegularShipmentDeliveryWeekDiv.saturday: '06_SAT',
  RegularShipmentDeliveryWeekDiv.sunday: '07_SUN',
  RegularShipmentDeliveryWeekDiv.none: '',
};

const _$PackageDropPlaceEnumMap = {
  PackageDropPlace.rightAtTheEntrance: '1',
  PackageDropPlace.leftAtTheEntrance: '2',
  PackageDropPlace.underTheIntercom: '3',
  PackageDropPlace.other: '9',
  PackageDropPlace.notPackageDropPlace: '',
};
