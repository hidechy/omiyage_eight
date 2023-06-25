import 'dart:async';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../data/api/model/cart_model.dart';
import '../data/api/model/response_model.dart';
import '../data/repository/carts_repository.dart';
import '../enum/cart_order_status_type.dart';
import '../enum/cart_status.dart';
import 'customer_manager.dart';
import 'logger.dart';

typedef CartInfoState = CartModel;

class CartInfoManager extends StateNotifier<CartInfoState> with LocatorMixin {
  CartInfoManager([CartInfoState state = const CartInfoState()]) : super(state) {
    _cartsRepository = GetIt.I<CartsRepository>();
  }

  late final CartsRepository _cartsRepository;

  CustomerManager get _customerManager => __customerManager!;
  CustomerManager? __customerManager;

  CartInfoState get info => state;

  set info(CartInfoState value) => state = value;

  @override
  void initState() {
    super.initState();
    __customerManager = read<CustomerManager>();
    if (__customerManager!.observer != this) {
      logger.info('CustomerManagerにCartInfoManagerを登録');
      __customerManager!.observer = this;
    }
  }

  @override
  void dispose() {
    if (_customerManager.mounted) {
      _customerManager.observer = null;
    }
    super.dispose();
  }

  void clear() {
    logger.info('カートを破棄します');
    state = const CartInfoState();
  }

  /// 通常カートを取得してグローバルのカート情報Stateへ反映
  /// 通常カートがない場合、みなし便の確保を行う
  Future<void> ensure({String? shopCode}) async {
    try {
      final cartModel = await _cartsRepository.getCartInfo();
      if (cartModel.data.first.cartStatus.isNormalCart) {
        state = cartModel.first;
      } else {
        if (cartModel.first.orderStatus == CartOrderStatusType.nowChanging) {
          await _cancelChangeOrder(cartId: cartModel.first.cartId);
        }
        await _deemed(shopCode);
      }
    } on DioError catch (error) {
      if (error.type != DioErrorType.response || error.response!.statusCode != HttpStatus.notFound) {
        rethrow;
      }
      await _deemed(shopCode);
    }
  }

  Future<void> _deemed(String? shopCode) async {
    shopCode ??= _customerManager.member?.deliveryShop.firstOrNull?.shopCode;
    if (shopCode != null) {
      state = (await _cartsRepository.deemed(shopCode: shopCode)).first.cart!;
    }
  }

  Future<void> _cancelChangeOrder({required int cartId}) async {
    try {
      await GetIt.I<CartsRepository>().cancelChangeOrder(cartId: cartId);
    } on DioError catch (error) {
      // ignore: prefer_void_to_null
      final errorResponse = ResponseModel<Null>.fromJson(error.response?.data);
      if (errorResponse.errorDetails.firstOrNull?.errorReasonCode == '2000007') {
        return;
      }
      rethrow;
    }
  }

  Future<bool> refresh() async {
    final response = await _cartsRepository.changeCartInfo(cartId: info.cartId, refreshOnlyFlag: true);
    info = response.first.cart!;
    return true;
  }
}
