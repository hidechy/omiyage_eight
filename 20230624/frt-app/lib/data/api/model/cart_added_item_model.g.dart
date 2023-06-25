// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_added_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartAddedItemModel _$$_CartAddedItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_CartAddedItemModel(
      counselingResult: $enumDecodeNullable(
              _$CounselingResultEnumMap, json['counseling_result']) ??
          CounselingResult.unanswered,
      cart: json['cart'] == null
          ? const CartModel()
          : CartModel.fromJson(json['cart'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CartAddedItemModelToJson(
        _$_CartAddedItemModel instance) =>
    <String, dynamic>{
      'counseling_result':
          _$CounselingResultEnumMap[instance.counselingResult]!,
      'cart': instance.cart.toJson(),
    };

const _$CounselingResultEnumMap = {
  CounselingResult.available: '1',
  CounselingResult.caution: '2',
  CounselingResult.unavailable: '3',
  CounselingResult.unanswered: '4',
};
