import 'package:flutter/material.dart';

import '../../util/access_point_info_manager.dart';
import '../../util/logger.dart';
import 'web_view_base_page.dart';

class NotificationsWebView extends StatelessWidget {
  const NotificationsWebView({Key? key}) : super(key: key);

  static Route<Object?> route() {
    return MaterialPageRoute(
      builder: (_) => const NotificationsWebView(),
      settings: const RouteSettings(name: name),
    );
  }

  static const name = '';

  @override
  Widget build(BuildContext context) {
    logger.info('Build NotificationsWebView');
    return WebViewBasePage(
      initialUrl: '$iynsWebBaseUrl/notification/important/',
      showAppBar: true,
    );
  }
}
