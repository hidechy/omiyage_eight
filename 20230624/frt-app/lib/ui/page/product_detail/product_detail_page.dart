import 'dart:io';

import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../../enum/analytics_event_type.dart';
import '../../../enum/event_parameter_type.dart';
import '../../../enum/recommend_type.dart';
import '../../../util/analytics_manager.dart';
import '../../common/app_loading.dart';
import '../../common/attention_text.dart';
import '../../common/cart_button.dart';
import '../../common/error_handler.dart';
import '../../common/product_cassette_set.dart';
import '../../common/sale_by_measure_image.dart';
import '../../state/product_detail_page_state.dart';
import '../../view_model/product_detail_page_view_model.dart';
import '../product_search_results_page.dart';
import 'about_mile.dart';
import 'advertising_term.dart';
import 'alcohol_annotation.dart';
import 'cancel_possibility_notes.dart';
import 'card_member_discount_label.dart';
import 'favorite_button.dart';
import 'limited_delivery_datetime.dart';
import 'market_time.dart';
import 'nanaco_point_label.dart';
import 'prince_and_unit.dart';
import 'prodcut_images.dart';
import 'product_change_deadline_text.dart';
import 'product_description_text.dart';
import 'product_label.dart';
import 'product_name_label.dart';
import 'product_number_select_box.dart';
import 'product_page_cart_button.dart';
import 'product_specification_text.dart';
import 'production_notes.dart';
import 'received_date_notes.dart';
import 'sale_by_mesaure_detail_notes.dart';
import 'sell_out.dart';
import 'soda_stream_condition.dart';
import 'stock_number.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productDetail = context.select((ProductDetailPageState value) => value.productDetailModel);
    return LoadingFullScreen(
      errorOperators: [ErrorOperatorWrapper(_handler)],
      future: () async => await context.read<ProductDetailPageViewModel>().load(productDetail.product.productId),
      content: SingleChildScrollView(
        child: Column(
          children: [
            const AlcoholAnnotation(),
            const SaleByMeasureImage(margin: EdgeInsets.fromLTRB(16, 8, 16, 8)),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ProductImages(),
            ),
            const FavoriteButton(),
            const SizedBox(height: 1.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  AdvertisingTerm(),
                  LimitedDeliveryDatetime(),
                  MarketTime(),
                  CancelPossibilityNotes(),
                  ProductLabels(position: ProductLabelPosition.top),
                  StockNumber(),
                  ProductLabels(position: ProductLabelPosition.bottom),
                  ProductSpecificationText(),
                  SodaStreamCondition(),
                  ProductChangeDeadlineText(),
                  ProductNameLabel(),
                  NanacoPointLabel(),
                  PriceAndUnit(),
                  ProductionNotes(),
                  CardMemberDiscountLabel(),
                  ReceivedDateNotes(),
                  ProductNumberSelectBox(),
                  ProductPageCartButton(),
                  SizedBox(height: 24.0),
                  SaleByMeasureDetailNotes(),
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: ProductDescriptionText(),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(height: 16),
                  SellOutNotes(),
                  AboutMile(),
                  _RecommendedProductCassetteSet(isRelated: true),
                  _RecommendedProductCassetteSet(),
                  AttentionText(),
                  SizedBox(height: 200.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<ErrorHandlerState> _handler(DioError error, BuildContext context, ErrorHandler handler) async {
    final httpStatus = error.response!.statusCode;
    if (httpStatus != HttpStatus.notFound) {
      return handler.next(error);
    } else {
      return handler.resolve();
    }
  }
}

// 関連商品/この商品を買った人はこんな商品も買っています。の商品カセット
class _RecommendedProductCassetteSet extends StatelessWidget {
  const _RecommendedProductCassetteSet({Key? key, this.isRelated = false}) : super(key: key);
  final bool isRelated;

  @override
  Widget build(BuildContext context) {
    final categoryProductModels = context
        .select((ProductDetailPageState state) =>
            isRelated ? state.relatedRecommendedProducts : state.resembledRecommendedProducts)
        .map((e) => e.product)
        .toList();
    final isNotDrugOrHasItem = context.select((ProductDetailPageState state) =>
        categoryProductModels.isNotEmpty &&
        !(state.productDetailModel.product.isDrugProduct || state.productDetailModel.product.isAkachanHonpoProduct));
    if (isNotDrugOrHasItem) {
      final cartButtonKey = context.watch<GlobalKey<CartButtonState>>();
      final resembledNotes = categoryProductModels.length > 3 ? 'この商品を買った人は\nこんな商品も買っています。' : 'この商品を買った人はこんな商品も買っています。';

      final productId = context.select((ProductDetailPageState state) => state.productDetailModel.product.productId);
      return Provider<AnalyticsParam>.value(
          value: AnalyticsParam(
              recommendType: isRelated ? RecommendType.concurrentSelling.value : RecommendType.inCart.value),
          child: ProductCassetteSet(
            products: categoryProductModels,
            categoryName: isRelated ? '関連商品' : resembledNotes,
            onPressed: () {
              final analytics = GetIt.I<AnalyticsManager>();
              if (isRelated) {
                analytics.sendEvent(
                    eventType: AnalyticsEventType.seeMoreRecommendProduct,
                    parameters: {EventParameterType.recommendType: RecommendType.concurrentSelling.value});
              } else {
                analytics.sendEvent(
                    eventType: AnalyticsEventType.seeMoreSameCategory,
                    parameters: {EventParameterType.recommendType: RecommendType.inCart.value});
              }
              return Navigator.push(
                context,
                ProductSearchResultsPage.route(
                  recommendType: isRelated ? RecommendType.concurrentSelling : RecommendType.inCart,
                  productId: isRelated ? productId : null,
                ),
              );
            },
            cartButtonKey: cartButtonKey,
            needLinkLabel: categoryProductModels.length > 3,
          ));
    }
    return const SizedBox.shrink();
  }
}
