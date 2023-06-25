import 'dart:io';

import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../data/api/model/product_model.dart';
import '../../data/api/model/response_model.dart';
import '../../enum/analytics_event_type.dart';
import '../../util/analytics_manager.dart';
import '../../util/cart_info_manager.dart';
import '../../util/customer_manager.dart';
import '../../util/logger.dart';
import '../page/counseling_page.dart';
import '../page/delivery_datetime_page.dart';
import '../page/product_detail/product_detail_distribute_page.dart';
import '../page/root_page.dart';
import '../state/customer_state.dart';
import '../view_model/product_cassette_view_model.dart';
import 'app_buttons.dart';
import 'app_colors.dart';
import 'app_dialogs.dart';
import 'app_loading.dart';
import 'cart.dart';
import 'error_handler.dart';
import 'product_cassette_notification.dart';

class ProductCassetteCartButton extends StatelessWidget {
  const ProductCassetteCartButton(
    this._productModel, {
    required this.imageUrl,
    required this.visibleLimitedSaleDeliveryInfo,
    Key? key,
  }) : super(key: key);

  final ProductModel _productModel;
  final String imageUrl;
  final bool visibleLimitedSaleDeliveryInfo;

  @override
  Widget build(BuildContext context) {
    // ボタンのデフォルトはカートへボタン
    Widget button = _addToCartButton(context);

    // 以下のいずれかがtrueの場合、ご購入・詳細ボタンを表示
    // 医薬品扱い商品判定
    // 品番商品判定
    // アカチャンホンポ商品判定かつカートの商品点数が0
    final cartDetails = context.select((CartInfoState cartInfoState) => cartInfoState.cartDetails);
    bool isAddedProduct = cartDetails.any((element) => element.productId == _productModel.productId);
    logger.info('isAddedProduct[$isAddedProduct]');
    if (_productModel.isDrugProduct ||
        _productModel.isProductNumber ||
        (_productModel.isAkachanHonpoProduct && !isAddedProduct)) {
      button = BlueOutlinedButton(
        fontSize: 12,
        widthFactor: 0.82,
        borderRadius: 2,
        borderWidth: 1,
        // 最小Padding 上下:3px、左右:フォントサイズの半分
        contentPadding: const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
        child: const Text('ご購入・詳細'),
        onPressed: () {
          ProductSelectNotification().dispatch(context);
          Navigator.push(
            context,
            ProductDetailDistributePage.route(
                productId: _productModel.productId,
                sendAnalytics: true,
                advertisingId: context.read<AnalyticsParam?>()?.advertisingId),
          );
        },
      );

      // 在庫なし
    } else if (!_productModel.isProductNumber && _productModel.maxBuyPossibleNumber == 0) {
      button = SizedBox(
        height: 24,
        child: _outOfStock(),
      );
    } else if (visibleLimitedSaleDeliveryInfo) {
      button = BlueOutlinedButton(
        fontSize: 11,
        child: const Text('受け取り日時変更'),
        borderRadius: 2,
        borderWidth: 1,
        // 最小Padding 上下:3px、左右:フォントサイズの半分
        contentPadding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5.5),
        onPressed: () async {
          final analytics = GetIt.I<AnalyticsManager>();
          analytics.sendEvent(eventType: AnalyticsEventType.changeDeliveryTimeByCassette);

          final navigator = Navigator.of(context, rootNavigator: true);

          final isVisitor = context.read<CustomerManager>().info.isVisitor;
          if (isVisitor) {
            final result = await showLoginDialog(context: context);
            if (result != true) {
              return;
            }
          }
          final isEnsureCart = await navigator.push(
            DeliveryDatetimePage.route(fullscreenDialog: true),
          );
          // 便確保成功時、店舗トップに戻す
          if (isEnsureCart ?? false) {
            RootPage.flush();
          }
        },
      );
    }
    return button;
  }

  Widget _addToCartButton(BuildContext context) {
    final navigator = Navigator.of(context);
    final isMember = context.select((CustomerState state) => state.isMember);
    Future<ErrorHandlerState> _handler(DioError error, BuildContext context, ErrorHandler handler) async {
      return addToCartErrorHandler(
        error,
        context,
        isMember,
        handler,
        productName: _productModel.productName,
        limitedNumber: _productModel.limitedNumber,
      );
    }

    Future<ErrorHandlerState> _isNeedConfirmErrorHandler(
        DioError error, BuildContext context, ErrorHandler handler) async {
      final httpStatus = error.response!.statusCode;
      if (httpStatus != HttpStatus.badRequest) {
        return handler.next(error);
      }
      // ignore: prefer_void_to_null
      final errorResponse = ResponseModel<Null>.fromJson(error.response!.data);
      final errorReasonCode = errorResponse.errorDetails.first.errorReasonCode;

      if (errorReasonCode == '2000216') {
        // アカチャンホンポ商品 かつ 購入事前確認実施前 かつ 商品カセットボタンの押下時の場合
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          // 商品詳細画面遷移後に購入事前確認画面を表示する
          await navigator.push(
            ProductDetailDistributePage.route(
              productId: _productModel.productId,
              sendAnalytics: true,
              advertisingId: context.read<AnalyticsParam?>()?.advertisingId,
            ),
          );
        });
        return handler.resolve();
      }

      return handler.next(error);
    }

    final isVisitor = context.select((CustomerState state) => state.isVisitor);

    return BlueElevatedButton(
      fontSize: 12,
      widthFactor: 0.72,
      borderRadius: 2,
      // 最小Padding 上下:3px、左右:フォントサイズの半分
      contentPadding: const EdgeInsets.symmetric(vertical: 3, horizontal: 6),
      onPressed: () async {
        // カウンセリング商品判定がtrueで見学ログインの場合、ログインが必須
        if (_productModel.isCounselingProduct && isVisitor) {
          showLoginDialog(context: context);
          // ログイン済みでカウンセリング商品判定がtrueかつカウンセリング済み判定がfalseの場合、APP_先出し_0041_カウンセリングに遷移する。
        } else if (_productModel.isCounselingProduct && !_productModel.isAnsweredCounseling && isMember) {
          Navigator.push(context, CounselingPage.route(_productModel));
        } else {
          await showLoadingModal(
            context: context,
            future: () async {
              final tapContents = context.read<AnalyticsParam?>()?.tapContents;
              await context.read<ProductCassetteViewModel>().addToCart(
                    _productModel.productId,
                    imageUrl,
                    tapContents,
                  );
              AddToCartNotification().dispatch(context);
              return true;
            },
            errorOperators: [
              ErrorOperatorWrapper(_handler),
              ErrorOperatorWrapper(_isNeedConfirmErrorHandler),
            ],
          );
        }
      },
      child: const Text(
        'カートへ',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: AppColors.white,
        ),
      ),
    );
  }

  Widget _outOfStock() {
    return const Text(
      '在庫なし',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 12,
        color: AppColors.black2,
        letterSpacing: -0.12,
        fontWeight: FontWeight.w700,
        height: 1.58,
      ),
    );
  }
}
