import 'package:flutter/material.dart';

import '../../enum/screen_name.dart';
import '../../util/access_point_info_manager.dart';
import '../common/app_buttons.dart';
import '../common/app_colors.dart';
import 'root_page.dart';
import 'web_view_base_page.dart';

/// お届け先住所変更完了
class DeliveryAddressChangeCompletionPage extends StatelessWidget {
  const DeliveryAddressChangeCompletionPage({Key? key}) : super(key: key);

  static Route<Object?> route() => MaterialPageRoute<Object?>(
        builder: (_) => const DeliveryAddressChangeCompletionPage(),
        settings: RouteSettings(name: name),
      );

  static final name = ScreenName.deliveryAddressChangeCompletionPage.value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '受け取り住所の変更完了',
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const _CompletionMessages(),
              BlueElevatedButton.large(
                widthFactor: 0.745,
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).push(_WebViewSpMemberInfoPage.route());
                },
                child: const Text('お住まいの住所を変更'),
              ),
              const SizedBox(height: 40),
              BlueTextButton.underline(
                onPressed: () => RootPage.flush(),
                child: const Text(
                  'トップページへ戻る',
                  style: TextStyle(
                    fontSize: 14,
                    height: 19 / 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CompletionMessages extends StatelessWidget {
  const _CompletionMessages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'ご登録情報の変更が完了いたしました。',
            style: TextStyle(
              color: AppColors.black2,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              height: 22 / 16,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'お客様のメールアドレス宛に変更内容のご案内メールをお送りいたしました。',
            style: TextStyle(
              color: AppColors.black2,
              fontSize: 14,
              fontWeight: FontWeight.w300,
              height: 19 / 14,
            ),
          ),
          SizedBox(height: 12),
          Text(
            'ネットスーパーの受け取り住所を変更いたしました。お住まいの住所も変更される場合は、こちらより変更ください。',
            style: TextStyle(
              color: AppColors.black2,
              fontSize: 14,
              fontWeight: FontWeight.w300,
              height: 19 / 14,
            ),
          ),
        ],
      ),
    );
  }
}

class _WebViewSpMemberInfoPage extends StatelessWidget {
  static Route<Object?> route() => MaterialPageRoute<Object?>(
        builder: (_) => _WebViewSpMemberInfoPage(),
        settings: RouteSettings(name: name),
      );

  static final name = ScreenName.webViewSpMemberInfoPage.value;

  @override
  Widget build(BuildContext context) {
    final redirectUrl = Uri.parse(iynsAccountBaseUrl).replace(
      path: '/account/edit',
      queryParameters: <String, dynamic>{
        'sitecd': '0003',
        'r_url': iynsShopTopUrl.toString(),
      },
    );
    final url = iynsAuthRedirectUrl(redirectUrl, appId: '7ptl', utmCampaign: 'iyns_7id-acc', forceLogin: true);

    return Scaffold(
      body: WebViewBasePage(
        title: 'お住まい住所変更',
        initialUrl: url.toString(),
        showAppBar: true,
        authenticationRequired: true,
      ),
    );
  }
}
