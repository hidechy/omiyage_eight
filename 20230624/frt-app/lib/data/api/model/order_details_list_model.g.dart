// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDetailsListModel _$$_OrderDetailsListModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrderDetailsListModel(
      orderDiscountSymbol: json['order_discount_symbol'] as String? ?? '',
      isReserveProduct: json['is_reserve_product'] as bool? ?? false,
      reserveCode: json['reserve_code'] as String? ?? '',
      isAlternativeProduct: json['is_alternative_product'] as bool? ?? false,
      producingArea: json['producing_area'] as String? ?? '',
      productName: json['product_name'] as String? ?? '',
      isReducedTaxRateProduct:
          json['is_reduced_tax_rate_product'] as bool? ?? false,
      price: json['price'] as int? ?? 0,
      isDrink: json['is_drink'] as bool? ?? false,
      quantity: json['quantity'] as int? ?? 0,
      coolQuantity: json['cool_quantity'] as int? ?? 0,
      discountType:
          $enumDecodeNullable(_$DiscountTypeEnumMap, json['discount_type']) ??
              DiscountType.rate,
      isTaxIncluded: json['is_tax_included'] as bool? ?? false,
      isRegularShipmentApplyProduct:
          json['is_regular_shipment_apply_product'] as bool? ?? false,
      productId: json['product_id'] as String? ?? '',
      fixedWeightDiv: $enumDecodeNullable(
              _$FixedWeightDivEnumMap, json['fixed_weight_div']) ??
          FixedWeightDiv.ob,
      basePrice: json['base_price'] as int? ?? 0,
      salePrice: json['sale_price'] as int? ?? 0,
      thumbnailImagePath: json['thumbnail_image_path'] as String? ?? '',
      thumbnailImageFileName:
          json['thumbnail_image_file_name'] as String? ?? '',
      taxDiv: $enumDecodeNullable(_$TaxDivEnumMap, json['tax_div']) ??
          TaxDiv.taxIncluded,
      frontThumbnailImageFullPath:
          json['front_thumbnail_image_full_path'] as String? ?? '',
    );

Map<String, dynamic> _$$_OrderDetailsListModelToJson(
        _$_OrderDetailsListModel instance) =>
    <String, dynamic>{
      'order_discount_symbol': instance.orderDiscountSymbol,
      'is_reserve_product': instance.isReserveProduct,
      'reserve_code': instance.reserveCode,
      'is_alternative_product': instance.isAlternativeProduct,
      'producing_area': instance.producingArea,
      'product_name': instance.productName,
      'is_reduced_tax_rate_product': instance.isReducedTaxRateProduct,
      'price': instance.price,
      'is_drink': instance.isDrink,
      'quantity': instance.quantity,
      'cool_quantity': instance.coolQuantity,
      'discount_type': _$DiscountTypeEnumMap[instance.discountType]!,
      'is_tax_included': instance.isTaxIncluded,
      'is_regular_shipment_apply_product':
          instance.isRegularShipmentApplyProduct,
      'product_id': instance.productId,
      'fixed_weight_div': _$FixedWeightDivEnumMap[instance.fixedWeightDiv],
      'base_price': instance.basePrice,
      'sale_price': instance.salePrice,
      'thumbnail_image_path': instance.thumbnailImagePath,
      'thumbnail_image_file_name': instance.thumbnailImageFileName,
      'tax_div': _$TaxDivEnumMap[instance.taxDiv]!,
      'front_thumbnail_image_full_path': instance.frontThumbnailImageFullPath,
    };

const _$DiscountTypeEnumMap = {
  DiscountType.rate: '1',
  DiscountType.cash: '2',
};

const _$FixedWeightDivEnumMap = {
  FixedWeightDiv.saleByMeasure: '1',
  FixedWeightDiv.regular: '2',
  FixedWeightDiv.ob: null,
};

const _$TaxDivEnumMap = {
  TaxDiv.taxIncluded: '1',
  TaxDiv.taxExempt: '2',
};
