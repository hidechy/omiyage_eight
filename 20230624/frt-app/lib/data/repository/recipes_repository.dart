import '../api/model/recipes_model.dart';
import '../api/model/response_model.dart';

abstract class RecipesRepository {
  /// レシピキーワード検索API
  /// @param keyword:検索キーワード
  /// @param page:ページ数
  /// @param viewCount:表示件数
  Future<ResponseModel<RecipesModel>> getKeywordSearch({
    required String keyword,
    int? page,
    int? viewCount,
  });

  /// おすすめレシピ取得API
  /// @param targetDate:対象日付 -日付形式 yyyyMMdd
  Future<ResponseModel<RecipesModel>> getRecommendations({
    required String targetDate,
  });
}
