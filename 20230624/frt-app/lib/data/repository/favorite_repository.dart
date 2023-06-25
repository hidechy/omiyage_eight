import '../api/model/product_model.dart';
import '../api/model/response_model.dart';

abstract class FavoriteRepository {
  // お気に入り追加
  Future<void> addItem({
    required String productId,
    required int cartId,
  });

  // お気に入り削除
  Future<void> deleteItems({
    required List<String> productIds,
    required int cartId,
  });

  // お気に入り商品取得(お気に入りフォルダ指定なし)
  Future<ResponseModel<ProductModel>> getItems({
    int? page,
    int? viewCount,
    required int cartId,
  });
}
