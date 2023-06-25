import 'package:flutter/material.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../../enum/category_type.dart';
import '../../enum/order_icon_type.dart';
import '../../enum/screen_name.dart';
import '../../util/datetime_formatter.dart';
import '../../util/logger.dart';
import '../common/app_colors.dart';
import '../common/app_loading.dart';
import '../common/cart_button.dart';
import '../common/compliance_warning_labels.dart';
import '../common/order_changing_bar.dart';
import '../common/product_cassette_list_for_sortable_page.dart';
import '../common/sale_by_measure_image.dart';
import '../common/total_price.dart';
import '../state/repurchase_page_state.dart';
import '../state/shop_info_state.dart';
import '../view_model/repurchase_page_view_model.dart';

class RepurchasePageArguments {
  const RepurchasePageArguments({required this.orderId});
  final int orderId;
}

/// 0232_再購入画面
class RepurchasePage extends StatelessWidget {
  const RepurchasePage({Key? key}) : super(key: key);

  static Route<Object?> route(int orderId) => MaterialPageRoute<Object?>(
        builder: (_) => Provider.value(
          value: RepurchasePageArguments(orderId: orderId),
          child: const RepurchasePage(),
        ),
        settings: RouteSettings(name: name),
      );

  static final name = ScreenName.repurchasePage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build RepurchasePage');
    final orderId = context.watch<RepurchasePageArguments>().orderId;
    return MultiProvider(
      providers: [
        Provider(create: (_) => GlobalKey<CartButtonState>()),
        StateNotifierProvider<RepurchasePageViewModel, RepurchasePageState>(create: (_) => RepurchasePageViewModel()),
      ],
      builder: (context, _) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('再購入画面'),
          ),
          backgroundColor: AppColors.white,
          body: Stack(
            children: [
              LoadingFullScreen(
                future: () => context.read<RepurchasePageViewModel>().getOrderDetail(orderId),
                content: SingleChildScrollView(
                  child: Column(
                    children: const [
                      // 注文変更バー
                      OrderChangingBar(),
                      // 配達日時エリア
                      _DeliveryDateArea(),
                      _ProductCasseteList(),
                    ],
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: TotalPrice(),
              ),
            ],
          ),
          floatingActionButton: CartButton(key: context.watch<GlobalKey<CartButtonState>>()),
        );
      },
    );
  }
}

/// 配達日時ラベルエリアを返却
class _DeliveryDateArea extends StatelessWidget {
  const _DeliveryDateArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dateString = context.select(
        (RepurchasePageState state) => formatMonthDayJaMdFromDateTime(state.orderDetail.deliveryPlanStartDatetime));

    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 3,
            color: AppColors.blackAlpha10,
          ),
        ],
        color: Colors.white,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.center,
            width: 76,
            height: 17,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: AppColors.mainBorder,
            ),
            child: Text(
              OrderIconType.normalDelivery.name,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                height: 1.0,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              // 配達日時
              '$dateString 配達完了',
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                height: 22 / 16,
                color: AppColors.black2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductCasseteList extends StatelessWidget {
  const _ProductCasseteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orderDetail = context.select((RepurchasePageState state) => state.orderDetail);
    final categoryType = context.select((ShopInfoState state) => state.shopInfo.isAkachanhonpoShop)
        ? CategoryType.akahon
        : CategoryType.other;
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 16),
      child: ProductCassetteListForSortablePage(
        products: orderDetail.products,
        totalSize: orderDetail.products.length,
        firstColumn: const _HeaderRow(),
        noSearchResults: const _NoProductMessage(),
        cartButtonKey: context.watch<GlobalKey<CartButtonState>>(),
        onLoad: (_) => Future.value(true),
        categoryType: categoryType,
      ),
    );
  }
}

/// 商品カセットより上のパーツを表示
class _HeaderRow extends StatelessWidget {
  const _HeaderRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isNotEmpty = context.select((RepurchasePageState state) => state.orderDetail.products.isNotEmpty);
    final isDrugProduct = context.select((RepurchasePageState state) => state.isExistDrugProduct);

    return isNotEmpty
        ? Column(
            children: [
              // 注意文言
              // 再購入画面では、酒類注意文言を固定表示とする為、CategoryType.alcoholを固定で指定。
              const ComplianceWarningLabels(categoryType: CategoryType.alcohol),
              const SizedBox(
                height: 4,
              ),
              // 医薬品商品表示注意文言
              if (isDrugProduct) _drugProductWarningLabel(),
              const SaleByMeasureImage(),
              // 再購入注意文言
              _repurchaseWarningLabel(),
            ],
          )
        : const SizedBox.shrink();
  }

  Widget _repurchaseWarningLabel() {
    return const Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(top: 12),
        child: Text(
          '※商品名や価格等は最新の状態で表示されています\n※品切れや取り扱いのない場合は表示されないことがあります',
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w300,
            height: 16 / 12,
            color: AppColors.gray1,
          ),
        ),
      ),
    );
  }

  Widget _drugProductWarningLabel() {
    return const Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(bottom: 7),
        child: Text(
          '医薬品商品は表示していません。\n「医薬品・医薬部外品」カテゴリより商品をご購入ください。',
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w300,
            height: 16 / 12,
            color: AppColors.gray1,
          ),
        ),
      ),
    );
  }
}

class _NoProductMessage extends StatelessWidget {
  const _NoProductMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 36),
        child: Column(
          children: const [
            Text(
              '現在購入できる商品はありません',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                height: 19 / 14,
                color: AppColors.gray3,
              ),
            ),
            SizedBox(height: 9),
            Text(
              '品切れや取り扱いのない場合は商品が表示できません',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                height: 16 / 12,
                color: AppColors.gray3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
