// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine_answer_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicineAnswerForm _$$_MedicineAnswerFormFromJson(
        Map<String, dynamic> json) =>
    _$_MedicineAnswerForm(
      anotherUserFlag: json['another_user_flag'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['another_user_flag'] as String),
      userAge: json['user_age'] as String?,
      userGender: $enumDecodeNullable(_$GenderEnumMap, json['user_gender']),
      noEffectFlag: json['no_effect_flag'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['no_effect_flag'] as String),
      pregnancyFlag: json['pregnancy_flag'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['pregnancy_flag'] as String),
      pregnancyWeek: json['pregnancy_week'] as String?,
      lactationFlag: json['lactation_flag'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['lactation_flag'] as String),
      examinationsFlag: json['examinations_flag'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['examinations_flag'] as String),
      firstUseFlag: json['first_use_flag'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['first_use_flag'] as String),
      thisDrugSideEffectFlag: json['this_drug_side_effect_flag'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['this_drug_side_effect_flag'] as String),
      sideEffectFlag: json['side_effect_flag'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['side_effect_flag'] as String),
      exceedingFlag: json['exceeding_flag'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['exceeding_flag'] as String),
      otherAnswer: json['other_answer'] as String?,
      drugStockFlag: json['drug_stock_flag'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['drug_stock_flag'] as String),
      otherPurposeFlag: json['other_purpose_flag'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['other_purpose_flag'] as String),
    );

Map<String, dynamic> _$$_MedicineAnswerFormToJson(
        _$_MedicineAnswerForm instance) =>
    <String, dynamic>{
      'another_user_flag':
          const StringToBooleanConverter().toJson(instance.anotherUserFlag),
      'user_age': instance.userAge,
      'user_gender': _$GenderEnumMap[instance.userGender],
      'no_effect_flag':
          const StringToBooleanConverter().toJson(instance.noEffectFlag),
      'pregnancy_flag':
          const StringToBooleanConverter().toJson(instance.pregnancyFlag),
      'pregnancy_week': instance.pregnancyWeek,
      'lactation_flag':
          const StringToBooleanConverter().toJson(instance.lactationFlag),
      'examinations_flag':
          const StringToBooleanConverter().toJson(instance.examinationsFlag),
      'first_use_flag':
          const StringToBooleanConverter().toJson(instance.firstUseFlag),
      'this_drug_side_effect_flag': const StringToBooleanConverter()
          .toJson(instance.thisDrugSideEffectFlag),
      'side_effect_flag':
          const StringToBooleanConverter().toJson(instance.sideEffectFlag),
      'exceeding_flag':
          const StringToBooleanConverter().toJson(instance.exceedingFlag),
      'other_answer': instance.otherAnswer,
      'drug_stock_flag':
          const StringToBooleanConverter().toJson(instance.drugStockFlag),
      'other_purpose_flag':
          const StringToBooleanConverter().toJson(instance.otherPurposeFlag),
    };

const _$GenderEnumMap = {
  Gender.male: '0',
  Gender.female: '1',
  Gender.noAnswer: '2',
  Gender.unknown: '9',
};
