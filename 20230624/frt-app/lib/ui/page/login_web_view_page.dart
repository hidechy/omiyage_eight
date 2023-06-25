import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../util/access_point_info_manager.dart';
import '../common/app_loading.dart';
import '../view_model/login_page_view_model.dart';
import 'web_view_base_page.dart';

class LoginWebViewPage extends StatelessWidget {
  const LoginWebViewPage({Key? key}) : super(key: key);

  static Route<bool?> route([Object? arguments]) => MaterialPageRoute<bool?>(
        builder: (_) => const LoginWebViewPage(),
        settings: RouteSettings(name: name, arguments: arguments),
      );

  static const name = 'LoginWebViewPage';

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => LoginPageViewModel(),
      builder: (context, _) {
        final viewModel = context.read<LoginPageViewModel>();
        return LoadingFullScreen(
          future: viewModel.deleteAllCookies,
          content: WebViewBasePage(
            // この段階ではログインできていないので
            authenticationRequired: false,
            // 会員基盤側のtitleが'７ｉＤアカウントサービス｜ログイン：７ｉＤ入力'となっているためアプリで固定タイトルを設定
            title: 'ログイン',
            initialUrl: iynsAuthUrl.toString(),
            onPageStarted: viewModel.onPageStarted,
            onPageFinished: (controller, url, _, loadStop) async =>
                await viewModel.onPageFinished(context, controller, url, loadStop),
            shouldOverrideUrlLoading: viewModel.shouldOverrideUrlLoading,
          ),
        );
      },
    );
  }
}
