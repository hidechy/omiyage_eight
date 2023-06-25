import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:get_it/get_it.dart';
import 'package:native_webview/native_webview.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../constants.dart';
import '../../data/repository/keep_alive_repository.dart';
import '../../enum/cart_order_status_type.dart';
import '../../gen/assets.gen.dart';
import '../../util/access_point_info_manager.dart';
import '../../util/analytics_manager.dart';
import '../../util/authentication_manager.dart';
import '../../util/cart_info_manager.dart';
import '../../util/launcher.dart';
import '../../util/logger.dart';
import '../../util/url.dart';
import '../common/app_dialogs.dart';
import '../page/orders_page.dart';
import '../page/root_page.dart';
import '../page/web_view_base_page.dart';
import '../state/web_view_state.dart';

class WebViewViewModel extends StateNotifier<WebViewState> with LocatorMixin {
  WebViewViewModel({
    required this.hasTitle,
    required this.showAppBar,
    required this.initialLogin,
    this.onPageFinished,
    this.deny,
    this.allow,
  }) : super(const WebViewState());

  WebViewController? _controller;

  final bool hasTitle;
  final bool showAppBar;
  final bool initialLogin;
  final FutureOr<void> Function(
    WebViewController controller,
    String? url,
    LoadingCallback loadStart,
    LoadingCallback loadStop,
  )? onPageFinished;

  final Set<RegExp>? deny;
  final Set<RegExp>? allow;

  bool _isNavigated = false;

  Uri? _previousUrl;

  Future<bool> init(bool authenticationRequired) async {
    final authenticationManager = GetIt.I<AuthenticationManager>();

    final cookies = <String, String?>{
      'device-type': 'app',
      trackUuidName: await authenticationManager.uuid,
      iyVisitIdName: await authenticationManager.iyVisitId,
      trackIdName: authenticationManager.trackId,
    };

    final cart = read<CartInfoManager>().info;
    final String purchaseStatus;
    if (cart.orderStatus == CartOrderStatusType.nowChanging) {
      purchaseStatus = 'alter';
    } else {
      purchaseStatus = 'reg';
    }
    cookies['purchase_status'] = purchaseStatus;

    if (authenticationRequired) {
      // トークンの確認 (トークンが切れている場合自動的に再ログインされる)
      await GetIt.I<KeepAliveRepository>().check();
      cookies[loginTokenName] = authenticationManager.loginToken;
    }

    await _setCookies(cookies);
    return true;
  }

  void onWebViewCreated(WebViewController controller, BuildContext context) {
    _controller = controller;
    _controller?.addJavascriptHandler('app_event_log', (dynamic arguments) async {
      final analytics = GetIt.I<AnalyticsManager>();
      analytics.sendWebEvent(jsonParameterString: arguments[0].toString());
    });

    _controller?.addJavascriptHandler('app_page_view_log', (dynamic arguments) async {
      final analytics = GetIt.I<AnalyticsManager>();
      analytics.sendWebPV(jsonParameterString: arguments[0].toString());
    });

    _controller?.addJavascriptHandler('app_user_property_log', (dynamic arguments) async {
      final analytics = GetIt.I<AnalyticsManager>();
      analytics.sendWebUserProperty(jsonParameterString: arguments[0].toString());
    });

    loadStart();
    controller.addJavascriptHandler('Forward', (dynamic _) async {
      logger.info('進む');
      final url = await controller.currentUrl();
      if (!_checkUrl(controller, url!, context)) {
        controller.evaluateJavascript('history.back()');
        return;
      }
      onLoadEnded(controller);
    });
    controller.addJavascriptHandler('Back', (dynamic _) {
      logger.info('戻る');
      return onLoadEnded(controller);
    });
    controller.addJavascriptHandler('TouchedBackButton', (dynamic _) async {
      logger.info('戻るボタン');
      if (!_isNavigated) {
        _isNavigated = true;
        await Navigator.of(context).maybePop();
        _isNavigated = false;
      }
    });

    logger.info('ヘッダハンドラ追加');
    controller.addJavascriptHandler('HeaderRendered', (dynamic _) async {
      logger.info('HeaderRendered hasTitle[$hasTitle] showAppBar[$showAppBar]');
      if (!hasTitle && !showAppBar) {
        // ヘッダ消去不要
        // タイトル取得不要
        logger.info('タイトル取得不要');
        return;
      }

      if (showAppBar && !hasTitle) {
        logger.info('タイトル取得');
        final title = await controller.evaluateJavascript(await rootBundle.loadString(Assets.js.getTitle)) as String?;
        logger.info('title: $title');
        state = state.copyWith(title: title ?? '');
      } else {
        logger.info('条件を満たさないため、タイトルは取得しませんでした');
      }
    });
  }

  Future<void> addJavaScriptHandler(WebViewController controller, String? url) async {
    // ネットスーパー以外のドメインの場合なにもしない
    if (url?.startsWith(iynsBaseUrl) != true) {
      return;
    }
    logger.info('画面遷移検知JavaScript挿入');
    await controller.evaluateJavascript(await rootBundle.loadString(Assets.js.detectPageLoading));
    logger.info('ヘッダ検知JavaScript挿入');
    await controller.evaluateJavascript(await rootBundle.loadString(Assets.js.detectHeaderRendered));
    if (showAppBar || hasTitle) {
      logger.info('ヘッダ削除JavaScript挿入');
      await controller.evaluateJavascript(await rootBundle.loadString(Assets.js.deleteHeader));
    }
    logger.info('フッター削除JavaScript挿入');
    await controller.evaluateJavascript(await rootBundle.loadString(Assets.js.deleteFooter));
  }

  Future<void> getTitle(String? url) async {
    if (hasTitle) {
      return;
    }
    // ネットスーパー以外のドメインの場合
    if (url?.startsWith(iynsBaseUrl) != true) {
      state = state.copyWith(title: '');
      return;
    }
    if (!showAppBar) {
      state = state.copyWith(title: null);
      return;
    }
  }

  Future<void> onProgressChanged(WebViewController controller) async {
    try {
      await controller.evaluateJavascript(await rootBundle.loadString(Assets.js.sendWebGaPv));
      await controller.evaluateJavascript(await rootBundle.loadString(Assets.js.sendWebGaUserProperty));
    } on PlatformException catch (e) {
      final code = e.code;
      final message = e.message ?? '';
      // WkWebViewのインスタンス破棄後に `evaluateJavascript` を呼び出していたら無視する
      if (code == 'evaluateJavascript' && (message.contains('WKWebView') && message.contains('invalidated'))) {
        // エラーが発生したことだけはログに残しておく
        FirebaseCrashlytics.instance.log('$e was raised in onProgressChanged');
        return;
      }
      rethrow;
    }
  }

  Future<void> onPageStarted(WebViewController controller, String? url) async {
    if (Platform.isAndroid) {
      await _controller!.evaluateJavascript(await rootBundle.loadString(Assets.js.onFocusInput));
    }
  }

  Future<void> onLoadEnded(WebViewController controller) async {
    final url = await controller.currentUrl();
    logger.info(url);
    await getTitle(url);
    await addJavaScriptHandler(controller, url);
    await onPageFinished?.call(controller, url, loadStart, loadStop);
    state = state.copyWith(
      loading: false,
      canGoBack: await controller.canGoBack() ?? false,
      canGoForward: await controller.canGoForward() ?? false,
    );

    _controller?.evaluateJavascript(await rootBundle.loadString(Assets.js.sendWebGaEvent));
  }

  /// shouldOverrideUrlLoadingはIYNS以外のURLでしか動作しないので、画面遷移後にも同じチェックを行うために切り出した
  bool _checkUrl(WebViewController controller, String url, BuildContext context) {
    final uri = Uri.parse(url);
    final path = uri.normalizedPath;

    final unwrappedUrl = unwrapRedirectUrl(uri);
    logger.info(unwrappedUrl);
    if (!initialLogin &&
        unwrappedUrl.host == iynsCreditCartRegistrationBaseUrl.host &&
        unwrappedUrl.normalizedPath == iynsCreditCartRegistrationBaseUrl.normalizedPath) {
      final to = uri.replace(
        queryParameters: Map<String, String>.fromEntries(
          uri.queryParameters.entries.where((q) => q.key != 'cmnmmbridhash_128'),
        ),
      );

      // 無限リロードにならないように
      if (_previousUrl == to) {
        return true;
      }

      logger.info('クレカ設定');
      _previousUrl = to;
      controller.loadUrl(to.toString());
      return false;
    }

    // 店舗トップ
    // WebViewで表示しているソーリーの「トップページへ戻る」の遷移先が '/' になっているので '//' で判定する
    // ただし、マイル残高画面のpathも'//'なのでpathとネットスーパードメインかも判定に必要となる
    if (path == iynsShopTopUrl.normalizedPath || (uri.host == Uri.parse(iynsBaseUrl).host && path == '//')) {
      logger.info('店舗トップへ');
      if (!_isNavigated) {
        _isNavigated = true;
        RootPage.flush();
        // この画面に戻ってくることはないので`_isNavigated`を戻さない
      }
      return false;
      // 注文履歴
    } else if (path == Uri(path: '/sp/order-history').normalizedPath) {
      logger.info('注文履歴へ');
      if (!_isNavigated) {
        _isNavigated = true;
        final route = OrdersPage.route();
        final navigator = Navigator.of(context, rootNavigator: true);
        // 店舗トップだけ残して、その上に注文履歴一覧を追加
        navigator.pushAndRemoveUntil(route, ModalRoute.withName(RootPage.name));
        // 注文履歴一覧画面の下の店舗トップを新しいものに置き換えることでリロードをかける
        navigator.replaceRouteBelow(anchorRoute: route, newRoute: RootPage.route());
        // この画面に戻ってくることはないので`_isNavigated`を戻さない
      }
      return false;
      // 子育て応援
    } else if (path == Uri(path: '/sp/member/applications/new-application/01').normalizedPath) {
      logger.info('子育て応援');
      if (!_isNavigated) {
        _isNavigated = true;
        _childcareSupportModal(context, uri).whenComplete(() => _isNavigated = false);
      }
      return false;
      // 定期便
    } else if (path.startsWith('/sp/subscribe')) {
      logger.info('定期便');
      if (!_isNavigated) {
        _isNavigated = true;
        _subscribeOrReserveTransitionModal(context, uri, _SubscribeOrReserve.subscribe)
            .whenComplete(() => _isNavigated = false);
      }
      return false;
      // 予約商品
    } else if (path.startsWith('/sp/reserve')) {
      logger.info('予約商品');
      if (!_isNavigated) {
        _isNavigated = true;
        _subscribeOrReserveTransitionModal(context, uri, _SubscribeOrReserve.reserve)
            .whenComplete(() => _isNavigated = false);
      }
      return false;
    } else if (!canOpenByWebView(uri, deny: deny, allow: allow)) {
      logger.info('外部ブラウザ遷移');
      if (!_isNavigated) {
        _isNavigated = true;
        toExternalBrowser(uri).whenComplete(() => _isNavigated = false);
      }
      return false;
    } else {
      return true;
    }
  }

  FutureOr<ShouldOverrideUrlLoadingAction> shouldOverrideUrlLoading(
    BuildContext context,
    WebViewController controller,
    ShouldOverrideUrlLoadingRequest request,
  ) {
    if (!(request.isForMainFrame ?? false)) {
      return ShouldOverrideUrlLoadingAction.allow;
    }

    final requestUrl = request.url;
    if (requestUrl == null) {
      return ShouldOverrideUrlLoadingAction.allow;
    }

    return _checkUrl(controller, requestUrl, context)
        ? ShouldOverrideUrlLoadingAction.allow
        : ShouldOverrideUrlLoadingAction.cancel;
  }

  void onWebResourceError(WebResourceError error) {
    logger.info(error);
    loadStop();
  }

  Future<void> goBack() async {
    if (_controller == null) {
      return;
    }
    await _controller!.evaluateJavascript('history.back();');
    // popstateイベントのハンドラ登録ではブラウザのonPageStaredイベントが始まった際に
    // DOMがクリアされてイベントハンドラが消えてしまうので、ハンドリングできない
    // そのためにボタン押下時に画面遷移後の動作を自前で行う
    await onLoadEnded(_controller!);
  }

  Future<void> goForward() async {
    if (_controller == null) {
      return;
    }
    await _controller!.evaluateJavascript('history.forward();');
    await onLoadEnded(_controller!);
  }

  void loadStart() {
    state = state.copyWith(loading: true);
  }

  void loadStop() {
    state = state.copyWith(loading: false);
  }

  Future<void> _setCookies(Map<String, String?> cookies) async {
    // AWS S3上にあるアプリ接続先情報の取得に失敗した場合、iynsBaseUrlが空の状態である。
    // その場合CookieManager.instance().setCookie()を行うとエラーが発生してしまうのでここでガードを行う。
    if (iynsBaseUrl.isEmpty) {
      return;
    }

    final url = Uri.parse(iynsBaseUrl);

    cookies.removeWhere((key, value) => value?.isNotEmpty != true);
    for (final cookie in cookies.entries) {
      // Path属性はデフォルトが'/'、SameSite属性はNativeWebViewだと設定できないが、ブラウザの仕様で未設定時はLax
      await CookieManager.instance().setCookie(
        url: url.toString(),
        name: cookie.key,
        value: cookie.value!,
        domain: url.host.replaceFirst(RegExp(r'^www\.'), ''),
        isSecure: true,
      );
    }
  }

  Future<void> _childcareSupportModal(BuildContext context, Uri redirect) => showNormalSelectionDialog<void>(
        context: context,
        dialogName: 'childcareSupportTransitionModal',
        title: 'Webブラウザで申請しますか？',
        additionalText: '申請はイトーヨーカドーネットスーパーWebブラウザ版での対応になります。',
        applicationText: 'Webブラウザで申請する',
        onApplied: (context) => () {
          final url = iynsAuthRedirectUrl(redirect);
          logger.info(url);
          toExternalBrowser(url);
          Navigator.pop(context);
        },
        cancellationText: '閉じる',
        onCanceled: (context) => () => Navigator.pop(context),
      );

  Future<void> _subscribeOrReserveTransitionModal(BuildContext context, Uri redirect, _SubscribeOrReserve to) =>
      showNormalSelectionDialog<void>(
        context: context,
        dialogName: to.dialogName,
        title: 'アプリでは${to.name}がご利用できません\nWebブラウザ版をご利用ください',
        applicationText: 'Webブラウザ版を開く',
        onApplied: (context) => () {
          final url = iynsAuthRedirectUrl(redirect);
          logger.info(url);
          toExternalBrowser(url);
          Navigator.pop(context);
        },
        cancellationText: 'キャンセル',
        onCanceled: (context) => () => Navigator.pop(context),
      );
}

enum _SubscribeOrReserve {
  subscribe,
  reserve,
}

extension _SubscribeOrReserveExt on _SubscribeOrReserve {
  String get dialogName =>
      this == _SubscribeOrReserve.subscribe ? 'subscribeTransitionModal' : 'reserveTransitionModal';

  String get name => this == _SubscribeOrReserve.subscribe ? '定期便' : '予約商品';
}
