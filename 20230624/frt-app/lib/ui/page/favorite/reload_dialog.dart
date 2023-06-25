import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../gen/assets.gen.dart';
import '../../common/app_buttons.dart';
import '../../common/app_dialogs.dart';
import '../../common/app_loading.dart';
import '../../view_model/favorite_page_view_model.dart';

Future<void> showReloadDialog(BuildContext context, Key? key) async {
  return await showDialog(
    context: context,
    routeSettings: const RouteSettings(name: ''),
    barrierDismissible: false,
    barrierColor: const Color.fromRGBO(0x00, 0x00, 0x00, 0.7),
    builder: (dialogContext) => WillPopScope(
      onWillPop: () async => false,
      child: AppDialog(
        key: key,
        clearButtonEnable: false,
        title: 'WEB側で操作された可能性があるため再読み込みをお願いします',
        actions: [
          BlueElevatedButton.large(
            widthFactor: 0.49,
            onPressed: () async {
              Navigator.of(dialogContext).pop();
              showLoadingModal(
                context: context,
                future: () async {
                  return await context.read<FavoritePageViewModel>().initLoad();
                },
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 4,
                    bottom: 4,
                  ),
                  child: Assets.icons.reload.svg(
                    colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    width: 20,
                    height: 20,
                  ),
                ),
                const Text(
                  '再読み込み',
                  style: TextStyle(height: 1),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
