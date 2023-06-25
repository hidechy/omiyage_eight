import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../util/boolean_json_converter.dart';

part 'medicine_unable_model.freezed.dart';
part 'medicine_unable_model.g.dart';

@freezed
class MedicineUnableModel with _$MedicineUnableModel {
  const factory MedicineUnableModel({
    /* 効能効果 */
    @Default('') String effect,
    /* 乱用抑止医薬品フラグ ``` \"0\"：off \"1\"：on ``` */
    @Default(false) @StringToBooleanConverter() bool abuseLimitedFlag,
  }) = _MedicineUnableModel;

  factory MedicineUnableModel.fromJson(Map<String, dynamic> json) => _$MedicineUnableModelFromJson(json);
}
