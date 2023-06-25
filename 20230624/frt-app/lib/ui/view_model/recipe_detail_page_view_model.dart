import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../data/api/model/front_delis_model.dart';
import '../../data/api/model/response_model.dart';
import '../../data/repository/front_repository.dart';
import '../../data/repository/recipe_detail_view_history_repository.dart';
import '../../data/shared_preferences/model/recipe_detail_view_history_model.dart';
import '../../util/datetime_formatter.dart';
import '../state/recipe_detail_page_state.dart';

class RecipeDetailPageViewModel extends StateNotifier<RecipeDetailPageState> with LocatorMixin {
  RecipeDetailPageViewModel() : super(RecipeDetailPageState());

  Future<bool> load(String recipeId) async {
    final date = formatYearMonthDayFromDateTime(DateTime.now());
    final detail = await GetIt.I<FrontRepository>().getRecipeDetail(recipeId: recipeId);
    final recommendations =
        await GetIt.I<FrontRepository>().getRecommendations(date: date).onError((error, stackTrace) {
      // おすすめレシピのAPIエラーはハンドリングしない
      return const ResponseModel<FrontDelisModel>();
    });
    final masterInfo = await GetIt.I<FrontRepository>().getMasterInfo();
    state = state.copyWith(
      detailModel: detail.first,
      recommendationRecipes: recommendations.data.isEmpty ? [] : recommendations.first.recipes,
      masterInfo: masterInfo.first,
    );

    GetIt.I
        .get<RecipeDetailViewHistoryRepository>()
        .add(RecipeDetailViewHistoryModel(recipeId: detail.first.id, title: detail.first.title));
    return true;
  }

  set recipeDetailVisible(bool visible) => state = state.copyWith(recipeDetailVisible: visible);
}
