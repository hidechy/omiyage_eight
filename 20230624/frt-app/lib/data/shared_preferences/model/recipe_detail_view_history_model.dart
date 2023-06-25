import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_detail_view_history_model.freezed.dart';
part 'recipe_detail_view_history_model.g.dart';

@freezed
class RecipeDetailViewHistoryModel with _$RecipeDetailViewHistoryModel {
  const factory RecipeDetailViewHistoryModel({
    @Default('') String recipeId,
    @Default('') String title,
  }) = _RecipeDetailViewHistoryModel;
  factory RecipeDetailViewHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$RecipeDetailViewHistoryModelFromJson(json);
}
