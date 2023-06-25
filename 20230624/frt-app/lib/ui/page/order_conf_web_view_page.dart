import 'dart:io';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../util/access_point_info_manager.dart';
import '../../util/logger.dart';
import '../view_model/order_conf_web_view_page_view_model.dart';
import 'root_page.dart';
import 'web_view_base_page.dart';

class OrderConfWebViewPageArguments {
  const OrderConfWebViewPageArguments({required this.cartId});

  final int cartId;
}

class OrderConfWebViewPage extends StatelessWidget {
  const OrderConfWebViewPage({Key? key}) : super(key: key);

  static Route<Object?> route({required int cartId}) => MaterialPageRoute<Object?>(
        builder: (_) => Provider.value(
          value: OrderConfWebViewPageArguments(cartId: cartId),
          child: const OrderConfWebViewPage(),
        ),
        settings: const RouteSettings(name: name),
      );

  static const name = 'OrderConfWebViewPage';

  @override
  Widget build(BuildContext context) {
    logger.info('Build OrderConfWebViewPage');
    return Provider<OrderConfWebViewPageViewModel>(
      create: (_) => OrderConfWebViewPageViewModel(),
      builder: (context, _) {
        final cartId = context.select((OrderConfWebViewPageArguments value) => value.cartId);
        final initialUrl = '$iynsWebBaseUrl/order/$cartId/';
        return WillPopScope(
          child: Scaffold(
            resizeToAvoidBottomInset: !Platform.isIOS,
            body: WebViewBasePage(
              initialUrl: (initialUrl),
              onWebViewCreated: context.read<OrderConfWebViewPageViewModel>().onWebViewCreated,
              onPageFinished: (controller, url, _, __) =>
                  context.read<OrderConfWebViewPageViewModel>().onPageFinished(controller),
            ),
          ),
          onWillPop: () async {
            // 注文完了している場合、店舗トップに戻る
            if (context.read<OrderConfWebViewPageViewModel>().isOrderComplete) {
              Navigator.pushAndRemoveUntil(context, RootPage.route(), (route) => false);
              return false;
            }
            return true;
          },
        );
      },
    );
  }
}
