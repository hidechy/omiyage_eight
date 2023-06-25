import '../api/model/akachanhonpo_category_top_info_model.dart';

abstract class AkachanhonpoRepository {
  /// アカホンカテゴリトップ表示情報取得
  Future<AkachanhonpoCategoryTopInfoModel> fetchCategoryTopInfo();
}
