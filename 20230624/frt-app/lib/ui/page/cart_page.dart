import 'dart:io';

import 'package:flutter/material.dart';

import 'package:collection/collection.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../data/api/model/cart_details_model.dart';
import '../../data/api/model/response_model.dart';
import '../../enum/analytics_event_type.dart';
import '../../enum/cart_order_status_type.dart';
import '../../enum/delivery_fee_type.dart';
import '../../enum/event_parameter_type.dart';
import '../../enum/individual_delivery_price_type.dart';
import '../../enum/screen_name.dart';
import '../../util/access_point_info_manager.dart';
import '../../util/analytics_manager.dart';
import '../../util/authentication_manager.dart';
import '../../util/cart_info_manager.dart';
import '../../util/datetime_formatter.dart';
import '../../util/logger.dart';
import '../../util/text_formatter.dart';
import '../common/app_buttons.dart';
import '../common/app_cached_network_image.dart';
import '../common/app_colors.dart';
import '../common/app_dialogs.dart';
import '../common/app_image_not_found.dart';
import '../common/app_loading.dart';
import '../common/app_loading2.dart' as loading;
import '../common/app_media_query.dart';
import '../common/change_product_count_button.dart';
import '../common/delivery_datetime_insertion_bar.dart';
import '../common/error_handler.dart';
import '../common/order_changing_bar.dart';
import '../state/customer_state.dart';
import '../view_model/cart_page_view_model.dart';
import 'delivery_datetime_page.dart';
import 'order_conf_web_view_page.dart';
import 'product_detail/product_detail_distribute_page.dart';
import 'root_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  static Route<Object?> route([Object? arguments]) => MaterialPageRoute<Object?>(
        builder: (_) => const CartPage(),
        settings: RouteSettings(name: name, arguments: arguments),
      );

  static final name = ScreenName.cartPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build CartPage');
    return Provider<CartPageViewModel>(
      create: (_context) => CartPageViewModel(_context),
      builder: (context, _) {
        return Scaffold(
          extendBody: true,
          backgroundColor: AppColors.white,
          appBar: AppBar(
            title: const Text(
              'カート',
            ),
            actions: const [
              _CartEmptyTextButton(),
              SizedBox(width: 16),
            ],
          ),
          body: LoadingFullScreen(
            future: () => context.read<CartPageViewModel>().load(),
            content: Container(
              color: AppColors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  OrderChangingBar(),
                  DeliveryDatetimeInsertionBar(),
                  _ProductList(),
                ],
              ),
            ),
          ),
          bottomNavigationBar: const _Footer(),
        );
      },
    );
  }
}

/// 商品一覧
class _ProductList extends StatelessWidget {
  const _ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final length = context.select((CartInfoState state) => state.cartDetails.length);
    final cartDetails = context.select((CartInfoState state) => state.cartDetails);
    return length > 0
        ? Expanded(
            child: ListView(
              key: const PageStorageKey(0),
              children: [
                const _CartClearTime(),
                for (final cartDetail in cartDetails) _Product(cartDetail: cartDetail),
              ],
            ),
          )
        : Align(
            alignment: Alignment.center,
            child: Container(
              color: AppColors.white,
              margin: const EdgeInsets.only(top: 40),
              child: const Text(
                'カートに商品はありません',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  height: 19 / 14,
                  color: AppColors.gray2,
                ),
              ),
            ),
          );
  }
}

class _CartClearTime extends StatelessWidget {
  const _CartClearTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartDeleteDatetime = context.select((CartInfoState state) => state.cartDeleteDatetime);
    final remainingTimeUntilCartDelete = context.select((CartInfoState state) => state.remainingTimeUntilCartDelete);
    if (remainingTimeUntilCartDelete.isNotEmpty) {
      // 表示文言の作成
      final attentionWord = context.select(
        (CartInfoState state) => state.orderStatus == CartOrderStatusType.notOrdered
            ? '商品がカートに入ったまま一定時間が経過したため本日${formatToTime(cartDeleteDatetime)}にカートが空になります。'
            : '変更中の商品がカートに入ったまま一定時間が経過したため本日${formatToTime(cartDeleteDatetime)}に変更内容が取り消されます。',
      );
      final remainingTime = '${_formatToRemainingTime(remainingTimeUntilCartDelete)}分以内にお支払いを完了してください。';
      // カートクリア喚起コンポーネントの作成
      return Padding(
        padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            height: 19 / 14,
            color: AppColors.emphasis1,
          ),
          child: Text('$attentionWord\n$remainingTime', textAlign: TextAlign.center),
        ),
      );
    }
    return const SizedBox.shrink();
  }

  String _formatToRemainingTime(String time) {
    final dateFormatter = DateFormat('HH:mm:ss');
    try {
      final result = dateFormatter.parseStrict(time);
      return result.minute.toString();
    } catch (_) {
      return '';
    }
  }
}

/// 商品
class _Product extends StatelessWidget {
  const _Product({
    Key? key,
    required this.cartDetail,
  }) : super(key: key);

  final CartDetailsModel cartDetail;

  @override
  Widget build(BuildContext context) {
    final productId = cartDetail.productId;
    final productImagePath = cartDetail.frontProductImageFullPath;
    final productName = cartDetail.productName;
    final noTaxPrice = cartDetail.noTaxPrice;
    final price = cartDetail.price;
    final productDetailKey = cartDetail.productDetailKey;
    final quantity = cartDetail.quantity;
    final canNotChangeProduct = context.select((CartInfoState state) =>
        (state.orderStatus == CartOrderStatusType.nowChanging) && !cartDetail.isBeforeChangeProductClosingDatetime);

    return Container(
      margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.inactive, width: 1),
      ),
      child: Material(
        type: MaterialType.card,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: () => Navigator.push(context, ProductDetailDistributePage.route(productId: productId)),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 10, bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 16.0, top: 6.0),
                  width: AppMediaQuery.of(context).widthRate * 50,
                  height: AppMediaQuery.of(context).widthRate * 50,
                  child: AppCachedNetworkImage(
                    imageUrl: '$iynsBaseUrl$productImagePath',
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => const AppImageNotFound(),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        productName,
                        style: const TextStyle(
                          color: AppColors.black2,
                          fontSize: 16,
                          height: 22 / 16,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            formatToYen(noTaxPrice),
                            style: const TextStyle(
                              color: AppColors.black2,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              height: 22 / 16,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            '${formatToYen(price)}(税込)',
                            style: const TextStyle(
                              color: AppColors.gray2,
                              fontSize: 12,
                              height: 16 / 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      canNotChangeProduct
                          ? Text(
                              '数量 $quantity',
                              style: const TextStyle(
                                color: AppColors.black2,
                                fontSize: 12,
                                height: 17 / 12,
                              ),
                            )
                          : Row(
                              children: [
                                ChangeProductCountButton.small(
                                  productId: productId,
                                  productName: productName,
                                  productDetailKey: productDetailKey,
                                  width: 82,
                                  canRemove: false,
                                ),
                                const SizedBox(width: 24.0),
                                SizedBox(
                                  height: 24,
                                  width: 56,
                                  child: GreyOutlinedButton.small(
                                    child: const Text('削除'),
                                    onPressed: () async {
                                      showLoadingModal(
                                        context: context,
                                        future: () async {
                                          final analytics = GetIt.I<AnalyticsManager>();
                                          analytics.sendEvent(
                                            eventType: AnalyticsEventType.removeFromCart,
                                            parameters: {EventParameterType.productId: productId},
                                          );
                                          await context
                                              .read<CartPageViewModel>()
                                              .deleteItem(productId, productDetailKey);
                                          return true;
                                        },
                                        errorOperators: [ReEnsureDeliveryDateErrorOperator()],
                                      );
                                      return;
                                    },
                                  ),
                                ),
                              ],
                            ),
                    ],
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

class _Footer extends StatelessWidget {
  const _Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final existItem = context.select((CartInfoState state) => state.cartDetails.isNotEmpty);
    final productTotalPrice = context.select((CartInfoState state) => state.productTotalPrice);
    final deliveryPrice = context.select((CartInfoState state) => state.deliveryPrice);
    final isCartAllocationValid = context.select((CartInfoState state) => state.isCartAllocationValid);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            color: AppColors.whiteAlpha90,
            border: Border(
              top: BorderSide(
                color: AppColors.blackShadow,
                width: 0.3,
              ),
            ),
          ),
          padding: const EdgeInsets.only(right: 16.0, top: 8.0, bottom: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    '商品総額(税込)',
                    style: TextStyle(
                      color: AppColors.black2,
                      fontSize: 14,
                      height: 19 / 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    formatToYen(productTotalPrice),
                    style: const TextStyle(
                      color: AppColors.black2,
                      fontSize: 20,
                      height: 28 / 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              if (isCartAllocationValid)
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      color: AppColors.gray3,
                      fontSize: 14,
                      height: 19 / 14,
                    ),
                    child: (deliveryPrice != 0) ? Text('配達料(税込)${formatToYen(deliveryPrice)}') : const Text('配達料無料'),
                  ),
                ),
              const _CampaignText(),
            ],
          ),
        ),
        Container(
          color: AppColors.white,
          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
          child: SafeArea(
            child: Center(
              child: OrangeElevatedButton.large(
                child: const Text('お支払いへ進む'),
                widthFactor: 0.745,
                analyticsEventType: AnalyticsEventType.proceedToPayment,
                onPressed: existItem
                    ? () async {
                        _tapGoToPaymentButton(context);
                      }
                    : null,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _tapGoToPaymentButton(BuildContext context) async {
    final isVisitor = context.read<CustomerState>().isVisitor;
    final isMember = context.read<CustomerState>().isMember;
    final deemedDeliveryCartFlag = context.read<CartInfoState>().deemedDeliveryCartFlag;
    // 見学ログインの場合：ログインダイアログ表示 → WebView支払い画面
    if (isVisitor) {
      final succeeded = await showLoginDialog(context: context);
      if (succeeded ?? false) {
        _pushDeliveryDatetimePage(context);
      }
      // 会員かつ本便未選択(みなし便)の場合：便選択画面 → WebView支払い画面
    } else if (isMember && deemedDeliveryCartFlag) {
      _pushDeliveryDatetimePage(context);
      // 会員かつ本便選択済の場合：WebView支払い画面遷移
    } else {
      final cartId = context.read<CartInfoState>().cartId;
      _pushOrderConfWebViewPage(
        context: context,
        visitorCartFlag: false,
        deemedDeliveryCartFlag: deemedDeliveryCartFlag,
        cartId: cartId,
        isEnsureCart: false,
      );
    }
  }

  Future<void> _pushDeliveryDatetimePage(BuildContext context) async {
    final isEnsureCart = await Navigator.of(context, rootNavigator: true).push(
          DeliveryDatetimePage.route(fullscreenDialog: true),
        ) ??
        false;

    // 便確保成功時、お支払い画面に遷移
    if (isEnsureCart) {
      final cartInfo = context.read<CartInfoState>();
      _pushOrderConfWebViewPage(
        context: context,
        visitorCartFlag: cartInfo.visitorCartFlag,
        deemedDeliveryCartFlag: cartInfo.deemedDeliveryCartFlag,
        cartId: cartInfo.cartId,
        isEnsureCart: isEnsureCart,
      );
    }
  }

  void _pushOrderConfWebViewPage({
    required BuildContext context,
    required bool visitorCartFlag,
    required bool deemedDeliveryCartFlag,
    required int cartId,
    required bool isEnsureCart,
  }) async {
    if (!visitorCartFlag && !deemedDeliveryCartFlag) {
      final navigator = Navigator.of(context);

      // お支払い画面遷移の前にログインAPIの実行
      final modalResult = await loading.showLoadingModal<bool>(future: () async {
        final authenticationManager = GetIt.I<AuthenticationManager>();
        await authenticationManager.reLogin();
        return true;
      });

      // LoadingModal内でエラーが発生した場合、以降の処理を中断する。
      if (!(modalResult ?? false)) {
        return;
      }
      
      // 便選択状態だったらお支払い画面に遷移
      final result = await navigator.push(OrderConfWebViewPage.route(cartId: cartId));
      // お支払い確認画面から戻る時
      // resultがtrue場合に店舗トップへ戻る処理はWebview側の共通処理されてるため、こちらの店舗トップへ戻る処理が不要
      if (result != true) {
        if (isEnsureCart) {
          // 便確保してる場合
          final cartRoot = CartPage.route();
          final rootRoute = RootPage.route();
          // 店舗トップスタックだけ残して、そのほかのスタックを削除する。その後ミニカート画面をpushする
          navigator.pushAndRemoveUntil(cartRoot, ModalRoute.withName(RootPage.name));
          // 指定したミニカートスタックの一つ前の店舗トップスタックを新しい店舗トップスタックと取り替え
          navigator.replaceRouteBelow(anchorRoute: cartRoot, newRoute: rootRoute);
        } else {
          navigator.pushReplacement(CartPage.route());
        }
      }
    }
  }
}

class _CampaignText extends StatelessWidget {
  const _CampaignText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final campaignText = context.select((CartInfoState state) {
      if (state.isCartAllocationValid) {
        switch (state.deliveryType) {
          case DeliveryFeeType.indvidualDeliveryFee:
            final name = state.individualDeliveryName;
            final term = formatDateTimeFromToDateMd(state.deliveryTypeStartDatetime, state.deliveryTypeFinishDatetime);
            if (state.individualDeliveryPriceType == IndividualDeliveryPriceType.fixedAmount) {
              final individualDeliveryPrice = state.individualDeliveryPrice;
              final price = individualDeliveryPrice == null
                  ? ''
                  : '(${individualDeliveryPrice == 0 ? '無料' : '${formatToYen(individualDeliveryPrice)}円'})';
              return '$nameが\n適用されています$price\n(有効期限：$term)';
            } else if (state.individualDeliveryPriceType == IndividualDeliveryPriceType.percentDiscount) {
              return '$nameが\n適用されています(${state.individualDeliveryDiscountRate}％OFF)\n(有効期限：$term)';
            }
            break;
          case DeliveryFeeType.campaignShippingFee:
            return '※キャンペーン適用中';
          case DeliveryFeeType.normalDeliveryFee:
            if (state.deliveryPrice != 0 && 1 <= state.nextDifferenceDeliveryPrice) {
              return '${formatToYen(state.nextDifferenceDeliveryPrice)}円以上購入で配達料${formatToYen(state.nextDeliveryPrice)}円！';
            }
            break;
          case DeliveryFeeType.multiOrderShippingFee:
          case DeliveryFeeType.fixedDeliveryFee:
          case DeliveryFeeType.areaShippingFee:
          case DeliveryFeeType.shippingFeeByService:
          case DeliveryFeeType.regularShipment:
          case DeliveryFeeType.none:
            break;
        }
      }
      return '';
    });
    return Visibility(
      visible: campaignText.isNotEmpty,
      child: Text(
        campaignText,
        textAlign: TextAlign.right,
        style: const TextStyle(
          color: AppColors.purchaseFlow,
          fontSize: 12,
          height: 18 / 12,
        ),
      ),
    );
  }
}

class _CartEmptyTextButton extends StatelessWidget {
  const _CartEmptyTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartInfo = context.select((CartInfoState state) => state);
    final existItem = cartInfo.cartDetails.isNotEmpty;
    final inactiveFlag = context.select((CartInfoState state) =>
        state.orderStatus == CartOrderStatusType.nowChanging &&
        !state.isAdditionalOrderTerm &&
        state.cartDetails.every((element) => element.isBeforeChangeProductClosingDatetime == false));
    return BlueTextButton(
      fontSize: 16,
      child: const Text('空にする'),
      onPressed: (!existItem || inactiveFlag)
          ? null
          : () async {
              final result = await showAttentionSelectionDialog<bool>(
                    context: context,
                    dialogName: ScreenName.cartEmptyModal.value,
                    title: 'カートを空にしますか？',
                    attentionText: 'この操作は取り消せません',
                    applicationText: '空にする',
                    onApplied: (_context) => () => Navigator.pop(_context, true),
                    cancellationText: 'キャンセル',
                    onCanceled: (_context) => () => Navigator.pop(_context, false),
                  ) ??
                  false;
              if (result) {
                await showLoadingModal(
                  context: context,
                  future: () async {
                    final analytics = GetIt.I<AnalyticsManager>();
                    analytics.sendEvent(eventType: AnalyticsEventType.deleteCartAll);
                    await context.read<CartPageViewModel>().deleteAllItems();
                    return true;
                  },
                  errorOperators: [ReEnsureDeliveryDateErrorOperator()],
                );
              }
            },
    );
  }
}

class ReEnsureDeliveryDateErrorOperator extends ErrorOperatorWrapper {
  ReEnsureDeliveryDateErrorOperator()
      : super(
          (error, context, handler) async {
            final response = error.response!;
            final httpStatus = response.statusCode!;
            if (httpStatus != HttpStatus.badRequest) {
              return handler.next(error);
            }
            // ignore: prefer_void_to_null
            final errorResponse = ResponseModel<Null>.fromJson(response.data);
            final errorStatusCode = errorResponse.statusCode;
            if (errorStatusCode != 'E-00007') {
              return handler.next(error);
            }
            final errorReasonCode = errorResponse.errorDetails.firstOrNull?.errorReasonCode;
            if (errorReasonCode == '2100095') {
              showReEnsureCartFailureModal(context);
              return handler.resolve();
            }
            return handler.next(error);
          },
        );
}
