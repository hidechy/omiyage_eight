import 'package:flutter/material.dart';

import '../../util/access_point_info_manager.dart';
import '../view_model/signup_page_view_model.dart';
import 'web_view_base_page.dart';

class SignupWebViewPage extends StatelessWidget {
  const SignupWebViewPage({Key? key}) : super(key: key);

  static Route<bool?> route() => MaterialPageRoute<bool?>(
        builder: (_) => const SignupWebViewPage(),
        settings: const RouteSettings(name: name),
      );

  static const name = 'SignupWebViewPage';

  @override
  Widget build(BuildContext context) {
    final viewModel = SignupPageViewModel(context);
    return WebViewBasePage(
      authenticationRequired: false,
      title: '初期設定',
      initialUrl: signupUrl.toString(),
      onWebViewCreated: viewModel.onWebViewCreated,
      onPageFinished: (_, __, ___, ____) => viewModel.onPageFinished(),
      shouldOverrideUrlLoading: viewModel.shouldOverrideUrlLoading,
    );
  }
}
