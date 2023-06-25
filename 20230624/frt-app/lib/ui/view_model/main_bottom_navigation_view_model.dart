import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../enum/analytics_event_type.dart';
import '../../enum/main_bottom_navigation_item.dart';
import '../../util/analytics_manager.dart';
import '../../util/analytics_navigator_observer.dart';
import '../../util/customer_manager.dart';
import '../common/app_dialogs.dart';
import '../page/categories_page.dart';
import '../page/delivery_datetime_page.dart';
import '../page/favorite/favorites_page.dart';
import '../page/my_page.dart';
import '../page/orders_page.dart';
import '../page/shop_top_page.dart';
import '../state/main_bottom_navigation_state.dart';

class MainBottomNavigationViewModel extends StateNotifier<MainBottomNavigationState> with LocatorMixin {
  MainBottomNavigationViewModel()
      : _navigatorStates = List.generate(
          MainBottomNavigationItem.values.length,
          (_) => GlobalKey<NavigatorState>(),
        ),
        super(
          MainBottomNavigationState(
            initialized: List.generate(
              MainBottomNavigationItem.values.length,
              (i) => i == 0,
            ),
          ),
        ) {
    _pages = _navigatorStates
        .asMap()
        .entries
        .map(
          (navigatorState) => Selector<MainBottomNavigationState, bool>(
            selector: (_, state) => state.initialized[navigatorState.key],
            builder: (_, initialized, __) {
              if (initialized) {
                return Navigator(
                  key: navigatorState.value,
                  onGenerateRoute: routeFactory(navigatorState.key),
                  observers: [
                    AnalyticsNavigatorObserver(),
                  ],
                );
              }
              return const SizedBox.shrink();
            },
          ),
        )
        .toList();
  }

  final List<GlobalKey<NavigatorState>> _navigatorStates;

  List<Widget> get pages => _pages;
  late final List<Widget> _pages;

  void onTap(int index) async {
    if (index != state.index) {
      final item = MainBottomNavigationItem.values[index];
      switch (item) {
        case MainBottomNavigationItem.shop:
        case MainBottomNavigationItem.search:
        case MainBottomNavigationItem.myPage:
          // 何もしない
          break;
        case MainBottomNavigationItem.favorite:
        case MainBottomNavigationItem.deliveryDatetime:
        case MainBottomNavigationItem.orderHistory:
          final isVisitor = read<CustomerManager>().info.isVisitor;
          if (isVisitor) {
            // 店舗トップのみ確実にコンテキストが存在する
            final context = _navigatorStates.first.currentContext!;
            final isLogin = await showLoginDialog(context: context);
            if (isLogin != true) {
              return;
            }
          }
          break;
      }
      _sendAnalytics(index);
      final initialized = [...state.initialized]..[index] = true;
      state = state.copyWith(index: index, initialized: List.of(initialized));
      if (item == MainBottomNavigationItem.deliveryDatetime) {
        _navigatorStates[index]
            .currentState
            ?.pushAndRemoveUntil(DeliveryDatetimePage.route(skipAnimation: true), (route) => false);
      }
      if (item == MainBottomNavigationItem.favorite) {
        _navigatorStates[index].currentState?.pushAndRemoveUntil(FavoritesPage.route(), (route) => false);
      }
    } else {
      _navigatorStates[index].currentState?.popUntil((route) => route.isFirst);
    }
  }

  Future<bool> onWillPop() {
    _navigatorStates[state.index].currentState?.maybePop();
    return SynchronousFuture(false);
  }

  RouteFactory routeFactory(int index) {
    final item = MainBottomNavigationItem.values[index];
    switch (item) {
      case MainBottomNavigationItem.shop:
        return (settings) => ShopTopPage.route(settings.arguments);
      case MainBottomNavigationItem.search:
        return (settings) => CategoriesPage.route(settings.arguments);
      case MainBottomNavigationItem.favorite:
        return (settings) => FavoritesPage.route(settings.arguments);
      case MainBottomNavigationItem.deliveryDatetime:
        return (settings) => DeliveryDatetimePage.route();
      case MainBottomNavigationItem.orderHistory:
        return (settings) => OrdersPage.route();
      case MainBottomNavigationItem.myPage:
        return (settings) => MyPage.route();
    }
  }

  void _sendAnalytics(int index) {
    final isInitialized = state.initialized[index];
    final item = MainBottomNavigationItem.values[index];
    final analytics = GetIt.I<AnalyticsManager>();

    // 商品検索が選択された場合、イベント送信
    if (item == MainBottomNavigationItem.search) {
      analytics.sendEvent(eventType: AnalyticsEventType.clickSearchProductTab);
    }
    // 受け取り日時が選択された場合、イベント送信
    if (item == MainBottomNavigationItem.deliveryDatetime) {
      analytics.sendEvent(eventType: AnalyticsEventType.clickDeliveryDateTab);
    }

    // 未初期化の場合、初期化時にAnalyticsが送信されるためスキップ
    if (!isInitialized) {
      return;
    }

    switch (item) {
      // お気に入り画面と便選択画面は毎回pushAndRemoveUntilで遷移を行う為、ここでScreenViewイベントの送信は不要
      case MainBottomNavigationItem.shop:
        analytics.sendScreenView(ShopTopPage.name);
        break;
      case MainBottomNavigationItem.search:
        analytics.sendScreenView(CategoriesPage.name);
        break;
      case MainBottomNavigationItem.favorite:
        break;
      case MainBottomNavigationItem.deliveryDatetime:
        break;
      case MainBottomNavigationItem.orderHistory:
        analytics.sendScreenView(OrdersPage.name);
        break;
      case MainBottomNavigationItem.myPage:
        analytics.sendScreenView(MyPage.name);
        break;
    }
  }
}
