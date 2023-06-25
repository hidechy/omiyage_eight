// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_number_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductNumberModel _$$_ProductNumberModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductNumberModel(
      colorName: json['color_name'] as String? ?? '',
      sizeName: json['size_name'] as String? ?? '',
      iconPrWord: json['icon_pr_word'] as String? ?? '',
      advertisingIconImagePath:
          json['advertising_icon_image_path'] as String? ?? '',
      advertisingIconImageFileName:
          json['advertising_icon_image_file_name'] as String? ?? '',
      isNanacoPromoteProduct:
          json['is_nanaco_promote_product'] as bool? ?? false,
      isDisplayNoTaxPriceView:
          json['is_display_no_tax_price_view'] as bool? ?? false,
      previousValue: json['previous_value'] as String? ?? '',
      isPeriodDiscount: json['is_period_discount'] as bool? ?? false,
      isViewSetSaleLink: json['is_view_set_sale_link'] as bool? ?? false,
      product: json['product'] == null
          ? const ProductModel()
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductNumberModelToJson(
        _$_ProductNumberModel instance) =>
    <String, dynamic>{
      'color_name': instance.colorName,
      'size_name': instance.sizeName,
      'icon_pr_word': instance.iconPrWord,
      'advertising_icon_image_path': instance.advertisingIconImagePath,
      'advertising_icon_image_file_name': instance.advertisingIconImageFileName,
      'is_nanaco_promote_product': instance.isNanacoPromoteProduct,
      'is_display_no_tax_price_view': instance.isDisplayNoTaxPriceView,
      'previous_value': instance.previousValue,
      'is_period_discount': instance.isPeriodDiscount,
      'is_view_set_sale_link': instance.isViewSetSaleLink,
      'product': instance.product.toJson(),
    };
