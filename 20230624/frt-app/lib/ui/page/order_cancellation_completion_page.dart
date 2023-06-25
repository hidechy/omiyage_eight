import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../data/api/model/expired_coupon_model.dart';
import '../../enum/screen_name.dart';
import '../../gen/assets.gen.dart';
import '../../util/datetime_formatter.dart';
import '../../util/logger.dart';
import '../../util/text_formatter.dart';
import '../common/app_colors.dart';
import '../common/cart_button.dart';
import '../common/total_price.dart';
import 'orders_page.dart';

class OrderCancellationCompletionPageArguments {
  const OrderCancellationCompletionPageArguments({required this.expiredCouponModels});

  final List<ExpiredCouponModel>? expiredCouponModels;
}

/// 注文キャンセル完了画面
class OrderCancellationCompletionPage extends StatelessWidget {
  const OrderCancellationCompletionPage({Key? key}) : super(key: key);

  static Route<Object?> route({List<ExpiredCouponModel>? expiredCouponModels}) => MaterialPageRoute<Object?>(
        builder: (_) => Provider.value(
          value: OrderCancellationCompletionPageArguments(expiredCouponModels: expiredCouponModels),
          child: const OrderCancellationCompletionPage(),
        ),
        settings: RouteSettings(name: name),
      );

  static final name = ScreenName.orderCancellationCompletionPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build OrderCancellationCompletionPage');
    final expiredCouponModels =
        context.select((OrderCancellationCompletionPageArguments value) => value.expiredCouponModels);
    final couponList = expiredCouponModels != null
        ? ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              for (ExpiredCouponModel expiredCoupon in expiredCouponModels)
                Container(
                  margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 12, bottom: 20),
                  child: _Coupon(
                    couponCode: expiredCoupon.couponCode,
                    couponName: expiredCoupon.couponName,
                    dealFinishDatetime: expiredCoupon.dealFinishDatetime,
                    isExpiredSalePrice: expiredCoupon.isExpiredSalePrice,
                    orderSalePrice: expiredCoupon.orderSalePrice,
                    isExpiredOrderCount: expiredCoupon.isExpiredOrderCount,
                    orderCount: expiredCoupon.orderCount,
                  ),
                ),
            ],
          )
        : const SizedBox.shrink();

    return WillPopScope(
      onWillPop: () async {
        // routeが自分自身もしくは注文履歴一覧でなくなるまで削除する。
        Navigator.of(context).popUntil(
          (route) => !(route.settings.name == ScreenName.ordersPage.value || route.settings.name == name),
        );
        Navigator.of(context).push(OrdersPage.route());
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            '注文キャンセル完了',
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, top: 24),
                    child: Text(
                      '注文のキャンセルが完了しました。\n注文取り消し内容をメールでお送りしています。',
                      style: TextStyle(
                        height: 19 / 14,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: AppColors.black2,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: expiredCouponModels != null,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 24),
                      child: Text(
                        '獲得した以下のクーポンが注文の変更により失効しました',
                        style: TextStyle(
                          height: 22 / 16,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.blackAlpha80,
                        ),
                      ),
                    ),
                  ),
                  couponList,
                ],
              ),
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: TotalPrice(),
            ),
          ],
        ),
        floatingActionButton: CartButton(key: GlobalKey<CartButtonState>()),
      ),
    );
  }
}

class _Coupon extends StatelessWidget {
  const _Coupon(
      {Key? key,
      required this.couponName,
      required this.couponCode,
      required this.isExpiredSalePrice,
      required this.dealFinishDatetime,
      required this.orderSalePrice,
      required this.isExpiredOrderCount,
      required this.orderCount})
      : super(key: key);

  final String couponName;
  final String couponCode;
  final DateTime? dealFinishDatetime;
  final bool isExpiredSalePrice;
  final int orderSalePrice;
  final bool isExpiredOrderCount;
  final int orderCount;

  @override
  Widget build(BuildContext context) {
    final String couponText;
    if (isExpiredSalePrice) {
      couponText =
          '${formatYearDayTimeJa(dealFinishDatetime)}までに${formatToYen(orderSalePrice)}(税込/各種手数料)のお買い上げとなるようにご注文を変更すると、本クーポンがご利用いただけます。';
    } else if (isExpiredOrderCount) {
      couponText = '${formatYearDayTimeJa(dealFinishDatetime)}までに$orderCount回以上ご注文をいただくと、本クーポンがご利用できるようになります。';
    } else {
      // いずれもfalseはあり得ない。仮にそうなった場合はトルツメ
      couponText = '';
    }

    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.inactive, width: 1),
        boxShadow: const [
          BoxShadow(
            color: AppColors.blackShadow,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 3.0),
            width: 36,
            height: 37,
            child: Assets.icons.markCoupon.svg(),
          ),
          Center(
            child: Text(
              '$couponName\nクーポンコード：$couponCode',
              style: const TextStyle(
                height: 19 / 14,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.blackAlpha80,
              ),
            ),
          ),
          if (couponText.isNotEmpty)
            Container(
              margin: const EdgeInsets.only(top: 16),
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: AppColors.background2,
              ),
              child: Center(
                child: Text(
                  couponText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    height: 16 / 12,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: AppColors.blackAlpha80,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
