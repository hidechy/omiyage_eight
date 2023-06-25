import '../../repository/recipes_repository.dart';
import '../iyns_api_dio.dart';
import '../model/recipes_model.dart';
import '../model/response_model.dart';

class RecipesDao extends IynsApiDio implements RecipesRepository {
  static const String _path = '/delishkitchen/recipes';

  @override
  Future<ResponseModel<RecipesModel>> getKeywordSearch({
    required String keyword,
    int? page,
    int? viewCount,
  }) async {
    final response = await get<Map<String, dynamic>>(
      _path,
      queryParameters: <String, dynamic>{'keyword': keyword, 'page': page, 'view_count': viewCount}
        ..removeWhere((key, dynamic value) => value == null),
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<RecipesModel>> getRecommendations({
    required String targetDate,
  }) async {
    final response = await get<Map<String, dynamic>>(
      '$_path/recommendations',
      queryParameters: <String, dynamic>{
        'target_date': targetDate,
      },
    );
    return ResponseModel.fromJson(response.data!);
  }
}
