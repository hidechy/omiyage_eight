import 'package:flutter/material.dart';

import '../../../enum/screen_name.dart';
import '../../../gen/assets.gen.dart';
import '../../../util/logger.dart';
import '../../common/app_buttons.dart';
import '../../common/app_colors.dart';
import '../../common/cart_button.dart';
import '../../common/order_changing_bar.dart';
import '../../common/total_price.dart';

/// 医薬品のご購入手順画面
class OrderMedicineProcessPage extends StatelessWidget {
  const OrderMedicineProcessPage({Key? key}) : super(key: key);
  static Route<Object?> route([Object? arguments]) => MaterialPageRoute<Object?>(
        builder: (_) => const OrderMedicineProcessPage(),
        settings: RouteSettings(name: name, arguments: arguments),
      );

  static final name = ScreenName.orderMedicineProcessPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build OrderMedicineProcessPage');
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text('医薬品のご購入手順'),
      ),
      body: Column(
        children: [
          const OrderChangingBar(),
          Expanded(
            child: Stack(
              children: const [
                _Body(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: TotalPrice(),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: CartButton(key: GlobalKey<CartButtonState>()),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 24.75),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 22.5,
                width: 22.5,
                child: Assets.icons.warning.svg(),
              ),
              const SizedBox(width: 8.75),
              const Text(
                '医薬品の販売について',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black2,
                  height: 25 / 18,
                  leadingDistribution: TextLeadingDistribution.even,
                ),
              ),
            ],
          ),
          const SizedBox(height: 27),
          const _WarningList(),
          const SizedBox(height: 24),
          const _ShoppingPageTransitionButton(),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

/// 注意事項一覧
class _WarningList extends StatelessWidget {
  const _WarningList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _Warning(number: 1, warning: '商品毎の"使用上の注意"、"添付文書"、"購入事前確認"を必ずご確認の上、ご購入ください。'),
        SizedBox(height: 16),
        _Warning(number: 2, warning: 'ご購入された医薬品が欠品した際の代替商品のお届けは、お断りさせていただいております。'),
        SizedBox(height: 16),
        _Warning(number: 3, warning: '購入数を制限させていただく場合がございます。'),
        SizedBox(height: 16),
        _Warning(number: 4, warning: '当店では使用期限が６ヶ月以上ある医薬品のみ配達いたします。'),
      ],
    );
  }
}

/// 注意事項
class _Warning extends StatelessWidget {
  const _Warning({required this.number, required this.warning, Key? key}) : super(key: key);

  final int number;
  final String warning;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 14,
        color: AppColors.black2,
        height: 19 / 14,
        leadingDistribution: TextLeadingDistribution.even,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$number.'),
          const SizedBox(width: 8),
          Flexible(
            child: Text(warning),
          ),
        ],
      ),
    );
  }
}

/// お買い物画面へボタン
class _ShoppingPageTransitionButton extends StatelessWidget {
  const _ShoppingPageTransitionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlueElevatedButton.large(
      widthFactor: 0.68,
      onPressed: () async {
        Navigator.of(context).pop();
      },
      child: const Text('お買物画面へ'),
    );
  }
}
