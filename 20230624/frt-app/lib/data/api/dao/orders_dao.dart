import '../../../constants.dart' as c;
import '../../../enum/front_div.dart';
import '../../../enum/order_fulfillment_type.dart';
import '../../../enum/order_status.dart';
import '../../repository/orders_repository.dart';
import '../iyns_api_dio.dart';
import '../model/order_cancel_response_model.dart';
import '../model/order_details_model.dart';
import '../model/orders_model.dart';
import '../model/response_model.dart';
import '../model/shopping_start_check_result_model.dart';

class OrdersDao extends IynsApiDio implements OrdersRepository {
  @override
  Future<ResponseModel<OrdersModel>> getOrderHistories({
    List<OrderFulfillmentType>? fulfillmentTypes,
    required int page,
    int? viewCount,
    List<OrderStatus>? deliveryStatuses,
  }) async {
    final response = await get<Map<String, dynamic>>(
      '/orders',
      queryParameters: <String, dynamic>{
        'page': page,
        'view_count': viewCount ?? c.viewCount,
        'fulfillment_types': fulfillmentTypes?.map((e) => e.value).join(','),
        'delivery_statuses': deliveryStatuses?.map((e) => e.value).join(','),
        'front_div': '3',
      }..removeWhere((key, dynamic value) => value == null),
    );

    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<ShoppingStartCheckResultModel>> changeOrder(
    int orderId, {
    String? deliveryDate,
    String? deliveryTimeId,
    String? deleteLimitedDeliveryProductFlag,
  }) async {
    assert((deliveryDate == null && deliveryTimeId == null) || (deliveryDate != null && deliveryTimeId != null));
    if (deliveryDate != null) {
      deleteLimitedDeliveryProductFlag ??= '0';
    }
    final response = await put<Map<String, dynamic>>(
      '/orders/$orderId/cart',
      data: {
        'delivery_date': deliveryDate,
        'delivery_time_id': deliveryTimeId,
        'delete_limited_delivery_product_flag': deleteLimitedDeliveryProductFlag,
        'delete_precart_flag': '1',
      }..removeWhere((_, v) => v == null),
    );
    return ResponseModel<ShoppingStartCheckResultModel>.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<OrderDetailsModel>> getOrderDetail({
    required int orderId,
    int? repurchaseCartId,
    int? viewCount,
  }) async {
    final response = await get<Map<String, dynamic>>(
      '/orders/$orderId',
      queryParameters: <String, dynamic>{
        'page': 0, // productsは使用していないがrequiredのため0固定で指定
        'repurchase_cart_id': repurchaseCartId,
        'front_div': FrontDiv.sp.value,
        'view_count': viewCount,
        'display_new_tax_price_flag': '0',
        'regular_shipment_provisional_calculation_flag': '0',
      }..removeWhere((key, dynamic value) => value == null),
    );

    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<OrderCancelResponseModel>> cancelOrder({
    required int orderId,
    required int cartId,
  }) async {
    final response = await delete<Map<String, dynamic>>(
      '/orders/$orderId',
      queryParameters: <String, dynamic>{
        'front_device_type': '3',
        'cart_id': cartId,
      }..removeWhere((key, dynamic value) => value == null),
    );
    return ResponseModel.fromJson(response.data!);
  }
}
