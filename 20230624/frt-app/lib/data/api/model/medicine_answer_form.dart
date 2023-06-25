import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/gender_type.dart';
import '../../../util/boolean_json_converter.dart';

part 'medicine_answer_form.freezed.dart';
part 'medicine_answer_form.g.dart';

@freezed
class MedicineAnswerForm with _$MedicineAnswerForm {
  const factory MedicineAnswerForm({
    /* 別使用者フラグ  ``` \"0\"：OFF \"1\"：ON ``` */
    @Default(false) @StringToBooleanConverter() bool anotherUserFlag,
    /* 使用者年齢 */
    String? userAge,
    /* 使用者性別 ``` \"0\"：男性 \"1\"：女性 ``` */
    Gender? userGender,
    /* 効能効果該当なしフラグ  ``` \"0\"：OFF \"1\"：ON ``` */
    @Default(false) @StringToBooleanConverter() bool noEffectFlag,
    /* 妊娠中フラグ ``` \"0\"：OFF \"1\"：ON ``` */
    @Default(false) @StringToBooleanConverter() bool pregnancyFlag,
    /* 妊娠週数 */
    String? pregnancyWeek,
    /* 授乳中フラグ  ``` \"0\"：OFF \"1\"：ON ``` */
    @Default(false) @StringToBooleanConverter() bool lactationFlag,
    /* 併用医療機関／医薬品ありフラグ ``` \"0\"：OFF \"1\"：ON ``` */
    @Default(false) @StringToBooleanConverter() bool examinationsFlag,
    /* 初使用フラグ  ``` \"0\"：OFF \"1\"：ON ``` */
    @Default(false) @StringToBooleanConverter() bool firstUseFlag,
    /* この薬品での副作用経歴ありフラグ  ``` \"0\"：OFF \"1\"：ON ``` */
    @Default(false) @StringToBooleanConverter() bool thisDrugSideEffectFlag,
    /* 他医薬品副作用経歴ありフラグ  ``` \"0\"：OFF \"1\"：ON ``` */
    @Default(false) @StringToBooleanConverter() bool sideEffectFlag,
    /* 長期継続使用中フラグ  ``` \"0\"：OFF \"1\"：ON ``` */
    @Default(false) @StringToBooleanConverter() bool exceedingFlag,
    /* 記入欄 */
    String? otherAnswer,
    /* 乱用抑止医薬品-買い置きありフラグ  ``` \"0\"：OFF \"1\"：ON ``` */
    @Default(false) @StringToBooleanConverter() bool drugStockFlag,
    /* 乱用抑止医薬品-別目的あり  ``` \"0\"：OFF \"1\"：ON ``` */
    @Default(false) @StringToBooleanConverter() bool otherPurposeFlag,
  }) = _MedicineAnswerForm;

  factory MedicineAnswerForm.fromJson(Map<String, dynamic> json) => _$MedicineAnswerFormFromJson(json);
}
