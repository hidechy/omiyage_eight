import 'dart:convert';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

import '../enum/analytics_event_type.dart';
import '../enum/event_parameter_type.dart';
import '../enum/user_property_type.dart';

class AnalyticsManager {
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  void sendUserId(String? userId) {
    _analytics.setUserId(id: userId);
  }

  void sendScreenView(String screenName) {
    _analytics.setCurrentScreen(screenName: screenName);
  }

  void sendUserProperty({
    required UserPropertyType userPropertyType,
    required String? value,
  }) {
    _analytics.setUserProperty(name: userPropertyType.name, value: value);
  }

  void sendEvent({
    required AnalyticsEventType eventType,
    Map<EventParameterType, Object?>? parameters,
  }) {
    final sendParameters = parameters?.map((key, value) => MapEntry(key.name, value)) ?? const <String, Object?>{};
    _analytics.logEvent(name: eventType.name, parameters: sendParameters);
  }

  /// WebView用のイベント送信処理
  void sendWebEvent({
    required String jsonParameterString,
  }) {
    try {
      // パラメータチェック
      final param = jsonDecode(jsonParameterString) as Map<String, dynamic>;
      final eventName = param['eventName'] as String;
      final parameters = param['parameters'] != null ? param['parameters'] as Map<String, Object> : null;

      if (eventName == '') {
        throw ArgumentError.value('Test', 'name', 'eventNameが空文字');
      }
      _analytics.logEvent(name: eventName, parameters: parameters).onError((error, stackTrace) {
        FirebaseCrashlytics.instance.setCustomKey('GASendError', 'event:' + jsonParameterString);
        FirebaseCrashlytics.instance.recordError(error, stackTrace, reason: 'GASendError');
      });
    } catch (error, stackTrace) {
      FirebaseCrashlytics.instance.setCustomKey('GASendError', 'event:' + jsonParameterString);
      FirebaseCrashlytics.instance.recordError(error, stackTrace, reason: 'GASendError');
    }
  }

  /// WebView用のPV送信処理
  void sendWebPV({
    required String jsonParameterString,
  }) {
    try {
      final param = jsonDecode(jsonParameterString) as Map<String, dynamic>;
      final screenName = param['screenName'] as String;
      // パラメータチェック
      if (screenName == '') {
        throw ArgumentError.value('Test', 'name', 'screenNameが空文字');
      }

      _analytics.setCurrentScreen(screenName: screenName).onError((error, stackTrace) {
        FirebaseCrashlytics.instance.setCustomKey('GASendError', 'pv:' + jsonParameterString);
        FirebaseCrashlytics.instance.recordError(error, stackTrace, reason: 'GASendError');
      });
    } catch (error, stackTrace) {
      FirebaseCrashlytics.instance.setCustomKey('GASendError', 'pv:' + jsonParameterString);
      FirebaseCrashlytics.instance.recordError(error, stackTrace, reason: 'GASendError');
    }
  }

  /// WebView用のUserProperty送信処理
  void sendWebUserProperty({
    required String jsonParameterString,
  }) {
    try {
      final param = jsonDecode(jsonParameterString) as Map<String, dynamic>;
      param.forEach((key, dynamic value) {
        // パラメータチェック
        if (key == '') {
          throw ArgumentError.value('Test', 'name', 'userProperty keyが空文字');
        }
        _analytics.setUserProperty(name: key, value: value.toString()).onError((error, stackTrace) {
          FirebaseCrashlytics.instance.setCustomKey('GASendError', 'userProperty:' + jsonParameterString);
          FirebaseCrashlytics.instance.recordError(error, stackTrace, reason: 'GASendError');
        });
      });
    } catch (error, stackTrace) {
      FirebaseCrashlytics.instance.setCustomKey('GASendError', 'userProperty:' + jsonParameterString);
      FirebaseCrashlytics.instance.recordError(error, stackTrace, reason: 'GASendError');
    }
  }

  /// 注文完了時の購入イベント送信処理。
  ///
  /// jsonをマッピングし直し、webとのイベント送信時のプロパティ名の差分を吸収して送信。
  void sendPurchase({required String jsonParameterString}) {
    try {
      final original = jsonDecode(jsonParameterString) as Map<String, dynamic>;
      final sendParam = {
        EventParameterType.transactionId.name: original['ecommerce']['transaction_id'] as int,
        EventParameterType.cartShopCd.name: original['ecommerce']['shop_id'] as String,
        EventParameterType.firstUse.name: original['firstUse'] as bool,
        EventParameterType.value.name: original['ecommerce']['value'] as int,
        EventParameterType.shipping.name: original['ecommerce']['shipping'] as int,
        EventParameterType.currency.name: original['ecommerce']['currency'] as String,
        EventParameterType.deliveryType.name: original['deliveryType'] as String,
        EventParameterType.items.name: original['ecommerce']['items'] as List<dynamic>,
      };
      _analytics
          .logEvent(
        name: AnalyticsEventType.purchase.name,
        parameters: sendParam,
      )
          .onError((error, stackTrace) {
        FirebaseCrashlytics.instance.setCustomKey('GASendError', 'sendPurchase:' + jsonParameterString);
        FirebaseCrashlytics.instance.recordError(error, stackTrace, reason: 'GASendError');
      });
    } catch (error, stackTrace) {
      FirebaseCrashlytics.instance.setCustomKey('GASendError', 'sendPurchase:' + jsonParameterString);
      FirebaseCrashlytics.instance.recordError(error, stackTrace, reason: 'GASendError');
    }
  }
}

// Provider GAパラメータ用ID受け渡しクラス
class AnalyticsParam {
  const AnalyticsParam({this.advertisingId, this.recommendType, this.tapContents});
  final String? advertisingId;
  final String? recommendType;
  final String? tapContents;
}
