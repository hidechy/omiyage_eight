import 'dart:io';

import 'package:flutter/material.dart';

import 'package:adjust_sdk/adjust.dart';
import 'package:adjust_sdk/adjust_config.dart';
import 'package:adjust_sdk/adjust_event.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:get_it/get_it.dart';

import '../constants.dart';
import '../data/repository/adjust_repository.dart';
import '../enum/analytics_event_type.dart';
import '../enum/event_parameter_type.dart';
import '../enum/flavor_type.dart';
import 'analytics_manager.dart';
import 'logger.dart';

class AdjustManager with WidgetsBindingObserver {
  var _isValid = false;

  void initialize() {
    WidgetsBinding.instance.addObserver(this);

    try {
      final environment = FlavorConfig.instance.name == FlavorType.production.name
          ? AdjustEnvironment.production
          : AdjustEnvironment.sandbox;
      final config = AdjustConfig(dartEnvironmentValueAdjustAppToken, environment);
      Adjust.start(config);

      _requestTrackingAuthorization();

      _isValid = true;
    } catch (e, st) {
      logger.info(e);
      logger.info(st);

      // Adjust関連処理は例外が発生してもアプリとしては正常に動作することを前提とする
      FirebaseCrashlytics.instance.recordError(e, st);
    }
  }

  void finalize() {
    WidgetsBinding.instance.removeObserver(this);
  }

  Future<void> firstOrderCompleteRevenue(int price) async {
    final isFirstOrderCompleted = await GetIt.I<AdjustRepository>().read();
    // 初回購入時以外はイベントをAdjustに送信しないため、購入経験があれば何もしない
    if (isFirstOrderCompleted ?? false) {
      return;
    }

    // 新規購入イベント
    if (_isValid) {
      Adjust.trackEvent(AdjustEvent('nlywa9')..setRevenue(price, 'JPY'));
      // 購入完了時点で、isFirstOrderCompletedフラグ(true)をSecureStorageに格納する
      await GetIt.I<AdjustRepository>().write(true);
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!_isValid) {
      return;
    }

    if (state == AppLifecycleState.resumed) {
      Adjust.onResume();
    } else if (state == AppLifecycleState.paused) {
      Adjust.onPause();
    }
  }

  Future<void> _requestTrackingAuthorization() async {
    if (Platform.isIOS) {
      // ユーザーに対してトラッキング許可ダイアログを表示していない場合
      if (await Adjust.getAppTrackingAuthorizationStatus() == 0) {
        final appTrackingAuthorizationStatus = await Adjust.requestTrackingAuthorizationWithCompletionHandler();
        GetIt.I<AnalyticsManager>().sendEvent(
          eventType: AnalyticsEventType.selectIosAppTrackingTransparencyModal,
          parameters: {EventParameterType.iosAppTrackingAuthorizationStatus: appTrackingAuthorizationStatus.toString()},
        );
      }
    }
  }
}
