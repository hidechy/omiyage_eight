import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:native_webview/native_webview.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'logger.dart';

class WebViewUserAgent {
  final Completer<String> _completer = Completer();

  var _initialized = false;

  Future<String> get _uniqueKey async {
    final packageInfo = await PackageInfo.fromPlatform();
    final version = packageInfo.version;
    return 'iynsapp/$version';
  }

  Future<String> get userAgent {
    if (_completer.isCompleted) {
      return _completer.future;
    } else {
      return _init().then((_) => _completer.future);
    }
  }

  Future<void> _init() async {
    if (_initialized) {
      return;
    }
    _initialized = true;
    late final OverlayEntry webview;
    try {
      logger.info('Loading User Agent');
      webview = OverlayEntry(
        builder: (_) => Offstage(
          offstage: true,
          child: WebView(
            onPageFinished: (controller, _) async {
              var webViewUserAgent = await controller.evaluateJavascript('navigator.userAgent;') as String?;
              logger.info(webViewUserAgent);
              if (webViewUserAgent != null) {
                final uniqueKeyStr = await _uniqueKey;
                webViewUserAgent = '$webViewUserAgent $uniqueKeyStr';
              }
              _completer.complete(webViewUserAgent ?? '');
            },
          ),
        ),
      );

      WidgetsBinding.instance.addPostFrameCallback((_) {
        GetIt.I<GlobalKey<NavigatorState>>().currentState!.overlay!.insert(webview);
      });

      logger.info(await _completer.future);
    } catch (e) {
      logger.warning('fail to load user agent caused by: {e}');
      _initialized = false;
    } finally {
      logger.info('dispose start');
      webview.remove();
      logger.info('dispose end');
    }
  }
}
