import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../gen/assets.gen.dart';
import '../state/web_view_state.dart';
import '../view_model/web_view_view_model.dart';
import 'app_colors.dart';

class WebViewBottomAppBar extends StatelessWidget {
  const WebViewBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final canGoBack = context.select((WebViewState state) => state.canGoBack);
    final canGoForward = context.select((WebViewState state) => state.canGoForward);
    final goBack = context.read<WebViewViewModel>().goBack;
    final goForward = context.read<WebViewViewModel>().goForward;
    return BottomAppBar(
      elevation: 0,
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: AppColors.inactive,
              width: 1.0,
            ),
          ),
        ),
        child: Row(
          children: [
            IconButton(
              icon: Assets.icons.webviewArrowLeft.svg(
                  colorFilter: ColorFilter.mode(canGoBack ? AppColors.main : AppColors.iconTheme, BlendMode.srcIn)),
              iconSize: 16,
              onPressed: canGoBack ? goBack : null,
            ),
            IconButton(
              icon: Assets.icons.webviewArrowRight.svg(
                  colorFilter: ColorFilter.mode(canGoForward ? AppColors.main : AppColors.iconTheme, BlendMode.srcIn)),
              iconSize: 16,
              onPressed: canGoForward ? goForward : null,
            ),
          ],
        ),
      ),
    );
  }
}
