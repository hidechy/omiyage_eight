import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/medicine_answer_form.dart';
import '../../data/api/model/medicine_question_model.dart';

part 'medicine_answer_form_page_state.freezed.dart';

@freezed
class MedicineAnswerFormPageState with _$MedicineAnswerFormPageState {
  MedicineAnswerFormPageState._();

  factory MedicineAnswerFormPageState({
    @Default(false) bool isInvalidCartButton,
    @Default(false) bool isErrorUserAge,
    @Default(false) bool isErrorUserGender,
    @Default(false) bool isErrorPregnancyWeek,
    @Default(false) bool isErrorSideEffect,
    @Default(false) bool isErrorExaminations,
    @Default(false) bool isInvalidCharacters,
    @Default(MedicineQuestionModel()) MedicineQuestionModel medicineQuestionModel,
    @Default(MedicineAnswerForm()) MedicineAnswerForm medicineAnswerForm,
  }) = _MedicineAnswerFormPageState;

  bool get isAlert =>
      isErrorUserAge ||
      isErrorUserGender ||
      isErrorPregnancyWeek ||
      isErrorSideEffect ||
      isErrorExaminations ||
      isInvalidCharacters;
}
