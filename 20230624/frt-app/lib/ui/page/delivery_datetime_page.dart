import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:table_sticky_headers/table_sticky_headers.dart';
import 'package:tuple/tuple.dart';

import '../../data/api/model/autolock_mansion_model.dart';
import '../../data/api/model/base_customer_model.dart';
import '../../data/api/model/cart_model.dart';
import '../../data/api/model/changed_cart_model.dart';
import '../../data/api/model/delivery_date_model.dart';
import '../../data/api/model/delivery_information_model.dart';
import '../../data/api/model/delivery_time_model.dart';
import '../../data/api/model/response_model.dart';
import '../../data/api/model/shopping_start_check_result_model.dart';
import '../../enum/analytics_event_type.dart';
import '../../enum/cart_order_status_type.dart';
import '../../enum/delivery_schedules_fulfillment_type.dart';
import '../../enum/individual_delivery_price_type.dart';
import '../../enum/living_status_type.dart';
import '../../enum/screen_name.dart';
import '../../enum/user_property_type.dart';
import '../../gen/assets.gen.dart';
import '../../util/access_point_info_manager.dart';
import '../../util/analytics_manager.dart';
import '../../util/cart_info_manager.dart';
import '../../util/customer_manager.dart';
import '../../util/datetime_formatter.dart';
import '../../util/logger.dart';
import '../../util/text_formatter.dart';
import '../common/alert_for_migration.dart';
import '../common/app_buttons.dart';
import '../common/app_checkbox.dart';
import '../common/app_colors.dart';
import '../common/app_dialogs.dart';
import '../common/app_loading.dart';
import '../common/app_media_query.dart';
import '../common/app_radio.dart';
import '../common/app_toast.dart';
import '../common/error_handler.dart';
import '../common/order_changing_bar.dart';
import '../common/theme.dart';
import '../state/customer_state.dart';
import '../state/delivery_datetime_page_state.dart';
import '../view_model/delivery_datetime_view_model.dart';
import 'delivery_address_change_page.dart';
import 'order_detail_page.dart';
import 'root_page.dart';
import 'shop_selection_page.dart';
import 'web_view_base_page.dart';

class DeliveryDatetimePageArguments {
  DeliveryDatetimePageArguments({
    required this.fullscreenDialog,
  });

  final bool fullscreenDialog;
}

/// 便選択画面トップ
/// 呼び出し元に戻る際に、便確保成功=true, 便確保しない=falseを返却し、遷移元で次の遷移先を選択する
class DeliveryDatetimePage extends StatelessWidget {
  const DeliveryDatetimePage({Key? key}) : super(key: key);

  static Route<bool?> route({bool fullscreenDialog = false, bool skipAnimation = false}) => _MaterialPageRoute<bool?>(
        builder: (_) => Provider.value(
          value: DeliveryDatetimePageArguments(fullscreenDialog: fullscreenDialog),
          child: const DeliveryDatetimePage(),
        ),
        settings: RouteSettings(name: name),
        fullscreenDialog: fullscreenDialog,
        skipAnimation: skipAnimation,
      );

  static final name = ScreenName.deliveryDateTimePage.value;

  @override
  Widget build(BuildContext context) {
    Future<ErrorHandlerState> _handlerForChangeOrder(DioError error, BuildContext context, ErrorHandler handler) async {
      final httpStatus = error.response!.statusCode;
      if (httpStatus == 404) {
        // 注文変更取消しAPIの404は成功として扱う
        // そのため、404でresolveする前に、アプリ内で永続化している注文変更カートも削除する
        if (error.requestOptions.method == 'DELETE' && error.requestOptions.path.startsWith('/carts')) {
          await context.read<CartInfoManager>().ensure();
        }
        return handler.resolve();
      }
      if (httpStatus != 400) {
        return handler.next(error);
      }
      // ignore: prefer_void_to_null
      final errorResponse = ResponseModel<Null>.fromJson(error.response!.data);
      final statusCode = errorResponse.statusCode;
      if (statusCode != 'E-00007') {
        return handler.next(error);
      }
      final errorReasonCode = errorResponse.errorDetails.first.errorReasonCode;
      if (errorReasonCode != '2000007') {
        return handler.next(error);
      }
      return handler.resolve();
    }

    Future<bool> _closeFullScreenModal(BuildContext context, bool isOrderChangingCart) async {
      /// 注文変更時のみ「×」ボタンタップ時には注文キャンセル確認を実施する
      if (isOrderChangingCart) {
        final isOrderCancel = await showAttentionSelectionDialog<bool>(
          context: context,
          dialogName: ScreenName.shopTopCancelOrderChangeModal.value,
          title: '変更内容は破棄されます\n注文変更を終了しますか？',
          applicationText: '終了する',
          onApplied: (context) => () => Navigator.pop(context, true),
          cancellationText: 'キャンセル',
          onCanceled: (context) => () => Navigator.pop(context, false),
        );
        if (isOrderCancel ?? false) {
          // 注文変更キャンセル時（「終了する」タップ時）注文変更取り消しを行う
          await showLoadingModal(
            context: context,
            future: () async {
              await context.read<DeliveryDatetimeViewModel>().cancelChangeOrder();
              await context.read<CartInfoManager>().ensure();
              return true;
            },
            errorOperators: [ErrorOperatorWrapper(_handlerForChangeOrder)],
          );
          Navigator.pop(context, false);
        }
      } else {
        Navigator.pop(context, false);
      }
      return false;
    }

    logger.info('Build DeliveryDatetimePage');
    return StateNotifierProvider<DeliveryDatetimeViewModel, DeliveryDatetimePageState>(
      create: (_) => DeliveryDatetimeViewModel(),
      builder: (context, _) {
        final isOrderChangingCart = context.select((CartInfoState value) => value.isOrderChangingCart);
        final fullscreenDialog = context.select((DeliveryDatetimePageArguments value) => value.fullscreenDialog);
        return Theme(
          // 一度ノッチタップの挙動をAndroidに変更しなければタップイベントを設定できない
          data: themeData.copyWith(platform: TargetPlatform.android),
          child: Scaffold(
            key: GlobalKey(),
            appBar: AppBar(
              title: Text(
                isOrderChangingCart ? '受け取り日時の変更' : '受け取り日時の選択',
              ),
              flexibleSpace: GestureDetector(
                behavior: HitTestBehavior.opaque,
                child: SizedBox(height: AppMediaQuery.of(context).padding.top),
                // タップ回数が複数に及ぶ可能性があるため、boolではなくincrementで変更を管理する
                onTap: () => context.read<DeliveryDatetimeViewModel>().notchTapNotifier.value++,
              ),
              actions: [
                if (fullscreenDialog)
                  WillPopScope(
                    onWillPop: () => _closeFullScreenModal(context, isOrderChangingCart),
                    child: IconButton(
                      padding: const EdgeInsets.only(right: 21),
                      iconSize: 18,
                      color: AppColors.gray2,
                      onPressed: () async => _closeFullScreenModal(context, isOrderChangingCart),
                      icon: Assets.icons.clear.svg(),
                    ),
                  )
              ],
              automaticallyImplyLeading: !fullscreenDialog,
            ),
            body: Container(
              color: AppColors.white,
              child: ChangeNotifierProvider<ScrollController>(
                create: (context) => ScrollController(),
                builder: (context, _) {
                  return ScrollConfiguration(
                    behavior: const CupertinoScrollBehavior(),
                    child: NestedScrollView(
                      controller: context.read<ScrollController>(),
                      headerSliverBuilder: (context, _) {
                        return [
                          SliverList(
                            delegate: SliverChildListDelegate(
                              [
                                const AlertForMigration(),
                                const OrderChangingBar(),
                                const _ReceiptInfoWidget(),
                                const _InsertionInMigration(),
                                const _SwitchDeliveryDatetimePannel(),
                                const Divider(height: 1.0, color: AppColors.inactive),
                                const _IndividualDeliveryPriceInformation(),
                              ],
                            ),
                          ),
                        ];
                      },
                      body: LoadingFullScreen(
                        future: context.read<DeliveryDatetimeViewModel>().load,
                        errorOperators: [ErrorOperatorWrapper(_handler)],
                        content: const _DeliveryPriceListWidget(),
                      ),
                    ),
                  );
                },
              ),
            ),
            bottomNavigationBar: const _Footer(),
          ),
        );
      },
    );
  }
}

class _ReceiptInfoWidget extends StatelessWidget {
  const _ReceiptInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fulfillmentType = context.select((DeliveryDatetimePageState value) => value.fulfillmentType) ??
        DeliverySchedulesFulfillmentType.homeDelivery;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const _ReceiptMethodWidget(),
          Visibility(
            visible: fulfillmentType == DeliverySchedulesFulfillmentType.homeDelivery,
            child: const _DeliveryAddressWidget(),
            replacement: const _ReceiptPointWidget(),
          ),
          const _IsAddressDifferenceWidget(),
        ],
      ),
    );
  }
}

// 受取り方法行ウィジェット
class _ReceiptMethodWidget extends StatelessWidget {
  const _ReceiptMethodWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isOrderChangingCart = context.select((CartInfoState value) => value.isOrderChangingCart);
    final fulfillmentType = context.select((DeliveryDatetimePageState value) => value.fulfillmentType);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 84,
          child: Text(
            '受け取り方法',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.black2,
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Visibility(
                visible: isOrderChangingCart,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(fulfillmentType?.name ?? ''),
                ),
                replacement: _receiptMethodRadioButton(context),
              ),
              Visibility(
                visible: !isOrderChangingCart,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(12.0, 8.0, 0.0, 12.0),
                  child: Text(
                    '受け取り場所を変更した場合はカートがリセットされますのでご注意ください。',
                    style: TextStyle(
                      color: AppColors.warning1,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _receiptMethodRadioButton(BuildContext context) {
    final fulfillmentType = context.select((DeliveryDatetimePageState value) => value.fulfillmentType);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            _labelAndRadioButton(
              value: DeliverySchedulesFulfillmentType.homeDelivery,
              groupValue: fulfillmentType,
              onChanged: (value) {
                context.read<DeliveryDatetimeViewModel>().handleRadio(value);
                showLoadingModal(
                  context: context,
                  future: context.read<DeliveryDatetimeViewModel>().getHomeDeliveryDeliverySchedule,
                );
              },
              text: const Text('自宅'),
            ),
            _labelAndRadioButton(
              value: DeliverySchedulesFulfillmentType.clickAndCollect,
              groupValue: fulfillmentType,
              onChanged: (value) {
                context.read<DeliveryDatetimeViewModel>().handleRadio(value);
                showLoadingModal(
                  context: context,
                  future: context.read<DeliveryDatetimeViewModel>().getStoreReceivedSchedules,
                );
              },
              text: const Text('店舗・ロッカー'),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 4, left: 12),
          child: Text(
            'マンションロッカーの場合は「店舗・ロッカーで受け取り」を選択してください。',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
              color: AppColors.warning1,
              height: 16 / 12,
            ),
          ),
        )
      ],
    );
  }

  Widget _labelAndRadioButton({
    required DeliverySchedulesFulfillmentType value,
    required DeliverySchedulesFulfillmentType? groupValue,
    required ValueChanged<DeliverySchedulesFulfillmentType?> onChanged,
    required Text text,
  }) {
    return Container(
      padding: const EdgeInsets.only(left: 8),
      child: Row(
        children: [
          AppRadio(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
            useSmallButton: true,
          ),
          GestureDetector(
            onTap: () => onChanged(value),
            child: text,
          ),
        ],
      ),
    );
  }
}

class _InsertionWidget extends StatelessWidget {
  const _InsertionWidget({
    Key? key,
    required this.title,
    required this.content,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final String content;
  final String buttonText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final isOrderChangingCart = context.select((CartInfoState value) => value.isOrderChangingCart);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 84,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.black2,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(content),
          ),
        ),
        Visibility(
          visible: !isOrderChangingCart,
          child: BlueTextButton.medium(
            onPressed: onPressed,
            child: Text(buttonText),
          ),
        ),
      ],
    );
  }
}

class _DeliveryAddressWidget extends StatelessWidget {
  const _DeliveryAddressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final customer = context.select((CustomerState state) => state.member);
    return _InsertionWidget(
      title: '受け取り住所',
      content: _getDeliveryAddress(customer),
      buttonText: '変更する',
      onPressed: () async {
        final analytics = GetIt.I<AnalyticsManager>();
        analytics.sendEvent(eventType: AnalyticsEventType.changeDeliveryAddress);

        if (customer != null) {
          Navigator.of(context, rootNavigator: true).push(
            DeliveryAddressChangePage.route(customer.deliveryAddress!),
          );

          //ユーザープロパティ(カスタムディメンションの)送信
          _sendUserPropertyByShopCode(context);
        }
      },
    );
  }

  void _sendUserPropertyByShopCode(BuildContext context) {
    final analytics = GetIt.I<AnalyticsManager>();
    final customerInfo = context.read<CustomerManager>().member;
    if (customerInfo != null) {
      analytics.sendUserProperty(
        userPropertyType: UserPropertyType.shopCd,
        value: customerInfo.deliveryShop.first.shopCode,
      );
    }
  }

  String _getDeliveryAddress(BaseCustomerModel? customer) {
    final deliveryAddress = customer?.deliveryAddress;
    if (deliveryAddress != null) {
      return deliveryAddress.prefectureName +
          deliveryAddress.cityName +
          deliveryAddress.townName +
          deliveryAddress.chomeName +
          deliveryAddress.addressDetail +
          deliveryAddress.addressDetail2;
    }
    return '';
  }
}

class _ReceiptPointWidget extends StatelessWidget {
  const _ReceiptPointWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartPointName = context.select((CartInfoState value) => value.receiptPointName);
    final selectedShopInfoPointName =
        context.select((DeliveryDatetimePageState value) => value.selectedShopInfo?.receiptPointName);
    String receiptPointName = '未選択';
    final initialLatitude = context.select((DeliveryDatetimePageState value) => value.initReceiptPointLatitude);
    final initialLongitude = context.select((DeliveryDatetimePageState value) => value.initReceiptPointLongitude);
    if (selectedShopInfoPointName != null) {
      receiptPointName = selectedShopInfoPointName;
    } else if (cartPointName.isNotEmpty) {
      final shopName = cartPointName.split('<br>').first;
      receiptPointName = shopName;
    }
    return _InsertionWidget(
      title: '受け取り場所',
      content: receiptPointName,
      buttonText: '変更する',
      onPressed: () async {
        final selectedShopInfo = await Navigator.of(
          context,
          rootNavigator: true,
        ).push(ShopSelectionPage.route(
          initialLatitude: initialLatitude,
          initialLongitude: initialLongitude,
        ));

        if (selectedShopInfo != null) {
          final viewModel = context.read<DeliveryDatetimeViewModel>();
          viewModel.selectedShopInfo = selectedShopInfo;
          showLoadingModal(
            context: context,
            future: viewModel.reloadOnReturnFromTheShopSelectionPage,
          );
        }
      },
    );
  }
}

class _IsAddressDifferenceWidget extends StatelessWidget {
  const _IsAddressDifferenceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: context.select((DeliveryDatetimePageState value) =>
          value.fulfillmentType == DeliverySchedulesFulfillmentType.homeDelivery && value.isAddressDifference),
      child: const Padding(
        padding: EdgeInsets.only(left: 96.0),
        child: Text(
          'お客様の住所と商品の受け取り住所が異なります。商品の受け取り住所を変更する場合は、上記リンクからお願いいたします。',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: AppColors.warning1,
          ),
        ),
      ),
    );
  }
}

class _InsertionInMigration extends StatelessWidget {
  const _InsertionInMigration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isOrderChangingCart = context.select((CartInfoState value) => value.isOrderChangingCart);
    final isMigrationToCenter =
        context.select((CustomerState value) => value.member?.migrationToCenter.isNotEmpty) ?? false;
    final isHomeDelivery = context.select(
        (DeliveryDatetimePageState value) => value.fulfillmentType == DeliverySchedulesFulfillmentType.homeDelivery);
    final isAfterMigration = context.select((DeliveryDatetimePageState value) => value.isAfterMigration);
    final migrationBorderDate = context.select((CustomerState value) => _migrationBorderDateMdJa(
          value.member?.migrationTo,
          !isAfterMigration,
        ));
    return Visibility(
      visible: isOrderChangingCart && isMigrationToCenter && isHomeDelivery,
      child: Container(
        color: AppColors.emphasis2,
        margin: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
        padding: const EdgeInsets.all(16.0),
        child: DefaultTextStyle(
          style: const TextStyle(
            color: AppColors.black2,
            fontSize: 14.0,
            fontWeight: FontWeight.w300,
            height: 19 / 14,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'システムの移行期間のため$migrationBorderDateの受け取り日時を選択できません',
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text(
                  '$migrationBorderDateに受け取り日時を指定したい場合は、この注文をキャンセルして新規で注文してください。',
                ),
              ),
              BlueTextButton.underline(
                child: const Text('注文のキャンセルはこちら'),
                onPressed: () {
                  final orderId = context.read<CartInfoState>().oldOrder!.oldOrderId;
                  Navigator.push(
                    context,
                    OrderDetailPage.route(orderId),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _migrationBorderDateMdJa(DateTime? date, bool isAddDate) {
    if (date == null) {
      return '';
    } else if (isAddDate) {
      return DateFormat('M月d日', 'ja').format(date.add(const Duration(days: 1))) + '以降';
    }
    return DateFormat('M月d日', 'ja').format(date) + '以前';
  }
}

// センター移行時パネル
class _SwitchDeliveryDatetimePannel extends StatelessWidget {
  const _SwitchDeliveryDatetimePannel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isOrderChangingCart = context.select((CartInfoState value) => value.isOrderChangingCart);
    final isCenterMigration =
        context.select((CustomerState value) => value.member?.migrationToCenter.isNotEmpty ?? false);
    final isHomeDelivery = context.select(
        (DeliveryDatetimePageState value) => value.fulfillmentType == DeliverySchedulesFulfillmentType.homeDelivery);
    final isAfterMigration = context.select((DeliveryDatetimePageState value) => value.isAfterMigration);
    final migrationBorderDate = context.select((CustomerState value) => _migrationBorderDateMMddJa(
          value.member?.migrationTo,
          !isAfterMigration,
        ));
    return Visibility(
      visible: !isOrderChangingCart && isCenterMigration && isHomeDelivery,
      child: Container(
        color: AppColors.emphasis2,
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        margin: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
        child: BlueOutlinedButton.large(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          widthFactor: 0.68,
          child: Text(
            '$migrationBorderDateの受け取り日時の指定はこちらから',
            textAlign: TextAlign.center,
            style: const TextStyle(height: 22 / 18),
          ),
          onPressed: () async {
            final isConfirm = await showNormalSelectionDialog<bool>(
              context: context,
              dialogName: 'DeliveryDateTimeSwitchMigrationModal',
              title: 'この受け取り日時を選択するシステムの都合上カートがリセットされます',
              content: const Text(
                'お手数ですが日時選択後、再度商品を選択してください。',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300,
                  color: AppColors.black2,
                  height: 16 / 12,
                ),
                textAlign: TextAlign.start,
              ),
              applicationText: 'OK',
              applicationTextFontSize: 18,
              onApplied: (context) => () async => Navigator.pop(context, true),
              cancellationText: 'キャンセル',
              onCanceled: (context) => () => Navigator.pop(context, false),
            );
            if (isConfirm ?? false) {
              context.read<DeliveryDatetimeViewModel>().switchMigrationShop();
              showLoadingModal(
                context: context,
                future: () async {
                  await context.read<DeliveryDatetimeViewModel>().getHomeDeliveryDeliverySchedule();
                  return true;
                },
              );
            }
          },
        ),
      ),
    );
  }

  String _migrationBorderDateMMddJa(DateTime? date, bool isAddDate) {
    if (date == null) {
      return '';
    } else if (isAddDate) {
      return DateFormat('MM/dd(E)', 'ja').format(date.add(const Duration(days: 1))) + '以降';
    }
    return DateFormat('MM/dd(E)', 'ja').format(date) + '以前';
  }
}

class _IndividualDeliveryPriceInformation extends StatelessWidget {
  const _IndividualDeliveryPriceInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.select((DeliveryDatetimePageState value) => value.individualDeliveryPriceInformation);
    if (model != null &&
        (model.individualDeliveryPriceType == IndividualDeliveryPriceType.fixedAmount ||
            model.individualDeliveryPriceType == IndividualDeliveryPriceType.percentDiscount)) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
        child: Container(
          color: AppColors.background2,
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: Text(
            (model.individualDeliveryPriceType == IndividualDeliveryPriceType.fixedAmount)
                ? '${model.individualDeliveryName}が適用されています。(${(model.individualDeliveryPrice == 0) ? '無料' : '${model.individualDeliveryPrice.toString()}円'})　(有効期間：${formatFromToDateMd(model.deliveryTypeStartDatetime, model.deliveryTypeFinishDatetime)})'
                : '${model.individualDeliveryName}が適用されています。(${model.individualDeliveryDiscountRate}%OFF)　(有効期間：${formatFromToDateMd(model.deliveryTypeStartDatetime, model.deliveryTypeFinishDatetime)})',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.black2,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      );
    }
    return const SizedBox.shrink();
  }
}

class _DeliveryPriceListWidget extends StatelessWidget {
  const _DeliveryPriceListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fulfillmentType = context.select((DeliveryDatetimePageState value) => value.fulfillmentType);
    return Visibility(
      visible: fulfillmentType == DeliverySchedulesFulfillmentType.homeDelivery,
      child: const _HomeDelivery(),
      replacement: const _StoreReceivedSchedules(),
    );
  }
}

class _HomeDelivery extends StatelessWidget {
  const _HomeDelivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deliveryInformation = context.select((DeliveryDatetimePageState value) => value.deliveryInformationModel);

    return LayoutBuilder(builder: (context, constrains) {
      return SingleChildScrollView(
        child: SizedBox.fromSize(
          size: Size.fromHeight(max(30, constrains.minHeight)),
          child: _PriceList(deliveryTimes: deliveryInformation.deliveryTimes),
        ),
      );
    });
  }
}

class _StoreReceivedSchedules extends StatelessWidget {
  const _StoreReceivedSchedules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      final deliveryInformation = context.select((DeliveryDatetimePageState value) => value.deliveryInformationModel);
      final shopReceiptInformation = _getShopReceiptInformation(deliveryInformation);
      final lockerReceiptInformation = _getLockerReceiptInformation(deliveryInformation);
      final cartInfo = context.select((CartInfoState value) => value);
      final selectedShopInfo = context.select((DeliveryDatetimePageState value) => value.selectedShopInfo);

      const shopReceiptPointName = '店舗受け取り';
      const shopReceiptMethodLink = '受取方法はこちら';
      var shopHeight = 0.0;
      if (shopReceiptInformation != null) {
        final shopStickyHeadersTableHeight = 30.0 + shopReceiptInformation.length * 60.0;
        shopHeight = _ClickAndCollectPriceListWidget._headerHeight + shopStickyHeadersTableHeight;
      }

      const lockerReceiptPointName = 'ロッカー/受取BOX便等';
      const lockerReceiptMethodLink = '受取方法と規約はこちら';
      var lockerHeight = 0.0;
      if (lockerReceiptInformation != null) {
        final lockerStickyHeadersTableHeight = 30.0 + lockerReceiptInformation.length * 60.0;
        lockerHeight = _ClickAndCollectPriceListWidget._headerHeight + lockerStickyHeadersTableHeight;
      }

      if (shopReceiptInformation != null) {
        if (lockerReceiptInformation != null) {
          if (shopHeight + lockerHeight > constrains.maxHeight) {
            if (shopHeight > constrains.maxHeight / 2) {
              if (lockerHeight > constrains.maxHeight / 2) {
                shopHeight = lockerHeight = double.infinity;
              } else {
                shopHeight = double.infinity;
              }
            } else {
              lockerHeight = double.infinity;
            }
          }
        } else if (shopHeight > constrains.maxHeight) {
          shopHeight = double.infinity;
        }
      } else if (lockerReceiptInformation != null) {
        if (lockerHeight > constrains.maxHeight) {
          lockerHeight = double.infinity;
        }
      }

      final children = <Widget>[];
      if (shopReceiptInformation != null) {
        children.add(_ClickAndCollectPriceListWidget(
          receiptPointName: shopReceiptPointName,
          receiptMethodLink: shopReceiptMethodLink,
          deliveryTimes: shopReceiptInformation,
          deliveryInformation: deliveryInformation,
          height: shopHeight,
        ));
      }
      if (lockerReceiptInformation != null) {
        children.add(_ClickAndCollectPriceListWidget(
          receiptPointName: lockerReceiptPointName,
          receiptMethodLink: lockerReceiptMethodLink,
          deliveryTimes: lockerReceiptInformation,
          deliveryInformation: deliveryInformation,
          height: lockerHeight,
        ));
      }

      var receiptPointUnregisteredWidgetHeight = 0.0;
      if (cartInfo.receiptPointId.isEmpty && selectedShopInfo?.receiptPointId == null) {
        const receiptPointUnregisteredText = '配送場所が受け取り可能場所に対応しておりません。\n変更するを押して受け取り可能場所を選択できます。';
        const receiptPointUnregisteredTextStyle = TextStyle(
          color: AppColors.gray1,
          fontSize: 14,
          fontWeight: FontWeight.w300,
        );
        const receiptPointUnregisteredPadding = 16.0;

        receiptPointUnregisteredWidgetHeight = constrains.maxHeight;

        children.add(Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(top: receiptPointUnregisteredPadding),
          child: const Text(
            receiptPointUnregisteredText,
            textAlign: TextAlign.center,
            style: receiptPointUnregisteredTextStyle,
          ),
        ));
      }

      var minHeight = 76.0;
      if (shopReceiptInformation != null && lockerReceiptInformation != null) {
        minHeight = 184.0;
      }
      return SingleChildScrollView(
        child: SizedBox(
          height: max(
            minHeight,
            (min(constrains.maxHeight, shopHeight + lockerHeight) + receiptPointUnregisteredWidgetHeight),
          ),
          child: Column(children: children),
        ),
      );
    });
  }

  List<DeliveryTimeModel>? _getShopReceiptInformation(DeliveryInformationModel deliveryInformation) {
    final shopReceiptInformation =
        deliveryInformation.deliveryTimes.where((element) => element.isFulfillmentTypeShop).toList();
    return shopReceiptInformation.isNotEmpty ? shopReceiptInformation : null;
  }

  List<DeliveryTimeModel>? _getLockerReceiptInformation(DeliveryInformationModel deliveryInformation) {
    final lockerReceiptInformation =
        deliveryInformation.deliveryTimes.where((element) => element.isFulfillmentTypeLocker).toList();
    return lockerReceiptInformation.isNotEmpty ? lockerReceiptInformation : null;
  }
}

class _ClickAndCollectPriceListWidget extends StatelessWidget {
  const _ClickAndCollectPriceListWidget({
    required String receiptPointName,
    required String receiptMethodLink,
    required DeliveryInformationModel deliveryInformation,
    required List<DeliveryTimeModel> deliveryTimes,
    required this.height,
  })  : _receiptPointName = receiptPointName,
        _receiptMethodLink = receiptMethodLink,
        _deliveryInformation = deliveryInformation,
        _deliveryTimes = deliveryTimes;

  final String _receiptPointName;
  final String _receiptMethodLink;
  final DeliveryInformationModel _deliveryInformation;
  final List<DeliveryTimeModel> _deliveryTimes;
  final double height;

  static const _receiptPointNameTextSize = 14.0;
  static const _receiptPointNameTextStyle = TextStyle(
    fontSize: _receiptPointNameTextSize,
    fontWeight: FontWeight.w600,
    color: AppColors.black2,
    height: 1.0,
  );
  static const _receiptPointNamePadding = EdgeInsets.only(
    top: 16,
    left: 16,
    bottom: 8,
  );
  static const _receiptMethodLinkTextSize = 12.0;
  static const _receiptMethodLinkPadding = EdgeInsets.only(left: 16, bottom: 12);
  static final _headerHeight = _receiptPointNameTextSize +
      _receiptPointNamePadding.top +
      _receiptPointNamePadding.bottom +
      _receiptMethodLinkTextSize +
      _receiptMethodLinkPadding.top +
      _receiptMethodLinkPadding.bottom;

  @override
  Widget build(BuildContext context) {
    final priceWidget = Expanded(
      child: _PriceList(deliveryTimes: _deliveryTimes),
    );
    if (height < double.infinity) {
      return SizedBox(
        height: height,
        child: _eachClickAndCollectPriceListWidget(
          priceWidget: priceWidget,
          context: context,
        ),
      );
    } else {
      return Expanded(
        child: _eachClickAndCollectPriceListWidget(
          priceWidget: priceWidget,
          context: context,
        ),
      );
    }
  }

  Widget _eachClickAndCollectPriceListWidget({required Widget priceWidget, required BuildContext context}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: _receiptPointNamePadding,
          child: SizedBox(
            height: _receiptPointNameTextSize,
            child: Text(
              _receiptPointName,
              style: _receiptPointNameTextStyle,
            ),
          ),
        ),
        Padding(
          padding: _receiptMethodLinkPadding,
          child: SizedBox(
            height: _receiptMethodLinkTextSize,
            child: BlueTextButton.underline(
              fontSize: _receiptMethodLinkTextSize,
              child: Text(_receiptMethodLink),
              onPressed: () {
                Navigator.push(
                  context,
                  _ReceiptPlace.route(_deliveryInformation),
                );
              },
              height: 1,
            ),
          ),
        ),
        priceWidget,
      ],
    );
  }
}

class _ReceiptPlace extends StatelessWidget {
  const _ReceiptPlace({Key? key}) : super(key: key);

  static Route<Object?> route(DeliveryInformationModel deliveryInformation) => MaterialPageRoute<Object?>(
        builder: (_) => Provider.value(
          value: deliveryInformation,
          child: const _ReceiptPlace(),
        ),
        settings: const RouteSettings(name: name),
      );

  static const name = '/shop_selection/web_view';

  @override
  Widget build(BuildContext context) {
    final url = context.select((DeliveryInformationModel value) =>
        value.hasShopReceipt ? value.shopReceiptPlaceUrl : value.lockerReceiptPlaceUrl);
    return Scaffold(
      body: WebViewBasePage(
        title: '受取方法',
        authenticationRequired: false,
        showAppBar: true,
        initialUrl: '$iynsBaseUrl$url',
        // 「閉じる」ボタンを非表示にする
        onPageFinished: (controller, _, __, ___) => controller.evaluateJavascript(
            '''document.querySelectorAll('a[href="#"]').forEach((element) => {element.remove();});'''),
      ),
    );
  }
}

class _PriceList extends StatefulWidget {
  const _PriceList({required List<DeliveryTimeModel> deliveryTimes}) : _deliveryTimes = deliveryTimes;

  final List<DeliveryTimeModel> _deliveryTimes;

  @override
  State<_PriceList> createState() => _PriceListState();
}

class _PriceListState extends State<_PriceList> {
  late final ScrollController _scrollController;
  late final ScrollControllers _scrollControllers;

  double _delta = 0; // 前回のスクロール位置と現在のスクロール位置の差分
  double _previousOffset = 0; // 前回のスクロール位置
  bool _canScroll = false; // 全体スクロールへ通知を許可するかどうか

  @override
  void initState() {
    super.initState();
    // StickyHeaderTableのbody内でのスクロールは、全体スクロールとは異なるControllerで動いており、全体スクロールに寄与しない
    // 故にStickyHeaderTableのControllerでのスクロールを全体スクロールのControllerに通知して全体スクロールを動かしてあげる必要がある
    _scrollController = ScrollController()..addListener(() => _scrollListenController());
    _scrollControllers = ScrollControllers(verticalBodyController: _scrollController);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListenController() {
    // StickyHeaderTableのスクロールが最上部に来た時、全体スクロールへの通知を開始する
    if (_scrollController.offset == 0 && !_canScroll) {
      _canScroll = true;
    }
    // 最上部でワンクッション置いて、StivkyHeaderTable側のスクロールを全体スクロール側に反映する
    else if (_scrollController.offset.isNegative && _canScroll) {
      _delta = (_previousOffset - _scrollController.offset).abs();
      context.read<ScrollController>().jumpTo(context.read<ScrollController>().offset - _delta);
      _previousOffset = _scrollController.offset;
    } else {
      _canScroll = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final cartInfo = context.select((CartInfoState value) => value);
    final fulfillmentType = context.select((DeliveryDatetimePageState value) => value.fulfillmentType);
    final shoppingStartCheckResultModel =
        context.select((DeliveryDatetimePageState value) => value.shoppingStartCheckResultModel);
    return ValueListenableBuilder<int>(
      valueListenable: context.read<DeliveryDatetimeViewModel>().notchTapNotifier,
      builder: (_, value, __) {
        context.read<DeliveryDatetimeViewModel>().handleStatusBarTap(
              tapIncrement: value,
              parentScrollController: context.read<ScrollController>(),
              childScrollController: _scrollController,
            );
        return StickyHeadersTable(
          scrollControllers: _scrollControllers,
          rowsLength: widget._deliveryTimes.length,
          columnsLength: widget._deliveryTimes.firstOrNull?.deliveryDates.length ?? 0,
          rowsTitleBuilder: (int i) => _RowsTitleWidget(
            rowCount: i,
            deliveryTimes: widget._deliveryTimes,
          ),
          columnsTitleBuilder: (int i) => _ColumnsTitleWidget(
            columnCount: i,
            deliveryDates: widget._deliveryTimes.firstOrNull?.deliveryDates ?? const [],
          ),
          contentCellBuilder: (int columnIndex, int rowIndex) => _PriceListCell(
            columnIndex: columnIndex,
            rowIndex: rowIndex,
            cartInfo: cartInfo,
            deliveryTimeModels: widget._deliveryTimes,
            fulfillmentType: fulfillmentType,
            shoppingStartCheckResultModel: shoppingStartCheckResultModel,
          ),
          cellDimensions: const CellDimensions.fixed(
            contentCellWidth: 70,
            contentCellHeight: 60,
            stickyLegendWidth: 112,
            stickyLegendHeight: 30,
          ),
        );
      },
    );
  }
}

class _PriceListCell extends StatelessWidget {
  const _PriceListCell({
    required this.rowIndex,
    required this.columnIndex,
    required this.cartInfo,
    required this.deliveryTimeModels,
    required this.fulfillmentType,
    required this.shoppingStartCheckResultModel,
  });

  final int columnIndex;
  final int rowIndex;
  final CartModel cartInfo;
  final List<DeliveryTimeModel> deliveryTimeModels;
  final DeliverySchedulesFulfillmentType? fulfillmentType;
  final ShoppingStartCheckResultModel shoppingStartCheckResultModel;

  @override
  Widget build(BuildContext context) {
    final livingStatus = context.read<DeliveryDatetimePageState>().livingStatus;
    final deliveryTime = deliveryTimeModels[rowIndex];
    final deliveryDates = deliveryTimeModels[rowIndex].deliveryDates[columnIndex];
    final deliveryScheduleStatus = deliveryDates.deliveryScheduleStatus;
    final orderId = deliveryTimeModels[rowIndex].deliveryDates[columnIndex].orderHistory?.orderId;
    final isEnableNoContact = deliveryTime.isEnableNoContact;
    final onTapPriceCell = _OnTapPriceCell(
      fulfillmentType: fulfillmentType,
      cartInfo: cartInfo,
      originContext: context,
      deliveryTime: deliveryTime,
      deliveryDates: deliveryDates,
      orderId: int.tryParse(orderId ?? ''),
      isFulfillmentTypePackageDrop: deliveryTime.isFulfillmentTypePackageDrop,
      livingStatus: livingStatus ?? LivingStatusType.unconfirmed,
      isEnableNoContact: isEnableNoContact,
    );

    // 選択中の便: 未受注
    if (cartInfo.orderStatus == CartOrderStatusType.notOrdered &&
        cartInfo.deliveryTimeId == deliveryDates.deliveryTimeId &&
        formatISO8601Ymd(cartInfo.deliveryPlanFromDatetime) == deliveryDates.deliveryDate &&
        cartInfo.isCartAllocationValid &&
        !cartInfo.deemedDeliveryCartFlag) {
      return _HomeDeliveryPriceListWidget.openSelectedCircle(
        onTap: (onTapPriceCell..isSelectedDeliveryPlan = true).onTap,
      );
    }

    // 選択中の便: 注文変更中
    if (cartInfo.orderStatus == CartOrderStatusType.nowChanging &&
        cartInfo.deliveryTimeId == deliveryDates.deliveryTimeId &&
        formatISO8601Ymd(cartInfo.deliveryPlanFromDatetime) == deliveryDates.deliveryDate &&
        cartInfo.isCartAllocationValid) {
      return _HomeDeliveryPriceListWidget.openSelectedDoubleCircle(
        onTap: (onTapPriceCell..isSelectedDeliveryPlan = true).onTap,
      );
    }

    switch (deliveryScheduleStatus) {
      case DeliveryScheduleStatus.openNormal:
        return _openPriceCell(deliveryDates, deliveryTime, context, onTapPriceCell);
      case DeliveryScheduleStatus.openWarn:
        return _HomeDeliveryPriceListWidget.openWarn(
          text: formatToYen(deliveryDates.fulfillmentDeliveryPrice),
          columnIndex: columnIndex,
          isMinDeliveryPriceHighlight: deliveryDates.isMinDeliveryPriceHighlight,
          onTap: onTapPriceCell.onTap,
        );
      case DeliveryScheduleStatus.onOrderNormal:
        if (cartInfo.orderStatus == CartOrderStatusType.nowChanging) {
          // 注文変更中の場合
          return _HomeDeliveryPriceListWidget.closedSelected(
            onTap: (onTapPriceCell..title = '他のご注文を承り中のため選択できません').showUnselectedModal,
          );
        }
        // 未受注の場合
        return _HomeDeliveryPriceListWidget.onOrder(
          columnIndex: columnIndex,
          onTap: (onTapPriceCell..isOnOrderFlg = true).onTap,
        );
      case DeliveryScheduleStatus.onOrderReserve:
      case DeliveryScheduleStatus.onOrderReserveAndAdditional:
      case DeliveryScheduleStatus.onOrderRegularShipment:
        // 予約便・定期便は対象外
        return _HomeDeliveryPriceListWidget.unchangeable();
      case DeliveryScheduleStatus.closedOrder:
        return _HomeDeliveryPriceListWidget.closedOrder(
          onTap: (onTapPriceCell..title = '承り終了致しました').showUnselectedModal,
        );
      case DeliveryScheduleStatus.unchangeable:
        return _HomeDeliveryPriceListWidget.unchangeable();
      case DeliveryScheduleStatus.closedAccept:
        return _HomeDeliveryPriceListWidget.closedAccept();
    }
  }

  Widget _openPriceCell(DeliveryDateModel deliveryDates, DeliveryTimeModel deliveryTime, BuildContext context,
      _OnTapPriceCell onTapPriceCell) {
    // 残受注警告なし
    if (!deliveryDates.isWarnRemainingOrder) {
      return _HomeDeliveryPriceListWidget.openNormal(
        text: formatToYen(deliveryDates.fulfillmentDeliveryPrice),
        columnIndex: columnIndex,
        isMinDeliveryPriceHighlight: deliveryDates.isMinDeliveryPriceHighlight,
        onTap: onTapPriceCell.onTap,
      );
    }
    // 残受注警告あり
    else {
      return _HomeDeliveryPriceListWidget.openWarn(
        text: formatToYen(deliveryDates.fulfillmentDeliveryPrice),
        columnIndex: columnIndex,
        isMinDeliveryPriceHighlight: deliveryDates.isMinDeliveryPriceHighlight,
        onTap: onTapPriceCell.onTap,
      );
    }
  }
}

class _OnTapPriceCell {
  _OnTapPriceCell({
    required this.originContext,
    required this.fulfillmentType,
    required this.deliveryDates,
    required this.deliveryTime,
    required this.orderId,
    required this.cartInfo,
    required this.livingStatus,
    required this.isFulfillmentTypePackageDrop,
    required this.isEnableNoContact,
  });

  final BuildContext originContext;
  final DeliverySchedulesFulfillmentType? fulfillmentType;
  final DeliveryDateModel deliveryDates;
  final DeliveryTimeModel deliveryTime;
  final int? orderId;
  final CartModel cartInfo;
  final LivingStatusType livingStatus;
  final bool isFulfillmentTypePackageDrop;
  final bool isEnableNoContact;

  late String title;
  bool isOnOrderFlg = false;
  bool isLimitedDeliveryProduct = false;
  bool isCanNotBuyProduct = false;
  bool isSelectedDeliveryPlan = false;
  late List? limitedDeliveryProductList;
  late List? canNotBuyProductList;
  bool? isNoContactForLimitedProduct;

  // 非接触フラグの設定（限定商品あり時の非接触フラグ設定）
  bool setNoContactFlag(bool? isNoContactForLimitedProduct) {
    if (isNoContactForLimitedProduct != null) {
      return isNoContactForLimitedProduct;
    } else {
      return originContext.read<CartInfoState>().isNoContact;
    }
  }

  Future<void> onTap() async {
    if (isFulfillmentTypePackageDrop && livingStatus != LivingStatusType.confirmed) {
      DeliveryDatetimeViewModel viewModel = originContext.read<DeliveryDatetimeViewModel>();
      await showLoadingModal(
        context: originContext,
        future: () async {
          AutoLockMansionModel? mansionInfo =
              await originContext.read<DeliveryDatetimeViewModel>().getAutolockMansionInfo();
          WidgetsBinding.instance.addPostFrameCallback((_) async {
            await viewModel.showPackageDropPage(mansionInfo);
          });
          return true;
        },
      );

      return;
    }

    bool isNoContact = setNoContactFlag(isNoContactForLimitedProduct);

    String titleTxt = '';
    if (isOnOrderFlg) {
      titleTxt = '注文を変更しますか？';
    } else if (fulfillmentType == DeliverySchedulesFulfillmentType.homeDelivery &&
        !deliveryTime.isFulfillmentTypePackageDrop) {
      titleTxt = 'ご自宅で受け取り';
    } else if (fulfillmentType == DeliverySchedulesFulfillmentType.homeDelivery &&
        deliveryTime.isFulfillmentTypePackageDrop) {
      titleTxt = '置き配で受け取り';
    } else if (fulfillmentType == DeliverySchedulesFulfillmentType.clickAndCollect) {
      titleTxt = '店舗・ロッカー・セブン等で受け取り';
    }

    if (isOnOrderFlg) {
      await showNormalSelectionDialog<void>(
        context: originContext,
        dialogName: ScreenName.deliveryDateTimeChangeModal.value,
        title: '注文内容を確認しますか？',
        content: const Text(
          'この先で受け取り日時や商品の変更も可能です。',
          style: TextStyle(
            fontSize: 14.0,
            color: AppColors.black2,
          ),
        ),
        applicationText: '確認する',
        applicationTextFontSize: 18,
        onApplied: (context) => () async {
          Navigator.pop(context);
          Navigator.push(
            originContext,
            OrderDetailPage.route(orderId!),
          );
        },
        cancellationText: 'キャンセル',
        onCanceled: (context) => () => Navigator.pop(context),
      );
      return;
    }

    await showNormalSelectionDialog<bool>(
      context: originContext,
      dialogName: ScreenName.deliveryDateTimeChangeModal.value,
      title: '$titleTxt\n${customFormatFromToDateTimeMd(deliveryDates.deliveryDate, deliveryTime)}',
      additionalText: '※選択した日時は1時間確保されます',
      dividerEnable: true,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                width: 112,
                child: Text(
                  '受け取り日時変更',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: AppColors.black2,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Text(
                  '${formatDateTimeJaMd(deliveryDates.orderDeliveryPlanChangeClosingDatetime)}まで',
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: AppColors.black2,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  width: 112,
                  child: Text(
                    '注文内容変更',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: AppColors.black2,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: Text(
                    '${formatDateTimeJaMd(deliveryDates.changeOrderClosingDatetime)}まで',
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: AppColors.black2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                width: 112,
                child: Text(
                  'キャンセル',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: AppColors.black2,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Text(
                  '${formatDateTimeJaMd(deliveryDates.cancelOrderClosingDatetime)}まで',
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: AppColors.black2,
                  ),
                ),
              ),
            ],
          ),
          if (isLimitedDeliveryProduct || isCanNotBuyProduct)
            Column(
              children: [
                const SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(top: 24, bottom: 12),
                    child: Text(
                      '受け取り日時により以下の商品が削除されます',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black2,
                      ),
                    ),
                  ),
                ),
                if (isCanNotBuyProduct)
                  Container(
                    color: AppColors.background2,
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '現在取り扱いがない商品',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black2,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            canNotBuyProductList!.join('、 '),
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontSize: 14.0,
                              height: 19 / 14,
                              color: AppColors.black2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (isLimitedDeliveryProduct)
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      color: AppColors.background2,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '選択した受け取り日時では購入できない商品',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 14.0,
                              height: 19 / 14,
                              fontWeight: FontWeight.w600,
                              color: AppColors.black2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              limitedDeliveryProductList!.join('、 '),
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                fontSize: 14.0,
                                height: 1,
                                color: AppColors.black2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          Visibility(
            visible: cartInfo.orderStatus == CartOrderStatusType.notOrdered && isEnableNoContact,
            child: Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: _NoContactCheckBox(
                inititalNoContactFlag: isNoContact,
                onChanged: (bool value) => isNoContact = value,
              ),
            ),
          ),
        ],
      ),
      applicationText: 'この受け取り日時に設定する',
      applicationTextFontSize: 16,
      onApplied: (context) => () async {
        Navigator.pop(context);
        _setDeliveryDateAndTime(
          context: originContext,
          deleteLimitedProductFlag: isLimitedDeliveryProduct || isCanNotBuyProduct,
          deleteLimitedDeliveryProductFlag: isLimitedDeliveryProduct,
          orderId: orderId,
          isNoContact: isNoContact,
          isEnableNoContact: isEnableNoContact,
        );
      },
      cancellationText: '閉じる',
      onCanceled: (context) => () => Navigator.pop(context),
    );
  }

  Future<Tuple2<ShoppingStartCheckResultModel?, bool>> _newOrder({
    required bool deleteLimitedProductFlag,
    required bool isNoContact,
    required bool isEnableNoContact,
    required bool deletePrecartFlag,
  }) {
    return originContext.read<DeliveryDatetimeViewModel>().newOrder(
          shopCode: deliveryDates.shopCode,
          deliveryTimeId: deliveryDates.deliveryTimeId,
          deleteLimitedProductFlag: deleteLimitedProductFlag,
          deliveryDate: deliveryDates.deliveryDate,
          isNoContact: isNoContact,
          isEnableNoContact: isEnableNoContact,
          deletePrecartFlag: deletePrecartFlag,
        );
  }

  Future<void> _setDeliveryDateAndTime({
    required BuildContext context,
    required bool deleteLimitedProductFlag,
    required bool deleteLimitedDeliveryProductFlag,
    required int? orderId,
    required bool isNoContact,
    required bool isEnableNoContact,
  }) async {
    final livingStatus = context.read<DeliveryDatetimePageState>().livingStatus;
    final onTapPriceCell = _OnTapPriceCell(
      fulfillmentType: fulfillmentType,
      cartInfo: cartInfo,
      originContext: context,
      deliveryTime: deliveryTime,
      deliveryDates: deliveryDates,
      orderId: orderId,
      isFulfillmentTypePackageDrop: deliveryTime.isFulfillmentTypePackageDrop,
      livingStatus: livingStatus ?? LivingStatusType.unconfirmed,
      isEnableNoContact: isEnableNoContact,
    );

    Tuple2<ShoppingStartCheckResultModel?, bool>? newOrderResult;
    ChangedCartModel? changeCartInfo;

    // 新規便確保の場合
    if (cartInfo.deemedDeliveryCartFlag || cartInfo.shop.shopCode != deliveryDates.shopCode) {
      await showLoadingModal(
        future: () async {
          newOrderResult = await _newOrder(
            deleteLimitedProductFlag: deleteLimitedProductFlag,
            isNoContact: isNoContact,
            isEnableNoContact: isEnableNoContact,
            deletePrecartFlag: false,
          );
          return true;
        },
        errorOperators: [ErrorOperatorWrapper(_handler)],
        context: context,
        indicator: const _LoadingModalWidget(),
      );
      if (!newOrderResult!.item2) {
        final buttingConfirmResult = await showNormalBlueSelectionDialog<bool?>(
          context: context,
          dialogName: 'ButtingModal',
          title: 'この操作を続けますか？',
          attentionText: '操作を実行するとお買い物途中のカートがあった場合は削除されます',
          applicationText: '続ける',
          onApplied: (context) => () async {
            await showLoadingModal(
              future: () async {
                // このカート作成は前のカート削除してカート作成でバッティングの業務エラーはレスポンスされることはないので
                // newOrderResultのitem2のバッティングしたかのフラグは見ない
                newOrderResult = await _newOrder(
                  deleteLimitedProductFlag: deleteLimitedProductFlag,
                  isNoContact: isNoContact,
                  isEnableNoContact: isEnableNoContact,
                  deletePrecartFlag: true,
                );
                return true;
              },
              errorOperators: [ErrorOperatorWrapper(_handler)],
              context: context,
              indicator: const _LoadingModalWidget(),
            );
            Navigator.pop(context, true);
          },
          cancellationText: 'キャンセル',
          onCanceled: (context) => () {
            Navigator.pop(context, false);
          },
        );
        if (buttingConfirmResult == false) {
          return;
        }
      }

      final shoppingStartCheckResult = newOrderResult!.item1;
      // 上限受注数の上限に達した場合
      if (shoppingStartCheckResult == null) {
        await showLoadingModal(
          context: context,
          future: () => originContext.read<DeliveryDatetimeViewModel>().load(),
        );
        return;
      }
      // 便選択で制限商品があった場合
      else if (shoppingStartCheckResult.isLimitedDeliveryProduct) {
        (onTapPriceCell
              ..isLimitedDeliveryProduct = shoppingStartCheckResult.isLimitedDeliveryProduct
              ..limitedDeliveryProductList = shoppingStartCheckResult.limitedDeliveryProductNames
              ..isNoContactForLimitedProduct = isNoContact)
            .onTap();
      }
      // 成功時
      else {
        _isSuccess();
      }
    }

    // 新規便確保以外の場合
    else {
      // 注文変更中で選択中の便の場合
      if (context.read<CartInfoManager>().info.orderStatus == CartOrderStatusType.nowChanging &&
          isSelectedDeliveryPlan) {
        _isSuccess();
        return;
      }

      await showLoadingModal(
        future: () async {
          changeCartInfo = await originContext.read<DeliveryDatetimeViewModel>().changeCartInfo(
                deliveryTime: deliveryDates.deliveryTimeId,
                deliveryDate: deliveryDates.deliveryDate,
                deleteLimitedDeliveryProductFlag: deleteLimitedDeliveryProductFlag,
                isNoContact: isNoContact,
                isEnableNoContact: isEnableNoContact,
              );
          return true;
        },
        errorOperators: [ErrorOperatorWrapper(_handler)],
        context: context,
        indicator: const _LoadingModalWidget(),
      );

      // 上限受注数の上限に達した/変更締め時間経過の場合
      if (changeCartInfo == null) {
        await showLoadingModal(
          context: context,
          future: () => originContext.read<DeliveryDatetimeViewModel>().load(),
        );
        return;
      }
      // カート情報変更で制限商品があった場合
      else if ((changeCartInfo != null &&
          (changeCartInfo!.isLimitedDeliveryProduct || changeCartInfo!.isCanNotBuyProduct))) {
        (onTapPriceCell
              ..isCanNotBuyProduct = changeCartInfo!.isCanNotBuyProduct
              ..canNotBuyProductList = changeCartInfo!.canNotBuyProductNames
              ..isLimitedDeliveryProduct = changeCartInfo!.isLimitedDeliveryProduct
              ..limitedDeliveryProductList = changeCartInfo!.limitedDeliveryProductNames
              ..isNoContactForLimitedProduct = isNoContact)
            .onTap();
      }
      // 成功時
      else {
        _isSuccess();
      }
    }
  }

  Future<void> _isSuccess() async {
    // 受け取り日時を確保しましたのトーストを表示
    await showAppToast(context: originContext, message: '受け取り日時を確保しました', toastName: 'EnsuredScheduleModal');
    if (Navigator.of(originContext).canPop()) {
      Navigator.pop(originContext, true);
    } else {
      // 便選択画面がタブ内表示の場合、店舗トップ画面に遷移する
      RootPage.flush();
    }
  }

  Future<void> showUnselectedModal() async {
    await showConfirmationDialog<bool>(
      title: title,
      context: originContext,
      dialogName: title == '承り終了致しました'
          ? ScreenName.deliveryDateTimeEndOfAcceptanceModal.value
          : ScreenName.deliveryDateTimeCannotBeSelectedModal.value,
      applicationText: 'OK',
      onApplied: (context) => () {
        Navigator.pop(context);
      },
    );
  }
}

class _LoadingModalWidget extends StatelessWidget {
  const _LoadingModalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      alignment: Alignment.center,
      insetPadding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      children: [
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 16, right: 8),
              child: CupertinoActivityIndicator(),
            ),
            Text(
              '受け取り日時を確保しています',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.black2,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _NoContactCheckBox extends StatefulWidget {
  const _NoContactCheckBox({required this.inititalNoContactFlag, required this.onChanged, Key? key}) : super(key: key);

  final bool inititalNoContactFlag;
  final ValueChanged<bool> onChanged;

  @override
  State<_NoContactCheckBox> createState() => _NoContactCheckBoxState();
}

class _NoContactCheckBoxState extends State<_NoContactCheckBox> {
  late bool isNoContact;

  @override
  void initState() {
    isNoContact = widget.inititalNoContactFlag;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppCheckbox(
      value: isNoContact,
      onChanged: (value) {
        setState(() => isNoContact = value);
        widget.onChanged(value);
      },
      child: const Text(
        '非接触お届けサービスを利用する',
        style: TextStyle(
          color: AppColors.black2,
          fontSize: 12.0,
          fontWeight: FontWeight.w300,
          height: 16 / 12,
        ),
      ),
    );
  }
}

class _HomeDeliveryPriceListWidget extends StatelessWidget {
  _HomeDeliveryPriceListWidget.openSelectedCircle({
    Function()? onTap,
  }) : this._initSelected(
          icon: Assets.icons.circleWhite.svg(),
          onTap: onTap,
        );

  _HomeDeliveryPriceListWidget.openSelectedDoubleCircle({
    Function()? onTap,
  }) : this._initSelected(
          icon: Assets.icons.doubleCircleWhite.svg(),
          onTap: onTap,
        );

  _HomeDeliveryPriceListWidget.onOrder({
    Function()? onTap,
    required int columnIndex,
  }) : this._initBackGroundWhite(
          icon: Assets.icons.doubleCircleBlue.svg(),
          text: 'ご注文中',
          fontColor: AppColors.main,
          backgroundColor: columnIndex % 2 == 0 ? AppColors.background2 : AppColors.white,
          onTap: onTap,
        );

  _HomeDeliveryPriceListWidget.openNormal({
    required String text,
    Function()? onTap,
    required int columnIndex,
    required bool isMinDeliveryPriceHighlight,
  }) : this._initBackGroundWhite(
          icon: Assets.icons.circleBlue.svg(),
          text: text,
          fontColor: isMinDeliveryPriceHighlight ? AppColors.emphasis1 : AppColors.gray1,
          backgroundColor: columnIndex % 2 == 0 ? AppColors.background2 : AppColors.white,
          onTap: () {
            //アナリティクスイベントの送信
            _sendEventBySelectDatePlan(isMinDeliveryPriceHighlight);

            if (onTap != null) {
              onTap();
            }
          },
        );

  _HomeDeliveryPriceListWidget.openWarn({
    required String text,
    Function()? onTap,
    required int columnIndex,
    required bool isMinDeliveryPriceHighlight,
  }) : this._initBackGroundWhite(
          icon: Assets.icons.triangleBlue.svg(),
          text: text,
          fontColor: isMinDeliveryPriceHighlight ? AppColors.emphasis1 : AppColors.gray1,
          backgroundColor: columnIndex % 2 == 0 ? AppColors.background2 : AppColors.white,
          onTap: () {
            //アナリティクスイベントの送信
            _sendEventBySelectDatePlan(isMinDeliveryPriceHighlight);

            if (onTap != null) {
              onTap();
            }
          },
        );

  _HomeDeliveryPriceListWidget.closedAccept({
    Function()? onTap,
  }) : this._initBackGroundGray(
          icon: Assets.icons.clear.svg(),
          text: '受付終了',
          onTap: onTap,
        );

  _HomeDeliveryPriceListWidget.unchangeable({
    Function()? onTap,
  }) : this._initBackGroundGray(
          icon: Assets.icons.clear.svg(),
          text: '変更不可',
          onTap: onTap,
        );

  _HomeDeliveryPriceListWidget.closedSelected({
    Function()? onTap,
  }) : this._initBackGroundDarkGray(
          icon: Assets.icons.doubleCircleWhite.svg(),
          text: 'ご注文中',
          onTap: onTap,
        );

  _HomeDeliveryPriceListWidget.closedOrder({
    Function()? onTap,
  }) : this._initBackGroundDarkGray(
          icon: Assets.icons.doubleCircleWhite.svg(),
          text: '注文確定',
          onTap: onTap,
        );

  const _HomeDeliveryPriceListWidget._initSelected({
    required this.icon,
    this.text = '選択中',
    this.fontColor = AppColors.white,
    this.backgroundColor = AppColors.main,
    this.onTap,
    this.isMinDeliveryPriceHighlight = false,
  });

  const _HomeDeliveryPriceListWidget._initBackGroundWhite({
    required this.icon,
    required this.text,
    required this.fontColor,
    required this.backgroundColor,
    this.onTap,
    this.isMinDeliveryPriceHighlight = false,
  });

  const _HomeDeliveryPriceListWidget._initBackGroundGray({
    required this.icon,
    required this.text,
    this.fontColor = AppColors.gray1,
    this.backgroundColor = AppColors.background2,
    this.onTap,
    this.isMinDeliveryPriceHighlight = false,
  });

  const _HomeDeliveryPriceListWidget._initBackGroundDarkGray({
    required this.icon,
    required this.text,
    this.fontColor = AppColors.white,
    this.backgroundColor = AppColors.inactive,
    this.onTap,
    this.isMinDeliveryPriceHighlight = false,
  });

  final SvgPicture icon;
  final String text;
  final Color fontColor;
  final Color backgroundColor;
  final Function()? onTap;
  final bool isMinDeliveryPriceHighlight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 70,
        height: 60,
        color: backgroundColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            Text(
              text,
              style: TextStyle(
                color: fontColor,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _sendEventBySelectDatePlan(bool isMinDeliveryPriceHighlight) {
  final analytics = GetIt.I<AnalyticsManager>();
  if (isMinDeliveryPriceHighlight) {
    analytics.sendEvent(eventType: AnalyticsEventType.selectDatePlanHighlight);
  } else {
    analytics.sendEvent(eventType: AnalyticsEventType.selectDatePlan);
  }
}

class _ColumnsTitleWidget extends StatelessWidget {
  const _ColumnsTitleWidget({
    required int columnCount,
    required List<DeliveryDateModel> deliveryDates,
  })  : _columnCount = columnCount,
        _deliveryDates = deliveryDates;

  final int _columnCount;
  final List<DeliveryDateModel> _deliveryDates;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 70,
      height: 30,
      color: _columnCount % 2 == 0 ? AppColors.background2 : AppColors.white,
      child: Text(
        formatMonthDay(_deliveryDates[_columnCount].deliveryDate),
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _RowsTitleWidget extends StatelessWidget {
  const _RowsTitleWidget({
    required int rowCount,
    required List<DeliveryTimeModel> deliveryTimes,
  })  : _rowCount = rowCount,
        _deliveryTimes = deliveryTimes;

  final int _rowCount;
  final List<DeliveryTimeModel> _deliveryTimes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: _deliveryTimes[_rowCount].isFulfillmentTypePackageDrop ||
              _deliveryTimes[_rowCount].receiptLocationAdditionalText == 'ドライブスルー',
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            margin: const EdgeInsets.symmetric(vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.gray2,
            ),
            child: Text(
              (_deliveryTimes[_rowCount].isFulfillmentTypePackageDrop) ? '置き配' : 'ドライブスルー',
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
          ),
          replacement: Container(
            padding: const EdgeInsets.symmetric(vertical: 4),
            height: 18,
          ),
        ),
        Text(
          _getDeliveryTime(_deliveryTimes[_rowCount]),
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  String _getDeliveryTime(DeliveryTimeModel deliveryTime) {
    final startHour = deliveryTime.deliveryStartHour;
    final startMinute = deliveryTime.deliveryStartMinute;
    final finishHour = deliveryTime.deliveryFinishHour;
    final finishMinute = deliveryTime.deliveryFinishMinute;
    return '$startHour:$startMinute〜$finishHour:$finishMinute';
  }
}

class _Footer extends StatelessWidget {
  const _Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      color: Colors.white,
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4),
              child: Assets.icons.circleBlue.svg(),
            ),
            const Text(
              '受付中 /',
              style: TextStyle(
                fontSize: 12,
                color: AppColors.gray1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 4),
              child: Assets.icons.triangleBlue.svg(),
            ),
            const Text(
              '残りわずか /',
              style: TextStyle(
                fontSize: 12,
                color: AppColors.gray1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 4),
              child: Assets.icons.crossGray.svg(),
            ),
            const Text(
              '選択不可',
              style: TextStyle(
                fontSize: 12,
                color: AppColors.gray1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// _MaterialPageRouteを継承したRoute
// skipAnimation == True時ページ遷移のアニメーションをスキップする
class _MaterialPageRoute<T> extends MaterialPageRoute<T> {
  _MaterialPageRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
    this.skipAnimation = false,
  }) : super(
          builder: builder,
          settings: settings,
          fullscreenDialog: fullscreenDialog,
          maintainState: maintainState,
        ) {
    assert(opaque);
  }

  final bool skipAnimation;

  @override
  Duration get transitionDuration {
    return skipAnimation ? const Duration(milliseconds: 0) : const Duration(milliseconds: 300);
  }
}

// 共通エラーハンドラ
Future<ErrorHandlerState> _handler(DioError error, BuildContext context, ErrorHandler handler) async {
  final httpStatus = error.response!.statusCode;
  if (httpStatus != 400) {
    return handler.next(error);
  }

  // ignore: prefer_void_to_null
  final errorResponse = ResponseModel<Null>.fromJson(error.response!.data);
  final statusCode = errorResponse.statusCode;
  if (statusCode != 'E-00007') {
    return handler.next(error);
  }

  final errorReasonCode = errorResponse.errorDetails.first.errorReasonCode;
  String? title;
  String? message;
  switch (errorReasonCode) {
    case '2100023':
    case '2000019':
      title = '選択された受け取り時間の注文が上限件数に達しました';
      message = '別の時間帯を選択してください';
      break;
    case '2000042':
    case '2000043':
    case '2000099':
      title = '変更不可';
      message = '変更締め時間を過ぎています';
      break;
    default:
      return handler.next(error);
  }
  return handler.resolve(HandledError(
    title: title,
    message: message,
  ));
}
