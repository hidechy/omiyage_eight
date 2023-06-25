import 'package:freezed_annotation/freezed_annotation.dart';

import 'ingredient_model.dart';

part 'ingredient_group_model.freezed.dart';

part 'ingredient_group_model.g.dart';

/// レシピ材料グループモデル
@freezed
class IngredientGroupModel with _$IngredientGroupModel {
  const factory IngredientGroupModel({
    @Default('') String name,
    @Default(<IngredientModel>[]) List<IngredientModel> ingredients,
  }) = _IngredientGroupModel;

  factory IngredientGroupModel.fromJson(Map<String, dynamic> json) => _$IngredientGroupModelFromJson(json);
}
