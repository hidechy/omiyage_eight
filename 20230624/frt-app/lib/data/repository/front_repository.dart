import '../api/model/check_platform_characters_model.dart';
import '../api/model/front_categories_model.dart';
import '../api/model/front_delis_model.dart';
import '../api/model/front_master_model.dart';
import '../api/model/recipe_detail_model.dart';
import '../api/model/response_model.dart';
import '../api/model/secure_decrypted_model.dart';
import '../api/model/secure_encrypted_model.dart';

abstract class FrontRepository {
  /// フロント用カテゴリAPI
  ///
  /// @param shopCode 店舗コード
  Future<ResponseModel<FrontCategoriesModel>> getFrontCategory({
    required String shopCode,
  });

  /// 暗号化API
  ///
  /// @param parameter 暗号化するパラメータ（文字数制限なし）
  Future<ResponseModel<SecureEncryptedModel>> postSecureEncrypt({
    required String parameter,
  });

  /// 復号化API
  ///
  /// @param parameter 復号化するパラメータ（文字数制限なし）
  Future<ResponseModel<SecureDecryptedModel>> postSecureDecrypt({
    required String parameter,
  });

  /// デリッシュキッチンレコメンド情報取得API
  ///
  /// @param date 取得対象日付(yyyy-MM-dd)
  Future<ResponseModel<FrontDelisModel>> getRecommendations({
    required String date,
  });

  /// デリッシュキッチン検索結果情報取得API
  ///
  /// @param keyword　   検索文字列(文字数制限なし)
  /// @param page　      ページ番号
  /// @param viewCount 　1ページ表示件数
  Future<ResponseModel<FrontDelisModel>> getSearchDelisList({
    required String keyword,
    int? page,
    int? viewCount,
  });

  /// デリッシュキッチンレシピ詳細取得API
  ///
  /// @param recipeId　レシピID
  Future<ResponseModel<RecipeDetailModel>> getRecipeDetail({
    required String recipeId,
  });

  /// マスタ取得API
  ///
  Future<ResponseModel<FrontMasterModel>> getMasterInfo();

  /// 機種依存文字チェックAPI
  ///
  /// @param target　チェックする文字列（文字数制限なし）
  Future<ResponseModel<CheckPlatformCharactersModel>> checkPlatformCharacters({
    required String target,
  });
}
