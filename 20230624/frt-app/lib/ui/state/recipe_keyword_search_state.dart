import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/front_master_model.dart';
import '../../data/api/model/recipes_model.dart';

part 'recipe_keyword_search_state.freezed.dart';

@freezed
class RecipeKeywordSearchState with _$RecipeKeywordSearchState {
  const RecipeKeywordSearchState._();

  const factory RecipeKeywordSearchState({
    @Default(<RecipesModel>[]) List<RecipesModel> recipes,
    @Default(0) int totalSize,
    @Default(0) int page,
    @Default(false) bool pageHasNext,
    @Default(FrontMasterModel()) FrontMasterModel masterInfo,
  }) = _RecipeKeywordSearchState;

  int get length => recipes.length;
}
