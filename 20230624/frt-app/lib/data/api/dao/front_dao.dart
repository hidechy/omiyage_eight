import '../../repository/front_repository.dart';
import '../iyns_api_dio.dart';
import '../model/check_platform_characters_model.dart';
import '../model/front_categories_model.dart';
import '../model/front_delis_model.dart';
import '../model/front_master_model.dart';
import '../model/recipe_detail_model.dart';
import '../model/response_model.dart';
import '../model/secure_decrypted_model.dart';
import '../model/secure_encrypted_model.dart';

class FrontDao extends IynsApiDio implements FrontRepository {
  @override
  Future<ResponseModel<FrontCategoriesModel>> getFrontCategory({
    required String shopCode,
  }) async {
    final response = await get<Map<String, dynamic>>(
      '/front/category/$shopCode',
      queryParameters: <String, String>{
        'category_type': 'normal',
      },
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<SecureEncryptedModel>> postSecureEncrypt({required String parameter}) async {
    final response = await post<Map<String, dynamic>>(
      '/front/secure/encrypt',
      data: <String, dynamic>{
        'parameter': parameter,
      },
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<SecureDecryptedModel>> postSecureDecrypt({required String parameter}) async {
    final response = await post<Map<String, dynamic>>(
      '/front/secure/decrypt',
      data: <String, dynamic>{
        'parameter': parameter,
      },
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<FrontDelisModel>> getRecommendations({required String date}) async {
    final response = await get<Map<String, dynamic>>(
      '/front/delis/recommend',
      queryParameters: <String, String>{
        'date': date,
      },
    );
    return ResponseModel.fromJson(response.data);
  }

  @override
  Future<ResponseModel<FrontDelisModel>> getSearchDelisList(
      {required String keyword, int? page, int? viewCount}) async {
    final response = await get<Map<String, dynamic>>(
      '/front/delis/list',
      queryParameters: <String, dynamic>{
        'q': keyword,
        'page': page,
        'per': viewCount,
      },
    );
    return ResponseModel.fromJson(response.data);
  }

  @override
  Future<ResponseModel<RecipeDetailModel>> getRecipeDetail({required String recipeId}) async {
    final response = await get<Map<String, dynamic>>(
      '/front/delis/detail/$recipeId',
    );
    return ResponseModel.fromJson(response.data);
  }

  @override
  Future<ResponseModel<FrontMasterModel>> getMasterInfo() async {
    final response = await get<Map<String, dynamic>>(
      '/front/master/dk',
    );
    return ResponseModel.fromJson(response.data);
  }

  @override
  Future<ResponseModel<CheckPlatformCharactersModel>> checkPlatformCharacters({required String target}) async {
    final response = await post<Map<String, dynamic>>(
      '/front/check/platform_characters',
      data: <String, dynamic>{
        'target': target,
      },
    );
    return ResponseModel.fromJson(response.data);
  }
}
