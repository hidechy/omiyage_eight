import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../enum/delivery_status.dart';
import '../../enum/order_status.dart';
import '../../ui/common/category_open_close_button.dart';
import '../../util/access_point_info_manager.dart';
import '../../util/text_formatter.dart';
import '../page/repurchase_page.dart';
import '../state/order_detail_page_state.dart';
import '../view_model/order_detail_page_view_model.dart';
import 'app_buttons.dart';
import 'app_cached_network_image.dart';
import 'app_colors.dart';
import 'app_image_not_found.dart';
import 'app_media_query.dart';

/// 注文内容リスト表示用クラス
class OrderDetailItems extends StatelessWidget {
  const OrderDetailItems({
    required this.isOpenFunction,
    Key? key,
  }) : super(key: key);

  final bool Function(BuildContext context) isOpenFunction;

  @override
  Widget build(BuildContext context) {
    const detailsCountInClose = 3;
    final size = AppMediaQuery.of(context).size;
    final isOpen = isOpenFunction(context);
    final isFinishDelivery = _isFinishDelivery(context);
    final detailsLength = context.select((OrderDetailPageState state) => state.orderDetail.details.length);
    final isAllVisible = isOpen || detailsLength <= detailsCountInClose || isFinishDelivery;
    final visibleDetailsLength = isAllVisible ? detailsLength : detailsCountInClose;

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: visibleDetailsLength,
                itemBuilder: (BuildContext context, int index) {
                  final bottomMargin = index == detailsLength ? 0.0 : 8.0;
                  return Container(
                    margin: EdgeInsets.only(bottom: bottomMargin),
                    child: _OrderDetailItem(index),
                  );
                },
              ),
            ),
            Visibility(
              visible: !isAllVisible,
              child: Positioned(
                bottom: 0,
                left: 0,
                height: 100,
                width: size.width,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: FractionalOffset.center,
                      end: FractionalOffset.bottomCenter,
                      colors: [AppColors.whiteAlpha0, AppColors.white],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        Visibility(
          visible: isOpen || isFinishDelivery || detailsLength <= detailsCountInClose,
          child: Column(
            children: const [
              // 注釈があれば表示する
              _OrderDetailAnnotations(),
              SizedBox(height: 6.0),
              _TotalQuantity(),
              _TotalMoney(),
              _RepurchaseButton(),
            ],
          ),
        ),
        // 開閉ボタン
        Visibility(
          visible: detailsLength > detailsCountInClose && !isFinishDelivery,
          child: Center(
            child: CategoryOpenCloseButton(
              isOpenFunction: (context) => context.select((OrderDetailPageState state) => state.isOpen) ?? false,
              onPressed: (context) => context.read<OrderDetailPageViewModel>().isOpenChange(),
            ),
          ),
        ),
      ],
    );
  }
}

class _OrderDetailItem extends StatelessWidget {
  const _OrderDetailItem(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    final isReducedTaxRateProduct =
        context.select((OrderDetailPageState state) => state.orderDetail.details[index].isReducedTaxRateProduct);
    final thumbnailImagePath =
        context.select((OrderDetailPageState state) => state.orderDetail.details[index].frontThumbnailImageFullPath);
    final productName = context.select((OrderDetailPageState state) => state.orderDetail.details[index].productName);
    final orderDiscountSymbol =
        context.select((OrderDetailPageState state) => state.orderDetail.details[index].orderDiscountSymbol);
    final totalQty = context.select((OrderDetailPageState state) =>
        state.orderDetail.details[index].quantity + state.orderDetail.details[index].coolQuantity);
    final price = context.select((OrderDetailPageState state) => state.orderDetail.details[index].price);

    final itemImageSize = AppMediaQuery.of(context).widthRate * 64;
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 商品画像を表示
        AppCachedNetworkImage(
          width: itemImageSize,
          height: itemImageSize,
          imageUrl: '$iynsBaseUrl$thumbnailImagePath',
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) => AppImageNotFound(
            width: itemImageSize,
            height: itemImageSize,
          ),
        ),
        const SizedBox(width: 9),
        // 商品情報を表示
        Flexible(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$productName $orderDiscountSymbol',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  height: 19 / 14,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '数量 $totalQty',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      height: 16 / 12,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: AppColors.black2,
                        height: 19 / 14,
                      ),
                      children: [
                        TextSpan(
                          text: isReducedTaxRateProduct ? '＊ ' : '',
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w300,
                            height: 15 / 11,
                          ),
                        ),
                        TextSpan(
                          text: formatToYen(price),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            height: 19 / 16,
                          ),
                        ),
                        const TextSpan(text: '(税込)'),
                      ],
                    ),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// 注文内容注釈エリア
class _OrderDetailAnnotations extends StatelessWidget {
  const _OrderDetailAnnotations();

  @override
  Widget build(BuildContext context) {
    final details = context.select((OrderDetailPageState state) => state.orderDetail.details);
    final isAkachanHonpo = context.select((OrderDetailPageState state) =>
        state.orderDetail.isAkachanHonpoShop && state.orderDetail.isAkachanHonpoAgencyShop);
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 4.0),
        if (details.any((e) => e.isReducedTaxRateProduct)) _annotationLabel('※印は軽減税率対象商品です'),
        if (details.any((e) => e.orderDiscountSymbol.contains('◆'))) _annotationLabel('◆印はよりどりまとめて値引対象商品です'),
        if (details.any((e) => e.orderDiscountSymbol.contains('◇'))) _annotationLabel('◇印はセット販売値引対象商品です'),
        if (details.any((e) => e.orderDiscountSymbol.contains('○'))) _annotationLabel('○印は点数まとめて値引対象商品です'),
        if (details.any((e) => e.orderDiscountSymbol.contains('●'))) _annotationLabel('●印はカード会員値引対象商品です'),
        if (details.any((e) => e.orderDiscountSymbol.contains('▲'))) _annotationLabel('▲印はクーポン値引対象商品です'),
        if (isAkachanHonpo) _annotationLabel('[(株)赤ちゃん本舗]の商品は、イトーヨーカドーが代金収納代行をさせていただきます'),
      ],
    );
  }

  Widget _annotationLabel(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w300,
          color: AppColors.black2,
          height: 16 / 12,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}

class _TotalQuantity extends StatelessWidget {
  const _TotalQuantity();

  @override
  Widget build(BuildContext context) {
    return _TotalLabels('合計', '${context.select((OrderDetailPageState state) => state.orderDetail.productCount)}点');
  }
}

class _TotalMoney extends StatelessWidget {
  const _TotalMoney();

  @override
  Widget build(BuildContext context) {
    return _TotalLabels(
      '商品総額(税込)',
      formatToYen(context.select((OrderDetailPageState state) => state.orderDetail.productTotalPrice)),
    );
  }
}

class _TotalLabels extends StatelessWidget {
  const _TotalLabels(this.title, this.value);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox.shrink(),
          ),
          Expanded(
            flex: 1,
            child: Text(
              title,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: AppColors.black2,
                height: 22 / 16,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: AppColors.black2,
                height: 22 / 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// 再購入ボタン
class _RepurchaseButton extends StatelessWidget {
  const _RepurchaseButton();

  @override
  Widget build(BuildContext context) {
    final orderId = context.select((OrderDetailPageState state) => state.orderDetail.orderId);
    final isShowRepurchase =
        context.select((OrderDetailPageState state) => state.orderDetail.status == OrderStatus.recordSales);

    if (isShowRepurchase) {
      return Padding(
        padding: const EdgeInsets.only(top: 16),
        child: SizedBox(
          height: 36,
          child: BlueElevatedButton.medium(
            onPressed: () => _showRepurchase(context, orderId),
            widthFactor: 0.45,
            child: const Text('再購入'),
          ),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  /// 再購入画面に遷移
  void _showRepurchase(BuildContext context, int orderId) {
    Navigator.push(
      context,
      RepurchasePage.route(orderId),
    );
  }
}

bool _isFinishDelivery(BuildContext context) {
  return context.select((OrderDetailPageState state) =>
      state.orderDetail.deliveryStatus == DeliveryStatus.delivered ||
      state.orderDetail.deliveryStatus == DeliveryStatus.received);
}
