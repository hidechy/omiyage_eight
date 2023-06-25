// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_discount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDiscountModel _$$_ProductDiscountModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductDiscountModel(
      isDisplayProgressiveDiscountLink:
          json['is_display_progressive_discount_link'] as bool? ?? false,
      isDisplaySetDiscountLink:
          json['is_display_set_discount_link'] as bool? ?? false,
      isDisplayMixMatchLink:
          json['is_display_mix_match_link'] as bool? ?? false,
      isDisplaySetSaleDiscountLink:
          json['is_display_set_sale_discount_link'] as bool? ?? false,
      parentProgressiveDiscountCode:
          json['parent_progressive_discount_code'] as String? ?? '',
      planningGroupCode: json['planning_group_code'] as String? ?? '',
      planningGroupBranchNumber:
          json['planning_group_branch_number'] as String? ?? '',
      setDiscountPrice: json['set_discount_price'] as int? ?? 0,
      mixMatchCode: json['mix_match_code'] as String? ?? '',
      mixMatchSetNumber: json['mix_match_set_number'] as int? ?? 0,
      mixMatchSetPrice: json['mix_match_set_price'] as int? ?? 0,
      setSaleId: json['set_sale_id'] as String? ?? '',
      setSaleName: json['set_sale_name'] as String? ?? '',
      sellingOffCode: json['selling_off_code'] as String? ?? '',
      sellingOffName: json['selling_off_name'] as String? ?? '',
      sellingOffPrice: json['selling_off_price'] as int? ?? 0,
      sellingOffBasePrice: json['selling_off_base_price'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ProductDiscountModelToJson(
        _$_ProductDiscountModel instance) =>
    <String, dynamic>{
      'is_display_progressive_discount_link':
          instance.isDisplayProgressiveDiscountLink,
      'is_display_set_discount_link': instance.isDisplaySetDiscountLink,
      'is_display_mix_match_link': instance.isDisplayMixMatchLink,
      'is_display_set_sale_discount_link':
          instance.isDisplaySetSaleDiscountLink,
      'parent_progressive_discount_code':
          instance.parentProgressiveDiscountCode,
      'planning_group_code': instance.planningGroupCode,
      'planning_group_branch_number': instance.planningGroupBranchNumber,
      'set_discount_price': instance.setDiscountPrice,
      'mix_match_code': instance.mixMatchCode,
      'mix_match_set_number': instance.mixMatchSetNumber,
      'mix_match_set_price': instance.mixMatchSetPrice,
      'set_sale_id': instance.setSaleId,
      'set_sale_name': instance.setSaleName,
      'selling_off_code': instance.sellingOffCode,
      'selling_off_name': instance.sellingOffName,
      'selling_off_price': instance.sellingOffPrice,
      'selling_off_base_price': instance.sellingOffBasePrice,
    };
