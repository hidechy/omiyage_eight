import 'package:flutter/material.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../../../enum/screen_name.dart';
import '../../../gen/assets.gen.dart';
import '../../../util/logger.dart';
import '../../common/app_buttons.dart';
import '../../common/app_colors.dart';
import '../../common/app_loading.dart';
import '../../common/drug_confirmation.dart';
import '../../common/order_changing_bar.dart';
import '../../state/medicine_confirmations_page_state.dart';
import '../../view_model/medicine_confirmations_page_view_model.dart';

/// 医薬品購入事前確認事項ページ
class MedicineConfirmationsPage extends StatelessWidget {
  const MedicineConfirmationsPage({Key? key}) : super(key: key);

  static Route<bool?> route() => MaterialPageRoute<bool?>(
        builder: (_) => const MedicineConfirmationsPage(),
        settings: RouteSettings(name: name),
      );

  static final name = ScreenName.medicineConfirmationsPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build MedicineConfirmationsPage');
    return StateNotifierProvider<MedicineConfirmationsPageViewModel, MedicineConfirmationsPageState>(
        create: (context) => MedicineConfirmationsPageViewModel(context),
        builder: (context, _) {
          return _MedicineConfirmationsWidget();
        });
  }
}

class _MedicineConfirmationsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PrimaryScrollController(
      controller: context.read<MedicineConfirmationsPageViewModel>().scrollController,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            '購入事前確認',
          ),
          actions: [
            IconButton(
              padding: const EdgeInsets.only(right: 21),
              iconSize: 18,
              color: AppColors.gray2,
              onPressed: () => _closeFullScreenModal(context),
              icon: Assets.icons.clear.svg(),
            ),
          ],
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: const <Widget>[
            OrderChangingBar(),
            _MedicineConfirmationsBody(),
          ],
        ),
      ),
    );
  }

  void _closeFullScreenModal(BuildContext context) {
    Navigator.pop(context, false);
  }
}

/// 購入事前確認事項を構成するWidget
class _MedicineConfirmationsBody extends StatelessWidget {
  const _MedicineConfirmationsBody();

  @override
  Widget build(BuildContext context) {
    final _isExpanded = context.select((MedicineConfirmationsPageState state) => state.isExpanded);
    final _isActive = context.select((MedicineConfirmationsPageState state) => state.isActive);

    return Expanded(
      child: SingleChildScrollView(
        controller: context.read<MedicineConfirmationsPageViewModel>().scrollController,
        child: Padding(
          padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(border: Border.all(color: AppColors.inactive)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '医薬品の販売について',
                          style: _TextStyles.head1,
                        ),
                        const Text(
                          '※このページは医薬品のご購入に関わらず表示させて頂いております。',
                          style: _TextStyles.paragraph,
                        ),
                        const SizedBox(height: 32),
                        const Text(
                          'お客様へ',
                          style: _TextStyles.head2,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          '当店は、情報提供を適切に行う為の構造設備及び販売体制を、次のように整備しております。'
                          'この掲示は「医薬品、医療機器等の品質、'
                          '有効性及び安全性の確保等に関する法律」第九条の四、第二十九条の三により規定されております。'
                          '（以下、「医薬品医療機器等法」と記載）',
                          maxLines: _isExpanded ? null : 3,
                          style: _TextStyles.paragraph,
                          overflow: TextOverflow.fade,
                        ),
                        const SizedBox(height: 16),
                        Visibility(
                          visible: _isExpanded,
                          child: const MedicineConfirmColumns(),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: !_isExpanded,
                    child: Align(
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              AppColors.white.withOpacity(0.0),
                              AppColors.white,
                            ],
                            stops: const [0.0, 0.8],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Visibility(
                visible: _isExpanded,
                child: const SizedBox(height: 16),
              ),
              Center(
                child: OutlinedButton.icon(
                  label: _isExpanded ? const Text('閉じる') : const Text('すべて表示する'),
                  icon: _isExpanded
                      ? Assets.icons.arrowUp.svg(colorFilter: const ColorFilter.mode(AppColors.gray2, BlendMode.srcIn))
                      : Assets.icons.arrowDown
                          .svg(colorFilter: const ColorFilter.mode(AppColors.gray2, BlendMode.srcIn)),
                  style: OutlinedButton.styleFrom(
                    // 文字色
                    foregroundColor: AppColors.gray1,
                    textStyle: _TextStyles.paragraph,
                    side: const BorderSide(
                      color: AppColors.gray2,
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
                  ),
                  onPressed: () {
                    context.read<MedicineConfirmationsPageViewModel>().isExpanded = !_isExpanded;
                  },
                ),
              ),
              const SizedBox(height: 16),
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  '上記をご確認後、下の「承認する」ボタンを\nクリックしてください。',
                  textAlign: TextAlign.center,
                  style: _TextStyles.paragraph,
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: BlueElevatedButton.large(
                  widthFactor: 0.7,
                  onPressed: _isActive
                      ? () async {
                          await showLoadingModal(
                            context: context,
                            future: () async {
                              await MedicineConfirmationsPageViewModel(context).agreeMedicineConfirmations();
                              return true;
                            },
                          );
                          Navigator.pop(context, true);
                        }
                      : null,
                  child: const Text('承認する'),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class _TextStyles {
  _TextStyles._();

  static const head1 = TextStyle(
    color: AppColors.black2,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 25 / 18,
  );

  static const head2 = TextStyle(
    color: AppColors.black2,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 22 / 16,
  );

  static const paragraph = TextStyle(
    color: AppColors.black2,
    fontSize: 14,
    fontWeight: FontWeight.w300,
    height: 19 / 14,
  );
}
