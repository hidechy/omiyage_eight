// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine_checksheet_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicineChecksheetQuestionModel _$$_MedicineChecksheetQuestionModelFromJson(
        Map<String, dynamic> json) =>
    _$_MedicineChecksheetQuestionModel(
      isDisplayMedicineBuyCheck:
          json['is_display_medicine_buy_check'] as bool? ?? false,
      medicineQuestion: json['medicine_question'] as String? ?? '',
    );

Map<String, dynamic> _$$_MedicineChecksheetQuestionModelToJson(
        _$_MedicineChecksheetQuestionModel instance) =>
    <String, dynamic>{
      'is_display_medicine_buy_check': instance.isDisplayMedicineBuyCheck,
      'medicine_question': instance.medicineQuestion,
    };
