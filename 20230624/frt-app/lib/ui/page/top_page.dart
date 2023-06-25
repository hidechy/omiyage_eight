import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../data/api/model/config_model.dart';
import '../../data/repository/shops_repository.dart';
import '../../enum/analytics_event_type.dart';
import '../../enum/screen_name.dart';
import '../../enum/user_property_type.dart';
import '../../gen/assets.gen.dart';
import '../../util/access_point_info_manager.dart';
import '../../util/analytics_manager.dart';
import '../../util/basic_authentication_manager.dart';
import '../../util/cart_info_manager.dart';
import '../common/app_buttons.dart';
import '../common/app_colors.dart';
import '../common/app_dialogs.dart';
import '../common/app_loading.dart';
import '../state/top_page_state.dart';
import '../view_model/top_page_view_model.dart';
import 'login_web_view_page.dart';
import 'web_view_base_page.dart';

/// トップ画面
class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  static final name = ScreenName.topPage.value;

  @override
  Widget build(BuildContext context) {
    final configModel = context.watch<ValueNotifier<ConfigModel>>().value;
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            color: AppColors.background2,
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Container(
                color: AppColors.background2,
                padding: const EdgeInsets.fromLTRB(16, 89, 16, 92),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _LogoImage(),
                      const SizedBox(height: 16),
                      const Text(
                        'いつもの商品を最短当日にお届けします',
                        style: TextStyle(
                          fontSize: 16,
                          height: 22 / 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 32),
                          child: Column(
                            children: [
                              if (configModel.isVisitorAllowed)
                                ...([
                                  const Text(
                                    '''
配達可能な店舗を探すため
ご自宅の郵便番号を入力してください''',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      height: 22 / 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 46),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '郵便番号 (ハイフン無し)',
                                        style: TextStyle(
                                          fontSize: 14,
                                          height: 19 / 14,
                                          fontWeight: FontWeight.w300,
                                          color: AppColors.gray1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const _SearchFieldAndButton(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      BlueTextButton(
                                        child: const Text('郵便番号がわからない方はこちら'),
                                        fontSize: 14,
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.w300,
                                        onPressed: () {
                                          Navigator.push(
                                              context, _StaticWebView.route(_StaticWebViewType.searchZipCode));
                                        },
                                      ),
                                      const SizedBox(width: 4),
                                      Assets.icons.externalLink.svg(),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 27),
                                    child: Text(
                                      '※お届け先のエリアによってはご利用いただけない場合がございます',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColors.gray1,
                                        fontSize: 12,
                                        height: 16 / 12,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 32),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10),
                                          child: Container(
                                            height: 1,
                                            width: double.infinity,
                                            color: AppColors.inactive,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            color: AppColors.white,
                                            child: const Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 8),
                                              child: Text(
                                                'または',
                                                style: TextStyle(
                                                  color: AppColors.black2,
                                                  fontSize: 14,
                                                  height: 19 / 14,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 32),
                                ]),
                              Padding(
                                padding: const EdgeInsets.only(left: 46, right: 46, bottom: 16),
                                child: _LoginButton(),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 46),
                                child: _RegisterButton(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 43),
                        child: _AgreementText(),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BlueTextButton(
                            child: const Text('ご利用に際して'),
                            fontSize: 12,
                            height: 16 / 12,
                            fontWeight: FontWeight.w300,
                            decoration: TextDecoration.underline,
                            onPressed: () {
                              Navigator.push(context, _StaticWebView.route(_StaticWebViewType.aboutThisSite));
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LogoImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.network(
      '$iynsStaticImagesBaseUrlAndSpPath/logo-iyns-top.svg',
      placeholderBuilder: (_) => Container(
        child: Assets.images.iynsLogo.svg(),
      ),
      headers: context.select((BasicAuthenticationState state) => state.base64Header),
    );
  }
}

class _SearchFieldAndButton extends StatelessWidget {
  const _SearchFieldAndButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<TopPageViewModel, TopPageState>(
        create: (_) => TopPageViewModel(),
        builder: (context, _) {
          return Column(
            children: [
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 46),
                child: _SearchStoreTextField(),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 46),
                child: _SearchStoreButton(),
              ),
              const SizedBox(height: 16),
            ],
          );
        });
  }
}

class _SearchStoreTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      textAlignVertical: TextAlignVertical.bottom,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(7),
      ],
      onChanged: (value) => context.read<TopPageViewModel>().updatePostalNumber(value),
      style: const TextStyle(
        color: AppColors.black2,
        fontSize: 14,
        fontWeight: FontWeight.normal,
        height: 19 / 14,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(top: 18, bottom: 16),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
          child: SizedBox.square(
            dimension: 20,
            child: Assets.icons.search.svg(colorFilter: const ColorFilter.mode(AppColors.inactive, BlendMode.srcIn)),
          ),
        ),
        prefixIconConstraints: const BoxConstraints(
          minWidth: 28,
          minHeight: 48,
        ),
        hintText: '1028450',
        hintStyle: const TextStyle(
          color: AppColors.gray2,
          fontSize: 14,
          fontWeight: FontWeight.normal,
          height: 19 / 14,
        ),
        fillColor: AppColors.white,
        constraints: const BoxConstraints.tightForFinite(height: 48),
      ),
    );
  }
}

class _SearchStoreButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isValidPostalNumber = context.select((TopPageState state) => state.isValidPostalNumber);
    return BlueElevatedButton.large(
      onPressed: isValidPostalNumber
          ? () async {
              await showLoadingModal(
                context: context,
                future: () async {
                  final shopsDeliverables = await context.read<TopPageViewModel>().postalNumberDeliverable();
                  if (shopsDeliverables.isDeliverable) {
                    final shopInfo = await GetIt.I<ShopsRepository>().getShopInfo(shopCode: shopsDeliverables.shopCode);
                    final isPreopenShop = DateTime.now().isBefore(shopInfo.data.first.openDate);
                    if (!isPreopenShop) {
                      await _loginVisitor(context, shopCode: shopsDeliverables.shopCode);
                      return true;
                    }
                  }
                  await _showUndeliverableAreaDialog(context);
                  return true;
                },
              );
            }
          : null,
      analyticsEventType: AnalyticsEventType.visit,
      child: const Text('確認する'),
    );
  }

  Future<void> _showUndeliverableAreaDialog(BuildContext originContext) async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showNormalSelectionDialog<void>(
        context: originContext,
        dialogName: ScreenName.topUndeliverableModal.value,
        clearButtonEnable: true,
        title: '検索したエリアは配達不可です',
        content: const Text('配達エリアは順次拡大中のため、少々お待ちください。'),
        applicationText: '見学する',
        cancellationText: '閉じる',
        onApplied: (context) => () async {
          await showLoadingModal(
            context: context,
            future: () async {
              await _loginVisitor(originContext);
              return true;
            },
          );
          Navigator.pop(context);
        },
        onCanceled: (context) => () async {
          Navigator.pop(context);
        },
      );
    });
  }

  Future<void> _loginVisitor(BuildContext context, {String? shopCode}) async {
    await context.read<TopPageViewModel>().loginVisitor(shopCode);
    _sendEventByVisit();
    // ユーザープロパティ(カスタムディメンション)の送信
    _sendUserProperty(context);
  }

  void _sendEventByVisit() {
    final analytics = GetIt.I<AnalyticsManager>();
    analytics.sendEvent(eventType: AnalyticsEventType.visit);
  }

  void _sendUserProperty(BuildContext context) {
    final analytics = GetIt.I<AnalyticsManager>();
    analytics.sendUserProperty(userPropertyType: UserPropertyType.loginType, value: 'ゲスト');
    final cart = context.read<CartInfoManager>().info;
    analytics.sendUserProperty(userPropertyType: UserPropertyType.shopCd, value: cart.shop.shopCode);
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlueElevatedButton.large(
      onPressed: () async {
        Navigator.push(context, LoginWebViewPage.route());
      },
      analyticsEventType: AnalyticsEventType.loginOp,
      child: const Text('ログイン'),
    );
  }
}

class _RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlueOutlinedButton.large(
      onPressed: () => showSignupDialog(context: context),
      child: const Text('新規会員登録'),
    );
  }
}

class _AgreementText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: _textStyle(),
        children: [
          const TextSpan(text: 'ボタンをタップし次の画面に進むと'),
          TextSpan(
            text: '利用規約',
            style: _linkTextStyle(),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(context, _StaticWebView.route(_StaticWebViewType.serviceTerms));
              },
          ),
          const TextSpan(text: 'および'),
          TextSpan(
            text: 'プライバシーポリシー',
            style: _linkTextStyle(),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(context, _StaticWebView.route(_StaticWebViewType.privacyPolicy));
              },
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.only(left: 4, right: 4),
              child: Assets.icons.externalLink.svg(),
            ),
          ),
          const TextSpan(text: 'に同意したものとみなします'),
        ],
      ),
    );
  }

  TextStyle _textStyle() {
    return const TextStyle(
      color: AppColors.black2,
      fontSize: 12,
      height: 16 / 12,
      fontWeight: FontWeight.w300,
    );
  }

  TextStyle _linkTextStyle() {
    return const TextStyle(
      fontSize: 12,
      height: 16 / 12,
      fontWeight: FontWeight.w300,
      color: AppColors.main,
      decoration: TextDecoration.underline,
    );
  }
}

class _StaticWebView extends StatelessWidget {
  const _StaticWebView({Key? key}) : super(key: key);

  static Route<Object?> route(_StaticWebViewType type) {
    return MaterialPageRoute<Object?>(
      builder: (_) => Provider.value(
        value: type,
        child: const _StaticWebView(),
      ),
      settings: RouteSettings(name: type.name),
    );
  }

  @override
  Widget build(BuildContext context) {
    final type = context.watch<_StaticWebViewType>();
    return WebViewBasePage(
      authenticationRequired: false,
      showAppBar: true,
      title: type.title,
      initialUrl: type.url,
    );
  }
}

enum _StaticWebViewType {
  searchZipCode,
  serviceTerms,
  privacyPolicy,
  aboutThisSite,
}

extension _StaticWebViewTypeExt on _StaticWebViewType {
  String get name {
    switch (this) {
      case _StaticWebViewType.searchZipCode:
        return '/WebView/SearchZipCode';
      case _StaticWebViewType.serviceTerms:
        return '/WebView/ServiceTerms';
      case _StaticWebViewType.privacyPolicy:
        return '/WebView/PrivacyPolicy';
      case _StaticWebViewType.aboutThisSite:
        return '/WebView/AboutThisSite';
    }
  }

  String? get title {
    switch (this) {
      case _StaticWebViewType.searchZipCode:
        return '';
      case _StaticWebViewType.serviceTerms:
        return '利用規約';
      case _StaticWebViewType.privacyPolicy:
        return 'プライバシーポリシー';
      case _StaticWebViewType.aboutThisSite:
        return 'ご利用に際して';
    }
  }

  String get url {
    switch (this) {
      case _StaticWebViewType.searchZipCode:
        return 'https://www.post.japanpost.jp/zipcode/';
      case _StaticWebViewType.serviceTerms:
        return '$iynsWebBaseUrl/help/terms-of-service/';
      case _StaticWebViewType.privacyPolicy:
        return '$iyBaseUrl/support/policy.html';
      case _StaticWebViewType.aboutThisSite:
        return '$iynsBaseUrl/nds/sp/information/about/';
    }
  }
}
