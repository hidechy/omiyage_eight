import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../gen/assets.gen.dart';
import '../../common/app_colors.dart';
import '../../state/product_detail_page_state.dart';
import '../web_view_base_page.dart';

// マイルについて
class AboutMile extends StatelessWidget {
  const AboutMile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDisplayMileIcon =
        context.select((ProductDetailPageState state) => state.productDetailModel.product.isDisplayMileIcon);
    return Visibility(
      visible: isDisplayMileIcon,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 32.0),
        child: Row(
          children: [
            TextButton(
                child: const Text(
                  'マイルについて',
                  style: TextStyle(
                    height: 19 / 14,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: AppColors.mainBorder,
                    decoration: TextDecoration.underline,
                  ),
                ),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    _AboutMileWebView.route(),
                  );
                }),
            const SizedBox(width: 4.0),
            Assets.icons.externalLink.svg(),
          ],
        ),
      ),
    );
  }
}

class _AboutMileWebView extends StatelessWidget {
  const _AboutMileWebView({Key? key}) : super(key: key);

  static Route<Object?> route() => MaterialPageRoute(
        builder: (_) => const _AboutMileWebView(),
        settings: const RouteSettings(name: '/web_view/about_mile'),
      );

  @override
  Widget build(BuildContext context) {
    return const WebViewBasePage(
      authenticationRequired: false,
      title: 'マイルについて',
      initialUrl: 'https://www.7mp.omni7.jp/#/user-guide/',
    );
  }
}
