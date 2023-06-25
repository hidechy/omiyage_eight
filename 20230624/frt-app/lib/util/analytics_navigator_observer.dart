import 'package:flutter/cupertino.dart';

import 'package:get_it/get_it.dart';

import '../enum/screen_name.dart';
import 'analytics_manager.dart';

class AnalyticsNavigatorObserver extends NavigatorObserver {
  AnalyticsNavigatorObserver()
      : _analyticsManager = GetIt.I<AnalyticsManager>(),
        super();
  final AnalyticsManager _analyticsManager;
  void _sendScreenView(Route<dynamic> route) {
    final screenName = route.settings.name;
    // スクリーン名が定義済みに存在する場合
    if (screenContains(screenName)) {
      _analyticsManager.sendScreenView(screenName!);
    }
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    _sendScreenView(route);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute != null && newRoute.isCurrent) {
      _sendScreenView(newRoute);
    }
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    if (previousRoute != null) {
      _sendScreenView(previousRoute);
    }
  }
}
