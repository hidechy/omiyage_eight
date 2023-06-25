import 'package:flutter/material.dart';

import 'package:collection/collection.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../gen/assets.gen.dart';
import '../../data/api/model/expired_coupon_model.dart';
import '../../data/api/model/nanaco_point_model.dart';
import '../../data/api/model/tax_price_information_model.dart';
import '../../enum/analytics_event_type.dart';
import '../../enum/cart_order_status_type.dart';
import '../../enum/delivery_status.dart';
import '../../enum/event_parameter_type.dart';
import '../../enum/nanaco_payment_method.dart';
import '../../enum/nanaco_point_status.dart';
import '../../enum/order_icon_type.dart';
import '../../enum/order_status.dart';
import '../../enum/pack_material_type.dart';
import '../../enum/package_drop_place.dart';
import '../../enum/response_fulfillment_type.dart';
import '../../enum/screen_name.dart';
import '../../ui/common/app_buttons.dart';
import '../../ui/common/cart_button.dart';
import '../../ui/common/order_changing_bar.dart';
import '../../ui/common/order_detail_items.dart';
import '../../ui/common/total_price.dart';
import '../../util/access_point_info_manager.dart';
import '../../util/analytics_manager.dart';
import '../../util/cart_info_manager.dart';
import '../../util/datetime_formatter.dart';
import '../../util/logger.dart';
import '../../util/text_formatter.dart';
import '../common/app_colors.dart';
import '../common/app_dialogs.dart';
import '../common/app_loading.dart';
import '../common/app_media_query.dart';
import '../common/html_parser.dart';
import '../state/order_detail_page_state.dart';
import '../view_model/order_detail_page_view_model.dart';
import 'order_cancellation_completion_page.dart';
import 'web_view_base_page.dart';

class OrderDetailPageArguments {
  OrderDetailPageArguments({
    required this.orderId,
  });

  final int orderId;
}

/// 注文履歴詳細ページ
class OrderDetailPage extends StatelessWidget {
  const OrderDetailPage({Key? key}) : super(key: key);

  static Route<Object?> route(int orderId) => MaterialPageRoute<Object?>(
        builder: (_) => Provider.value(
          value: OrderDetailPageArguments(orderId: orderId),
          child: const OrderDetailPage(),
        ),
        settings: RouteSettings(name: name),
      );

  static final name = ScreenName.orderDetailPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build OrderDetailPage');
    return StateNotifierProvider<OrderDetailPageViewModel, OrderDetailPageState>(
      create: (_) => OrderDetailPageViewModel(),
      builder: (context, _) {
        final orderId = context.select((OrderDetailPageArguments value) => value.orderId);
        return Scaffold(
          appBar: AppBar(
            title: const Text('注文内容'),
          ),
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Stack(
              children: [
                LoadingFullScreen(
                  future: () => context.read<OrderDetailPageViewModel>().initLoad(orderId),
                  content: SingleChildScrollView(
                    child: Column(
                      children: [
                        // 注文変更Bar
                        const OrderChangingBar(),
                        // 配達日時
                        const _DeliveryDateArea(),
                        // 注文変更中ラベル表示
                        const _OrderChangingLabel(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            children: const [
                              // クレカエラー
                              _CreditErrorArea(),
                              // 締め切り残、配達状況
                              _DeliveryStatusArea(),
                              // 注文内容
                              _OrderDetailArea(),
                              SizedBox(height: 32),
                              // お支払い内訳
                              _PaymentBreakdownArea(),
                              SizedBox(height: 8),
                              // 今回のnanaco獲得ポイント
                              _NanacoPointAcquired(),
                              SizedBox(height: 33),
                              // ご注文情報
                              _OrderInfo(),
                            ],
                          ),
                        ),
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
          ),
          floatingActionButton: const CartButton(),
        );
      },
    );
  }
}

/// 配達日時ラベルエリアを返却
class _DeliveryDateArea extends StatelessWidget {
  const _DeliveryDateArea();

  @override
  Widget build(BuildContext context) {
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
              context.select((OrderDetailPageState state) => formatFromToDateTimeMd(
                  state.orderDetail.deliveryPlanStartDatetime, state.orderDetail.deliveryPlanFinishDatetime)),
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// 注文変更中ラベル
class _OrderChangingLabel extends StatelessWidget {
  const _OrderChangingLabel();

  @override
  Widget build(BuildContext context) {
    final changingOrderId = context.select((CartInfoState state) => state.oldOrder?.oldOrderId);
    final orderId = context.select((OrderDetailPageState state) => state.orderDetail.orderId);

    return Visibility(
      visible: context.read<OrderDetailPageViewModel>().isCartStatusNowChanging(),
      child: Padding(
        padding: const EdgeInsets.only(top: 21),
        child: Text(
          changingOrderId == orderId ? '現在こちらの注文を変更中です' : '現在、他の注文の変更を行なっているため\nこの注文の変更・キャンセルはできません',
          style: const TextStyle(
            color: AppColors.emphasis1,
            fontSize: 14,
            fontWeight: FontWeight.w600,
            height: 19 / 14,
          ),
        ),
      ),
    );
  }
}

/// クレカエラーエリア
class _CreditErrorArea extends StatelessWidget {
  const _CreditErrorArea();

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: context.select((OrderDetailPageState state) => state.orderDetail.status == OrderStatus.creditError),
      child: Container(
        margin: const EdgeInsets.only(top: 16.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        color: AppColors.warning2,
        child: const Text(
          'クレジットカードがエラーになっています\n「注文変更」からカード番号を再入力してください',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: AppColors.warning1,
            height: 16 / 12,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

/// 配達ステータスエリア
class _DeliveryStatusArea extends StatelessWidget {
  const _DeliveryStatusArea();

  @override
  Widget build(BuildContext context) {
    final canChangeOrCancelOrder = context.select((OrderDetailPageState state) =>
        state.orderDetail.isBeforeChangeClosingDatetime || state.orderDetail.isEnableOrderCancel);
    return Visibility(
      visible: canChangeOrCancelOrder,
      child: const _LimitedDateArea(),
      replacement: const _DeliveryReceiveStateArea(),
    );
  }
}

/// 締め切り残日数(時間)エリア
class _LimitedDateArea extends StatelessWidget {
  const _LimitedDateArea();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 24, bottom: 12),
          decoration: _underBarDecoration,
          child: const Text(
            '締め切り残日数(時間)',
            style: TextStyle(
              color: AppColors.black2,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 25 / 18,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 12, bottom: 14),
          decoration: _underBarDecoration,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: _commonDeliveryLimitDate(
                  '受け取り日時変更',
                  _limitDate(
                    context.select(
                        (OrderDetailPageState state) => state.orderDetail.remainingDatetimeChangeDeliveryPlanClosing),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: _commonDeliveryLimitDate(
                  '商品変更',
                  _limitDate(
                    context
                        .select((OrderDetailPageState state) => state.orderDetail.remainingDatetimeChangeOrderClosing),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: _underBarDecoration,
          child: _commonDeliveryLimitDate(
            '注文キャンセル',
            _limitDate(
              context.select((OrderDetailPageState state) => state.orderDetail.remainingDatetimeCancelOrderClosing),
            ),
          ),
        ),
        const _ChangeCancelOrderButton(),
        const SizedBox(height: 32),
      ],
    );
  }

  Widget _commonDeliveryLimitDate(String title, String limitDate) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            height: 16 / 12,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          limitDate,
          style: const TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.normal,
            color: AppColors.black,
          ),
        )
      ],
    );
  }

  String _limitDate(String value) => value.isNotEmpty ? value : '締め切りました';

  final BoxDecoration _underBarDecoration = const BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: AppColors.inactive,
        width: 1.0,
      ),
    ),
  );
}

/// 注文変更、キャンセルボタン
class _ChangeCancelOrderButton extends StatelessWidget {
  const _ChangeCancelOrderButton();

  @override
  Widget build(BuildContext context) {
    final orderId = context.select((OrderDetailPageArguments value) => value.orderId);
    final isBeforeChangeClosingDatetime =
        context.select((OrderDetailPageState state) => state.orderDetail.isBeforeChangeClosingDatetime);
    final canCancelOrder = context.select((OrderDetailPageState state) => state.orderDetail.isEnableOrderCancel);
    final orderStatus = context.select((CartInfoState state) => state.orderStatus);

    return Visibility(
      visible: orderStatus != CartOrderStatusType.nowChanging,
      child: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Row(
          children: [
            if (isBeforeChangeClosingDatetime)
              Expanded(
                child: _changeOrder(
                  context,
                  orderId: orderId,
                  widthFactor: canCancelOrder ? 0.98 : 0.49,
                ),
              ),
            if (isBeforeChangeClosingDatetime && canCancelOrder)
              SizedBox(width: AppMediaQuery.of(context).size.width * (10 / 358)),
            if (canCancelOrder)
              Expanded(
                child: _cancelOrder(
                  context,
                  orderId: orderId,
                  widthFactor: isBeforeChangeClosingDatetime ? 0.98 : 0.49,
                ),
              ),
          ],
        ),
      ),
    );
  }

  /// 注文変更ボタン
  Widget _changeOrder(
    BuildContext context, {
    required int orderId,
    required double widthFactor,
  }) {
    return BlueOutlinedButton.medium(
      widthFactor: widthFactor,
      onPressed: () async {
        final navigator = Navigator.of(context);
        // 注文変更可の時、配達日時変更モーダルを表示する
        final result = await showChangeOrderDialog(
          originContext: context,
          changeOrder: () async {
            await context.read<OrderDetailPageViewModel>().changeOrder(orderId);
            return true;
          },
        );
        if (result != null) {
          navigator.pushReplacement(OrderDetailPage.route(orderId));
        }
      },
      child: const Text('注文変更'),
    );
  }

  /// 注文キャンセルボタン
  Widget _cancelOrder(
    BuildContext originContext, {
    required int orderId,
    required double widthFactor,
  }) {
    return RedOutlinedButton.medium(
      widthFactor: widthFactor,
      onPressed: () {
        showAttentionSelectionDialog<void>(
          dialogName: ScreenName.orderCancelConfirmModal.value,
          title: 'こちらの注文をキャンセルしますか？',
          context: originContext,
          applicationText: 'はい',
          cancellationText: 'いいえ',
          onApplied: (context) => () async {
            Navigator.pop(context);
            List<ExpiredCouponModel>? expiredCoupons;
            final isSuccess = await showLoadingModal(
              context: originContext,
              // 注文キャンセルAPIをコールする。画面個別のエラーハンドリングはなし
              future: () async {
                final orderCancelResponse = await originContext.read<OrderDetailPageViewModel>().cancelOrder(orderId);
                expiredCoupons =
                    orderCancelResponse.expiredCoupons.isNotEmpty ? orderCancelResponse.expiredCoupons : null;
                return true;
              },
            );
            if (isSuccess ?? false) {
              Navigator.pushReplacement(
                originContext,
                OrderCancellationCompletionPage.route(expiredCouponModels: expiredCoupons),
              );
            }
          },
          onCanceled: (context) => () => Navigator.pop(context),
        );
      },
      child: const Text('キャンセル'),
    );
  }
}

/// 配達受取状態エリア
class _DeliveryReceiveStateArea extends StatelessWidget {
  const _DeliveryReceiveStateArea();

  @override
  Widget build(BuildContext context) {
    final deliveryStatus = context.select((OrderDetailPageState state) => state.orderDetail.deliveryStatus);
    final url = context.select((OrderDetailPageState state) => state.orderDetail.deliveryStatusConfirmationScreenUrl);

    return Container(
      width: double.infinity,
      color: AppColors.background2,
      margin: context.read<OrderDetailPageViewModel>().isCartStatusNowChanging()
          ? const EdgeInsets.only(top: 16, bottom: 48)
          : const EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            deliveryStatus.displayValue,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.black2,
            ),
          ),
          Visibility(
            visible: !deliveryStatus.isCompleteDelivery,
            child: Padding(
              padding: const EdgeInsets.only(top: 7.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '詳しい配達状況は、',
                      style: _descriptionStyle(),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 1),
                        child: BlueTextButton.underline(
                          child: const Text('配達状況確認画面'),
                          onPressed: () => Navigator.push(
                            context,
                            _WebView.route(
                              title: '配達状況確認',
                              url: url,
                            ),
                          ),
                          height: 19 / 14,
                        ),
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4, right: 4),
                        child: Assets.icons.externalLink.svg(),
                      ),
                    ),
                    TextSpan(
                      text: 'からご確認いただけます',
                      style: _descriptionStyle(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle _descriptionStyle() {
    return const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w300,
      color: AppColors.gray1,
      height: 19 / 14,
    );
  }
}

/// ご注文内容エリア
class _OrderDetailArea extends StatelessWidget {
  const _OrderDetailArea();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 9),
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: AppColors.inactive,
                width: 1.0,
              ),
            ),
          ),
          child: const Text(
            'ご注文内容',
            style: TextStyle(
              color: AppColors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 25 / 18,
            ),
          ),
        ),
        const SizedBox(height: 12.0),
        OrderDetailItems(isOpenFunction: (context) => context.select((OrderDetailPageState state) => state.isOpen)),
      ],
    );
  }
}

/// お支払い内訳エリア
class _PaymentBreakdownArea extends StatelessWidget {
  const _PaymentBreakdownArea();

  @override
  Widget build(BuildContext context) {
    final productTotalPrice = context.select((OrderDetailPageState state) => state.orderDetail.productTotalPrice);
    final totalPrice = context.select((OrderDetailPageState state) => state.orderDetail.totalPrice);
    final taxPrices = context.select((OrderDetailPageState state) => state.orderDetail.taxPrices);
    final nanacoPointUsePoint =
        context.select((OrderDetailPageState state) => -state.orderDetail.nanacoPointUsePoint.abs());
    final paymentAmount = context.select((OrderDetailPageState state) => state.orderDetail.paymentAmount);
    final orderId = context.select((OrderDetailPageState state) => state.orderDetail.orderId);
    final isActiveReceiptStatus =
        context.select((OrderDetailPageState state) => state.orderDetail.status.isActiveReceiptStatus);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.inactive,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: _breakdownListView(
        [
          [
            const Text(
              'お支払い内訳',
              style: TextStyle(
                color: AppColors.black2,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: _breakdownRow(
                '商品総額(税込)',
                productTotalPrice,
              ),
            ),
          ],
          if (context.select((OrderDetailPageState state) =>
                  state.orderDetail.totalMixMatchDiscountPrice +
                  state.orderDetail.totalSetSaleDiscountPrice +
                  state.orderDetail.totalProgressiveDiscountPrice +
                  state.orderDetail.totalCardMemberDiscountPrice +
                  state.orderDetail.couponProductTotalPrice) >
              0)
            [const _DiscountColumn()],
          [const _CommissionColumn()],
          if (context.select((OrderDetailPageState state) =>
                  state.orderDetail.iyCardDiscountPrice + state.orderDetail.couponPrice) >
              0)
            [const _CouponColumn()],
          [
            _breakdownRow(
              '合計(税込)',
              totalPrice,
              style: const TextStyle(
                color: AppColors.black2,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (taxPrices.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 16),
                child: _detailBreakdownListView(
                  [
                    Wrap(
                      runSpacing: 12,
                      children: _breakdownDetails(taxPrices),
                    ),
                  ],
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: _breakdownRow(
                'nanacoポイントご利用分',
                nanacoPointUsePoint,
                isDiscountPrice: true,
              ),
            ),
          ],
          [
            Wrap(
              children: [
                _breakdownRow(
                  'お支払い金額(税込)',
                  paymentAmount,
                  style: const TextStyle(
                    color: AppColors.black2,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Center(
                    child: SizedBox(
                      height: 36,
                      width: 110,
                      child: BlueElevatedButton.small(
                        onPressed: isActiveReceiptStatus ? () => _onPressed(orderId) : null,
                        child: const Text(
                          '領収書印刷',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            height: 19 / 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: '印刷方法は',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              height: 16 / 12,
                              color: AppColors.black2,
                            ),
                          ),
                          WidgetSpan(
                            child: InkWell(
                              child: const Text(
                                'こちら',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  height: 16 / 12,
                                  decoration: TextDecoration.underline,
                                  color: AppColors.main,
                                ),
                              ),
                              onTap: () => Navigator.push(
                                context,
                                _WebView.route(
                                  title: 'ヘルプ・お問い合わせ',
                                  url: '$iynsWebBaseUrl/help/user-guide/after-ordering/#guide05',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: !isActiveReceiptStatus,
                  child: const Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Center(
                      child: Text(
                        '※領収書の印刷は配達完了後に確認できます',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          height: 16 / 12,
                          color: AppColors.gray1,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget _breakdownListView(List<List<Widget>> itemsList) {
    return ListView.separated(
      itemCount: itemsList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return _detailBreakdownListView(itemsList[index]);
      },
      separatorBuilder: (context, index) => Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        color: AppColors.dottedBorder,
        height: 1,
      ),
    );
  }

  Widget _detailBreakdownListView(List<Widget> items) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, subIndex) => items[subIndex],
    );
  }

  List<Widget> _breakdownDetails(List<TaxPriceInformationModel> taxPrices) {
    List<Widget> detailWidgets = [];
    // 内非/不課税対象額
    final taxExempt = taxPrices.firstWhereOrNull((element) => element.isTaxExempt && element.taxationPrice > 0);
    if (taxExempt != null) {
      detailWidgets.add(_breakdownDetailRow('内非/不課税対象額', taxExempt.taxationPrice));
    }
    // 内税率10%
    final taxTen = taxPrices.firstWhereOrNull((element) => !element.isTaxExempt && element.taxRate == 10);
    if (taxTen != null && taxTen.taxationPrice > 0) {
      detailWidgets.addAll([
        _breakdownDetailRow('内税率10%対象額', taxTen.taxationPrice),
        _breakdownDetailRow('(内消費税等10%)', taxTen.taxIncludedPrice, true),
      ]);
    }
    // 内税率8%
    final taxEight = taxPrices.firstWhereOrNull((element) => !element.isTaxExempt && element.taxRate == 8);
    if (taxEight != null && taxEight.taxationPrice > 0) {
      detailWidgets.addAll([
        _breakdownDetailRow('内税率8%対象額', taxEight.taxationPrice),
        _breakdownDetailRow('(内消費税等8%)', taxEight.taxIncludedPrice, true),
      ]);
    }
    return detailWidgets;
  }

  Widget _breakdownDetailRow(String text, int price, [bool isTaxPrice = false]) {
    return _breakdownRow(
      text,
      price,
      isDiscountPrice: false,
      style: const TextStyle(
        color: AppColors.black2,
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
      isTaxPrice: isTaxPrice,
    );
  }

  /// 外部ブラウザで領収書印刷ページを開く
  void _onPressed(int orderId) async {
    final rUrl = Uri.parse('$iynsBaseUrl/sp/receipt/$orderId/');
    final url = iynsAuthRedirectUrl(rUrl);
    final analytics = GetIt.I<AnalyticsManager>();
    analytics.sendEvent(
        eventType: AnalyticsEventType.printReceipt, parameters: {EventParameterType.orderId: orderId.toString()});

    await launchUrl(url, mode: LaunchMode.externalApplication);
  }
}

class _DiscountColumn extends StatelessWidget {
  const _DiscountColumn();

  @override
  Widget build(BuildContext context) {
    final totalMixMatchDiscountPrice =
        context.select((OrderDetailPageState state) => state.orderDetail.totalMixMatchDiscountPrice);
    final totalSetSaleDiscountPrice =
        context.select((OrderDetailPageState state) => state.orderDetail.totalSetSaleDiscountPrice);
    final totalProgressiveDiscountPrice =
        context.select((OrderDetailPageState state) => state.orderDetail.totalProgressiveDiscountPrice);
    final totalCardMemberDiscountPrice =
        context.select((OrderDetailPageState state) => state.orderDetail.totalCardMemberDiscountPrice);
    final couponProductTotalPrice =
        context.select((OrderDetailPageState state) => state.orderDetail.couponProductTotalPrice);
    return Wrap(
      runSpacing: 12,
      children: [
        if (totalMixMatchDiscountPrice > 0)
          _breakdownRow('◆よりどりまとめて値引額', -totalMixMatchDiscountPrice, isDiscountPrice: true),
        if (totalSetSaleDiscountPrice > 0)
          _breakdownRow('◇セット販売値引額', -totalSetSaleDiscountPrice, isDiscountPrice: true),
        if (totalProgressiveDiscountPrice > 0)
          _breakdownRow('○点数まとめて値引額', -totalProgressiveDiscountPrice, isDiscountPrice: true),
        if (totalCardMemberDiscountPrice > 0)
          _breakdownRow('●カード会員値引額', -totalCardMemberDiscountPrice, isDiscountPrice: true),
        if (couponProductTotalPrice > 0) _breakdownRow('▲クーポン値引額', -couponProductTotalPrice, isDiscountPrice: true),
      ],
    );
  }
}

class _CommissionColumn extends StatelessWidget {
  const _CommissionColumn();

  @override
  Widget build(BuildContext context) {
    final shoppingBagPrice = context.select((OrderDetailPageState state) => state.orderDetail.shoppingBagPrice);
    final deliveryPrice = context.select((OrderDetailPageState state) => state.orderDetail.deliveryPrice);
    final redeliveryPrice = context.select((OrderDetailPageState state) => state.orderDetail.redeliveryPrice);
    final packPrice = context.select((OrderDetailPageState state) => state.orderDetail.packPrice);
    final cashDeliveryPrice = context.select((OrderDetailPageState state) => state.orderDetail.cashDeliveryPrice);
    final cancels = context.select((OrderDetailPageState state) => state.orderDetail.cancels);

    final isExistRedeliveryPrice = deliveryPrice == 0 && redeliveryPrice > 0;

    return Wrap(
      runSpacing: 12,
      children: [
        if (shoppingBagPrice > 0) _breakdownRow('レジ袋利用料(税込)', shoppingBagPrice),
        Wrap(
          runSpacing: 4,
          children: [
            _breakdownRow('配達料(税込)', isExistRedeliveryPrice ? redeliveryPrice : deliveryPrice,
                isChangeZeroToFree: true),
            if (isExistRedeliveryPrice)
              SizedBox(
                width: AppMediaQuery.of(context).size.width * 0.84,
                child: const Text(
                  '(再配達料含む)',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.black2,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
          ],
        ),
        if (packPrice > 0) _breakdownRow('梱包手数料(税込)', packPrice),
        if (cashDeliveryPrice > 0) _breakdownRow('代引手数料(税込)', cashDeliveryPrice),
        for (final cancel in cancels)
          Wrap(
            runSpacing: 8,
            children: [
              _breakdownRow('キャンセル料(税込)', cancel.cancelPrice),
              _cancelText(cancel.cancelDatetime),
            ],
          ),
      ],
    );
  }

  Widget _cancelText(DateTime? cancelDateTime) => Text(
        '※${formatDateTimeYearDateTime(cancelDateTime)}キャンセル分',
        style: const TextStyle(
          color: AppColors.black2,
          fontSize: 12,
        ),
      );
}

class _CouponColumn extends StatelessWidget {
  const _CouponColumn();

  @override
  Widget build(BuildContext context) {
    final couponPrice = context.select((OrderDetailPageState state) => state.orderDetail.couponPrice);
    if (couponPrice > 0) {
      return _breakdownRow('クーポン値引額', -couponPrice, isDiscountPrice: true);
    } else {
      return const SizedBox.shrink();
    }
  }
}

/// 割引表示共通メソッド
Widget _breakdownRow(
  String text,
  int price, {
  bool isDiscountPrice = false,
  TextStyle? style,
  bool isTaxPrice = false,
  bool isChangeZeroToFree = false,
}) {
  final textStyle = style ??
      const TextStyle(
        color: AppColors.black2,
        fontSize: 16,
        fontWeight: FontWeight.w300,
      );
  return DefaultTextStyle(
    style: textStyle,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text),
        Text(
          isTaxPrice
              ? '(${formatToYen(price)})'
              : (price == 0 && isChangeZeroToFree)
                  ? '無料'
                  : formatToYen(price),
          style: isDiscountPrice
              ? const TextStyle(
                  color: AppColors.emphasis1,
                  fontSize: 16,
                )
              : textStyle,
        ),
      ],
    ),
  );
}

/// ご注文情報エリア
class _OrderInfo extends StatelessWidget {
  const _OrderInfo();

  @override
  Widget build(BuildContext context) {
    final orderIdValue = context.select((OrderDetailPageState state) => state.orderDetail.orderId).toString();
    final orderDateValue =
        context.select((OrderDetailPageState state) => formatDateTimeJaMd(state.orderDetail.orderDate));
    final deliveryPlanDateTimeValue = context.select((OrderDetailPageState state) => formatFromToDateTimeMd(
        state.orderDetail.deliveryPlanStartDatetime, state.orderDetail.deliveryPlanFinishDatetime));
    final isShowQr = context.select((OrderDetailPageState state) =>
        (!state.orderDetail.isBeforeChangeClosingDatetime && !state.orderDetail.isEnableOrderCancel) &&
        (state.orderDetail.deliveryStatus == DeliveryStatus.notReceive ||
            state.orderDetail.deliveryStatus == DeliveryStatus.inDelivery) &&
        (state.orderDetail.fulfillmentType == ResponseFulfillmentType.pickup7iLocker ||
            state.orderDetail.fulfillmentType == ResponseFulfillmentType.pickupStoreLocker));
    final needNoStockContactValue = context.select((OrderDetailPageState state) => state.orderDetail.needNoStockContact)
        ? '必要'
        : '不要　※欠品時商品はキャンセルさせていただきます。';
    final nanacoPaymentMethod = context.select((OrderDetailPageState state) => state.orderDetail.nanacoPaymentMethod);
    final shopName = context.select((OrderDetailPageState state) => state.orderDetail.shopName);
    final packMaterialTypeValue =
        context.select((OrderDetailPageState state) => state.orderDetail.packMaterialType.description);
    final isNoContactValue =
        context.select((OrderDetailPageState state) => state.orderDetail.isNoContact) ? '利用する' : '利用しない';
    final packageDropPlace = context.select((OrderDetailPageState state) => state.orderDetail.packageDropPlace);
    var isShowPackageDrop = false;
    var isShowSwitchedPackageDrop = false;
    var packageDropPlaceName = '';
    if (packageDropPlace != PackageDropPlace.notPackageDropPlace) {
      isShowPackageDrop = (context.select(
          (OrderDetailPageState state) => state.orderDetail.fulfillmentType == ResponseFulfillmentType.packageDrop));
      isShowSwitchedPackageDrop = context.select((OrderDetailPageState state) =>
          state.orderDetail.fulfillmentType.isHomeDelivery && state.orderDetail.switchedPackageDropFlag);
      if (packageDropPlace == PackageDropPlace.other) {
        packageDropPlaceName = context.select((OrderDetailPageState state) => state.orderDetail.packageDropPlaceDetail);
      } else {
        packageDropPlaceName = packageDropPlace.placeName;
      }
    }
    final memo = context.select((OrderDetailPageState state) => state.orderDetail.memo);

    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _orderInfoTitleItem('ご注文情報'),
          _orderInfoNormalItem('注文番号', orderIdValue),
          _orderInfoNormalItem('購入日時', orderDateValue),
          _orderInfoNormalItem('希望受け取り時間帯', deliveryPlanDateTimeValue),
          if (isShowQr) _orderInfoQrItem('7&iロッカー受け取り開錠QRコード', orderIdValue),
          _orderInfoNormalItem('欠品時のご連絡', needNoStockContactValue),
          _orderInfoNormalItem('お支払い方法', nanacoPaymentMethod.value),
          _orderInfoNormalItem('担当店舗', shopName),
          _orderInfoNormalItem('受け取りの状態', packMaterialTypeValue),
          _orderInfoNormalItem('非接触お届けサービス', isNoContactValue),
          if (isShowPackageDrop) _orderInfoNormalItem('置き配場所', packageDropPlaceName),
          if (isShowSwitchedPackageDrop)
            _orderInfoSwitchedDropPackageItem('不在時の置き配への切り替え', '置き配に切り替える', packageDropPlaceName),
          _orderInfoNormalItem('メモ', memo),
          const Divider(),
          const SizedBox(height: 102),
        ],
      ),
    );
  }

  Widget _orderInfoTitleItem(String title) => Container(
        margin: const EdgeInsets.only(bottom: 12),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColors.black2,
            height: 25 / 18,
          ),
        ),
      );

  Widget _orderInfoNormalItem(String title, String value) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.black2,
              height: 19 / 14,
            ),
          ),
          const SizedBox(height: 12),
          HtmlParser(
            value: value,
            fontStyle: const TextStyle(
              fontSize: 14.0,
              color: AppColors.black2,
              height: 19 / 14,
            ),
          ),
          const SizedBox(height: 16),
        ],
      );

  Widget _orderInfoQrItem(String title, String orderId) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.black2,
              height: 19 / 14,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            alignment: Alignment.center,
            child: QrImage(
              data: orderId,
              version: QrVersions.auto,
              size: 200.0,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            '7&iロッカーの開錠にはQRコードを保存し読み取らせるか、お問い合わせ番号を入力いただく必要があります。',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
              color: AppColors.gray1,
              height: 16 / 12,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            '※「7&iBOX」ではご利用いただけません。お問い合わせ番号下4桁にて開錠お願いします。\n※「レジカウンター受取」ではご利用いただけません。\n※「マンションロッカー受取」ではご利用いただけません。\n※QRコードは（株）デンソーウェーブの登録商標です。',
            style: TextStyle(
              fontSize: 12,
              color: AppColors.gray1,
              height: 16 / 12,
            ),
          ),
          const SizedBox(height: 16),
        ],
      );

  Widget _orderInfoSwitchedDropPackageItem(String title, String subtitle, String value) => DefaultTextStyle(
        style: const TextStyle(
          fontSize: 14,
          color: AppColors.black2,
          height: 19 / 14,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 11),
            Text(subtitle),
            const SizedBox(height: 11),
            HtmlParser(
              value: value,
              fontStyle: const TextStyle(
                fontSize: 14.0,
                color: AppColors.black2,
                height: 19 / 14,
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      );
}

/// 今回のnanaco獲得ポイントエリア
class _NanacoPointAcquired extends StatelessWidget {
  const _NanacoPointAcquired();

  @override
  Widget build(BuildContext context) {
    final nanacoPointInformations =
        context.select((OrderDetailPageState state) => state.orderDetail.nanacoPointInformations);
    final nanacoPointPriceList =
        nanacoPointInformations.map((nanacoPointInformation) => nanacoPointInformation.nanacoPointPrice).toList();
    final totalNanacoPointPrice = nanacoPointInformations.isEmpty ? 0 : nanacoPointPriceList.reduce((a, b) => a + b);
    final isNanacoVisible = context.select((OrderDetailPageState state) =>
        totalNanacoPointPrice +
            state.orderDetail.bonusPoint +
            state.orderDetail.couponPoint +
            state.orderDetail.totalNanacoPoints >
        0);
    return Visibility(
      visible: isNanacoVisible,
      child: Column(
        children: const [
          _NanacoPointAcquiredMain(),
          _NanacoPointAcquiredSub(),
        ],
      ),
    );
  }
}

class _NanacoPointAcquiredMain extends StatelessWidget {
  const _NanacoPointAcquiredMain();

  @override
  Widget build(BuildContext context) {
    final nanacoPointInformations =
        context.select((OrderDetailPageState state) => state.orderDetail.nanacoPointInformations);
    final bonusPoint = context.select((OrderDetailPageState state) => state.orderDetail.bonusPoint);
    final couponPoint = context.select((OrderDetailPageState state) => state.orderDetail.couponPoint);
    final totalNanacoPoints = context.select((OrderDetailPageState state) => state.orderDetail.totalNanacoPoints);
    final isCouponNanacoPointPlus =
        context.select((OrderDetailPageState state) => state.orderDetail.isCouponNanacoPointPlus);
    final innerCouponPointValue = isCouponNanacoPointPlus ? '${formatToThousandsSeparator(couponPoint)}P' : '';

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        bottom: 12,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.inactive,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _nanacoPointAcquiredTitleItem('今回のnanaco獲得ポイント'),
            for (final nanacoPointInformation in nanacoPointInformations)
              if (nanacoPointInformation.nanacoPointPrice > 0) _nanacoPointInformationItem(nanacoPointInformation),
            if (bonusPoint > 0)
              _nanacoPointAcquiredNormalItem('買上げ金額ボーナスポイント', '${formatToThousandsSeparator(bonusPoint)}P',
                  isBold: true),
            if (couponPoint > 0)
              _nanacoPointAcquiredNormalItem('クーポン獲得ポイント', '${formatToThousandsSeparator(couponPoint)}P', isBold: true),
            if (totalNanacoPoints > 0)
              _nanacoPointAcquiredNormalItem('今回ポイント(合計)', '${formatToThousandsSeparator(totalNanacoPoints)}P',
                  isBold: true),
            if (isCouponNanacoPointPlus)
              _nanacoPointAcquiredNormalItem('(内クーポン獲得ポイント)', '($innerCouponPointValue)', isBold: true),
            _nanacoPointAcquiredAnnotationItem('※ポイント付与は受け取り日から2日後の予定です。'),
          ],
        ),
      ),
    );
  }

  Widget _nanacoPointAcquiredTitleItem(String title) => Container(
        margin: const EdgeInsets.only(bottom: 12),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.black2,
            height: 22 / 16,
          ),
        ),
      );

  Widget _nanacoPointInformationItem(NanacoPointModel nanacoPointInformation) {
    return Column(children: [
      _nanacoPointAcquiredNormalItem(
        '${nanacoPointInformation.nanacoPointUnitPoint}P対象税抜金額',
        formatToYen(nanacoPointInformation.nanacoPointPrice),
      ),
      if (nanacoPointInformation.nanacoPointCarryOver > 0)
        _nanacoPointAcquiredNormalItem(
          '',
          '(${formatToYen(nanacoPointInformation.nanacoPointOriginalPrice)} + ${formatToYen(nanacoPointInformation.nanacoPointCarryOver)})',
        ),
    ]);
  }

  Widget _nanacoPointAcquiredNormalItem(String title, String value, {bool isBold = false}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.black2,
              height: 22 / 16,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              color: AppColors.black2,
              height: 22 / 16,
              fontWeight: isBold ? FontWeight.bold : null,
            ),
          ),
        ],
      ),
    );
  }

  Widget _nanacoPointAcquiredAnnotationItem(String title) => Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          color: AppColors.gray1,
          height: 17 / 14,
        ),
      );
}

class _NanacoPointAcquiredSub extends StatelessWidget {
  const _NanacoPointAcquiredSub();

  @override
  Widget build(BuildContext context) {
    final haveNanacoPoints = context.select((OrderDetailPageState state) => state.orderDetail.totalNanacoPoints) >= 1;
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _nanacoPointAcquiredSubItem('※nanacoポイント対象金額は税抜金額 (各種手数料別/配達料金別/レジ袋利用料金別) となります。'),
          if (haveNanacoPoints) const _NanacoPointAnnotation1Widget(),
          const _NanacoPointAnnotation2Widget(),
          if (haveNanacoPoints) const _NanacoPointAnnotation3Widget(),
        ],
      ),
    );
  }
}

class _NanacoPointAnnotation1Widget extends StatelessWidget {
  const _NanacoPointAnnotation1Widget();

  @override
  Widget build(BuildContext context) {
    final nanacoPointStatus = context.select((OrderDetailPageState state) => state.orderDetail.nanacoPointStatus);
    if (nanacoPointStatus == NanacoPointStatus.completeReceiveResultNormal) {
      final dateString =
          context.select((OrderDetailPageState state) => state.orderDetail.nanacoPointResultDatetime).toString();
      return _nanacoPointAcquiredSubItem('${formatMonthDayJaMdWithoutDayOfWeek(dateString)}ポイント付与済');
    } else if (nanacoPointStatus == NanacoPointStatus.completeReceiveResultError) {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _nanacoPointAcquiredSubItem('''
こちらの注文ではご登録のnanaco番号にポイントが付与できませんでした。
ご登録のnanaco番号を確認し、正しい番号を再度登録してください。'''),
            _nanacoPointAcquiredSubLinkItem(
              context,
              'nanacoポイントサービスの登録番号を確認する',
              'nanaco番号変更',
              iynsNanacoEditUrl.toString(),
            ),
            _nanacoPointAcquiredSubItem('ポイントは再登録されたnanaco番号に、登録2日後に付与される予定です。'),
          ],
        ),
      );
    } else if (nanacoPointStatus == NanacoPointStatus.requestRegrant ||
        nanacoPointStatus == NanacoPointStatus.completeRequestRegrant) {
      return _nanacoPointAcquiredSubItem('''
※付与予定のポイントになります。
※現在、ポイント再付与依頼中です。2～3日後にポイント付与予定です。
※キャンペーンポイントは、今回のポイントに合算して付与させていただきます。''');
    } else {
      return _nanacoPointAcquiredSubItem('''
※付与予定のポイントになります。
※ポイント付与は受け取り日から2日後の予定です。
※キャンペーンポイントは、今回のポイントに合算して付与させていただきます。''');
    }
  }

  Widget _nanacoPointAcquiredSubLinkItem(BuildContext context, String text, String webTitle, String url) =>
      BlueTextButton.underline(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(text),
            const SizedBox(width: 4),
            Assets.icons.externalLink.svg(),
          ],
        ),
        onPressed: () {
          Navigator.push(
            context,
            _WebView.route(title: webTitle, url: url),
          );
        },
      );
}

class _NanacoPointAnnotation2Widget extends StatelessWidget {
  const _NanacoPointAnnotation2Widget();

  @override
  Widget build(BuildContext context) {
    final isPickup = context.select((OrderDetailPageState state) => state.orderDetail.fulfillmentType.isPickup);
    final receiptDeliveryText = isPickup ? 'お受け取り' : 'お届け';
    return _nanacoPointAcquiredSubItem('※nanaco会員メニューからのポイント照会は$receiptDeliveryText日の3日後の午前7時以降となります。');
  }
}

class _NanacoPointAnnotation3Widget extends StatelessWidget {
  const _NanacoPointAnnotation3Widget();

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'nanacoポイントの照会は',
            style: TextStyle(
              fontSize: 14,
              height: 19 / 14,
              color: AppColors.black2,
            ),
          ),
          WidgetSpan(
            child: InkWell(
              child: const Padding(
                padding: EdgeInsets.only(bottom: 1),
                child: Text(
                  'こちら',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    height: 19 / 14,
                    decoration: TextDecoration.underline,
                    color: AppColors.main,
                  ),
                ),
              ),
              onTap: () => Navigator.push(
                context,
                _WebView.route(
                  title: 'nanacoポイントの照会',
                  url: 'https://www.nanaco-net.jp/pc/emServlet',
                ),
              ),
            ),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Assets.icons.externalLink.svg(),
            ),
          ),
        ],
      ),
    );
  }
}

/// nanacoポイント共通メソッド
Widget _nanacoPointAcquiredSubItem(String text) => Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        color: AppColors.black2,
        height: 19 / 14,
      ),
    );

/// WebView関連
class _WebViewArguments {
  const _WebViewArguments({
    required this.title,
    required this.url,
  });

  final String title;
  final String url;
}

class _WebView extends StatelessWidget {
  const _WebView({Key? key}) : super(key: key);

  static Route<Object?> route({required String title, required String url}) => MaterialPageRoute<Object?>(
        builder: (_) => Provider.value(
          value: _WebViewArguments(
            title: title,
            url: url,
          ),
          child: const _WebView(),
        ),
        settings: const RouteSettings(name: name),
      );

  static const name = '/orders/detail/web_view';

  @override
  Widget build(BuildContext context) {
    logger.info('Build _WebView');
    final title = context.select((_WebViewArguments value) => value.title);
    final url = context.select((_WebViewArguments value) => value.url);
    return Scaffold(
      body: WebViewBasePage(
        authenticationRequired: false,
        title: title,
        initialUrl: url,
      ),
    );
  }
}
