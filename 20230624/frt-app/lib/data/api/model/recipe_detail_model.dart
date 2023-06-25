import 'package:freezed_annotation/freezed_annotation.dart';

import 'ingredient_group_model.dart';
import 'step_model.dart';
import 'video_url_model.dart';

part 'recipe_detail_model.freezed.dart';

part 'recipe_detail_model.g.dart';

/// レシピ詳細レスポンスモデル
@freezed
class RecipeDetailModel with _$RecipeDetailModel {
  const factory RecipeDetailModel({
    @Default('') String id,
    @Default('') String lead,
    @Default('') String title,
    @Default('') String description,
    @Default('') String cookingTime,
    @Default('') String calorie,
    /* 長方形のレシピ画像・動画レスポンス unused */
    @Default(VideoUrlModel()) VideoUrlModel rectVideo,
    /* 正方形のレシピ画像・動画レスポンス */
    @Default(VideoUrlModel()) VideoUrlModel squareVideo,
    @Default('') String servings,
    @Default(<IngredientGroupModel>[]) List<IngredientGroupModel> ingredientGroups,
    @Default(<StepModel>[]) List<StepModel> steps,
  }) = _RecipeDetailModel;

  factory RecipeDetailModel.fromJson(Map<String, dynamic> json) => _$RecipeDetailModelFromJson(json);
}
