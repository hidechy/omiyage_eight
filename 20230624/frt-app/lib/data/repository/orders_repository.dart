import '../../enum/order_fulfillment_type.dart';
import '../../enum/order_status.dart';
import '../api/model/order_cancel_response_model.dart';
import '../api/model/order_details_model.dart';
import '../api/model/orders_model.dart';
import '../api/model/response_model.dart';
import '../api/model/shopping_start_check_result_model.dart';

abstract class OrdersRepository {
  /// 注文履歴取得
  Future<ResponseModel<OrdersModel>> getOrderHistories({
    List<OrderFulfillmentType>? fulfillmentTypes,
    required int page,
    int? viewCount,
    List<OrderStatus>? deliveryStatuses,
  });

  /// 注文変更実行API
  Future<ResponseModel<ShoppingStartCheckResultModel>> changeOrder(
    int orderId, {
    String? deliveryDate,
    String? deliveryTimeId,
    String? deleteLimitedDeliveryProductFlag,
  });

  /// 注文詳細取得API
  Future<ResponseModel<OrderDetailsModel>> getOrderDetail({
    required int orderId,
    int? repurchaseCartId,
    int? viewCount,
  });

  /// 注文キャンセルAPI
  Future<ResponseModel<OrderCancelResponseModel>> cancelOrder({
    required int orderId,
    required int cartId,
  });
}
