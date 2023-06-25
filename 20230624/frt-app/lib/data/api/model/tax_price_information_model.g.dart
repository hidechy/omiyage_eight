// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_price_information_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaxPriceInformationModel _$$_TaxPriceInformationModelFromJson(
        Map<String, dynamic> json) =>
    _$_TaxPriceInformationModel(
      isTaxExempt: json['is_tax_exempt'] as bool? ?? false,
      taxationPrice: json['taxation_price'] as int? ?? 0,
      taxRate: json['tax_rate'] as int? ?? 0,
      taxIncludedPrice: json['tax_included_price'] as int? ?? 0,
    );

Map<String, dynamic> _$$_TaxPriceInformationModelToJson(
        _$_TaxPriceInformationModel instance) =>
    <String, dynamic>{
      'is_tax_exempt': instance.isTaxExempt,
      'taxation_price': instance.taxationPrice,
      'tax_rate': instance.taxRate,
      'tax_included_price': instance.taxIncludedPrice,
    };
