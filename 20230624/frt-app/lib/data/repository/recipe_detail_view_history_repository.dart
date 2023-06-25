import '../shared_preferences/model/recipe_detail_view_history_model.dart';

abstract class RecipeDetailViewHistoryRepository {
  Future<void> add(RecipeDetailViewHistoryModel model);
  Future<void> deleteAll();
  Future<List<RecipeDetailViewHistoryModel>> fetchAny({int count = 5});
}
