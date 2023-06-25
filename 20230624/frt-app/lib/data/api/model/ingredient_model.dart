import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_model.freezed.dart';

part 'ingredient_model.g.dart';

/// レシピ材料モデル.
@freezed
class IngredientModel with _$IngredientModel {
  const factory IngredientModel({
    @Default('') String name,
    @Default('') String servings,
  }) = _IngredientModel;

  factory IngredientModel.fromJson(Map<String, dynamic> json) => _$IngredientModelFromJson(json);
}
