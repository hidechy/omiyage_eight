import 'package:freezed_annotation/freezed_annotation.dart';

import 'front_category_master_model.dart';
import 'front_recipe_master_model.dart';

part 'front_master_model.freezed.dart';
part 'front_master_model.g.dart';

@freezed
class FrontMasterModel with _$FrontMasterModel {
  const factory FrontMasterModel({
    /* カテゴリーマスタ情報 */
    @Default(<FrontCategoryMasterModel>[]) List<FrontCategoryMasterModel> categories,
    /* レシピマスタ情報 */
    @Default(<FrontRecipeMasterModel>[]) List<FrontRecipeMasterModel> recipes,
  }) = _FrontMasterModel;

  factory FrontMasterModel.fromJson(Map<String, dynamic> json) => _$FrontMasterModelFromJson(json);
}
