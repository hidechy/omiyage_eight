import 'package:freezed_annotation/freezed_annotation.dart';

import 'counseling_question_model.dart';
import 'medicine_question_model.dart';

part 'products_product_id_questions_get_model.freezed.dart';
part 'products_product_id_questions_get_model.g.dart';

@freezed
class ProductsProductIdQuestionsGetModel with _$ProductsProductIdQuestionsGetModel {
  const factory ProductsProductIdQuestionsGetModel({
    MedicineQuestionModel? medicineQuestion,
    CounselingQuestionModel? counselingQuestion,
  }) = _ProductsProductIdQuestionsGetModel;

  factory ProductsProductIdQuestionsGetModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsProductIdQuestionsGetModelFromJson(json);
}
