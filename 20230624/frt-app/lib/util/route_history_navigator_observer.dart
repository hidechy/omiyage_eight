import 'package:flutter/widgets.dart';

import 'logger.dart';

class RouteHistoryNavigatorObserver extends NavigatorObserver {
  RouteHistoryNavigatorObserver()
      : _history = [],
        super();

  final List<Route> _history;

  Route? get last => _history.isNotEmpty ? _history.last : null;

  bool get isModalCurrent => last is PopupRoute;

  bool hasRoute(String name) {
    return _history.isEmpty ? false : _history.any((route) => route.settings.name == name);
  }

  bool hasLast(String name) {
    return last?.settings.name == name;
  }

  Route? withName(String name) {
    if (_history.isNotEmpty) {
      final i = _history.lastIndexWhere((route) => route.settings.name == name);
      return i >= 0 ? _history[i] : null;
    }
    return null;
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    logger.info('Popped: $route');
    logger.info('Previous: $previousRoute');
    super.didPop(route, previousRoute);
    // 二重popを抑止
    if (last == route) {
      _history.removeLast();
    }
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    logger.info('Pushed: $route');
    logger.info('Previous: $previousRoute');
    super.didPush(route, previousRoute);
    // 二重pushを抑止
    if (last != route) {
      _history.add(route);
    }
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    logger.info('Removed: $route');
    logger.info('Previous: $previousRoute');
    super.didRemove(route, previousRoute);
    _history.remove(route);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    logger.info('Old: $oldRoute');
    logger.info('New: $newRoute');
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute == null) {
      _history.remove(oldRoute);
    } else {
      final i = _history.indexWhere((route) => route == oldRoute);
      if (i >= 0) {
        _history[i] = newRoute;
      } else {
        // 二重追加抑止
        if (last != newRoute) {
          _history.add(newRoute);
        }
      }
    }
  }

  static RouteHistoryNavigatorObserver of(BuildContext context, {bool rootNavigator = true}) =>
      Navigator.of(context, rootNavigator: rootNavigator)
          .widget
          .observers
          .firstWhere((element) => element is RouteHistoryNavigatorObserver) as RouteHistoryNavigatorObserver;
}
