import '../../repository/recipe_detail_repository.dart';
import '../iyns_api_dio.dart';
import '../model/recipe_detail_model.dart';
import '../model/response_model.dart';

class RecipeDetailDao extends IynsApiDio implements RecipeDetailRepository {
  @override
  Future<ResponseModel<RecipeDetailModel>> getDetail(int recipeId) async {
    final response = await get<Map<String, dynamic>>(
      '/delishkitchen/recipes/$recipeId',
    );
    return ResponseModel.fromJson(response.data!);
  }
}
