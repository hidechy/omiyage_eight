import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:provider/provider.dart';

import '../../data/api/model/customer_deal_coupon_model.dart';
import '../../data/api/model/first_use_registoration_model.dart';
import '../../gen/assets.gen.dart';
import '../../util/datetime_formatter.dart';
import '../../util/logger.dart';
import '../common/app_buttons.dart';
import '../common/app_colors.dart';
import '../common/app_dialogs.dart';
import '../common/app_toast.dart';
import '../common/html_parser.dart';

class FirstUseRegistrationCompletePage extends StatelessWidget {
  const FirstUseRegistrationCompletePage({Key? key}) : super(key: key);

  static Route<bool?> route({required FirstUseRegistrationModel firstUseRegistrationModel}) => MaterialPageRoute(
        builder: (_) => Provider.value(
          value: firstUseRegistrationModel,
          child: const FirstUseRegistrationCompletePage(),
        ),
        settings: const RouteSettings(name: name),
      );

  static const name = 'fistUseRegistrationCompletePage';

  @override
  Widget build(BuildContext context) {
    logger.info('Build FirstUseRegistrationCompletePage');
    final dealCoupons = context.select((FirstUseRegistrationModel value) => value.dealCoupons);
    // 画面遷移完了後に、購入不可商品があった場合に、確認モーダルを出す
    if (context.select((FirstUseRegistrationModel value) => value.isCanNotBuyProduct)) {
      WidgetsBinding.instance.addPostFrameCallback(
        (timeStamp) => showDeletedProductsNotificationModal(
          context,
          context.select((FirstUseRegistrationModel value) => value.canNotBuyProductNames),
        ),
      );
    }

    return WillPopScope(
      // 初回利用登録画面には戻ることはできない（初回利用登録APIは一度しかコール不可のため）
      onWillPop: () => Future.value(false),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('初期設定完了'),
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 0),
            child: Column(
              children: [
                const Text(
                  'イトーヨーカドーネットスーパーのご利用に必要な設定が完了しました。',
                  style: TextStyle(
                    color: AppColors.black2,
                    fontWeight: FontWeight.w300,
                    fontSize: 14.0,
                    height: 21 / 14,
                  ),
                ),
                if (dealCoupons.isNotEmpty) CouponDisplayArea(dealCoupons),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 40.0),
                  child: BlueTextButton.underline(
                    child: const Text('お買い物をはじめる'),
                    onPressed: () async {
                      if (dealCoupons.isEmpty) {
                        Navigator.of(context).pop(true);
                        return;
                      }
                      final isConfirm = await showNormalSelectionDialog<bool>(
                        context: context,
                        dialogName: 'CouponConfirmationDialog',
                        title: 'クーポンコードは当画面以外で\n確認することはできません。\nこのページを離れますか？',
                        applicationText: 'OK',
                        onApplied: (context) => () => Navigator.of(context).pop(true),
                        cancellationText: 'キャンセル',
                        onCanceled: (context) => () => Navigator.of(context).pop(false),
                      );
                      if (isConfirm ?? false) {
                        Navigator.of(context).pop(true);
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Coupon表示領域
class CouponDisplayArea extends StatelessWidget {
  const CouponDisplayArea(this.coupons, {Key? key}) : super(key: key);

  final List<CustomerDealCouponModel>? coupons;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: const Text(
            '※クーポンの併用はできません。',
            style: TextStyle(
              color: AppColors.black2,
              fontWeight: FontWeight.w300,
              fontSize: 12.0,
            ),
          ),
        ),
        for (final coupon in coupons!)
          Padding(
            padding: const EdgeInsets.only(bottom: 36.0),
            child: CouponCard(coupon: coupon),
          ),
      ],
    );
  }
}

// Couponの共通カード部品
class CouponCard extends StatelessWidget {
  const CouponCard({Key? key, required this.coupon}) : super(key: key);

  final CustomerDealCouponModel coupon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.inactive),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: AppColors.blackAlpha10,
            offset: Offset(4.0, 4.0),
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child:
                Assets.icons.markCoupon.svg(colorFilter: const ColorFilter.mode(AppColors.emphasis1, BlendMode.srcIn)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3.0),
            child: Text(
              'お届け日時が${formatYearDayJa(coupon.useDeliveryStartDatetime)}より\nご利用いただけるクーポン',
              style: const TextStyle(
                color: AppColors.emphasis1,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Divider(height: 32.0),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: HtmlParser(
              value: '対象商品：${coupon.couponGuide}',
              fontStyle: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w300,
                color: AppColors.black2,
                height: 16 / 12,
              ),
            ),
          ),
          Text(
            '${coupon.couponName}\nクーポンコード：${coupon.couponCode}',
            style: const TextStyle(
              color: AppColors.black2,
              fontWeight: FontWeight.w600,
              fontSize: 14.0,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: GreyOutlinedButton.large(
              widthFactor: 0.84,
              child: const Text(
                'クーポンコードをコピーする',
                style: TextStyle(color: AppColors.gray1),
              ),
              onPressed: () async {
                await _copyOnClipboard(coupon.couponCode);
                showAppToast(
                  context: context,
                  toastName: 'CopyOnClipboardModal',
                  message: 'クーポンコードをコピーしました',
                );
              },
            ),
          ),
          const Text(
            '※クーポンコードの再発行はできません。\nメモ等で控えていただき、ご利用ください。',
            style: TextStyle(
              color: AppColors.warning1,
              fontWeight: FontWeight.w600,
              fontSize: 12.0,
            ),
            textAlign: TextAlign.center,
          ),
          const Divider(height: 32.0),
          Text(
            '$_getLimitedUseCoupon\n$_getCouponUseRemainingNumber',
            style: const TextStyle(
              color: AppColors.gray1,
              fontWeight: FontWeight.w300,
              fontSize: 12.0,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Future<void> _copyOnClipboard(String text) async {
    final data = ClipboardData(text: text);
    await Clipboard.setData(data);
  }

  String get _getLimitedUseCoupon {
    if (coupon.isLimitedUseOneDay) {
      return '使用期限：${formatYearDayJa(coupon.useDeliveryStartDatetime)}お届け分のみ';
    } else {
      return '使用期限：${formatYearDayJa(coupon.useDeliveryStartDatetime)}から${formatYearDayJa(coupon.useDeliveryFinishDatetime)}までのお届け分';
    }
  }

  String get _getCouponUseRemainingNumber {
    if (coupon.couponUseRemainingNumber != '上限なし') {
      return '使用可能回数：${coupon.couponUseRemainingNumber}まで';
    }
    return '使用可能回数：上限なし';
  }
}
