import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../util/cart_info_manager.dart';
import '../../../util/customer_manager.dart';
import '../../../util/shop_info_manager.dart';
import '../../common/akachanhonpo_shop_info.dart';
import '../../common/app_dialogs.dart';
import '../../common/attention_text.dart';
import '../../common/sale_by_measure_image.dart';
import '../../view_model/product_detail_page_view_model.dart';
import 'about_mile.dart';
import 'advertising_term.dart';
import 'akachan_honpo_confirmations_page.dart';
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

class ProductDetailAkachanHonpoPage extends StatelessWidget {
  const ProductDetailAkachanHonpoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageViewModel = context.read<ProductDetailPageViewModel>();

    if (!pageViewModel.isLoginCheck) {
      pageViewModel.isLoginCheck = true;
      WidgetsBinding.instance.addPostFrameCallback(
        (_) async {
          final isVisitor = context.read<CustomerManager>().info.isVisitor;
          final productDetailPageViewModel = context.read<ProductDetailPageViewModel>();
          final shopInfoManager = productDetailPageViewModel.shopInfoManager;
          final cartInfoManager = productDetailPageViewModel.cartInfoManager;
          final navigatorState = Navigator.of(context);
          final rootNavigatorState = Navigator.of(context, rootNavigator: true);

          if (isVisitor) {
            final succeeded = await showLoginDialog(context: context);
            // ログインしなかった、もしくは失敗した場合は前画面に戻る
            if (succeeded != true) {
              navigatorState.pop();
              return;
            }
          }
          _akachanHonpoConfirmationsDisplay(
            productDetailPageViewModel: productDetailPageViewModel,
            shopInfoManager: shopInfoManager,
            cartInfoManager: cartInfoManager,
            navigatorState: navigatorState,
            rootNavigatorState: rootNavigatorState,
          );
        },
      );
    }

    return SingleChildScrollView(
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
              children: const [
                SizedBox(height: 16),
                SellOutNotes(),
                AboutMile(),
                AttentionText(),
                SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: AkachanhonpoShopInfo(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 200.0),
        ],
      ),
    );
  }

  void _akachanHonpoConfirmationsDisplay({
    required ProductDetailPageViewModel productDetailPageViewModel,
    required CartInfoManager cartInfoManager,
    required ShopInfoManager shopInfoManager,
    required NavigatorState navigatorState,
    required NavigatorState rootNavigatorState,
  }) async {
    final isConsentAkachanHonpo = cartInfoManager.info.isConsentAkachanHonpo;
    final isAkahonAgentShop = shopInfoManager.isAkahonAgentShop;
    final isConfirmationsView = productDetailPageViewModel.isConfirmationsView;

    // 購入事前確認未承認かつ、アカホン店舗代行型の場合、購入事前確認画面を表示する
    if (!isConfirmationsView && !isConsentAkachanHonpo && isAkahonAgentShop) {
      productDetailPageViewModel.isConfirmationsView = true;

      final isApproved = await rootNavigatorState.push(AkachanHonpoConfirmationsPage.route()) ?? false;

      if (!isApproved) {
        // 商品カセットへ遷移
        navigatorState.pop();
      }
    }
  }
}
