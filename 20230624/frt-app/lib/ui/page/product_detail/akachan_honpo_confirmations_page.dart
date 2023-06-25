import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../enum/screen_name.dart';
import '../../../gen/assets.gen.dart';
import '../../../util/logger.dart';
import '../../common/app_buttons.dart';
import '../../common/app_colors.dart';
import '../../common/app_loading.dart';
import '../../state/shop_info_state.dart';
import '../../view_model/akachan_honpo_confirmations_page_view_model.dart';

/// 赤ちゃん本舗購入事前確認事項ページ
class AkachanHonpoConfirmationsPage extends StatelessWidget {
  const AkachanHonpoConfirmationsPage({Key? key}) : super(key: key);

  static Route<bool?> route() => MaterialPageRoute<bool?>(
        builder: (_) => const AkachanHonpoConfirmationsPage(),
        settings: RouteSettings(name: name),
      );

  static final name = ScreenName.akachanHonpoConfirmationsPage.value;

  @override
  Widget build(BuildContext context) {
    return _AkachanHonpoConfirmationsWidget();
  }
}

class _AkachanHonpoConfirmationsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    logger.info('Build AkachanHonpoConfirmationsPage');
    return Scaffold(
      appBar: AppBar(
        title: const Text('購入事前確認'),
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
      body: SafeArea(
        child: Column(
          children: const <Widget>[
            Flexible(child: _AkachanHonpoConfirmationsBody()),
          ],
        ),
      ),
    );
  }

  void _closeFullScreenModal(BuildContext context) {
    Navigator.pop(context, false);
  }
}

/// 事前確認事項構成するWidget
class _AkachanHonpoConfirmationsBody extends StatelessWidget {
  const _AkachanHonpoConfirmationsBody();

  @override
  Widget build(BuildContext context) {
    final shopName = context.select((ShopInfoState state) => state.shopInfo.shopCode == akachanhonpoChangeTargetShopCode
        ? akachanhonpoChangeShopName
        : state.shopInfo.shopName);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(color: AppColors.background2),
              child: Text(
                'ベビー用品のお取り扱いは、イトーヨーカドー$shopName内アカチャンホンポで行っております。\n'
                'ベビー用品を表示するには、以下の項目をご確認いただき、「承認する」を選択してください。',
                style: const TextStyle(
                  color: AppColors.black2,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  height: 19 / 14,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(border: Border.all(color: AppColors.inactive)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '(株)アカチャン本舗の商品の販売について',
                    style: TextStyle(
                      color: AppColors.black2,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      height: 25 / 18,
                    ),
                  ),
                  Text(
                    '※このページは赤ちゃん本舗の商品のご購入に関わらず表示させて頂いております。',
                    style: TextStyle(
                      color: AppColors.black2,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      height: 19 / 14,
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'お客様へ',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      height: 22 / 16,
                    ),
                  ),
                  Text(
                    '・［(株)赤ちゃん本舗］の商品は、イトーヨーカ堂が代金収納代行をさせていただきます。\n'
                    '・お客様のお買い物に必要な会員情報につきまして、イトーヨーカ堂が［(株)赤ちゃん本舗］に提供させていただきます。\n'
                    '・［(株)赤ちゃん本舗］の商品は、店頭価格とは異なります。あらかじめご了承ください。',
                    style: TextStyle(
                      color: AppColors.black2,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      height: 19 / 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              '上記をご確認後、下の「承認する」ボタンを\nクリックしてください。',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.blackAlpha80,
                fontSize: 14,
                fontWeight: FontWeight.w300,
                height: 21 / 14,
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: BlueElevatedButton.large(
                widthFactor: 0.7,
                onPressed: () async {
                  await showLoadingModal(
                    context: context,
                    future: () async {
                      await AkachanHonpoConfirmationsPageViewModel(context).agreeAkachanHonpoConfirmations();
                      return true;
                    },
                  );
                  Navigator.pop(context, true);
                },
                child: const Text('承認する'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
