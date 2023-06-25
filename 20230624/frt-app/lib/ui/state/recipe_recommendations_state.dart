import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/front_master_model.dart';
import '../../data/api/model/recipes_model.dart';

part 'recipe_recommendations_state.freezed.dart';

@freezed
class RecipeRecommendationsState with _$RecipeRecommendationsState {
  const RecipeRecommendationsState._();

  const factory RecipeRecommendationsState({
    @Default(<String, List<RecipesModel>>{}) Map<String, List<RecipesModel>> recommendations,
    @Default(0) int page,
    @Default(FrontMasterModel()) FrontMasterModel masterInfo,
  }) = _RecipeRecommendationsState;

  int get length => recommendations.length;
}
