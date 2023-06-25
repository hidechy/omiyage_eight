import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/front_master_model.dart';
import '../../data/api/model/recipe_detail_model.dart';
import '../../data/api/model/recipes_model.dart';

part 'recipe_detail_page_state.freezed.dart';

@freezed
class RecipeDetailPageState with _$RecipeDetailPageState {
  factory RecipeDetailPageState({
    @Default(RecipeDetailModel()) RecipeDetailModel detailModel,
    @Default(<RecipesModel>[]) List<RecipesModel> recommendationRecipes,
    @Default(FrontMasterModel()) FrontMasterModel masterInfo,
    @Default(true) bool recipeDetailVisible,
  }) = _RecipeDetailPageState;
}
