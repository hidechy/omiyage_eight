// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_product_id_questions_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductsProductIdQuestionsGetModel
    _$$_ProductsProductIdQuestionsGetModelFromJson(Map<String, dynamic> json) =>
        _$_ProductsProductIdQuestionsGetModel(
          medicineQuestion: json['medicine_question'] == null
              ? null
              : MedicineQuestionModel.fromJson(
                  json['medicine_question'] as Map<String, dynamic>),
          counselingQuestion: json['counseling_question'] == null
              ? null
              : CounselingQuestionModel.fromJson(
                  json['counseling_question'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_ProductsProductIdQuestionsGetModelToJson(
        _$_ProductsProductIdQuestionsGetModel instance) =>
    <String, dynamic>{
      'medicine_question': instance.medicineQuestion?.toJson(),
      'counseling_question': instance.counselingQuestion?.toJson(),
    };
