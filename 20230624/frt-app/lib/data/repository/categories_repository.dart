import '../api/model/categories_model.dart';
import '../api/model/response_model.dart';

abstract class CategoriesRepository {
  /// カテゴリ取得API
  ///
  /// @param shopCode 店舗コード
  /// @param targetCode
  Future<ResponseModel<CategoriesModel>> getCategory({
    required String shopCode,
    required String targetCode,
  });
}
