import 'dart:io';

import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

import '../../../enum/analytics_event_type.dart';
import '../../../enum/event_parameter_type.dart';
import '../../../enum/screen_name.dart';
import '../../../enum/search_history_type.dart';
import '../../../util/analytics_manager.dart';
import '../../../util/logger.dart';
import '../../common/app_loading.dart';
import '../../common/cart_button.dart';
import '../../common/error_handler.dart';
import '../../common/order_changing_bar.dart';
import '../../common/search_app_bar.dart';
import '../../common/total_price.dart';
import '../../state/product_detail_page_state.dart';
import '../../view_model/product_detail_page_view_model.dart';
import '../product_search_results_page.dart';
import 'medical_product_detail_page.dart';
import 'no_item_content.dart';
import 'product_detail_akachan_honpo_page.dart';
import 'product_detail_page.dart';

class ProductDetailDistributePageArguments {
  ProductDetailDistributePageArguments({
    required this.productId,
    this.sendAnalytics = false,
    this.advertisingId,
    this.recommendType,
  });

  final String productId;
  final bool sendAnalytics;
  final String? advertisingId;
  final String? recommendType;
}

class ProductDetailDistributePage extends StatelessWidget {
  const ProductDetailDistributePage({Key? key}) : super(key: key);

  static Route<Object?> route({
    required String productId,
    bool? sendAnalytics,
    String? advertisingId,
    String? recommendType,
  }) =>
      MaterialPageRoute<Object?>(
        builder: (_) => Provider.value(
          value: ProductDetailDistributePageArguments(
            productId: productId,
            sendAnalytics: sendAnalytics ?? false,
            advertisingId: advertisingId,
            recommendType: recommendType,
          ),
          child: const ProductDetailDistributePage(),
        ),
        settings: RouteSettings(name: name),
      );
  static final name = ScreenName.productDetailPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build ProductDetailDistributePage');
    final productId = context.select((ProductDetailDistributePageArguments value) => value.productId);
    final sendAnalytics = context.select((ProductDetailDistributePageArguments value) => value.sendAnalytics);

    return MultiProvider(
      providers: [
        Provider(create: (_) => GlobalKey<CartButtonState>()),
        StateNotifierProvider<ProductDetailPageViewModel, ProductDetailPageState>(
          create: (context) => ProductDetailPageViewModel(context.read<GlobalKey<CartButtonState>>()),
        ),
      ],
      builder: (context, _) {
        return PrimaryScrollController(
          controller: context.read<ProductDetailPageViewModel>().controller,
          child: Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  SearchAppBar(
                    historyType: SearchHistoryType.product,
                    onSubmitted: (String keyword) {
                      return Navigator.push(
                        context,
                        ProductSearchResultsPage.route(keyword: keyword),
                      );
                    },
                  ),
                  const OrderChangingBar(),
                  Expanded(
                    child: Stack(
                      children: [
                        LoadingFullScreen(
                          errorOperators: [ErrorOperatorWrapper(_handler)],
                          future: () async {
                            await context.read<ProductDetailPageViewModel>().getProductDetail(productId);

                            if (sendAnalytics) {
                              final advertisingId = context.read<ProductDetailDistributePageArguments>().advertisingId;
                              final recommendType = context.read<ProductDetailDistributePageArguments>().recommendType;
                              final analytics = GetIt.I<AnalyticsManager>();
                              analytics.sendEvent(
                                eventType: AnalyticsEventType.selectProductDetail,
                                parameters: {
                                  EventParameterType.productId: productId,
                                  EventParameterType.bannerAdvertisingId: advertisingId,
                                  EventParameterType.recommendType: recommendType,
                                },
                              );
                            }
                            return true;
                          },
                          content: Selector<ProductDetailPageState, Tuple3<bool, bool, bool>>(
                            selector: (_, state) {
                              final noItem = state.noItem;
                              final isDrugProduct = state.productDetailModel.product.isDrugProduct;
                              final isAkachanHonpoProduct = state.productDetailModel.product.isAkachanHonpoProduct;
                              return Tuple3(noItem, isDrugProduct, isAkachanHonpoProduct);
                            },
                            builder: (context, data, _) {
                              if (data.item1) {
                                return const NoItemContent();
                              }
                              if (data.item2) {
                                return const MedicalProductDetailPage();
                              }
                              if (data.item3) {
                                return const ProductDetailAkachanHonpoPage();
                              }
                              return const ProductDetailPage();
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: TotalPrice(),
                  ),
                ],
              ),
            ),
            floatingActionButton: CartButton(key: context.watch<GlobalKey<CartButtonState>>()),
          ),
        );
      },
    );
  }

  Future<ErrorHandlerState> _handler(DioError error, BuildContext context, ErrorHandler handler) async {
    final httpStatus = error.response!.statusCode;
    context.read<ProductDetailPageViewModel>().noItem = true;
    if (httpStatus != HttpStatus.notFound) {
      return handler.next(error);
    }
    return handler.resolve();
  }
}
