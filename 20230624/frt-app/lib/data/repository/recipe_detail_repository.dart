import '../api/model/recipe_detail_model.dart';
import '../api/model/response_model.dart';

abstract class RecipeDetailRepository {
  Future<ResponseModel<RecipeDetailModel>> getDetail(int recipeId);
}
