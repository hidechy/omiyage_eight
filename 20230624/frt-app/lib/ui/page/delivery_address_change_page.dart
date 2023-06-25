import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../data/api/model/base_address_model.dart';
import '../../data/api/model/selectable_address_model.dart';
import '../../data/repository/regular_shipments_repository.dart';
import '../../enum/screen_name.dart';
import '../../gen/assets.gen.dart';
import '../../util/customer_manager.dart';
import '../../util/datetime_formatter.dart';
import '../../util/logger.dart';
import '../../util/route_history_navigator_observer.dart';
import '../common/alert_insertion_bar.dart';
import '../common/app_buttons.dart';
import '../common/app_colors.dart';
import '../common/app_dialogs.dart';
import '../common/app_loading.dart';
import '../common/app_media_query.dart';
import '../common/error_handler.dart';
import '../state/delivery_address_change_page_state.dart';
import '../view_model/delivery_address_change_page_view_model.dart';
import 'delivery_address_change_confirm_page.dart';
import 'web_view_base_page.dart';

DioResponseErrorHandlerCallback _handler(DeliveryAddressChangePageViewModel viewModel) =>
    (error, context, handler) async {
      // APIエラーになった場合にstateを書き換えてエラー表示を行う
      final isValid = await viewModel.errorHandle(error);
      if (isValid) {
        return handler.resolve();
      }
      return handler.next(error);
    };

class _NotChangeAddressException implements Exception {
  const _NotChangeAddressException({
    required this.title,
    required this.message,
  });

  final String title;
  final String message;
}

class _NotChangeAddressErrorOperatorWrapper extends ErrorOperator {
  @override
  Future<ErrorHandlerState> handle(Object error, BuildContext context) async {
    if (error is _NotChangeAddressException) {
      await showConfirmationDialog<void>(
        context: context,
        dialogName: 'NoChangeAddressAttentionModal',
        title: error.title,
        content: Text(
          error.message,
          textAlign: TextAlign.center,
        ),
        applicationText: 'OK',
        onApplied: (context) => () => Navigator.pop(context),
      );
      Navigator.pop(context);
      return handler.resolve();
    }
    return handler.next(error);
  }
}

class DeliveryAddressChangePage extends StatelessWidget {
  const DeliveryAddressChangePage({Key? key}) : super(key: key);

  static Route<BaseAddressModel?> route(BaseAddressModel address) => MaterialPageRoute<BaseAddressModel?>(
        builder: (_) => Provider.value(
          value: address,
          child: const DeliveryAddressChangePage(),
        ),
        settings: RouteSettings(name: name),
      );

  static final name = ScreenName.deliveryAddressChangePage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build DeliveryAddressChangePage');
    final address = context.watch<BaseAddressModel>();
    return StateNotifierProvider<DeliveryAddressChangePageViewModel, DeliveryAddressChangePageState>(
      create: (_) => DeliveryAddressChangePageViewModel(),
      builder: (context, _) {
        final observer = RouteHistoryNavigatorObserver.of(context);
        return PrimaryScrollController(
          controller: context.read<DeliveryAddressChangePageViewModel>().scrollController,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('受け取り住所の設定'),
            ),
            body: LoadingFullScreen(
              future: () async {
                await context.read<CustomerManager>().getInfo(shouldGetCart: false);
                final customerManager = context.read<CustomerManager>();
                if (customerManager.member != null) {
                  final changeableAddressDate = customerManager.member!.changeableAddressDate;
                  if (changeableAddressDate != null) {
                    throw _NotChangeAddressException(
                      title: '未配達の注文があるため\nお届け先住所の変更はできません',
                      message: 'お届け先住所の変更は${formatMonthDayJaMdFromDateTime(changeableAddressDate)}以降にお願いします',
                    );
                  }
                  final response = await GetIt.I<RegularShipmentsRepository>().getRegularShipments();
                  final isRegularShipment = response.data.any((e) => e.isCanceled == false);
                  if (isRegularShipment) {
                    throw const _NotChangeAddressException(
                      title: '定期便の注文があるため\nお届け先住所の変更はできません',
                      message: '解約してから住所変更をしてください',
                    );
                  }
                }
                await context.read<DeliveryAddressChangePageViewModel>().load(
                      address,
                      observer.hasRoute(ScreenName.firstUseRegistrationPage.value),
                    );
                return true;
              },
              errorOperators: [
                _NotChangeAddressErrorOperatorWrapper(),
              ],
              content: SingleChildScrollView(
                controller: context.read<DeliveryAddressChangePageViewModel>().scrollController,
                child: const _BodyContent(),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _BodyContent extends StatelessWidget {
  const _BodyContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: AppColors.black2,
        fontSize: 14,
        height: 20 / 14,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: context.select((DeliveryAddressChangePageState state) => state.isAlert),
              child: const Padding(
                padding: EdgeInsets.only(top: 16),
                child: AlertInsertionBar(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 24),
              child: Text(
                'お客様情報の住所',
                style: TextStyle(
                  fontSize: 14,
                  height: 19 / 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                context.select((BaseAddressModel value) => value.fullAddress),
                style: const TextStyle(
                  fontSize: 14,
                  height: 19 / 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const Divider(height: 1),
            const Padding(
              padding: EdgeInsets.only(top: 24, bottom: 16),
              child: Text(
                'ネットスーパーの受け取り住所をご登録ください。',
                style: TextStyle(
                  fontSize: 14,
                  height: 19 / 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const Divider(height: 1),
            const Padding(
              padding: EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                '受け取り郵便番号',
                style: TextStyle(
                  fontSize: 14,
                  height: 19 / 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: _SearchAddress(),
            ),
            _ErrorMessage(
              exist: context.select((DeliveryAddressChangePageState state) => state.isExistPostalNumber),
              text: 'ご入力いただいた郵便番号でのサービスは実施しておりません。',
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Text(
                '「住所を自動入力」ボタンを押すと、番地以外が自動的に入力されます。入力例が入ります。',
                style: TextStyle(
                  color: AppColors.black2,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  height: 19 / 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: '※ハイフン(-)を除く7桁を半角数字で入力してください。郵便番号がわからないときは',
                      style: TextStyle(
                        color: AppColors.black2,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        height: 16 / 12,
                      ),
                    ),
                    TextSpan(
                      text: '郵便番号検索へ（日本郵政のサイトへリンクします）',
                      style: const TextStyle(
                        color: AppColors.main,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        height: 16 / 12,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(context, _JapanPostWebView.route());
                        },
                    ),
                    WidgetSpan(
                      child: Assets.icons.externalLink.svg(),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 2),
                    child: Text(
                      '受け取り住所',
                      style: TextStyle(
                        fontSize: 14,
                        height: 19 / 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 8, right: 8, bottom: 4),
                    margin: const EdgeInsets.only(top: 8, left: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.warning1,
                    ),
                    child: const Text(
                      '必須',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                        height: 19 / 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const _PrefecturesDropdown(),
            const _CitesDropdown(),
            const _TownsDropdown(),
            const _ChomeDropdown(),
            const _InputAddressDetail1(),
            _ErrorMessage(
              exist: context.select((DeliveryAddressChangePageState state) => state.isExistAddressDetail1),
              text: '番地以下を入力してください',
            ),
            _ErrorMessage(
              exist: context.select((DeliveryAddressChangePageState state) => state.isValidInputAddressDetail1),
              text: '環境依存文字は入力できません',
            ),
            const Text(
              '※番地以下を入力してください。（例　1-2）',
              style: TextStyle(
                color: AppColors.emphasis1,
                fontSize: 12,
                fontWeight: FontWeight.w300,
                height: 16 / 12,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: Text('※機種依存文字は使用できません。',
                  style: TextStyle(
                    color: AppColors.gray1,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    height: 16 / 12,
                  )),
            ),
            const _InputAddressDetail2(),
            _ErrorMessage(
              exist: context.select((DeliveryAddressChangePageState state) => state.isValidInputAddressDetail2),
              text: '環境依存文字は入力できません',
            ),
            const Text(
              '※マンション名その他をご記入ください。（例　コーポ半蔵門101）',
              style: TextStyle(
                color: AppColors.emphasis1,
                fontSize: 12,
                fontWeight: FontWeight.w300,
                height: 16 / 12,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text('※機種依存文字は使用できません。',
                  style: TextStyle(
                    color: AppColors.gray1,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    height: 16 / 12,
                  )),
            ),
            const Divider(height: 1),
            const _DeliveryShop(),
            _ErrorMessage(
              exist: context.select((DeliveryAddressChangePageState state) => state.isExistDeliveryShop),
              text: '別の受け取り住所を登録してください。',
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text(
                '※お客様の個人情報は、インターネット上で安全に通信するためのセキュリティ技術「SSL/TLS」を使用して暗号化されています。',
                style: TextStyle(
                  color: AppColors.gray1,
                  fontSize: 14,
                  height: 16 / 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const Divider(height: 1),
            const Padding(
              padding: EdgeInsets.only(top: 24, bottom: 40),
              child: Center(child: _ConfirmButton()),
            ),
          ],
        ),
      ),
    );
  }
}

/// エラーメッセージ
class _ErrorMessage extends StatelessWidget {
  const _ErrorMessage({Key? key, required this.exist, required this.text}) : super(key: key);

  final bool exist;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !exist,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 4.5, bottom: 9.0),
            child: Assets.icons.warning.svg(
              width: 15,
              height: 15,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 13.0),
              child: Text(
                text,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 14,
                  height: 19 / 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.warning1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchAddress extends StatelessWidget {
  const _SearchAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final postalNumber = context.select((DeliveryAddressChangePageState state) => state.inputPostalNumber);
      return Row(
        children: [
          SizedBox(
            width: constraints.maxWidth * 0.583,
            child: const _SearchAddressTextField(),
          ),
          Padding(padding: EdgeInsets.only(left: constraints.maxWidth * 0.022)),
          SizedBox(
            height: 36,
            width: constraints.maxWidth * 0.379,
            child: GreyOutlinedButton.small(
              onPressed: RegExp('^[0-9]{7}\$').hasMatch(postalNumber)
                  ? () async {
                      final viewModel = context.read<DeliveryAddressChangePageViewModel>();
                      await showLoadingModal(
                        context: context,
                        future: () =>
                            context.read<DeliveryAddressChangePageViewModel>().getDeliveryAddresses(postalNumber),
                        errorOperators: [ErrorOperatorWrapper(_handler(viewModel))],
                      );
                    }
                  : null,
              child: const Text('住所を自動入力'),
            ),
          ),
        ],
      );
    });
  }
}

class _SearchAddressTextField extends StatelessWidget {
  const _SearchAddressTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isExistPostalNumber = context.select((DeliveryAddressChangePageState state) => state.isExistPostalNumber);
    return TextFormField(
      keyboardType: TextInputType.number,
      textAlignVertical: TextAlignVertical.bottom,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(7),
      ],
      initialValue: _setIntialValue(context),
      onChanged: (value) {
        context.read<DeliveryAddressChangePageViewModel>().inputPostalNumber = value;
      },
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          borderSide: isExistPostalNumber
              ? const BorderSide(width: 1, color: AppColors.inactive)
              : const BorderSide(width: 2, color: AppColors.warning1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(4)),
          borderSide: isExistPostalNumber
              ? const BorderSide(width: 1, color: AppColors.inactive)
              : const BorderSide(width: 2, color: AppColors.warning1),
        ),
        prefix: const Padding(padding: EdgeInsets.only(left: 12)),
        hintText: '1028450',
        hintStyle: const TextStyle(
          color: AppColors.gray2,
          fontSize: 14,
          fontWeight: FontWeight.normal,
          height: 19 / 14,
        ),
        fillColor: AppColors.white,
        constraints: const BoxConstraints.tightForFinite(height: 36),
      ),
    );
  }

  // 親のWidgetでinputPostalNumberをselectしているので、入力完了後にリビルドが走り
  // 初期値が再設定されるので、郵便番号検索後の初期値にはstateに保存されているものを使用する
  String _setIntialValue(BuildContext context) {
    // 初期設定から遷移した場合は初期値は空
    if (RouteHistoryNavigatorObserver.of(context).hasRoute(ScreenName.firstUseRegistrationPage.value)) {
      return '';
    }
    // マイページ画面などから遷移した場合は会員の登録番号
    if (context.read<DeliveryAddressChangePageState>().inputPostalNumber.isEmpty) {
      return context.watch<BaseAddressModel>().postalNumber;
    }
    // 上記以外はstateに保存されている番号
    return context.read<DeliveryAddressChangePageState>().inputPostalNumber;
  }
}

class _InputAddressDetail1 extends StatelessWidget {
  const _InputAddressDetail1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isValid = context.select(
        (DeliveryAddressChangePageState state) => state.isExistAddressDetail1 && state.isValidInputAddressDetail1);
    return _InputTextField(
      textEditingController: context.read<DeliveryAddressChangePageViewModel>().inputAddressDetail1Controller,
      isValid: isValid,
    );
  }
}

class _InputAddressDetail2 extends StatelessWidget {
  const _InputAddressDetail2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isValid = context.select((DeliveryAddressChangePageState state) => state.isValidInputAddressDetail2);
    return _InputTextField(
      textEditingController: context.read<DeliveryAddressChangePageViewModel>().inputAddressDetail2Controller,
      isValid: isValid,
    );
  }
}

class _InputTextField extends StatelessWidget {
  const _InputTextField({
    Key? key,
    required this.textEditingController,
    required this.isValid,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final bool isValid;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: TextFormField(
        controller: textEditingController,
        inputFormatters: [
          LengthLimitingTextInputFormatter(50),
        ],
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            borderSide: isValid
                ? const BorderSide(width: 1, color: AppColors.inactive)
                : const BorderSide(width: 2, color: AppColors.warning1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            borderSide: isValid
                ? const BorderSide(width: 1, color: AppColors.inactive)
                : const BorderSide(width: 2, color: AppColors.warning1),
          ),
          prefix: const Padding(padding: EdgeInsets.only(left: 12)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 4),
          fillColor: AppColors.white,
          constraints: const BoxConstraints.tightForFinite(height: 38),
        ),
      ),
    );
  }
}

class _JapanPostWebView extends StatelessWidget {
  const _JapanPostWebView({Key? key}) : super(key: key);

  static Route<Object?> route() {
    return MaterialPageRoute<Object?>(
      builder: (_) => const _JapanPostWebView(),
      settings: const RouteSettings(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const WebViewBasePage(
      authenticationRequired: false,
      title: '',
      initialUrl: 'https://www.post.japanpost.jp/zipcode/',
    );
  }
}

class _PrefecturesDropdown extends StatelessWidget {
  const _PrefecturesDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = context.select((DeliveryAddressChangePageState state) => state.prefectures);
    final selected = context.select((DeliveryAddressChangePageState state) => state.selectedPrefecture);
    return _DropdownField(
      selected: selected,
      models: list,
      onChanged: (String? value) {
        if (value == null ||
            value.isEmpty ||
            context.read<DeliveryAddressChangePageViewModel>().isSamePrefecture(value)) {
          context.read<DeliveryAddressChangePageViewModel>().changePrefecture(value ?? '');
          return;
        }
        showLoadingModal(
          context: context,
          future: () => context.read<DeliveryAddressChangePageViewModel>().changePrefecture(value),
        );
      },
    );
  }
}

class _CitesDropdown extends StatelessWidget {
  const _CitesDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = context.select((DeliveryAddressChangePageState state) => state.cites);
    final selected = context.select((DeliveryAddressChangePageState state) => state.selectedCite);
    return _DropdownField(
      selected: selected,
      models: list,
      onChanged: (String? value) {
        if (value == null || value.isEmpty || context.read<DeliveryAddressChangePageViewModel>().isSameCite(value)) {
          context.read<DeliveryAddressChangePageViewModel>().changeCite(value ?? '');
          return;
        }
        showLoadingModal(
          context: context,
          future: () => context.read<DeliveryAddressChangePageViewModel>().changeCite(value),
        );
      },
    );
  }
}

class _TownsDropdown extends StatelessWidget {
  const _TownsDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = context.select((DeliveryAddressChangePageState state) => state.towns);
    final selected = context.select((DeliveryAddressChangePageState state) => state.selectedTown);
    return _DropdownField(
      selected: selected,
      models: list,
      onChanged: (String? value) {
        if (value == null || value.isEmpty || context.read<DeliveryAddressChangePageViewModel>().isSameTown(value)) {
          context.read<DeliveryAddressChangePageViewModel>().changeTown(value ?? '');
          return;
        }
        showLoadingModal(
          context: context,
          future: () => context.read<DeliveryAddressChangePageViewModel>().changeTown(value),
        );
      },
    );
  }
}

class _ChomeDropdown extends StatelessWidget {
  const _ChomeDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = context.select((DeliveryAddressChangePageState state) => state.chomes);
    final selected = context.select((DeliveryAddressChangePageState state) => state.selectedChome);
    return _DropdownField(
      selected: selected,
      models: list,
      onChanged: (String? value) {
        if (value == null || value.isEmpty || context.read<DeliveryAddressChangePageViewModel>().isSameChome(value)) {
          context.read<DeliveryAddressChangePageViewModel>().changeChome(value ?? '');
          return;
        }
        showLoadingModal(
          context: context,
          future: () => context.read<DeliveryAddressChangePageViewModel>().changeChome(value),
        );
      },
    );
  }
}

class _DropdownField extends StatelessWidget {
  const _DropdownField({
    Key? key,
    required this.selected,
    required this.models,
    required this.onChanged,
  }) : super(key: key);

  final String selected;
  final List<SelectableAddressModel> models;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    final list = models
        .map((SelectableAddressModel address) => DropdownMenuItem(value: address.code, child: Text(address.name)))
        .toList();
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: LayoutBuilder(builder: (context, constraints) {
        return SizedBox(
          width: constraints.maxWidth * 0.497,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.inactive, width: 1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: DropdownButton(
                value: selected,
                menuMaxHeight: (AppMediaQuery.of(context).size.height) * (602 / 844),
                style: const TextStyle(
                  color: AppColors.black2,
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                  height: 19 / 14,
                ),
                items: list,
                icon: Padding(
                  padding: const EdgeInsets.only(right: 13.34),
                  child: SizedBox.square(
                    dimension: 16,
                    child: Assets.icons.arrowDown
                        .svg(colorFilter: const ColorFilter.mode(AppColors.inactive, BlendMode.srcIn)),
                  ),
                ),
                dropdownColor: AppColors.white,
                focusColor: AppColors.inactive,
                underline: Container(),
                isExpanded: true,
                onChanged: list.length > 1 ? onChanged : null,
              ),
            ),
          ),
        );
      }),
    );
  }
}

// 担当店舗表示出し分け
class _DeliveryShop extends StatelessWidget {
  const _DeliveryShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shopDescription =
        context.select((DeliveryAddressChangePageState state) => state.deliveryShop?.shopDescription ?? '');
    return shopDescription.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  '担当店舗',
                  style: TextStyle(
                    fontSize: 14,
                    height: 19 / 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text(
                  shopDescription,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 19 / 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          )
        : const SizedBox(height: 12);
  }
}

class _ConfirmButton extends StatelessWidget {
  const _ConfirmButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final observer = RouteHistoryNavigatorObserver.of(context);
    return BlueElevatedButton.large(
      widthFactor: 0.743,
      onPressed: context.select((DeliveryAddressChangePageState state) => state.deliveryShop?.isValid ?? false)
          ? () async {
              await showLoadingModal(
                context: context,
                future: () async {
                  await context.read<DeliveryAddressChangePageViewModel>().validationCheck();
                  return true;
                },
              );
              final succeeded = context.read<DeliveryAddressChangePageViewModel>().confirm();
              if (succeeded) {
                if (observer.hasRoute(ScreenName.firstUseRegistrationPage.value)) {
                  Navigator.pop(context, context.read<DeliveryAddressChangePageViewModel>().addressModel);
                } else {
                  final shopName = context.read<DeliveryAddressChangePageState>().deliveryShop?.shopName ?? '';
                  final shopCode = context.read<DeliveryAddressChangePageState>().deliveryShop?.shopCode ?? '';
                  final isCenterShop =
                      context.read<DeliveryAddressChangePageState>().deliveryShop?.isCenterShop ?? false;
                  Navigator.of(context, rootNavigator: true).push(DeliveryAddressChangeConfirmPage.route(
                    addressModel: context.read<DeliveryAddressChangePageViewModel>().addressModel,
                    shopName: shopName,
                    shopCode: shopCode,
                    isCenterShop: isCenterShop,
                  ));
                }
              } else {
                /// TextFormFieldにフォーカスがあたっていると、
                /// 画面スクロール(animateTo)が正常にできない場合があるので、
                /// unfocusしdelayedを挟んでから画面スクロールを行う(delayedを挟まなければ正常にスクロールできない)
                /// refs: https://github.com/flutter/flutter/issues/58877
                FocusManager.instance.primaryFocus?.unfocus();
                Future<void>.delayed(const Duration(microseconds: 5));
                context.read<DeliveryAddressChangePageViewModel>().topScrolled();
              }
            }
          : null,
      child: const Text('確認する'),
    );
  }
}
