import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:get_it/get_it.dart';
import 'package:native_webview/native_webview.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../enum/analytics_event_type.dart';
import '../../enum/screen_name.dart';
import '../../enum/static_content_type.dart';
import '../../enum/user_property_type.dart';
import '../../gen/assets.gen.dart';
import '../../util/access_point_info_manager.dart';
import '../../util/analytics_manager.dart';
import '../../util/authentication_manager.dart';
import '../../util/cart_info_manager.dart';
import '../../util/customer_manager.dart';
import '../../util/logger.dart';
import '../../util/url.dart';
import '../common/app_buttons.dart';
import '../common/app_colors.dart';
import '../common/app_dialogs.dart';
import '../common/app_loading.dart';
import '../common/pull_to_refresh.dart';
import '../state/customer_state.dart';
import '../state/my_page_state.dart';
import '../view_model/my_page_view_model.dart';
import 'about_app_page.dart';
import 'delivery_address_change_page.dart';
import 'favorite/favorites_page.dart';
import 'login_web_view_page.dart';
import 'orders_page.dart';
import 'root_page.dart';
import 'web_view_base_page.dart';

/// マイページのトップ
class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  static Route<Object?> route() => MaterialPageRoute<Object?>(
        builder: (_) => const MyPage(),
        settings: RouteSettings(name: name),
      );

  static final name = ScreenName.myPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build MyPage');
    return StateNotifierProvider<MyPageViewModel, MyPageState>(
      create: (_) => MyPageViewModel(),
      builder: (context, _) {
        final isMember = context.select((CustomerState state) => state.isMember);
        final content = SingleChildScrollView(
          child: Column(
            children: [
              const _CustomerMe(),
              const _Required7Id(),
              if (isMember)
                _ContentsBlock(
                  title: 'お買い物情報',
                  subContents: [
                    _SubContent(
                      title: '受け取り住所の設定・変更',
                      onTap: () => delivery(context: context, isMember: isMember),
                    ),
                    _SubContent(
                      title: 'クレジットカード設定',
                      onTap: () {
                        Navigator.of(context, rootNavigator: true).push(_CreditCardWebView.route());
                      },
                      isExternalLink: true,
                    ),
                    _SubContent(
                      title: '注文履歴',
                      onTap: () async =>
                          await _loginCheck(context, isMember, () => Navigator.of(context).push(OrdersPage.route())),
                    ),
                    _SubContent(
                      title: 'お気に入り',
                      onTap: () async =>
                          await _loginCheck(context, isMember, () => Navigator.of(context).push(FavoritesPage.route())),
                    ),
                  ],
                ),
              if (isMember)
                _ContentsBlock(
                  title: 'お知らせ・通知',
                  subContents: [
                    _SubContent(
                      title: 'メールマガジン設定',
                      onTap: () async {
                        await _loginCheck(
                          context,
                          isMember,
                          () => Navigator.of(context, rootNavigator: true)
                              .push(_WebViewWithLoginPage.route(_WebViewType.mailMagazine)),
                        );
                      },
                    ),
                  ],
                ),
              _ContentsBlock(
                title: 'アカウント・会員情報',
                subContents: [
                  if (isMember)
                    _SubContent(
                      title: '会員情報',
                      onTap: () async {
                        await _loginCheck(
                          context,
                          isMember,
                          () => Navigator.of(context, rootNavigator: true)
                              .push(_WebViewWithLoginPage.route(_WebViewType.memberInfo)),
                        );
                      },
                    ),
                  if (isMember)
                    _SubContent(
                      title: '会員サービス',
                      onTap: () async {
                        await _loginCheck(
                          context,
                          isMember,
                          () => Navigator.of(context, rootNavigator: true)
                              .push(_WebViewWithLoginPage.route(_WebViewType.memberService)),
                        );
                      },
                    ),
                  _SubContent(
                    title: 'ヘルプ・お問い合わせ',
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).push(isMember
                          ? _WebViewWithLoginPage.route(_WebViewType.help)
                          : _BaseWebView.route(_WebViewType.help));
                    },
                  ),
                  _SubContent(
                    title: 'このアプリについて',
                    onTap: () {
                      Navigator.of(context).push(AboutAppPage.route());
                    },
                  ),
                  _SubContent(
                    title: '特定商取引法に基づく表示',
                    onTap: () {
                      Navigator.of(
                        context,
                        rootNavigator: true,
                      ).push(
                        _BaseWebView.route(_WebViewType.commercialTransactions),
                      );
                    },
                  ),
                  _SubContent(
                    title: '利用規約',
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).push(_BaseWebView.route(_WebViewType.serviceTerms));
                    },
                  ),
                  _SubContent(
                    title: '情報セキュリティについて',
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).push(_BaseWebView.route(_WebViewType.security));
                    },
                  ),
                  _SubContent(
                    title: '個人情報の取扱いについて',
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).push(_BaseWebView.route(_WebViewType.privacyPolicy));
                    },
                    isExternalLink: true,
                  ),
                ],
                visibleBottomBorder: false,
              ),
              const _LogoutContent(),
            ],
          ),
        );

        return Scaffold(
          // ログインしていたら、会員情報取得API（画面個別のエラーハンドリングはなし）
          body: SafeArea(
            child: isMember
                ? LoadingFullScreen(
                    future: () => context.read<MyPageViewModel>().getCustomerInfo(),
                    content: PullToRefresh(
                      child: content,
                      onRefresh: (context) => context.read<MyPageViewModel>().getCustomerInfo(),
                    ),
                  )
                : content,
          ),
        );
      },
    );
  }

  Future<void> _loginCheck(BuildContext context, bool isMember, Future<void> Function() callback) async {
    if (isMember) {
      callback();
      return;
    }
    // true: 見学ログインからのログイン成功成功、null：戻るボタン押下
    final succeeded = await showLoginDialog(context: context);
    if (succeeded == true) {
      callback();
    }
    return;
  }

  /// 配達住所の設定・変更
  Future<void> delivery({
    required BuildContext context,
    required bool isMember,
  }) async {
    // 見学ログインなら、ログインモーダル表示
    if (!isMember) {
      final succeeded = await showLoginDialog(context: context);
      if (succeeded != true) {
        return;
      }
    }

    final analytics = GetIt.I<AnalyticsManager>();
    analytics.sendEvent(eventType: AnalyticsEventType.changeDeliveryAddress);

    final deliveryAddress = context.read<CustomerManager>().member?.deliveryAddress;
    Navigator.of(context, rootNavigator: true).push(
      DeliveryAddressChangePage.route(deliveryAddress!),
    );
    _sendUserProperty(context);
  }

  void _sendUserProperty(BuildContext context) {
    final analytics = GetIt.I<AnalyticsManager>();
    final customerInfo = context.read<CustomerState>().member;
    if (customerInfo != null) {
      analytics.sendUserProperty(
        userPropertyType: UserPropertyType.shopCd,
        value: customerInfo.deliveryShop.first.shopCode,
      );
    }
  }
}

/// 会員情報（名称・店舗）
class _CustomerMe extends StatelessWidget {
  const _CustomerMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMember = context.select((CustomerState state) => state.isMember);
    const verticalMargin24 = SizedBox(height: 24);
    return Column(
      children: [
        verticalMargin24,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              isMember
                  ? context.select((CustomerState state) => state.member!.lastName + state.member!.firstName)
                  : 'ゲスト',
              style: const TextStyle(
                color: AppColors.black2,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                height: 28 / 20,
              ),
            ),
            const Text(
              'さん',
              style: TextStyle(
                color: AppColors.black2,
                fontSize: 16,
                fontWeight: FontWeight.w300,
                height: 22 / 16,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox.square(
              dimension: 20,
              child: Assets.icons.shop.svg(colorFilter: const ColorFilter.mode(AppColors.main, BlendMode.srcIn)),
            ),
            const Padding(padding: EdgeInsets.only(left: 4)),
            Text(
              isMember
                  ? context.select(
                      (CustomerState state) => state.member!.deliveryShop.first.shopName,
                    )
                  : context.select(
                      (CartInfoState state) => state.shop.shopName,
                    ),
              style: const TextStyle(
                color: AppColors.gray1,
                fontSize: 14,
                fontWeight: FontWeight.w300,
                height: 19 / 14,
              ),
            ),
          ],
        ),
        verticalMargin24,
        Visibility(
          visible: isMember,
          child: Column(
            children: [
              Text(
                'nanacoポイント：${context.select((MyPageState state) => state.nanacoPoint) ?? '-'}ポイント',
                style: const TextStyle(
                  fontSize: 14,
                  height: 19 / 14,
                  color: AppColors.gray1,
                ),
              ),
              verticalMargin24,
              BlueTextButton.underline(
                onPressed: () async {
                  final navigator = Navigator.of(context, rootNavigator: true);

                  final redirectUrl = Uri.parse('$iynsMileProgramBaseUrl/#/init');
                  final url = iynsAuthRedirectUrl(
                    redirectUrl,
                    appId: 'bp_iy',
                    utmCampaign: 'iyns_7mp',
                    forceLogin: true,
                  ).toString();
                  final analytics = GetIt.I<AnalyticsManager>();
                  analytics.sendEvent(eventType: AnalyticsEventType.viewMileageBalance);
                  navigator.push(_MileWebView.route(url));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('マイル残高を見る'),
                    const SizedBox(width: 4),
                    Assets.icons.externalLink.svg(),
                  ],
                ),
              ),
              verticalMargin24,
            ],
          ),
        ),
      ],
    );
  }
}

/// 「ご注文には7iDが必要です」部分
class _Required7Id extends StatelessWidget {
  const _Required7Id({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !context.select((CustomerState state) => state.isMember),
      child: Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        width: double.infinity,
        decoration: const BoxDecoration(color: AppColors.background2),
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 16)),
            const Text('ご注文には7iDが必要です',
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 19 / 14,
                )),
            const Padding(padding: EdgeInsets.only(top: 12)),
            Text('必要な時にスムーズに注文に進めるように、ログインしておきましょう。7iDをお持ちでない方は、新規会員登録にお進みください。',
                style: TextStyle(
                  color: AppColors.black.withOpacity(0.8),
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  height: 19 / 14,
                )),
            const Padding(padding: EdgeInsets.only(top: 12)),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: BlueOutlinedButton.medium(
                    widthFactor: 0.98,
                    onPressed: () async {
                      final loginComplete = await showSignupDialog(context: context);
                      if (loginComplete == true) {
                        RootPage.flush();
                      }
                    },
                    child: const Text('新規会員登録'),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: BlueElevatedButton.medium(
                    widthFactor: 0.98,
                    onPressed: () async {
                      final loginComplete =
                          await Navigator.of(context, rootNavigator: true).push(LoginWebViewPage.route());
                      if (loginComplete != null) {
                        RootPage.flush();
                      }
                    },
                    analyticsEventType: AnalyticsEventType.loginOp,
                    child: const Text('ログイン'),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 16)),
          ],
        ),
      ),
    );
  }
}

// メニューブロック（仕切り線まで）
class _ContentsBlock extends StatelessWidget {
  const _ContentsBlock({
    required this.title,
    required this.subContents,
    this.visibleBottomBorder = true,
    Key? key,
  }) : super(key: key);

  final String title;
  final List<_SubContent> subContents;
  final bool visibleBottomBorder;

  @override
  Widget build(BuildContext context) {
    final isMember = context.select((CustomerState state) => state.isMember);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: isMember,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, top: 24, bottom: 12),
            child: Text(
              title,
              style: TextStyle(
                color: AppColors.black.withOpacity(0.6),
                fontSize: 14,
                fontWeight: FontWeight.w600,
                height: 19 / 14,
              ),
            ),
          ),
          replacement: const SizedBox(height: 24),
        ),
        for (final subContent in subContents)
          _MenuContentCard(
            title: subContent.title,
            onTap: subContent.onTap,
            isExternalLink: subContent.isExternalLink,
          ),
        Visibility(
          visible: visibleBottomBorder,
          child: const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Divider(),
          ),
        ),
      ],
    );
  }
}

/// メニューの項目部分
class _MenuContentCard extends StatelessWidget {
  const _MenuContentCard({required this.title, required this.onTap, this.isExternalLink = false, Key? key})
      : super(key: key);

  final String title;
  final void Function() onTap;
  final bool isExternalLink;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: title,
                      style: TextStyle(
                        color: AppColors.black.withOpacity(0.8),
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        height: 19 / 14,
                      ),
                    ),
                    if (isExternalLink)
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Assets.icons.externalLink.svg(),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Assets.icons.arrowRight
                  .svg(colorFilter: const ColorFilter.mode(AppColors.iconTheme, BlendMode.srcIn)),
            ),
          ],
        ),
      ),
    );
  }
}

class _SubContent {
  const _SubContent({required this.title, required this.onTap, this.isExternalLink = false});

  final String title;
  final void Function() onTap;
  final bool isExternalLink;
}

// ログアウト
class _LogoutContent extends StatelessWidget {
  const _LogoutContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: context.select((CustomerState state) => state.isMember),
      child: SizedBox(
        width: double.infinity,
        height: 46,
        child: InkWell(
          onTap: () {
            showAttentionSelectionDialog<void>(
              context: context,
              dialogName: 'LogoutModal',
              title: 'ログアウトしますか？',
              applicationText: 'OK',
              onApplied: (context) => () async {
                final analytics = GetIt.I<AnalyticsManager>();
                analytics.sendEvent(eventType: AnalyticsEventType.logout);

                _resetUserPropertyByCustomerInfo();
                await GetIt.I<AuthenticationManager>().logout();
              },
              cancellationText: 'キャンセル',
              onCanceled: (context) => () {
                Navigator.pop(context);
              },
            );
          },
          child: Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 16)),
              Text(
                'ログアウト',
                style: TextStyle(
                  color: AppColors.black.withOpacity(0.8),
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _resetUserPropertyByCustomerInfo() {
    final analytics = GetIt.I<AnalyticsManager>();
    analytics.sendUserId(null);
    analytics.sendUserProperty(userPropertyType: UserPropertyType.shopCd, value: null);
    analytics.sendUserProperty(userPropertyType: UserPropertyType.age, value: null);
    analytics.sendUserProperty(userPropertyType: UserPropertyType.loginType, value: null);
    analytics.sendUserProperty(userPropertyType: UserPropertyType.memberType, value: null);
    analytics.sendUserProperty(userPropertyType: UserPropertyType.deliveryChargeType, value: null);
    analytics.sendUserProperty(userPropertyType: UserPropertyType.todofuken, value: null);
    analytics.sendUserProperty(userPropertyType: UserPropertyType.continueDay, value: null);
  }
}

/// ログインが必要なWebView
class _WebViewWithLoginPage extends StatelessWidget {
  const _WebViewWithLoginPage({Key? key}) : super(key: key);

  static Route<Object?> route(_WebViewType type) => MaterialPageRoute<Object?>(
        builder: (_) => Provider.value(
          value: type,
          child: const _WebViewWithLoginPage(),
        ),
        settings: const RouteSettings(name: name),
      );

  static const name = '';

  @override
  Widget build(BuildContext context) {
    final type = context.watch<_WebViewType>();
    logger.info('called _webview: ${type.url}');
    return Scaffold(
      body: WebViewBasePage(
        showAppBar: type == _WebViewType.help ? true : false,
        initialUrl: type.url,
        title: type.title,
        onPageFinished: (_, url, __, ___) => _onPageFinished(url),
      ),
    );
  }

  Future<void> _onPageFinished(String? url) async {
    final analytics = GetIt.I<AnalyticsManager>();
    final pageName = StaticContentTypeExt.urlToPage(url);
    if (pageName != null) {
      analytics.sendScreenView(pageName);
    }
  }
}

/// ログインの必要がないWebview
class _BaseWebView extends StatelessWidget {
  const _BaseWebView({Key? key}) : super(key: key);

  static Route<Object?> route(_WebViewType type) => MaterialPageRoute<Object?>(
        builder: (_) => Provider.value(
          value: type,
          child: const _BaseWebView(),
        ),
        settings: const RouteSettings(name: name),
      );

  static const name = '';

  @override
  Widget build(BuildContext context) {
    final type = context.watch<_WebViewType>();
    logger.info('called _webview: ${type.url}');
    return Scaffold(
      body: WebViewBasePage(
        authenticationRequired: false,
        showAppBar: true,
        title: type.title,
        initialUrl: type.url,
      ),
    );
  }
}

class _CreditCardWebView extends StatelessWidget {
  const _CreditCardWebView({Key? key}) : super(key: key);

  static Route<Object?> route() => MaterialPageRoute<Object?>(
        builder: (_) => const _CreditCardWebView(),
        settings: const RouteSettings(name: name),
      );
  static const name = 'other/web_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewBasePage(
        authenticationRequired: false,
        initialLogin: true,
        title: _WebViewType.credit.title,
        initialUrl: _WebViewType.credit.url,
        shouldOverrideUrlLoading: (_, request) {
          final url = Uri.tryParse(request.url ?? '');
          if (url?.host == afterLoginUrl.host && url?.normalizedPath == afterLoginUrl.normalizedPath) {
            logger.info(url);
            Navigator.of(context).pop();
            return ShouldOverrideUrlLoadingAction.cancel;
          }
          return ShouldOverrideUrlLoadingAction.allow;
        },
      ),
    );
  }
}

enum _WebViewType {
  credit,
  memberInfo,
  memberService,
  mailMagazine,
  help,
  commercialTransactions,
  serviceTerms,
  security,
  privacyPolicy,
}

extension _WebViewTypeExt on _WebViewType {
  String? get title {
    switch (this) {
      case _WebViewType.credit:
        return 'クレジットカード設定';
      case _WebViewType.help:
        return 'ヘルプ・お問い合わせ';
      case _WebViewType.commercialTransactions:
        return '特定商取引法に基づく表示';
      case _WebViewType.serviceTerms:
        return '利用規約';
      case _WebViewType.security:
        return '情報セキュリティについて';
      case _WebViewType.privacyPolicy:
        return 'プライバシーポリシー';
      default:
        return null;
    }
  }

  String get url {
    switch (this) {
      case _WebViewType.credit:
        return iynsCreditCardRegistrationUrl.toString();
      case _WebViewType.memberInfo:
        return '$iynsWebBaseUrl/member/info/';
      case _WebViewType.memberService:
        return '$iynsWebBaseUrl/member/';
      case _WebViewType.mailMagazine:
        return '$iynsWebBaseUrl/member/magazine/edit/';
      case _WebViewType.help:
        return '$iynsWebBaseUrl/help/';
      case _WebViewType.commercialTransactions:
        return '$iynsWebBaseUrl/legal/specified-commercial-transactions/';
      case _WebViewType.serviceTerms:
        return '$iynsWebBaseUrl/help/terms-of-service/';
      case _WebViewType.security:
        return '$iynsWebBaseUrl/help/safety/security/';
      case _WebViewType.privacyPolicy:
        return '$iyBaseUrl/support/policy.html';
    }
  }
}

class _MileWebView extends StatelessWidget {
  const _MileWebView({Key? key}) : super(key: key);

  static Route<Object?> route(String url) => MaterialPageRoute<Object?>(
        builder: (_) => Provider.value(
          value: url,
          child: const _MileWebView(),
        ),
        settings: const RouteSettings(name: name),
      );

  static const name = 'other/web_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewBasePage(
        authenticationRequired: false,
        initialUrl: context.watch<String>(),
        title: 'SEVEN MILE PROGRAM',
      ),
    );
  }
}
