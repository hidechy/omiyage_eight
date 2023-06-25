import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../data/api/model/message_model.dart';
import '../../util/access_point_info_manager.dart';
import '../../util/logger.dart';
import 'web_view_base_page.dart';

/// お知らせ詳細画面
class NotificationDetailWebViewPage extends StatelessWidget {
  const NotificationDetailWebViewPage({Key? key}) : super(key: key);
  static Route<Object?> route({required MessageModel notification}) => MaterialPageRoute<Object?>(
        builder: (_) => Provider.value(
          value: notification,
          child: const NotificationDetailWebViewPage(),
        ),
        settings: const RouteSettings(name: name),
      );

  static const name = 'NotificationDetailWebViewPage';

  @override
  Widget build(BuildContext context) {
    logger.info('Build NotificationDetailPage');
    final type = context.select((MessageModel args) => args.messageDiv.name);
    final id = context.select((MessageModel args) => args.messageId);
    return WebViewBasePage(
      showAppBar: true,
      initialUrl: '$iynsWebBaseUrl/notification/$type/$id/',
    );
  }
}
