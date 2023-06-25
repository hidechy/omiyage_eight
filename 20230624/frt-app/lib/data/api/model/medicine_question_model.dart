import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/drug_type.dart';
import '../../../enum/gender_type.dart';
import '../../../util/access_point_info_manager.dart';
import 'medicine_unable_model.dart';

part 'medicine_question_model.freezed.dart';

part 'medicine_question_model.g.dart';

@freezed
class MedicineQuestionModel with _$MedicineQuestionModel {
  const MedicineQuestionModel._();

  const factory MedicineQuestionModel({
    /* 医薬品名 */
    @Default('') String productName,
    /* 医薬品の種別 ``` \"all\"：すべて \"A\"：第一類医薬品 \"B\"：指定第２類医薬品 \"C\"：第２類医薬品 \"D\"：第３医薬品 \"E\"：医薬部外品 ``` */
    @Default(DrugType.quasiDrugs) DrugType productType,
    /* 添付文書 pdfファイル名 */
    @Default('') String attachedDocument,
    /* 医薬品購入不可設定リスト */
    @Default(<MedicineUnableModel>[]) List<MedicineUnableModel> medicineUnables,
    /* 医薬品購入注意メッセージ */
    @Default('') String medicineRepeatMessage,
    /* 医薬品購入注意メッセージコード ※別ファイル：メッセージコード_一覧参照 */
    @Default('') String medicineRepeatMessageCode,
    /* 性別 ``` \"0\"：男性 \"1\"：女性 \"2\"：回答しない ``` */
    @Default(Gender.noAnswer) Gender gender,
    /* 18歳未満判定 - true：18歳未満 - false：18歳以上 */
    @Default(false) bool isUnderage,
  }) = _MedicineQuestionModel;

  factory MedicineQuestionModel.fromJson(Map<String, dynamic> json) => _$MedicineQuestionModelFromJson(json);

  String get pdfUrl => '$iynsBaseUrl$attachedDocument';
}
