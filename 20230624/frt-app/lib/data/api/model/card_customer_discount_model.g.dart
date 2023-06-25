// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_customer_discount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardCustomerDiscountModel _$$_CardCustomerDiscountModelFromJson(
        Map<String, dynamic> json) =>
    _$_CardCustomerDiscountModel(
      isCardMemberDiscount: json['is_card_member_discount'] as bool? ?? false,
      cardMemberSaleRate: json['card_member_sale_rate'] as int? ?? 0,
      cardMemberType: $enumDecodeNullable(
              _$CardMemberTypeEnumMap, json['card_member_type']) ??
          CardMemberType.none,
      cardMemberDiscountCode:
          json['card_member_discount_code'] as String? ?? '',
    );

Map<String, dynamic> _$$_CardCustomerDiscountModelToJson(
        _$_CardCustomerDiscountModel instance) =>
    <String, dynamic>{
      'is_card_member_discount': instance.isCardMemberDiscount,
      'card_member_sale_rate': instance.cardMemberSaleRate,
      'card_member_type': _$CardMemberTypeEnumMap[instance.cardMemberType]!,
      'card_member_discount_code': instance.cardMemberDiscountCode,
    };

const _$CardMemberTypeEnumMap = {
  CardMemberType.seven7CS: '01',
  CardMemberType.sevenSevenPoint7CS: '02',
  CardMemberType.sevenNanacoSeniorNanaco7CS: '03',
  CardMemberType.nanacoSeniorNanaco: '04',
  CardMemberType.sevenSevenPointNanacoSeniorNanaco7CS: '05',
  CardMemberType.seniorNanaco: '06',
  CardMemberType.none: '',
};
