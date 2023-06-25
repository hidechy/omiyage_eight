import '../../../enum/front_div.dart';
import '../../repository/favorite_repository.dart';
import '../iyns_api_dio.dart';
import '../model/product_model.dart';
import '../model/response_model.dart';

class FavoriteDao extends IynsApiDio implements FavoriteRepository {
  // お気に入り追加
  @override
  Future<void> addItem({
    required String productId,
    required int cartId,
  }) async {
    await post<Map<String, dynamic>>(
      '/customers/me/favorites',
      data: {
        'product_id': productId,
        'cart_id': cartId,
      },
    );
  }

  // お気に入り削除
  @override
  Future<void> deleteItems({
    required List<String> productIds,
    required int cartId,
  }) async {
    await delete<Map<String, dynamic>>(
      '/customers/me/favorites',
      queryParameters: <String, dynamic>{
        'product_ids': productIds.join(','),
        'cart_id': cartId,
      },
    );
  }

  // お気に入り一覧
  @override
  Future<ResponseModel<ProductModel>> getItems({
    int? page,
    int? viewCount,
    required int cartId,
  }) async {
    final response = await get<Map<String, dynamic>>(
      '/customers/me/favorites',
      queryParameters: <String, dynamic>{
        'page': page,
        'view_count': viewCount,
        'cart_id': cartId,
        'front_div': FrontDiv.sp.value,
      }..removeWhere((key, dynamic value) => value == null),
    );
    return ResponseModel.fromJson(response.data!);
  }
}
