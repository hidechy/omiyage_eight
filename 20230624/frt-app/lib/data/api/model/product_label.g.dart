// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_label.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductLabel _$$_ProductLabelFromJson(Map<String, dynamic> json) =>
    _$_ProductLabel(
      labelType: $enumDecodeNullable(_$LabelTypeEnumMap, json['labelType']) ??
          LabelType.none,
      name: json['name'] as String? ?? '',
      style: json['style'] as String? ?? '',
      iconCode: json['iconCode'] as String? ?? '',
      frontLabel: json['frontLabel'] as String? ?? '',
      imageFullPath: json['imageFullPath'] as String? ?? '',
    );

Map<String, dynamic> _$$_ProductLabelToJson(_$_ProductLabel instance) =>
    <String, dynamic>{
      'labelType': _$LabelTypeEnumMap[instance.labelType]!,
      'name': instance.name,
      'style': instance.style,
      'iconCode': instance.iconCode,
      'frontLabel': instance.frontLabel,
      'imageFullPath': instance.imageFullPath,
    };

const _$LabelTypeEnumMap = {
  LabelType.medicine: '0',
  LabelType.clearance: '1',
  LabelType.discountTerms: '2',
  LabelType.productInformation: '3',
  LabelType.otherAppeals: '4',
  LabelType.alcohol: '5',
  LabelType.none: '',
};
