import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:native_webview/native_webview.dart';

import '../../gen/assets.gen.dart';
import '../../util/access_point_info_manager.dart';

class SignupPageViewModel {
  SignupPageViewModel(this._context);

  final BuildContext _context;
  WebViewController? _controller;
  late final String _js;
  bool _isClickedLoginButton = false;

  FutureOr<ShouldOverrideUrlLoadingAction> shouldOverrideUrlLoading(
      WebViewController controller, ShouldOverrideUrlLoadingRequest request) async {
    if (_isClickedLoginButton) {
      Navigator.pop(_context, true);
      return ShouldOverrideUrlLoadingAction.cancel;
    }
    return ShouldOverrideUrlLoadingAction.allow;
  }

  void onWebViewCreated(WebViewController controller) async {
    _controller = controller;
    _controller?.addJavascriptHandler('TransitionToTop', (dynamic arguments) async {
      _isClickedLoginButton = true;
    });
    final rawJs = await rootBundle.loadString(Assets.js.detectLoginButtonTap);
    _js = rawJs.replaceAll('{{iynsLoginUrl}}', iynsAuthUrl.origin + iynsAuthUrl.path);
  }

  Future<void> onPageFinished() async {
    await _controller?.evaluateJavascript(_js);
  }
}
