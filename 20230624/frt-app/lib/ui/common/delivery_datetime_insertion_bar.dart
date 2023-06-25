import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../enum/analytics_event_type.dart';
import '../../util/analytics_manager.dart';
import '../../util/cart_info_manager.dart';
import '../../util/datetime_formatter.dart';
import '../page/delivery_datetime_page.dart';
import '../page/root_page.dart';
import 'app_dialogs.dart';
import 'insertion_bar.dart';

/// 受け取り日時差し込み
class DeliveryDatetimeInsertionBar extends StatelessWidget {
  const DeliveryDatetimeInsertionBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isCartAllocationValid = context.select((CartInfoState state) => state.isCartAllocationValid);
    final deliveryPlanFromDatetime = context.select((CartInfoState state) => state.deliveryPlanFromDatetime);
    final deliveryPlanToDatetime = context.select((CartInfoState state) => state.deliveryPlanToDatetime);
    return isCartAllocationValid
        ? InsertionBar(
            title: '受け取り日時',
            content: formatFromToDateTimeMd(
              deliveryPlanFromDatetime,
              deliveryPlanToDatetime,
            ),
            buttonText: '変更する',
            onPressed: () async {
              await showNormalSelectionDialog<void>(
                context: context,
                dialogName: '',
                title: '受け取り日時を変更しますか？',
                additionalText: '選択する日時によってはカート内の商品を引き継げない場合がございます',
                applicationText: '変更する',
                onApplied: (context) => () async {
                  final analytics = GetIt.I<AnalyticsManager>();
                  analytics.sendEvent(eventType: AnalyticsEventType.changeDeliveryTime);

                  final isEnsureCart = await Navigator.of(context, rootNavigator: true).pushReplacement(
                    DeliveryDatetimePage.route(fullscreenDialog: true),
                  );
                  // 便確保成功時、店舗トップに遷移
                  if (isEnsureCart ?? false) {
                    RootPage.flush();
                  }
                },
                cancellationText: '変更しない',
                onCanceled: (_context) => () => Navigator.pop(_context),
              );
            },
          )
        : const SizedBox.shrink();
  }
}
