import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../gen/assets.gen.dart';
import '../state/customer_state.dart';
import 'app_colors.dart';

class AlertForMigration extends StatelessWidget {
  const AlertForMigration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMigrationToCenter =
        context.select((CustomerState value) => value.member?.migrationToCenter.isNotEmpty ?? false);
    return Visibility(
      visible: isMigrationToCenter,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.warning1,
            width: 4.0,
          ),
          color: AppColors.warning2,
        ),
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
        child: Text.rich(
          TextSpan(
            children: [
              WidgetSpan(
                child: Padding(
                  padding: const EdgeInsets.only(right: 6.0),
                  child: Assets.icons.warning.svg(),
                ),
              ),
              const TextSpan(
                text: 'システムの移行期間のため、先に受け取り日時を選択して下さい。\n',
                style: TextStyle(
                  color: AppColors.warning1,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  height: 25 / 18,
                ),
              ),
              const WidgetSpan(
                child: SizedBox(
                  height: 8.0,
                  width: double.infinity,
                ),
              ),
              const TextSpan(
                text: '※先に商品を選択した場合ご希望の受け取り日時によっては、カートがリセットされることがございます。',
                style: TextStyle(
                  color: AppColors.warning1,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300,
                  height: 19 / 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
