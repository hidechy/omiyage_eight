import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../data/api/model/customer_address_model.dart';
import '../../data/api/model/first_use_registoration_model.dart';
import '../../enum/analytics_event_type.dart';
import '../../enum/screen_name.dart';
import '../../util/analytics_manager.dart';
import '../../util/logger.dart';
import '../common/app_buttons.dart';
import '../common/app_checkbox.dart';
import '../common/app_colors.dart';
import '../common/app_loading.dart';
import '../common/app_media_query.dart';
import '../state/first_use_registration_page_state.dart';
import '../view_model/first_use_registration_page_view_model.dart';
import 'delivery_address_change_page.dart';
import 'first_use_registration_complete_page.dart';

class FirstUseRegistrationPage extends StatelessWidget {
  const FirstUseRegistrationPage({Key? key}) : super(key: key);

  static Route<bool?> route({
    required String firstUseToken,
    required CustomerAddressModel customerAddress,
    required String mainMail,
    String? subMail,
  }) =>
      MaterialPageRoute(
        builder: (_) => Provider.value(
          value: _FirstUseRegistrationPageArguments(
            firstUseToken: firstUseToken,
            customerAddress: customerAddress,
            mainMail: mainMail,
            subMail: subMail,
          ),
          child: const FirstUseRegistrationPage(),
        ),
        settings: RouteSettings(name: name),
      );

  static final name = ScreenName.firstUseRegistrationPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build FirstUseRegistrationPage');
    return WillPopScope(
      // 戻ることはできない
      onWillPop: () => Future.value(false),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('初期設定'),
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
          child: StateNotifierProvider<FirstUseRegistrationPageViewModel, FirstUseRegistrationPageState>(
            create: (_) => FirstUseRegistrationPageViewModel(),
            builder: (context, _) {
              final baseAddress = context.select((FirstUseRegistrationPageState state) => state.baseAddress);
              final customerAddress =
                  context.select((_FirstUseRegistrationPageArguments state) => state.customerAddress);
              return LoadingFullScreen(
                future: () => context.read<FirstUseRegistrationPageViewModel>().load(baseAddress ?? customerAddress),
                content: SingleChildScrollView(
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      color: AppColors.black2,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                          child: Text('イトーヨーカドーネットスーパーのご利用に必要な設定をしてください。'),
                        ),
                        DefaultTextStyle(
                          style: const TextStyle(
                            color: AppColors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            height: 19 / 14,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 16.0, bottom: 12.0),
                                child: Text(
                                  '受け取り住所の確認',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    height: 25 / 18,
                                  ),
                                ),
                              ),
                              _Divider(),
                              _CustomerAddress(),
                              _DotDivider(),
                              _DeliveryAddress(),
                              _MailMagazineSetting(),
                              _CompleteButton(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

// お客様の住所
class _CustomerAddress extends StatelessWidget {
  const _CustomerAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final customerFullAddress =
        context.select((_FirstUseRegistrationPageArguments state) => state.customerAddress.fullAddress);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Text(
            'お客様の住所',
            style: TextStyle(
              height: 19 / 14,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
          child: Text(
            customerFullAddress,
            style: const TextStyle(
              color: AppColors.black2,
              fontWeight: FontWeight.w300,
              height: 19 / 14,
            ),
          ),
        ),
      ],
    );
  }
}

// 受け取りの住所
class _DeliveryAddress extends StatelessWidget {
  const _DeliveryAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final customerAddress = context.select((_FirstUseRegistrationPageArguments state) => state.customerAddress);
    final isExistStore = context.select((FirstUseRegistrationPageState state) => state.isExistStore);
    final baseAddress = context.select((FirstUseRegistrationPageState state) => state.baseAddress);
    return Container(
      color: isExistStore ? AppColors.white : AppColors.emphasis2,
      margin: isExistStore ? const EdgeInsets.all(0.0) : const EdgeInsets.only(top: 4.0, bottom: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                      child: Text(
                        '受け取り住所',
                        style: TextStyle(
                          height: 19 / 14,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
                      child: Text(
                        baseAddress?.fullAddress ?? customerAddress.fullAddress,
                        // arguments.customerAddress.fullAddress,
                        style: const TextStyle(
                          color: AppColors.black2,
                          fontWeight: FontWeight.w300,
                          height: 19 / 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                child: GreyOutlinedButton.large(
                  width: (AppMediaQuery.of(context).size.width) * (66 / 390),
                  child: const Text(
                    '変更',
                    style: TextStyle(
                      color: AppColors.gray1,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  onPressed: () async {
                    final returnedBaseAddress = await Navigator.of(context, rootNavigator: true).push(
                      DeliveryAddressChangePage.route(customerAddress),
                    );
                    if (returnedBaseAddress != null) {
                      showLoadingModal(
                        context: context,
                        future: () async {
                          // お届け先住所変更画面から受け取った変更住所に対する有効チェック
                          return await context.read<FirstUseRegistrationPageViewModel>().load(returnedBaseAddress);
                        },
                      );
                    }
                  },
                ),
              ),
            ],
          ),
          Visibility(
            visible: !isExistStore,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: (AppMediaQuery.of(context).size.width) * (78 / 390),
                bottom: 12,
              ),
              child: const Text(
                '大変恐れ入りますが、こちらの地域でのサービスは実施しておりません。お客様のご登録住所とは別に、イトーヨーカドーネットスーパーの受け取り住所を登録してください。',
                style: TextStyle(
                  color: AppColors.warning1,
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                  height: 16 / 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// 分割線
class _Divider extends StatelessWidget {
  const _Divider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Divider(height: 1.0),
    );
  }
}

// ドット分割線
class _DotDivider extends StatelessWidget {
  const _DotDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomPaint(
        painter: _DottedDividerPainter(),
        size: Size.fromHeight(1),
      ),
    );
  }
}

class _DottedDividerPainter extends CustomPainter {
  const _DottedDividerPainter() : super();

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.inactive
      ..strokeWidth = 1;

    final height = size.height / 2;

    final points = List.generate((size.width / 2).ceil(), (index) => Offset(2.0 * index, height));
    canvas.drawPoints(PointMode.points, points, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// メールマガジン設定
class _MailMagazineSetting extends StatelessWidget {
  const _MailMagazineSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainMail = context.select((_FirstUseRegistrationPageArguments state) => state.mainMail);
    final subMail = context.select((_FirstUseRegistrationPageArguments state) => state.subMail);
    final isExistStore = context.select((FirstUseRegistrationPageState state) => state.isExistStore);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: isExistStore,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _Divider(),
              const Padding(
                padding: EdgeInsets.only(left: 16, top: 32.0, bottom: 12.0),
                child: Text(
                  'メールマガジン設定',
                  style: TextStyle(
                    fontSize: 18.0,
                    height: 25 / 18,
                  ),
                ),
              ),
              const _Divider(),
              _MailCheckBox(isMainMail: true, mailAddress: mainMail),
              // SubMailが存在するときのみ以下表示
              if (isNotNullEmpty(subMail))
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const _DotDivider(),
                    _MailCheckBox(isMainMail: false, mailAddress: subMail!),
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }

  bool isNotNullEmpty(String? value) => value?.isNotEmpty ?? false;
}

// メールアドレスのチェックボックス
class _MailCheckBox extends StatelessWidget {
  const _MailCheckBox({Key? key, required this.isMainMail, required this.mailAddress}) : super(key: key);

  final bool isMainMail;
  final String mailAddress;

  @override
  Widget build(BuildContext context) {
    final checkValue = context
        .select((FirstUseRegistrationPageState state) => isMainMail ? state.isCheckMainMail : state.isCheckSubMail);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: AppCheckbox(
        value: checkValue,
        onChanged: (_) => context.read<FirstUseRegistrationPageViewModel>().switchMailCheck(isMainMail),
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
      ),
    );
  }
}

// 完了ボタン
class _CompleteButton extends StatelessWidget {
  const _CompleteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firstUseToken = context.read<_FirstUseRegistrationPageArguments>().firstUseToken;
    final customerAddress = context.read<_FirstUseRegistrationPageArguments>().customerAddress;
    final isExistStore = context.select((FirstUseRegistrationPageState state) => state.isExistStore);
    final deliveryAddress = context.select((FirstUseRegistrationPageState state) => state.baseAddress);
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 24.0),
          child: _Divider(),
        ),
        BlueElevatedButton.large(
          onPressed: isExistStore
              ? () async {
                  final Completer<FirstUseRegistrationModel> completer = Completer();
                  await showLoadingModal(
                    context: context,
                    future: () async {
                      completer.complete(
                        context.read<FirstUseRegistrationPageViewModel>().firstUseRegistration(
                              firstUseToken: firstUseToken,
                              addressModel: deliveryAddress ?? customerAddress,
                            ),
                      );
                      return true;
                    },
                  );
                  final result = await completer.future;
                  // 初回利用登録完了時にGAにSignUpイベントを送信する。
                  final analyticsManager = GetIt.I<AnalyticsManager>();
                  analyticsManager.sendEvent(eventType: AnalyticsEventType.signUp);
                  final isConfirm = await Navigator.of(context).push(FirstUseRegistrationCompletePage.route(
                    firstUseRegistrationModel: result,
                  ));
                  Navigator.of(context).pop(isConfirm);
                }
              : null,
          child: const Text('完了'),
          widthFactor: 0.745,
        ),
      ],
    );
  }
}

class _FirstUseRegistrationPageArguments {
  const _FirstUseRegistrationPageArguments({
    required this.firstUseToken,
    required this.customerAddress,
    required this.mainMail,
    this.subMail,
  });

  final String firstUseToken;
  final CustomerAddressModel customerAddress;
  final String mainMail;
  final String? subMail;
}
