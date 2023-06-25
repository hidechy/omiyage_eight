import 'dart:async';

import 'package:flutter/services.dart';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:get_it/get_it.dart';
import 'package:native_webview/native_webview.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../gen/assets.gen.dart';
import '../../util/adjust_manager.dart';
import '../../util/analytics_manager.dart';
import '../../util/logger.dart';

class OrderConfWebViewPageViewModel with LocatorMixin {
  OrderConfWebViewPageViewModel() {
    _addJavascriptHandler = rootBundle.loadString(Assets.js.orderPageAddJavascriptHandler);
  }

  late final Future<String> _addJavascriptHandler;

  bool isOrderComplete = false;

  void onWebViewCreated(WebViewController controller) {
    controller.addJavascriptHandler('sendAppPurchase', (dynamic arguments) async {
      // 注文完了ログの送信
      final analytics = GetIt.I<AnalyticsManager>();
      analytics.sendPurchase(jsonParameterString: arguments[0].toString());
    });
    controller.addJavascriptHandler(
      'orderCompleted',
      (dynamic args) async {
        // 注文完了時、注文完了フラグをtrueに変更
        isOrderComplete = true;

        // 合計金額をAdjustの収益イベントに送る
        try {
          final argsList = args as List;
          final totalPrice = argsList.first as int;
          GetIt.I<AdjustManager>().firstOrderCompleteRevenue(totalPrice);
          logger.info('収益イベント発生 ¥$totalPrice');
        } catch (e, st) {
          FirebaseCrashlytics.instance.recordError(e, st);
          logger.info('合計金額が取得できませんでした');
        }
      },
    );
  }

  Future<void> onPageFinished(WebViewController controller) async {
    // Androidでイベントが2回発火するため、isOrderComplete=trueの場合は何もしない
    if (isOrderComplete) {
      return;
    }
    controller.evaluateJavascript(await _addJavascriptHandler);
  }
}
