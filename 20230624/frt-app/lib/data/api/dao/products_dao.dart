import '../../../enum/front_div.dart';
import '../../../enum/question_type.dart';
import '../../../enum/recommend_type.dart';
import '../../../enum/sort_number.dart';
import '../../repository/products_repository.dart';
import '../iyns_api_dio.dart';
import '../model/category_summary_model.dart';
import '../model/product_detail_model.dart';
import '../model/products_previous_order_model.dart';
import '../model/products_product_id_questions_get_model.dart';
import '../model/recommended_product_model.dart';
import '../model/response_model.dart';
import '../model/search_result_model.dart';

class ProductsDao extends IynsApiDio implements ProductsRepository {
  @override
  Future<ResponseModel<CategorySummaryModel>> getProductsCategorySummary({
    required String categoryCode,
    SortNumber? sortNumber,
    required String shopCode,
    required int productCount,
    int? cartId,
    String? categoriesCountLimitFlag,
  }) async {
    final response = await get<Map<String, dynamic>>(
      '/products/summary_categories/$categoryCode',
      queryParameters: <String, dynamic>{
        'sort_number': sortNumber?.value ?? 0,
        'shop_code': shopCode,
        'product_count': productCount,
        'front_div': FrontDiv.sp.value,
        'cart_id': cartId,
        'regular_shipment_product_only_flag': '0',
        'categories_count_limit_flag': categoriesCountLimitFlag,
      }..removeWhere((key, dynamic value) => value == null),
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<ProductDetailModel>> getProductDetail({
    required String productId,
    required String shopCode,
    int? cartId,
  }) async {
    final response = await get<Map<String, dynamic>>(
      '/products/$productId',
      queryParameters: <String, dynamic>{
        'shop_code': shopCode,
        'front_div': FrontDiv.sp.value,
        'display_new_tax_price_flag': '0',
        'cart_id': cartId,
        'regular_shipment_product_only_flag': '0',
      }..removeWhere((key, dynamic value) => value == null),
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<SearchResultModel>> getProducts({
    required int page,
    int? viewCount,
    SortNumber? sortNumber = SortNumber.recommendation,
    required String shopCode,
    String? facetDiscountType,
    String? searchCategoryCode,
    String? searchWord,
    int? cartId,
  }) async {
    final response = await get<Map<String, dynamic>>(
      '/products',
      queryParameters: <String, dynamic>{
        'front_div': FrontDiv.sp.value,
        'page': page,
        'view_count': viewCount,
        'product_div': '1',
        'display_new_tax_price_flag': '0',
        'regular_shipment_product_only_flag': '0',
        'search_condition': '1',
        'sort_number': sortNumber?.value,
        'shop_code': shopCode,
        'search_category_code': searchCategoryCode,
        'facet_discount_type': facetDiscountType,
        'search_word': searchWord,
        'cart_id': cartId,
      }..removeWhere((key, dynamic value) => value == null),
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<ProductsProductIdQuestionsGetModel>> getQuestions(
      {int? cartId, required String productId, required QuestionType questionType}) async {
    final response = await get<Map<String, dynamic>>(
      '/products/$productId/questions',
      queryParameters: <String, dynamic>{
        'cart_id': cartId,
        'question_type': questionType.value,
      }..removeWhere((key, dynamic value) => value == null),
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<ProductsPreviousOrderModel>> getPreviousOrder() async {
    final response = await get<Map<String, dynamic>>(
      '/products/previous_order',
      queryParameters: <String, dynamic>{
        'front_div': FrontDiv.sp.value,
      },
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<RecommendedProductModel>> getRecommendedProduct({
    required String shopCode,
    required RecommendType recommendType,
    String? productId,
    required int cartId,
    required int page,
    required int viewCount,
  }) async {
    final response = await get<Map<String, dynamic>>(
      '/products/recommended',
      queryParameters: <String, dynamic>{
        'shop_code': shopCode,
        'front_div': FrontDiv.sp.value,
        'recommend_type': recommendType.value,
        'page': page,
        'view_count': viewCount,
        'cart_id': cartId,
        'product_id': productId,
        'regular_shipment_product_only_flag': 0,
      }..removeWhere((key, dynamic value) => value == null),
    );
    return ResponseModel.fromJson(response.data!);
  }
}
