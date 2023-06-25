import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../enum/screen_name.dart';
import '../../gen/assets.gen.dart';
import '../../util/access_point_info_manager.dart';
import '../../util/analytics_manager.dart';
import '../../util/logger.dart';
import '../common/app_colors.dart';
import 'web_view_base_page.dart';

/// このアプリについてページ
class AboutAppPage extends StatelessWidget {
  const AboutAppPage({Key? key}) : super(key: key);

  static Route<Object?> route([Object? arguments]) => MaterialPageRoute<Object?>(
        builder: (_) => const AboutAppPage(),
        settings: RouteSettings(name: name, arguments: arguments),
      );

  static final name = ScreenName.aboutAppPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build AboutAppPage');
    final arrowRightIcon =
        Assets.icons.arrowRight.svg(colorFilter: const ColorFilter.mode(AppColors.iconTheme, BlendMode.srcIn));
    return FutureBuilder(
      future: PackageInfo.fromPlatform(),
      builder: (context, AsyncSnapshot<PackageInfo> snapshot) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('このアプリについて'),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const SizedBox(height: 24),
                _textRow(
                  _text('バージョン'),
                  _text(snapshot.data?.version ?? '-'),
                ),
                _textRow(
                  _text('ライセンス'),
                  arrowRightIcon,
                  onTap: () {
                    final analytics = GetIt.I<AnalyticsManager>();
                    analytics.sendScreenView(ScreenName.licensePage.value);
                    showLicensePage(context: context);
                  },
                ),
                _textRow(
                  _text('ご利用規約・各種規定'),
                  arrowRightIcon,
                  onTap: () => Navigator.push(context, _ServiceTermsWebView.route()),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _textRow(Widget leftContent, Widget rightContent, {Function()? onTap}) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        height: 46,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            leftContent,
            rightContent,
          ],
        ),
      ),
      onTap: onTap,
    );
  }

  Widget _text(String content) {
    return Text(
      content,
      style: const TextStyle(
        fontSize: 14,
        color: AppColors.black2,
        fontWeight: FontWeight.w300,
        height: 19 / 14,
      ),
    );
  }
}

// ご利用規約WebView
class _ServiceTermsWebView extends StatelessWidget {
  const _ServiceTermsWebView({Key? key}) : super(key: key);

  static Route<Object?> route() => MaterialPageRoute(
        builder: (_) => const _ServiceTermsWebView(),
        settings: const RouteSettings(name: '/web_view/service_terms'),
      );

  @override
  Widget build(BuildContext context) {
    return WebViewBasePage(
      authenticationRequired: false,
      showAppBar: true,
      title: 'ご利用規約・各種規定',
      initialUrl: '$iynsWebBaseUrl/help/terms-of-service/',
    );
  }
}
