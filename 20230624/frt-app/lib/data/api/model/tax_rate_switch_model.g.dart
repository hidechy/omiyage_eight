// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_rate_switch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaxRateSwitchModel _$$_TaxRateSwitchModelFromJson(
        Map<String, dynamic> json) =>
    _$_TaxRateSwitchModel(
      isDisplayNewTaxPrice: json['is_display_new_tax_price'] as bool? ?? false,
      oldTaxRate: json['old_tax_rate'] as int? ?? 0,
      newTaxRate: json['new_tax_rate'] as int? ?? 0,
    );

Map<String, dynamic> _$$_TaxRateSwitchModelToJson(
        _$_TaxRateSwitchModel instance) =>
    <String, dynamic>{
      'is_display_new_tax_price': instance.isDisplayNewTaxPrice,
      'old_tax_rate': instance.oldTaxRate,
      'new_tax_rate': instance.newTaxRate,
    };
