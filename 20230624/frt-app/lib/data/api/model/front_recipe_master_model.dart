import 'package:freezed_annotation/freezed_annotation.dart';

part 'front_recipe_master_model.freezed.dart';
part 'front_recipe_master_model.g.dart';

@freezed
class FrontRecipeMasterModel with _$FrontRecipeMasterModel {
  const factory FrontRecipeMasterModel({
    /* コード */
    @Default('') String code,
    /* 名前 */
    @Default('') String name,
    /* 順序 */
    @Default(0) int order,
  }) = _FrontRecipeMasterModel;

  factory FrontRecipeMasterModel.fromJson(Map<String, dynamic> json) => _$FrontRecipeMasterModelFromJson(json);
}
