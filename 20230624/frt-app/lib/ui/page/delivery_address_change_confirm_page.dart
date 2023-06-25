import 'package:flutter/material.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../../data/api/model/address_model.dart';
import '../../enum/mail_send_type.dart';
import '../../enum/screen_name.dart';
import '../../util/customer_manager.dart';
import '../../util/logger.dart';
import '../../util/text_formatter.dart';
import '../common/app_buttons.dart';
import '../common/app_checkbox.dart';
import '../common/app_colors.dart';
import '../common/app_loading.dart';
import '../common/app_radio.dart';
import '../state/delivery_address_change_confirm_page_state.dart';
import '../view_model/delivery_address_change_confirme_view_model.dart';
import 'delivery_address_change_completion.dart';

class DeliveryAddressChangeConfirmPageArguments {
  DeliveryAddressChangeConfirmPageArguments({
    required this.addressModel,
    required this.shopName,
    required this.shopCode,
    required this.isCenterShop,
  });

  final AddressModel addressModel;
  final String shopName;
  final String shopCode;
  final bool isCenterShop;
}

/// お届け住所変更確認ページ
class DeliveryAddressChangeConfirmPage extends StatelessWidget {
  const DeliveryAddressChangeConfirmPage({Key? key}) : super(key: key);

  static Route<Object?> route({
    required AddressModel addressModel,
    required String shopName,
    required String shopCode,
    required bool isCenterShop,
  }) =>
      MaterialPageRoute<Object?>(
        builder: (_) => Provider.value(
          value: DeliveryAddressChangeConfirmPageArguments(
            addressModel: addressModel,
            shopName: shopName,
            shopCode: shopCode,
            isCenterShop: isCenterShop,
          ),
          child: const DeliveryAddressChangeConfirmPage(),
        ),
        settings: RouteSettings(name: name),
      );

  static final name = ScreenName.deliveryAddressChangeConfirm.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build DeliveryAddressChangeConfirmPage');
    return StateNotifierProvider<DeliveryAddressChangeConfirmViewModel, DeliveryAddressChangeConfirmPageState>(
      create: (_) => DeliveryAddressChangeConfirmViewModel(),
      builder: (context, _) {
        return const _DeliveryAddressChangeConfirmBody();
      },
    );
  }
}

/// お届け住所変更確認を構成するWidget
class _DeliveryAddressChangeConfirmBody extends StatelessWidget {
  const _DeliveryAddressChangeConfirmBody();

  @override
  Widget build(BuildContext context) {
    final addressModel = context.select((DeliveryAddressChangeConfirmPageArguments value) => value.addressModel);
    final shopName = context.select((DeliveryAddressChangeConfirmPageArguments value) => value.shopName);
    final member = context.read<CustomerManager>().info.member!;
    final changedShopCode = context.select((DeliveryAddressChangeConfirmPageArguments value) => value.shopCode);
    final mailSendType = context.select((DeliveryAddressChangeConfirmPageState value) => value.mailSendType);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '受け取り住所の変更内容確認',
        ),
      ),
      body: LoadingFullScreen(
        future: () => context.read<DeliveryAddressChangeConfirmViewModel>().load(),
        content: DefaultTextStyle(
          style: const TextStyle(
            color: AppColors.black2,
            fontSize: 14,
            fontWeight: FontWeight.w300,
            height: 19 / 14,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 24),
                      const Text(
                        '受け取り郵便番号',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 16),
                      Text(formatToSeparatedZipCode(addressModel.postalNumber)),
                      const SizedBox(height: 16),
                      const Divider(),
                      const SizedBox(height: 16),
                      const Text(
                        '受け取り住所',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 16),
                      Text(addressModel.fullAddress),
                      const SizedBox(height: 16),
                      const _StoreInCharge(),
                      const Text(
                        'メールマガジン設定',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 16),
                      Text('「$shopName」よりメールマガジンを送信します'),
                      const SizedBox(height: 16),
                      _MailCheckBox.main(mailAddress: member.mainMailAddress),
                      // SubMailが空白ではないときのみ以下表示
                      if (member.subMailAddress.isNotEmpty) ...{
                        const SizedBox(height: 16),
                        _MailCheckBox.sub(mailAddress: member.subMailAddress)
                      },
                      const SizedBox(height: 16),
                      const Divider(),
                      const SizedBox(height: 16),
                      const Text(
                        '会員登録情報の確認メール送信先',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          _labelAndRadioButton(
                            value: MailSendType.mainMailAddress,
                            groupValue: mailSendType,
                            onChanged: (value) {
                              context.read<DeliveryAddressChangeConfirmViewModel>().handleRadio(value);
                            },
                            text: Text(
                              member.mainMailAddress,
                              style: const TextStyle(
                                color: AppColors.gray1,
                                fontSize: 16,
                                height: 22 / 16,
                              ),
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ],
                      ),
                      Visibility(
                        // サブメールアドレスの登録がない場合は非表示
                        visible: member.subMailAddress != '',
                        child: Column(
                          children: [
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                _labelAndRadioButton(
                                  value: MailSendType.subMailAddress,
                                  groupValue: mailSendType,
                                  onChanged: (value) {
                                    context.read<DeliveryAddressChangeConfirmViewModel>().handleRadio(value);
                                  },
                                  text: Text(
                                    member.subMailAddress,
                                    style: const TextStyle(
                                      color: AppColors.gray1,
                                      fontSize: 16,
                                      height: 22 / 16,
                                    ),
                                    overflow: TextOverflow.clip,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                _labelAndRadioButton(
                                  value: MailSendType.both,
                                  groupValue: mailSendType,
                                  onChanged: (value) {
                                    context.read<DeliveryAddressChangeConfirmViewModel>().handleRadio(value);
                                  },
                                  text: const Text(
                                    '上記両方のメールアドレス',
                                    style: TextStyle(
                                      color: AppColors.gray1,
                                      fontSize: 16,
                                      height: 22 / 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        '※携帯電話のアドレスを設定の場合は'
                        '「@iy-net.jp」、「@iy.7andi.co.jp」、「@md.7andi.co.jp」、「@omni7.jp」、「@sevenmp.omni7.jp」'
                        'からメールを受け取れるよう設定を行ってください。\n '
                        '※サブメールアドレスを登録していただくと、送信先が選択できます。',
                        style: TextStyle(
                          color: AppColors.gray1,
                          fontSize: 12,
                          height: 16 / 12,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Divider(),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Center(
                    child: BlueElevatedButton.large(
                      widthFactor: 0.7,
                      onPressed: () async {
                        final mailMagazineType = context.read<DeliveryAddressChangeConfirmViewModel>().mainMagazineType;
                        await showLoadingModal(
                          context: context,
                          future: () async {
                            await context.read<DeliveryAddressChangeConfirmViewModel>().changeDeliveryAddress(
                                  shopCode: changedShopCode,
                                  prefectureCode: addressModel.prefectureCode,
                                  cityCode: addressModel.cityCode,
                                  townCode: addressModel.townCode,
                                  chomeCode: addressModel.chomeCode,
                                  address: addressModel.addressDetail,
                                  address2: addressModel.addressDetail2,
                                  mailMagazineType: mailMagazineType,
                                  mailSendType: mailSendType.value,
                                );
                            return true;
                          },
                        );

                        Navigator.of(context, rootNavigator: true).push(DeliveryAddressChangeCompletionPage.route());
                      },
                      child: const Text(
                        '変更する',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _labelAndRadioButton({
    required MailSendType value,
    required MailSendType groupValue,
    required ValueChanged<MailSendType?> onChanged,
    required Text text,
  }) {
    return Expanded(
      child: Row(
        children: [
          AppRadio(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => onChanged(value),
              child: text,
            ),
          ),
        ],
      ),
    );
  }
}

// メールアドレスのチェックボックス
class _MailCheckBox extends StatelessWidget {
  const _MailCheckBox.main({Key? key, required this.mailAddress})
      : isMainMail = true,
        super(key: key);

  const _MailCheckBox.sub({Key? key, required this.mailAddress})
      : isMainMail = false,
        super(key: key);
  final bool isMainMail;
  final String mailAddress;

  @override
  Widget build(BuildContext context) {
    final checkValue = context.select(
        (DeliveryAddressChangeConfirmPageState state) => isMainMail ? state.isCheckMainMail : state.isCheckSubMail);
    return AppCheckbox(
      value: checkValue,
      onChanged: (_) => context.read<DeliveryAddressChangeConfirmViewModel>().switchMailCheck(isMainMail),
      child: Expanded(
        child: Text(
          '$mailAddress に受信する',
          style: const TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 16,
            height: 22 / 16,
          ),
        ),
      ),
    );
  }
}

// 受け取り住所欄の担当店舗
class _StoreInCharge extends StatelessWidget {
  const _StoreInCharge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shopName = context.select((DeliveryAddressChangeConfirmPageArguments value) => value.shopName);
    final isCenterShop = context.select((DeliveryAddressChangeConfirmPageArguments value) => value.isCenterShop);
    return Visibility(
      visible: !isCenterShop,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(text: '選択した住所は「'),
                TextSpan(
                  text: shopName,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                const TextSpan(text: '」が担当です'),
              ],
              style: const TextStyle(color: AppColors.black2),
            ),
          ),
          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
