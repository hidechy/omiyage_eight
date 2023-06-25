// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine_checksheet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicineChecksheetModel _$$_MedicineChecksheetModelFromJson(
        Map<String, dynamic> json) =>
    _$_MedicineChecksheetModel(
      medicineTaboos: (json['medicine_taboos'] as List<dynamic>?)
              ?.map((e) => MedicineChecksheetQuestionModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const <MedicineChecksheetQuestionModel>[],
      medicineConsuls: (json['medicine_consuls'] as List<dynamic>?)
              ?.map((e) => MedicineChecksheetQuestionModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const <MedicineChecksheetQuestionModel>[],
      attachedDocument: json['attached_document'] as String? ?? '',
    );

Map<String, dynamic> _$$_MedicineChecksheetModelToJson(
        _$_MedicineChecksheetModel instance) =>
    <String, dynamic>{
      'medicine_taboos':
          instance.medicineTaboos.map((e) => e.toJson()).toList(),
      'medicine_consuls':
          instance.medicineConsuls.map((e) => e.toJson()).toList(),
      'attached_document': instance.attachedDocument,
    };
