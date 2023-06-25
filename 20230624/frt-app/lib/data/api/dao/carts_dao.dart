import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:get_it/get_it.dart';

import '../../../enum/analytics_event_type.dart';
import '../../../enum/answer.dart';
import '../../../enum/cart_div_type.dart';
import '../../../enum/event_parameter_type.dart';
import '../../../enum/flavor_type.dart';
import '../../../enum/front_div.dart';
import '../../../util/analytics_manager.dart';
import '../../../util/boolean_json_converter.dart';
import '../../repository/carts_repository.dart';
import '../iyns_api_dio.dart';
import '../model/cart_added_item_model.dart';
import '../model/cart_changed_quantity_model.dart';
import '../model/cart_model.dart';
import '../model/changed_cart_model.dart';
import '../model/medicine_answer_form.dart';
import '../model/response_model.dart';
import '../model/shopping_start_check_result_model.dart';

class CartsDao extends IynsApiDio implements CartsRepository {
  @override
  Future<ResponseModel<CartModel>> getCartInfo({
    int? cartId,
  }) async {
    final response = await get<Map<String, dynamic>>(
      '/carts',
      queryParameters: <String, dynamic>{
        'cart_id': cartId,
      }..removeWhere((key, dynamic value) => value == null),
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<CartAddedItemModel>> addItems({
    required int cartId,
    required String productId,
    int itemCount = 1,
    AnswerFlag? answer1,
    AnswerFlag? answer2,
    AnswerFlag? answer3,
    MedicineAnswerForm? medicineAnswerForm,
    String? tapContents,
  }) async {
    // カウンセリング画面からAPIを叩く時のみcounseling_answerをセットする
    Map<String, String>? counselingAnswer;
    if (answer1 != null && answer2 != null && answer3 != null) {
      counselingAnswer = {
        'answer1': answer1.value,
        'answer2': answer2.value,
        'answer3': answer3.value,
      };
    }

    final response = await post<Map<String, dynamic>>(
      '/carts/$cartId/items',
      data: {
        'products': [
          {
            'product_id': productId,
            'item_count': itemCount,
            'counseling_answer': counselingAnswer,
            'medicine_answer': medicineAnswerForm?.toJson(),
          }..removeWhere((key, dynamic value) => value == null),
        ],
      },
    );

    final responseModel = ResponseModel<CartAddedItemModel>.fromJson(response.data);
    final isFirstChoice = responseModel.first.cart.productCount == 1;

    for (final element in responseModel.first.cart.cartDetails.reversed) {
      if (element.productId == productId) {
        final analytics = GetIt.I<AnalyticsManager>();
        analytics.sendEvent(
          eventType: AnalyticsEventType.addToCart,
          parameters: {
            EventParameterType.productId: productId,
            EventParameterType.cartShopCd: responseModel.first.cart.shop.shopCode,
            EventParameterType.isFirstChoice: isFirstChoice,
            EventParameterType.currency: 'JPY',
            EventParameterType.value: element.price,
            EventParameterType.tapContents: tapContents,
            EventParameterType.items: [
              AnalyticsEventItem(
                itemId: element.productId,
                itemName: element.productName,
                price: element.price,
                quantity: 1,
              )
            ]
          },
        );
        break;
      }
    }
    return responseModel;
  }

  @override
  Future<ResponseModel<ShoppingStartCheckResultModel>> deemed({required String shopCode}) async {
    final response = await post<Map<String, dynamic>>(
      '/carts/deemed',
      data: {
        'shop_code': shopCode,
      },
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<CartChangedQuantityModel>> changeItemCount({
    required int cartId,
    required String productId,
    required int itemCount,
    required String productDetailKey,
    String confirmFlag = '0',
  }) async {
    final response = await put<Map<String, dynamic>>(
      '/carts/$cartId/items',
      data: {
        'product_id': productId,
        'item_count': itemCount,
        'product_detail_key': productDetailKey,
        'regular_shipment_apply_flag': '0',
        'confirm_flag': confirmFlag,
      },
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<CartModel>> deleteItem({
    required int cartId,
    required String productId,
    required String productDetailKey,
  }) async {
    final response = await delete<Map<String, dynamic>>(
      '/carts/$cartId/items/$productId',
      queryParameters: <String, dynamic>{
        'product_detail_key': productDetailKey,
        'regular_shipment_apply_flag': '0',
        'front_div': FrontDiv.sp.value,
      },
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<CartModel>> deleteAllItems({
    required int cartId,
  }) async {
    final response = await delete<Map<String, dynamic>>('/carts/$cartId/items');
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<ShoppingStartCheckResultModel>> newOrder({
    required String shopCode,
    required String deliveryDate,
    required String deliveryTimeId,
    bool deleteLimitedProductFlag = false,
    bool? noContactFlag,
    required bool deletePrecartFlag,
  }) async {
    final response = await post<Map<String, dynamic>>(
      '/carts',
      data: {
        'cart_div': CartDivType.normal.value,
        'shop_code': shopCode,
        'delivery_date': deliveryDate,
        'delivery_time_id': deliveryTimeId,
        'delete_limited_product_flag': _converter.toJson(deleteLimitedProductFlag),
        'no_contact_flag': noContactFlag != null ? _converter.toJson(noContactFlag) : null,
        'delete_precart_flag': _converter.toJson(deletePrecartFlag),
      }..removeWhere((key, dynamic value) => value == null),
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<ChangedCartModel>> changeCartInfo({
    required int cartId,
    String? deliveryDate,
    String? deliveryTimeId,
    bool deleteLimitedDeliveryProductFlag = false,
    bool? noContactFlag,
    bool? refreshOnlyFlag,
  }) async {
    final response = await put<Map<String, dynamic>>(
      '/carts/$cartId',
      data: {
        'delivery_date': deliveryDate,
        'delivery_time_id': deliveryTimeId,
        'delete_limited_delivery_product_flag': _converter.toJson(deleteLimitedDeliveryProductFlag),
        'no_contact_flag': (noContactFlag != null) ? _converter.toJson(noContactFlag) : null,
        'refresh_only_flag': (refreshOnlyFlag != null) ? _converter.toJson(refreshOnlyFlag) : null,
        // 環境連携時には不要なパラメータでmockの条件分岐の時のみ使用（no_limited_product, limited_productで場合分け）
        if (FlavorConfig.instance.name == FlavorType.local.name) 'limited_product_for_mock': 'no_limited_product',
      }..removeWhere((key, dynamic value) => value == null),
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<void> cancelChangeOrder({
    required int cartId,
  }) async {
    await delete<Map<String, dynamic>>('/carts/$cartId');
  }

  @override
  Future<void> agreeAkachanHonpoConfirmations({
    required int cartId,
  }) async {
    await put<Map<String, dynamic>>(
      '/carts/$cartId/akachan_honpo_confirmations',
    );
  }

  @override
  Future<void> agreeMedicineConfirmations({
    required int cartId,
  }) async {
    await put<Map<String, dynamic>>(
      '/carts/$cartId/medicine_confirmations',
    );
  }

  static const StringToBooleanConverter _converter = StringToBooleanConverter();
}
