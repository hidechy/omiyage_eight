import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicine_checksheet_question_model.freezed.dart';

part 'medicine_checksheet_question_model.g.dart';

@freezed
class MedicineChecksheetQuestionModel with _$MedicineChecksheetQuestionModel {
  const factory MedicineChecksheetQuestionModel({
    /* チェックボックス表示判定 ``` true：表示する false：表示しない ``` */
    @Default(false) bool isDisplayMedicineBuyCheck,
/* 医薬品設問 */
    @Default('') String medicineQuestion,
  }) = _MedicineChecksheetQuestionModel;

  factory MedicineChecksheetQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$MedicineChecksheetQuestionModelFromJson(json);
}
