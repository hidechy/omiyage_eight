import 'package:flutter/material.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../../enum/order_icon_type.dart';
import '../../enum/order_status.dart';
import '../../enum/screen_name.dart';
import '../../ui/common/app_loading.dart';
import '../../ui/common/order_changing_bar.dart';
import '../../ui/common/pull_to_refresh.dart';
import '../../util/cart_info_manager.dart';
import '../../util/datetime_formatter.dart';
import '../../util/logger.dart';
import '../../util/text_formatter.dart';
import '../common/app_buttons.dart';
import '../common/app_colors.dart';
import '../common/app_media_query.dart';
import '../common/cart_button.dart';
import '../common/total_price.dart';
import '../state/orders_page_state.dart';
import '../view_model/orders_page_view_model.dart';
import 'order_detail_page.dart';
import 'repurchase_page.dart';

/// 注文履歴一覧ページ
class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  static Route<Object?> route([Object? arguments]) => MaterialPageRoute<Object?>(
        builder: (_) => const OrdersPage(),
        settings: RouteSettings(name: name, arguments: arguments),
      );
  static final name = ScreenName.ordersPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build OrdersPage');
    return StateNotifierProvider<OrdersPageViewModel, OrdersPageState>(
      create: (_) => OrdersPageViewModel(),
      builder: (context, _) {
        return Scaffold(
          appBar: AppBar(title: const Text('注文履歴')),
          body: const SafeArea(
            child: _Body(),
          ),
          floatingActionButton: const CartButton(),
        );
      },
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LoadingFullScreen(
          future: () => context.read<OrdersPageViewModel>().initLoad(),
          content: PullToRefresh(
            onRefresh: (BuildContext context) => context.read<OrdersPageViewModel>().initLoad(),
            child: Visibility(
              visible: context.select((OrdersPageState state) => state.isNotEmpty),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  OrderChangingBar(),
                  _CreditCardWarningArea(),
                  _OrderList(),
                  SizedBox(height: 40),
                ],
              ),
              replacement: const _Empty(),
            ),
          ),
        ),
        const Align(
          alignment: Alignment.bottomCenter,
          child: TotalPrice(),
        ),
      ],
    );
  }
}

/// クレジットカードエラー警告
class _CreditCardWarningArea extends StatelessWidget {
  const _CreditCardWarningArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Offstage(
        offstage: context.select((OrdersPageState state) => !state.hasCreditError),
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 16, top: 8, right: 16),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: const BoxDecoration(
            color: AppColors.warning2,
          ),
          child: const Text(
            'クレジットカードがエラーになっています\n「注文詳細/注文内容の変更」からカード番号を再入力してください',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColors.warning1,
              height: 4 / 3,
            ),
          ),
        ),
      );
}

/// 0件
class _Empty extends StatelessWidget {
  const _Empty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = AppMediaQuery.of(context).size;
    final padding = AppMediaQuery.of(context).padding;
    // マイページ画面からしか空のリストは表示されない
    final bottom = padding.bottom + kBottomNavigationBarHeight;
    logger.info(bottom);
    final top = AppMediaQuery.of(context).headerHeight;
    logger.info(top);
    final size = Size(media.width, media.height - (top + bottom));
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: SizedBox.fromSize(
        size: size,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(height: 24),
                Text(
                  '表示できる注文はありません',
                  textAlign: TextAlign.center,
                  textHeightBehavior: TextHeightBehavior(
                    applyHeightToFirstAscent: false,
                    applyHeightToLastDescent: false,
                  ),
                  style: TextStyle(
                    color: AppColors.gray2,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    height: 19 / 14,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  '商品を注文すると進行中の注文や過去の注文が\n表示されます',
                  textAlign: TextAlign.center,
                  textHeightBehavior: TextHeightBehavior(
                    applyHeightToFirstAscent: false,
                    applyHeightToLastDescent: false,
                  ),
                  style: TextStyle(
                    color: AppColors.gray2,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    height: 4 / 3,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _OrderList extends StatelessWidget {
  const _OrderList({Key? key}) : super(key: key);
  static const viewCount = 10;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        key: PageStorageKey(context.select((OrdersPageState state) => state.loadCount)),
        padding: const EdgeInsets.only(bottom: 50),
        itemCount: context.select(
          (OrdersPageState state) => state.length < state.totalSize ? state.length + 1 : state.totalSize,
        ),
        itemBuilder: (context, index) => Builder(
          builder: (context) {
            final builder = Builder(
              builder: (context) {
                final isCanceled = context.select((OrdersPageState state) => state[index].cancelPriceFlag);
                final orderId = context.select((OrdersPageState state) => state[index].orderId);
                return InkWell(
                  child: _Order(index),
                  onTap: isCanceled
                      ? null
                      : () => _onPressed(
                            context,
                            orderId,
                          ),
                );
              },
            );

            if (context.select((OrdersPageState state) => state.length > index)) {
              return builder;
            }

            final page = index ~/ viewCount + 1;
            return LoadingPartialScreen(
              future: () => context.read<OrdersPageViewModel>().load(page),
              content: builder,
            );
          },
        ),
      ),
    );
  }
}

/// 注文履歴アイテム共通クラス
class _Order extends StatelessWidget {
  const _Order(this.index, {Key? key}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _OrderLabel(index),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // 配達予定日
              _DeliveryDateArea(index),
              // 受け取り場所
              _ReceiptLocationArea(index),
              // 注文番号・合計金額
              _OrderDetailArea(index),
              // ポイント利用分
              _UsedPointArea(index),
              // 注文キャンセル日
              _CancelDate(index),
              // ボタン
              _DetailButton(index),
              // 変更中文言
              _ChangingOrderLabel(index),
              // クレカエラー個別文言
              _CreditCardErrorLabel(index),
            ],
          ),
        ),
        const _Divider(),
      ],
    );
  }
}

/// 注文履歴ラベル
class _OrderLabel extends StatelessWidget {
  const _OrderLabel(this.index, {Key? key}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final isFirstCurrent = context.select((OrdersPageState state) => state.ongoingOrders.isNotEmpty && index == 0);
    final isFirstPrevious = context
        .select((OrdersPageState state) => state.previousOrders.isNotEmpty && index == state.ongoingOrders.length);
    return Offstage(
      offstage: !(isFirstCurrent || isFirstPrevious),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 24, right: 16),
            child: Text(
              isFirstCurrent ? '進行中の注文' : '過去の注文',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),
            ),
          ),
          const _Divider(),
        ],
      ),
    );
  }
}

/// 配達予定日
class _DeliveryDateArea extends StatelessWidget {
  const _DeliveryDateArea(this.index, {Key? key}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final order = context.select((OrdersPageState state) => state[index]);

    late final Decoration decoration;
    late final Widget text;
    late final String deliveryStatus;
    if (order.cancelPriceFlag) {
      decoration = BoxDecoration(
        border: Border.all(color: AppColors.gray2),
        borderRadius: BorderRadius.circular(8.0),
      );
      text = Text(
        OrderIconType.cancel.name,
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          leadingDistribution: TextLeadingDistribution.even,
          color: AppColors.gray2,
          height: 1,
        ),
      );
      deliveryStatus = '';
    } else {
      decoration = BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: AppColors.mainBorder,
      );
      text = Text(
        OrderIconType.normalDelivery.name,
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          leadingDistribution: TextLeadingDistribution.even,
          color: AppColors.white,
          height: 1,
        ),
      );
      deliveryStatus = order.status.isCurrentOrder ? ' 配達予定' : ' 配達済み';
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: 76,
          height: 17,
          decoration: decoration,
          child: text,
        ),
        const SizedBox(width: 4),
        Flexible(
          child: Text(
            // 配達日時
            '${formatFromToDateTimeMd(order.deliveryPlanStartDatetime, order.deliveryPlanFinishDatetime)}$deliveryStatus',
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

/// 受け取り場所
class _ReceiptLocationArea extends StatelessWidget {
  const _ReceiptLocationArea(this.index, {Key? key}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) => Offstage(
        offstage: context.select((OrdersPageState state) => !state[index].isDisplayReceiptLocationName),
        child: _OrderDetailLabel(
          '受け取り場所',
          context.select((OrdersPageState state) => state[index].receiptLocationName),
        ),
      );
}

/// 注文番号・金額
class _OrderDetailArea extends StatelessWidget {
  const _OrderDetailArea(this.index, {Key? key}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: _OrderDetailLabel(
              '注文番号',
              context.select((OrdersPageState state) => state[index].orderId.toString()),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: _OrderDetailLabel(
              '合計金額(税込)',
              context.select((OrdersPageState state) => formatToYen(state[index].totalPrice)),
              isBold: true,
            ),
          ),
        ],
      );
}

class _OrderDetailLabel extends StatelessWidget {
  const _OrderDetailLabel(this.title, this.value, {Key? key, this.isBold = false}) : super(key: key);

  final String title;
  final String value;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.inactive),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w300,
            ),
          ),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 14,
                fontWeight: isBold ? FontWeight.w600 : FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// ポイント利用分
class _UsedPointArea extends StatelessWidget {
  const _UsedPointArea(this.index, {Key? key}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) => Offstage(
        offstage: context.select((OrdersPageState state) => state[index].cancelPriceFlag),
        child: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              context.select((OrdersPageState state) => '内ポイント利用分：${formatToYen(state[index].nanacoPointUsePoint)}'),
              style: const TextStyle(
                fontSize: 11,
                color: AppColors.gray1,
              ),
            ),
          ),
        ),
      );
}

/// 注文キャンセル日
class _CancelDate extends StatelessWidget {
  const _CancelDate(this.index, {Key? key}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) => Offstage(
        offstage: context.select((OrdersPageState state) => !state[index].cancelPriceFlag),
        child: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Center(
            child: Text(
              context.select(
                  (OrdersPageState state) => '${formatDateTimeYearDateTime(state[index].cancelDatetime)}キャンセル済み'),
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: AppColors.black2,
              ),
            ),
          ),
        ),
      );
}

/// 詳細ボタン
class _DetailButton extends StatelessWidget {
  const _DetailButton(this.index, {Key? key}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final canChange = context.select((OrdersPageState state) {
      final order = state[index];
      final canChangeOrderDetail = order.isBeforeChangeClosingDatetime;
      return canChangeOrderDetail && order.status.isCurrentOrder;
    });

    final orderId = context.select((OrdersPageState state) => state[index].orderId);

    late final Widget buttons;
    if (canChange) {
      buttons = BlueElevatedButton.small(
        onPressed: () => _onPressed(context, orderId),
        child: const Text(
          '注文詳細／注文内容の変更',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    } else {
      buttons = _cannotChangeButtons(context, orderId);
    }

    return Visibility(
      visible: context.select((OrdersPageState state) => !state[index].cancelPriceFlag),
      child: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Center(child: buttons),
      ),
    );
  }

  Widget _cannotChangeButtons(
    BuildContext context,
    int orderId,
  ) {
    final isShowRepurchase = context.select((OrdersPageState state) => state[index].status) == OrderStatus.recordSales;

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GreyOutlinedButton.small(
          onPressed: () => _onPressed(context, orderId),
          child: const Text('注文詳細'),
        ),
        if (isShowRepurchase)
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: BlueElevatedButton.small(
              onPressed: () => _showRepurchase(context, orderId),
              child: const Text(
                '再購入',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
      ],
    );
  }

  void _showRepurchase(BuildContext context, int orderId) {
    Navigator.push(
      context,
      RepurchasePage.route(orderId),
    );
  }
}

/// 注文変更中ラベル
class _ChangingOrderLabel extends StatelessWidget {
  const _ChangingOrderLabel(this.index, {Key? key}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final orderId = context.select((CartInfoState state) => state.oldOrder?.oldOrderId);
    return Visibility(
      visible: context.select((OrdersPageState state) => state[index].orderId == orderId),
      child: const Padding(
        padding: EdgeInsets.only(top: 8),
        child: Center(
          child: Text(
            '現在こちらの注文を変更中です',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
              color: AppColors.emphasis1,
            ),
          ),
        ),
      ),
    );
  }
}

/// クレジットカートエラーラベル
class _CreditCardErrorLabel extends StatelessWidget {
  const _CreditCardErrorLabel(this.index, {Key? key}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) => Visibility(
        visible: context.select((OrdersPageState state) => state[index].status == OrderStatus.creditError),
        child: const Padding(
          padding: EdgeInsets.only(top: 8),
          child: Center(
            child: Text(
              'クレジットカードがエラーになっています',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: AppColors.warning1,
              ),
            ),
          ),
        ),
      );
}

class _Divider extends StatelessWidget {
  const _Divider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Divider();
}

void _onPressed(BuildContext context, int orderId) {
  Navigator.push(
    context,
    OrderDetailPage.route(orderId),
  );
}
