import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:get_it/get_it.dart';
import 'package:native_webview/native_webview.dart';
import 'package:provider/provider.dart';

import '../../util/basic_authentication_manager.dart';
import '../../util/logger.dart';
import '../common/app_colors.dart';
import '../common/app_loading.dart';
import '../common/webview_bottom_app_bar.dart';
import '../state/web_view_state.dart';
import '../view_model/web_view_view_model.dart';

/// [isBlankPage]に`true`を設定すると、画面を表示しなくなる
typedef LoadingCallback = void Function();

/// [title]を与えたらそれをタイトルに、与えなければ表示している画面からtitleを取得する
/// 画面からtitleを取得できなかった場合は空のタイトル
class WebViewBasePage extends StatelessWidget {
  const WebViewBasePage({
    Key? key,
    this.authenticationRequired = true,
    this.title,
    this.showAppBar = false,
    this.initialLogin = false,
    this.initialUrl,
    this.initialData,
    this.onWebResourceError,
    this.onPageStarted,
    this.onPageFinished,
    this.onWebViewCreated,
    this.shouldOverrideUrlLoading,
    this.onJsConfirm,
    this.deny,
    this.allow,
  }) : super(key: key);

  /// 認証が必要な画面か
  final bool authenticationRequired;

  /// タイトル
  final String? title;

  /// AppBarをアプリで表示するか
  final bool showAppBar;

  /// 初回遷移時にログインするか
  final bool initialLogin;

  final String? initialUrl;
  final WebViewData? initialData;
  final Future<void> Function(WebResourceError error)? onWebResourceError;

  /// [loadStart] 任意のタイミングでローディング状態にできる
  /// [loadStop] 任意のタイミングでローディング状態を解消できる
  final FutureOr<void> Function(
    WebViewController controller,
    String? url,
    LoadingCallback loadStart,
    LoadingCallback loadStop,
  )? onPageStarted;

  /// [loadStart] 任意のタイミングでローディング状態にできる
  /// [loadStop] 任意のタイミングでローディング状態を解消できる
  final FutureOr<void> Function(
    WebViewController controller,
    String? url,
    LoadingCallback loadStart,
    LoadingCallback loadStop,
  )? onPageFinished;
  final void Function(WebViewController controller)? onWebViewCreated;
  final FutureOr<ShouldOverrideUrlLoadingAction> Function(
      WebViewController controller, ShouldOverrideUrlLoadingRequest request)? shouldOverrideUrlLoading;
  final JsConfirmCallback? onJsConfirm;

  final Set<RegExp>? deny;
  final Set<RegExp>? allow;

  @override
  Widget build(BuildContext context) {
    logger.info('Build WebViewBasePage');
    return StateNotifierProvider<WebViewViewModel, WebViewState>(
      create: (_) => WebViewViewModel(
        hasTitle: title != null,
        showAppBar: showAppBar,
        initialLogin: initialLogin,
        onPageFinished: onPageFinished,
        deny: deny,
        allow: allow,
      ),
      builder: (context, _) {
        return _Scaffold(
          showAppBar: showAppBar,
          title: title,
          body: LoadingFullScreen(
            key: ValueKey(initialUrl),
            future: () async => await context.read<WebViewViewModel>().init(authenticationRequired),
            content: SafeArea(
              child: Stack(
                children: [
                  WebView(
                    key: ValueKey(initialUrl),
                    debuggingEnabled: kDebugMode,
                    initialUrl: initialUrl,
                    initialData: initialData,
                    onWebViewCreated: (controller) {
                      context.read<WebViewViewModel>().onWebViewCreated(controller, context);
                      onWebViewCreated?.call(controller);
                    },
                    onPageStarted: (controller, url) async {
                      final viewModel = context.read<WebViewViewModel>();
                      viewModel.loadStart();
                      await viewModel.onPageStarted(controller, url);
                      await onPageStarted?.call(
                        controller,
                        url,
                        viewModel.loadStart,
                        viewModel.loadStop,
                      );
                    },
                    onProgressChanged: (controller, url) async {
                      final viewModel = context.read<WebViewViewModel>();
                      await viewModel.onProgressChanged(controller);
                    },
                    onPageFinished: (controller, url) async =>
                        await context.read<WebViewViewModel>().onLoadEnded(controller),
                    onWebResourceError: (error) async {
                      onWebResourceError?.call(error);
                      context.read<WebViewViewModel>().onWebResourceError(error);
                    },
                    shouldOverrideUrlLoading: (controller, request) async {
                      final action = await shouldOverrideUrlLoading?.call(controller, request);
                      if (action == ShouldOverrideUrlLoadingAction.cancel) {
                        return ShouldOverrideUrlLoadingAction.cancel;
                      }
                      return context.read<WebViewViewModel>().shouldOverrideUrlLoading(context, controller, request);
                    },
                    onJsConfirm: onJsConfirm,
                    onReceivedHttpAuthRequest: (controller, _) async {
                      return GetIt.I<BasicAuthenticationManager>()
                          .onReceivedHttpAuthRequest(Uri.tryParse(await controller.currentUrl() ?? ''));
                    },
                  ),
                  const _Loading(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    Key? key,
    required this.showAppBar,
    required this.title,
    required this.body,
  }) : super(key: key);

  final bool showAppBar;
  final String? title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    final titleText = title ?? context.select((WebViewState state) => state.title);
    logger.info('showAppBar[$showAppBar] title[$title] titleText[$titleText]');
    final isShowAppBar = showAppBar || titleText != null;
    if (isShowAppBar) {
      logger.info('アプリのAppBarを表示します title[$title] titleText[$titleText]');
    } else {
      logger.info('アプリのAppBarは非表示です');
    }
    return Scaffold(
      // resizeToAvoidBottomInset: falseにするとAndroidのWebViewはキーボードが被った分のコンテンツが見えなくなってしまうためiOSの場合だけfalseにする
      // iOSはこの設定をすることでinput type="text"等にフォーカスがあたった場合、キーボードとinput type="text"等の位置をいい感じに調整してくれるようになる
      // また、iOSの場合はAndroidのようにキーボードが被った分のコンテンツが見えなくなることはない
      // Androidはキーボードとinput type="text"等の位置をいい感じに調整してくれないので、trueのままにしてjsで自力で調整する必要がある
      resizeToAvoidBottomInset: !Platform.isIOS,
      // title文字列取得が遅い場合があるので、showAppBarがtrueならtitleTextが空文字列でもAppBarを表示しておく
      // また先に表示することで、Webの情報読み込み失敗した場合もAppBarが表示されなくなることを防ぐことができる
      appBar: isShowAppBar ? AppBar(title: Text(titleText ?? '')) : null,
      body: body,
      bottomNavigationBar: const _Footer(),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Offstage(
        offstage: context.select((WebViewState state) => state.loading),
        child: const WebViewBottomAppBar(),
      );
}

class _Loading extends StatelessWidget {
  const _Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Offstage(
        offstage: context.select((WebViewState state) => !state.loading),
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: AppColors.gray1,
          child: Center(
            child: Container(
              color: AppColors.white,
              padding: const EdgeInsets.all(4),
              child: const CupertinoActivityIndicator(radius: 24),
            ),
          ),
        ),
      );
}
