import '../../enum/question_type.dart';
import '../../enum/recommend_type.dart';
import '../../enum/sort_number.dart';
import '../api/model/category_summary_model.dart';
import '../api/model/product_detail_model.dart';
import '../api/model/products_previous_order_model.dart';
import '../api/model/products_product_id_questions_get_model.dart';
import '../api/model/recommended_product_model.dart';
import '../api/model/response_model.dart';
import '../api/model/search_result_model.dart';

abstract class ProductsRepository {
  /// カテゴリ商品サマリAPI
  ///
  /// @param categoryCode カテゴリコード
  /// @param sortNumber 並び順(未設定、または、指定以外の値が設定された場合、0:おすすめ順で返却)
  /// @param shopCode 店舗コード
  /// @param productCount カテゴリ商品件数
  /// @param cartId カートID
  Future<ResponseModel<CategorySummaryModel>> getProductsCategorySummary({
    required String categoryCode,
    SortNumber? sortNumber,
    required String shopCode,
    required int productCount,
    int? cartId,
    String? categoriesCountLimitFlag,
  });

  /// 商品詳細取得API
  ///
  /// @param productId 商品ID
  /// @param shopCode 店舗コード
  /// @param cartId カートID
  Future<ResponseModel<ProductDetailModel>> getProductDetail({
    required String productId,
    required String shopCode,
    int? cartId,
  });

  /// 商品一覧取得API
  ///
  /// @param page ページ数
  /// @param viewCount 表示件数
  /// @param sortNumber 並び順(未設定、または、指定以外の値が設定された場合、0:おすすめ順で返却)
  /// @param shopCode 店舗コード
  /// @param facetDiscountType ファセット値引種別
  /// @param searchCategoryCode 検索カテゴリコード
  /// @param searchWord 検索ワード
  /// @param cartId カートID
  Future<ResponseModel<SearchResultModel>> getProducts({
    required int page,
    int? viewCount,
    SortNumber? sortNumber,
    required String shopCode,
    String? facetDiscountType,
    String? searchCategoryCode,
    String? searchWord,
    int? cartId,
  });

  /// 販売前質問取得API
  ///
  /// @param cartId カートID
  /// @param productId 商品ID
  /// @param questionType 質問種別(counseling：カウンセリング質問, medicine：医薬品問診の設問)
  Future<ResponseModel<ProductsProductIdQuestionsGetModel>> getQuestions({
    int? cartId,
    required String productId,
    required QuestionType questionType,
  });

  /// 前回注文商品一覧取得API
  Future<ResponseModel<ProductsPreviousOrderModel>> getPreviousOrder();

  /// レコメンド商品一覧取得API
  Future<ResponseModel<RecommendedProductModel>> getRecommendedProduct({
    required String shopCode,
    required RecommendType recommendType,
    String? productId,
    required int cartId,
    required int page,
    required int viewCount,
  });
}
