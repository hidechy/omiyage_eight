import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../util/access_point_info_manager.dart';
import 'medicine_checksheet_question_model.dart';

part 'medicine_checksheet_model.freezed.dart';

part 'medicine_checksheet_model.g.dart';

@freezed
class MedicineChecksheetModel with _$MedicineChecksheetModel {
  const MedicineChecksheetModel._();

  const factory MedicineChecksheetModel({
    /* 医薬品設問リスト(してはいけない) */
    @Default(<MedicineChecksheetQuestionModel>[]) List<MedicineChecksheetQuestionModel> medicineTaboos,
/* 医薬品設問リスト(相談) */
    @Default(<MedicineChecksheetQuestionModel>[]) List<MedicineChecksheetQuestionModel> medicineConsuls,
/* 添付文章PDFファイル名 */
    @Default('') String attachedDocument,
  }) = _MedicineChecksheetModel;

  factory MedicineChecksheetModel.fromJson(Map<String, dynamic> json) => _$MedicineChecksheetModelFromJson(json);

  String get pdfUrl => '$iynsBaseUrl$attachedDocument';
}
