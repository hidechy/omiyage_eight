import '../../repository/categories_repository.dart';
import '../iyns_api_dio.dart';
import '../model/categories_model.dart';
import '../model/response_model.dart';

class CategoriesDao extends IynsApiDio implements CategoriesRepository {
  @override
  Future<ResponseModel<CategoriesModel>> getCategory({
    required String shopCode,
    required String targetCode,
  }) async {
    final response = await get<Map<String, dynamic>>(
      '/categories',
      queryParameters: <String, dynamic>{
        'category_type': 'normal',
        'shop_code': shopCode,
        'target_code': targetCode,
      },
    );
    return ResponseModel.fromJson(response.data);
  }
}
