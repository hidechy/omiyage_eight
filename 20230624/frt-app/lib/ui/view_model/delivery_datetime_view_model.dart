import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:tuple/tuple.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/api/model/autolock_mansion_model.dart';
import '../../data/api/model/changed_cart_model.dart';
import '../../data/api/model/delivery_information_model.dart';
import '../../data/api/model/delivery_time_model.dart';
import '../../data/api/model/response_model.dart';
import '../../data/api/model/select_delivery_plan_model.dart';
import '../../data/api/model/shopping_start_check_result_model.dart';
import '../../data/repository/carts_repository.dart';
import '../../data/repository/customers_repository.dart';
import '../../data/repository/delivery_repository.dart';
import '../../data/repository/orders_repository.dart';
import '../../enum/delivery_schedules_fulfillment_type.dart';
import '../../enum/negotiation_status_type.dart';
import '../../util/access_point_info_manager.dart';
import '../../util/cart_info_manager.dart';
import '../../util/customer_manager.dart';
import '../common/app_dialogs.dart';
import '../state/delivery_datetime_page_state.dart';

class DeliveryDatetimeViewModel extends StateNotifier<DeliveryDatetimePageState> with LocatorMixin {
  DeliveryDatetimeViewModel() : super(DeliveryDatetimePageState());

  late final ValueNotifier<int> _notchTapNotifier;

  ValueNotifier<int> get notchTapNotifier => _notchTapNotifier;

  CustomerManager get _customerManager => read();

  CartInfoManager get _cartInfoManager => read();

  set selectedShopInfo(SelectedShopInfo? value) {
    state = state.copyWith(selectedShopInfo: value);
  }

  @override
  void initState() {
    super.initState();
    _notchTapNotifier = ValueNotifier<int>(0);
  }

  @override
  void dispose() {
    _notchTapNotifier.dispose();
    super.dispose();
  }

  Future<bool> load() async {
    // 会員情報取得とカート取得を実行する
    await _customerManager.getInfo();
    final cartInfo = _cartInfoManager.info;

    // 移行確認
    _checkMigration();

    if (cartInfo.isOrderChangingCart) {
      // 注文変更中の場合
      await getChangableSchedules(null);
    } else if (cartInfo.isShopOrLockerReceiptCart) {
      // 店舗ロッカー受け取りの新規注文中
      await getStoreReceivedSchedules();
    } else {
      // 条件をいずれも満たさない場合、自宅受け取りで便情報取得APIを実行する
      await getHomeDeliveryDeliverySchedule();
    }
    return true;
  }

  Future<bool> reloadOnReturnFromTheShopSelectionPage() async {
    // 会員情報を取得する
    await _customerManager.getInfo(shouldGetCart: false);
    // 店舗・ロッカー受取りの便情報を取得する
    await getStoreReceivedSchedules();
    return true;
  }

  Future<bool> getHomeDeliveryDeliverySchedule() async {
    // 移行確認
    final currentShopCode = state.isAfterMigration
        ? _customerManager.info.member!.migrationToCenter.first.shopCode
        : _customerManager.info.member!.deliveryShop.first.shopCode;

    // 自宅配送の便一覧の場合は会員情報のshopCodeを使用
    final result = await _deliverySchedules(
      fulfillmentType: DeliverySchedulesFulfillmentType.homeDelivery,
      shopCode: currentShopCode,
    );

    // 本来はバックからソートされて返却されるが、フロント側でソートすることになった
    if (result.deliveryInformations.isNotEmpty) {
      final deliveryTimes = [...result.deliveryInformations.first.deliveryTimes];
      _sortDeliveryTimesForPackageDrop(deliveryTimes);
      state = state.copyWith(
        fulfillmentType: DeliverySchedulesFulfillmentType.homeDelivery,
        isAddressDifference: _customerManager.info.member!.isAddressDifference,
        individualDeliveryPriceInformation: result.individualDeliveryPriceInformation,
        livingStatus: result.livingStatus,
        deliveryInformationModel: result.deliveryInformations.first.copyWith(deliveryTimes: deliveryTimes),
        initReceiptPointLatitude: result.initReceiptPointLatitude,
        initReceiptPointLongitude: result.initReceiptPointLongitude,
      );
      return true;
    }

    state = state.copyWith(
      fulfillmentType: DeliverySchedulesFulfillmentType.homeDelivery,
      isAddressDifference: _customerManager.info.member!.isAddressDifference,
      individualDeliveryPriceInformation: result.individualDeliveryPriceInformation,
      livingStatus: result.livingStatus,
      deliveryInformationModel: const DeliveryInformationModel(),
      initReceiptPointLatitude: result.initReceiptPointLatitude,
      initReceiptPointLongitude: result.initReceiptPointLongitude,
    );
    return true;
  }

  List<DeliveryTimeModel> _sortDeliveryTimesForPackageDrop(List<DeliveryTimeModel> deliveryTimes) {
    // 基本昇順で並べるが、同じ時刻の場合、まず置き配便以外を表示し、その後置き配便を表示
    deliveryTimes.sort((before, after) {
      final beforeTime = '${before.deliveryFinishHour}${before.deliveryFinishMinute}';
      final afterTime = '${after.deliveryFinishHour}${after.deliveryFinishMinute}';
      final result = beforeTime.compareTo(afterTime);
      if (result != 0) {
        return result;
      }
      if (before.isFulfillmentTypePackageDrop) {
        return 1;
      } else if (after.isFulfillmentTypePackageDrop) {
        return -1;
      }
      return 0;
    });
    return deliveryTimes;
  }

  // 移行パネルによって移行前後の便一覧表示を切り替える
  Future<void> switchMigrationShop() async {
    state = state.copyWith(isAfterMigration: !state.isAfterMigration);
  }

  Future<SelectDeliveryPlanModel> _deliverySchedules({
    required DeliverySchedulesFulfillmentType fulfillmentType,
    required String shopCode,
    String locationId = '',
  }) async {
    final response = await GetIt.I<DeliveryRepository>().schedules(
      shopCode: shopCode,
      fulfillmentType: fulfillmentType,
      locationId: locationId,
    );
    return response.first;
  }

  Future<bool> getStoreReceivedSchedules() async {
    String? locationId;
    if (state.selectedShopInfo != null) {
      // 店舗選択画面からreceiptPointIdを渡されていた場合、それを指定する
      locationId = state.selectedShopInfo!.receiptPointId;
    } else if (_cartInfoManager.info.receiptPointId.isNotEmpty) {
      // カート情報のreceiptPointIdを使用する
      locationId = _cartInfoManager.info.receiptPointId;
    } else {
      // 受け取り場所が未選択の場合APIコールしない
      return false;
    }

    // 店舗・ロッカー便一覧の場合は会員情報のshopCodeを使用
    final result = await _deliverySchedules(
      fulfillmentType: DeliverySchedulesFulfillmentType.clickAndCollect,
      shopCode: _customerManager.info.member!.deliveryShop.first.shopCode,
      locationId: locationId,
    );

    // 本来はバックからソートされて返却されるが、フロント側でソートすることになった
    final deliveryTimes = [...result.deliveryInformations.first.deliveryTimes];
    if (deliveryTimes.isNotEmpty) {
      _sortDeliveryTimesForDriveThrough(deliveryTimes);
    }
    state = state.copyWith(
      fulfillmentType: DeliverySchedulesFulfillmentType.clickAndCollect,
      isAddressDifference: _customerManager.info.member!.isAddressDifference,
      individualDeliveryPriceInformation: result.individualDeliveryPriceInformation,
      livingStatus: result.livingStatus,
      deliveryInformationModel: result.deliveryInformations.first.copyWith(deliveryTimes: deliveryTimes),
      initReceiptPointLatitude: result.initReceiptPointLatitude,
      initReceiptPointLongitude: result.initReceiptPointLongitude,
    );

    return true;
  }

  List<DeliveryTimeModel>? _sortDeliveryTimesForDriveThrough(List<DeliveryTimeModel> deliveryTimes) {
    // 基本昇順で並べるが、同じ時刻の場合、まずドライブスルー以外を表示し、その後ドライブスルーを表示
    deliveryTimes.sort((before, after) {
      final beforeTime = '${before.deliveryFinishHour}${before.deliveryFinishMinute}';
      final afterTime = '${after.deliveryFinishHour}${after.deliveryFinishMinute}';
      final result = beforeTime.compareTo(afterTime);
      if (result != 0) {
        return result;
      }
      if (before.receiptLocationAdditionalText == 'ドライブスルー') {
        return 1;
      } else if (after.receiptLocationAdditionalText == 'ドライブスルー') {
        return -1;
      }
      return 0;
    });
    return deliveryTimes;
  }

  // 移行前後フラグの設定メソッド isAfterMigration: true => 移行後パネル表示, false => 移行前パネル表示
  void _checkMigration() {
    final cartInfo = _cartInfoManager.info;
    final afterMigration = _customerManager.info.member!.migrationToCenter;

    // 移行期間外または注文変更中であれば処理を終了
    if (afterMigration.isEmpty) {
      return;
    }

    // カートの店舗が移行前後のどちらと一致するか確認しstateを更新（自宅受け取りの場合）
    if (cartInfo.isHomeDeliveryNewOrderCart && afterMigration.first.shopCode == cartInfo.shop.shopCode) {
      state = state.copyWith(isAfterMigration: true);
    }
  }

  Future<Tuple2<ShoppingStartCheckResultModel?, bool>> newOrder({
    required String shopCode,
    required String deliveryTimeId,
    required bool deleteLimitedProductFlag,
    required String deliveryDate,
    required bool isNoContact,
    required bool isEnableNoContact,
    required bool deletePrecartFlag,
  }) async {
    ResponseModel<ShoppingStartCheckResultModel>? responseNewOrder;
    try {
      responseNewOrder = await GetIt.I<CartsRepository>().newOrder(
        deliveryTimeId: deliveryTimeId,
        deleteLimitedProductFlag: deleteLimitedProductFlag,
        shopCode: shopCode,
        deliveryDate: deliveryDate,
        noContactFlag: isEnableNoContact ? isNoContact : null,
        deletePrecartFlag: deletePrecartFlag,
      );
    } catch (e) {
      if (e is DioError && e.type == DioErrorType.response) {
        final httpStatus = e.response!.statusCode;
        // ignore: prefer_void_to_null
        final errorResponse = ResponseModel<Null>.fromJson(e.response?.data);
        // カートバッティングの場合は前のカートを消していいかモーダルで確認
        // 確認OKの場合、再度カート作成API、確認の結果キャンセルの場合、何もしないので個別にハンドリングする
        if (httpStatus == 400 &&
            errorResponse.statusCode == 'E-00007' &&
            errorResponse.errorDetails.first.errorReasonCode.contains('2100094')) {
          return const Tuple2(null, false);
        }
      }
      // カートバッティング以外は元のエラーハンドリングを実行させるためにrethrowする
      rethrow;
    }
    state = state.copyWith(shoppingStartCheckResultModel: responseNewOrder.first);
    if (responseNewOrder.first.cart != null) {
      _cartInfoManager.info = responseNewOrder.first.cart!;
    }
    return Tuple2(responseNewOrder.first, true);
  }

  Future<ChangedCartModel> changeCartInfo({
    String? deliveryTime,
    String? deliveryDate,
    required bool deleteLimitedDeliveryProductFlag,
    required bool isNoContact,
    required bool isEnableNoContact,
  }) async {
    final cart = _cartInfoManager.info;
    final responseChangeCart = await GetIt.I<CartsRepository>().changeCartInfo(
      cartId: cart.cartId,
      deliveryTimeId: deliveryTime,
      deleteLimitedDeliveryProductFlag: deleteLimitedDeliveryProductFlag,
      deliveryDate: deliveryDate,
      noContactFlag: isEnableNoContact ? isNoContact : null,
    );
    state = state.copyWith(changedCartModel: responseChangeCart.first);
    if (responseChangeCart.first.cart != null) {
      _cartInfoManager.info = responseChangeCart.first.cart!;
    }
    return responseChangeCart.first;
  }

  Future<ShoppingStartCheckResultModel> changeOrder(int orderId) async {
    final responseChangeOrder = await GetIt.I<OrdersRepository>().changeOrder(orderId);
    _cartInfoManager.info = responseChangeOrder.first.cart!;
    getChangableSchedules(responseChangeOrder.first);
    return responseChangeOrder.first;
  }

  Future<void> getChangableSchedules(ShoppingStartCheckResultModel? model) async {
    final cartInfo = _cartInfoManager.info;
    final result = await _changeableDeliverySchedule();
    final DeliverySchedulesFulfillmentType fulfillmentType;
    final deliveryTimes = [...result.deliveryInformations.first.deliveryTimes];
    if (cartInfo.receiptPointId.isEmpty) {
      fulfillmentType = DeliverySchedulesFulfillmentType.homeDelivery;
      // 本来はバックからソートされて返却されるが、フロント側でソートすることになった
      _sortDeliveryTimesForPackageDrop(deliveryTimes);
    } else {
      fulfillmentType = DeliverySchedulesFulfillmentType.clickAndCollect;
      // 本来はバックからソートされて返却されるが、フロント側でソートすることになった
      if (deliveryTimes.isNotEmpty) {
        _sortDeliveryTimesForDriveThrough(deliveryTimes);
      }
    }

    state = state.copyWith(
      fulfillmentType: fulfillmentType,
      isAddressDifference: _customerManager.info.member!.isAddressDifference,
      individualDeliveryPriceInformation: result.individualDeliveryPriceInformation,
      livingStatus: result.livingStatus,
      deliveryInformationModel: result.deliveryInformations.first.copyWith(deliveryTimes: deliveryTimes),
      shoppingStartCheckResultModel: model ?? state.shoppingStartCheckResultModel,
      initReceiptPointLatitude: result.initReceiptPointLatitude,
      initReceiptPointLongitude: result.initReceiptPointLongitude,
    );
  }

  Future<SelectDeliveryPlanModel> _changeableDeliverySchedule() async {
    final cartInfo = _cartInfoManager.info;
    final response = await GetIt.I<DeliveryRepository>().changeableSchedules(cartInfo.oldOrder!.oldOrderId);
    return response.first;
  }

  void handleRadio(DeliverySchedulesFulfillmentType? value) {
    if (value != null) state = state.copyWith(fulfillmentType: value);
  }

  /// 注文変更取り消し
  Future<void> cancelChangeOrder() async {
    await GetIt.I<CartsRepository>().cancelChangeOrder(cartId: _cartInfoManager.info.cartId);
  }

  /// ノッチタップイベント（両方のスクロールを最上部に戻す）
  void handleStatusBarTap({
    required int tapIncrement,
    required ScrollController parentScrollController,
    required ScrollController childScrollController,
  }) {
    if (tapIncrement > 0) {
      _animateTo(parentScrollController);
      _animateTo(childScrollController);
    }
  }

  void _animateTo(ScrollController scrollController) {
    scrollController.animateTo(
      0.0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }

  /// オートロックマンション情報取得
  Future<AutoLockMansionModel?> getAutolockMansionInfo() async {
    final response = await GetIt.I<CustomersRepository>().getAutoLockMansions();
    return response.data.first;
  }

  /// 置き配関連のページを表示
  Future<void> showPackageDropPage(AutoLockMansionModel? mansionInfo) async {
    final context = GetIt.I<GlobalKey<NavigatorState>>().currentContext!;

    // 置き配未申請の場合
    // 　マンションアタックリスト存在フラグがfalse かつ
    // 　マンションIDが空文字 マンションIDがnull or マンション情報なし
    if (mansionInfo?.existsMansionAttacklist == false &&
        (mansionInfo?.deliveryAutolockMansion == null ||
            mansionInfo?.deliveryAutolockMansion?.mansionId == '' ||
            mansionInfo?.deliveryAutolockMansion?.mansionId == null)) {
      showNormalSelectionDialog<void>(
          context: context,
          dialogName: 'packageDropApplicationGuideDialog',
          title: '置き配のご利用は申請が必要です',
          content: const Text(
            '置き配の申請はイトーヨーカドーネットスーパーWebブラウザ版をご利用ください。\nお客様の同意や申請の完了後、アプリで置き配を選択することができます。',
            textAlign: TextAlign.start,
          ),
          applicationText: 'Webブラウザ版で申請する',
          onApplied: (context) => () {
                // お住まい情報確認画面に遷移
                final redirectUrl = Uri.parse(iynsBaseUrl).replace(
                  path: '/sp/member/residence/confirm/',
                  queryParameters: <String, String>{
                    'result-path': '/sp/delivery-select',
                  },
                );
                final url = iynsAuthRedirectUrl(redirectUrl);
                launchUrl(url, mode: LaunchMode.externalApplication);
                Navigator.pop(context);
              },
          cancellationText: '閉じる',
          onCanceled: (context) => () => Navigator.pop(context));
      return;
    }

    // 置き配申請後、交渉済みでない場合
    // 　交渉状況が 未交渉 or 交渉中 or 再交渉依頼 or マンション情報なし
    if (mansionInfo?.deliveryAutolockMansion?.negotiationStatus == NegotiationStatusType.notNegotiated ||
        mansionInfo?.deliveryAutolockMansion?.negotiationStatus == NegotiationStatusType.duringNegotiation ||
        mansionInfo?.deliveryAutolockMansion?.negotiationStatus == NegotiationStatusType.reNegotiation ||
        mansionInfo?.deliveryAutolockMansion == null) {
      // お住まい確認中画面(通常)に遷移
      final redirectUrl = Uri.parse(iynsBaseUrl).replace(
        path: '/sp/member/residence/contactless-delivery/negotiation/',
      );
      final url = iynsAuthRedirectUrl(redirectUrl);
      launchUrl(url, mode: LaunchMode.externalApplication);
      return;
    }

    // 交渉状況が置き配可
    if (mansionInfo?.deliveryAutolockMansion?.negotiationStatus == NegotiationStatusType.enablePackageDrop) {
      // 置き配説明画面に遷移
      final redirectUrl = Uri.parse(iynsBaseUrl).replace(
        path: '/sp/member/residence/contactless-delivery/explanation/',
        queryParameters: <String, String>{
          'mansion-id': mansionInfo?.deliveryAutolockMansion?.mansionId ?? '',
          'result-path': '/sp/delivery-select',
          'previous-path': '/sp/shop',
        },
      );
      final url = iynsAuthRedirectUrl(redirectUrl);
      launchUrl(url, mode: LaunchMode.externalApplication);
      return;
    }

    // 交渉状況が置き配不可
    if (mansionInfo?.deliveryAutolockMansion?.negotiationStatus == NegotiationStatusType.unablePackageDrop) {
      showNormalSelectionDialog<void>(
          context: context,
          dialogName: 'packageDropApplicationGuideDialog',
          title: 'お住まいのマンションは現在置き配不可です',
          content: const Text(
            'お住まいのマンションとネットスーパー置き配の交渉を行いましたが現在置き配の実施はできません\n再度置き配の交渉をご希望の場合は「再交渉を依頼する」ボタンを押してください',
            textAlign: TextAlign.start,
          ),
          applicationText: '再交渉を依頼する',
          onApplied: (context) => () {
                // 置き配再交渉画面に遷移
                final redirectUrl = Uri.parse(iynsBaseUrl).replace(
                  path: '/sp/member/residence/contactless-delivery/negotiation/',
                );
                final url = iynsAuthRedirectUrl(redirectUrl);
                launchUrl(url, mode: LaunchMode.externalApplication);
                Navigator.pop(context);
              },
          cancellationText: '閉じる',
          onCanceled: (context) => () => Navigator.pop(context));
      return;
    }
  }
}
