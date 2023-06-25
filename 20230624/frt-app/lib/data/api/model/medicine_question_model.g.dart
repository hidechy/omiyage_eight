// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicineQuestionModel _$$_MedicineQuestionModelFromJson(
        Map<String, dynamic> json) =>
    _$_MedicineQuestionModel(
      productName: json['product_name'] as String? ?? '',
      productType:
          $enumDecodeNullable(_$DrugTypeEnumMap, json['product_type']) ??
              DrugType.quasiDrugs,
      attachedDocument: json['attached_document'] as String? ?? '',
      medicineUnables: (json['medicine_unables'] as List<dynamic>?)
              ?.map((e) =>
                  MedicineUnableModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MedicineUnableModel>[],
      medicineRepeatMessage: json['medicine_repeat_message'] as String? ?? '',
      medicineRepeatMessageCode:
          json['medicine_repeat_message_code'] as String? ?? '',
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']) ??
          Gender.noAnswer,
      isUnderage: json['is_underage'] as bool? ?? false,
    );

Map<String, dynamic> _$$_MedicineQuestionModelToJson(
        _$_MedicineQuestionModel instance) =>
    <String, dynamic>{
      'product_name': instance.productName,
      'product_type': _$DrugTypeEnumMap[instance.productType]!,
      'attached_document': instance.attachedDocument,
      'medicine_unables':
          instance.medicineUnables.map((e) => e.toJson()).toList(),
      'medicine_repeat_message': instance.medicineRepeatMessage,
      'medicine_repeat_message_code': instance.medicineRepeatMessageCode,
      'gender': _$GenderEnumMap[instance.gender]!,
      'is_underage': instance.isUnderage,
    };

const _$DrugTypeEnumMap = {
  DrugType.all: 'all',
  DrugType.firstClassDrugs: 'A',
  DrugType.designatedSecondClassDrugs: 'B',
  DrugType.secondClassDrugs: 'C',
  DrugType.thirdClassDrugs: 'D',
  DrugType.quasiDrugs: 'E',
  DrugType.none: '',
};

const _$GenderEnumMap = {
  Gender.male: '0',
  Gender.female: '1',
  Gender.noAnswer: '2',
  Gender.unknown: '9',
};
