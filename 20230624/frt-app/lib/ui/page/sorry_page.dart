import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../enum/screen_name.dart';
import '../../enum/sorry_page_type.dart';
import '../../gen/assets.gen.dart';
import '../../util/access_point_info_manager.dart';
import '../../util/authentication_manager.dart';
import '../../util/logger.dart';
import '../../util/route_history_navigator_observer.dart';
import '../common/app_buttons.dart';
import '../common/app_colors.dart';
import '../common/error_handler.dart';
import 'root_page.dart';
import 'web_view_base_page.dart';

class SorryPage extends StatelessWidget {
  const SorryPage({Key? key}) : super(key: key);

  static Route<Object?> route([Object? arguments]) => MaterialPageRoute<Object?>(
        builder: (_) => Provider.value(
          value: arguments,
          child: const SorryPage(),
        ),
        settings: RouteSettings(name: name),
      );

  static final name = ScreenName.sorryPage.value;

  static void push(SorryPageArgument argument, {bool logout = false}) {
    final navigator = GetIt.I<GlobalKey<NavigatorState>>().currentState!;
    final observer = RouteHistoryNavigatorObserver.of(navigator.context);
    if (!observer.hasLast(SorryPage.name)) {
      // ソーリー画面
      // build中にbuildするなのエラーが出るため
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (logout) {
          GetIt.I<AuthenticationManager>().logout(toRoot: false);
        }
        navigator.pushAndRemoveUntil(SorryPage.route(argument), (_) => false);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    logger.info('Build SorryPage');
    final arguments = context.watch<Object?>() as SorryPageArgument;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: SafeArea(
          child: _body(arguments),
        ),
      ),
    );
  }

  Widget _body(SorryPageArgument sorryPageArgument) {
    switch (sorryPageArgument.type) {
      case SorryPageType.loginRestricted:
        return _LoginRestricted();
      case SorryPageType.cartClear:
        return WebViewBasePage(
          initialUrl: iynsCartClearUrl,
          showAppBar: false,
          authenticationRequired: false,
        );
      case SorryPageType.resourceNotFound:
        return WebViewBasePage(
          initialUrl: iynsNotFoundErrorUrl,
          showAppBar: false,
          authenticationRequired: false,
        );
      case SorryPageType.accessPointInfoFetchError:
        return _AccessPointInfoFetchError();
      case SorryPageType.serviceUnavailable:
        return WebViewBasePage(
          initialUrl: iynsServiceUnavailableErrorUrl,
          showAppBar: false,
          authenticationRequired: false,
        );
      case SorryPageType.unexpected:
        return WebViewBasePage(
          initialUrl: iynsUnexpectedErrorUrl,
          showAppBar: false,
          authenticationRequired: false,
        );
      case SorryPageType.accessConcentration:
        return WebViewBasePage(
          initialUrl: iynsAccessConcentrationErrorUrl,
          showAppBar: false,
          authenticationRequired: false,
        );
    }
  }
}

SvgPicture _logoImage() => Assets.images.iynsLogoError.svg();

SvgPicture _sorryImage() => Assets.images.errorSorry.svg();

Align _titleText(String title) => Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          color: AppColors.black2,
          fontWeight: FontWeight.w600,
          height: 28 / 20,
          leadingDistribution: TextLeadingDistribution.even,
        ),
      ),
    );

Align _contentText(String content) => Align(
      alignment: Alignment.centerLeft,
      child: Text(
        content,
        style: const TextStyle(
          fontSize: 14,
          color: AppColors.black2,
          fontWeight: FontWeight.w300,
          height: 19 / 14,
          leadingDistribution: TextLeadingDistribution.even,
        ),
      ),
    );

// Align _errorCodeText({String? status, String? statusCode, String? errorReasonCode}) => Align(
//       alignment: Alignment.centerLeft,
//       child: Text(
//         'エラーコード：[${status ?? ''}] [${statusCode ?? ''}] [${errorReasonCode ?? ''}]',
//         style: const TextStyle(
//           fontSize: 12,
//           color: AppColors.gray1,
//           fontWeight: FontWeight.w300,
//           height: 16 / 12,
//           leadingDistribution: TextLeadingDistribution.even,
//         ),
//       ),
//     );

BlueTextButton _textButton({
  required BuildContext context,
  required String text,
  required VoidCallback? onPressed,
}) =>
    BlueTextButton.underline(
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          height: 22 / 16,
        ),
      ),
      onPressed: onPressed,
    );

BlueTextButton _toTopPageLink({
  required BuildContext context,
  String buttonText = 'トップページへ戻る',
  bool logout = false,
}) =>
    _textButton(
      context: context,
      text: buttonText,
      onPressed: () {
        if (logout) {
          GetIt.I<AuthenticationManager>().logout();
        } else {
          RootPage.flush();
        }
      },
    );

Widget _naviDial() => Column(
      children: [
        const Text(
          '引き続きこのページが表示される場合は、以下カスタマーセンターへお問い合わせください。',
          style: TextStyle(
            fontSize: 14,
            color: AppColors.black2,
            fontWeight: FontWeight.w300,
            height: 19 / 14,
            leadingDistribution: TextLeadingDistribution.even,
          ),
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColors.background2,
          ),
          child: Column(
            children: [
              const SizedBox(height: 29),
              const Text(
                'お困りの方はこちらからお問い合わせください',
                style: TextStyle(
                  fontSize: 14,
                  height: 24 / 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black2,
                  letterSpacing: -0.42,
                ),
              ),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 32),
                padding: const EdgeInsets.fromLTRB(0, 18, 0, 16),
                decoration: const BoxDecoration(
                  color: AppColors.white,
                ),
                child: Column(
                  children: [
                    const Text(
                      '電話でお問い合わせをご希望の方',
                      style: TextStyle(
                        fontSize: 14,
                        height: 24 / 14,
                        fontWeight: FontWeight.w300,
                        color: AppColors.black2,
                        letterSpacing: -0.42,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.icons.logoNavidial.svg(),
                        const Text(
                          '0570 - 07 - 1108',
                          style: TextStyle(
                            fontSize: 20,
                            height: 28 / 20,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black2,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xffcccccc),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                          child: const Text(
                            '受付時間',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w300,
                              color: AppColors.white,
                              letterSpacing: -0.33,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          '10:00 - 19:00 (年中無休)',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w300,
                            color: AppColors.black2,
                            letterSpacing: -0.33,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ],
    );

class _LoginRestricted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
        child: Column(
          children: [
            _logoImage(),
            const SizedBox(height: 24),
            _titleText('アクセスが集中し、ログインを制限しているため、接続できない状態になっております。'),
            const SizedBox(height: 12),
            _contentText('誠に申し訳ございませんが、しばらく時間をおいてからトップページよりお買い物を再開してください。'),
            const SizedBox(height: 32),
            _sorryImage(),
            const SizedBox(height: 40),
            _toTopPageLink(context: context),
            const SizedBox(height: 64),
            _naviDial(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

// class _CartClear extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Container(
//         padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
//         child: Column(
//           children: [
//             _logoImage(),
//             const SizedBox(height: 24),
//             _titleText('締め切り時間を経過したため、カートに入っていた商品がリセットされました。'),
//             const SizedBox(height: 12),
//             _contentText('誠に申し訳ございませんが、トップページよりお買い物を再開してください。'),
//             const SizedBox(height: 32),
//             _sorryImage(),
//             const SizedBox(height: 40),
//             _toTopPageLink(context: context),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _ResourceNotFound extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Container(
//         padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
//         child: Column(
//           children: [
//             _logoImage(),
//             const SizedBox(height: 24),
//             _titleText('ページが見つかりませんでした'),
//             const SizedBox(height: 12),
//             _contentText('お探しのページは、移動または削除された可能性がございます。\n誠に申し訳ございませんが、トップページよりお買い物を再開してください。'),
//             const SizedBox(height: 32),
//             _sorryImage(),
//             const SizedBox(height: 40),
//             _toTopPageLink(context: context),
//           ],
//         ),
//       ),
//     );
//   }
// }

class _AccessPointInfoFetchError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
        child: Column(
          children: [
            _logoImage(),
            const SizedBox(height: 24),
            _titleText('接続先情報の取得に失敗しました'),
            const SizedBox(height: 12),
            _contentText('誠に申し訳ございませんが、トップページよりお買い物を再開してください。'),
            const SizedBox(height: 32),
            _sorryImage(),
            const SizedBox(height: 40),
            _toTopPageLink(context: context, buttonText: '再読み込みする'),
            const SizedBox(height: 64),
            _naviDial(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

// class _SystemError extends StatelessWidget {
//   const _SystemError({Key? key, this.handledError}) : super(key: key);
//   final HandledError? handledError;
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Container(
//         padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
//         child: Column(
//           children: [
//             _logoImage(),
//             const SizedBox(height: 24),
//             _titleText('システム上のエラーが発生し、操作が継続できない状態になっております。'),
//             const SizedBox(height: 12),
//             _contentText('誠に申し訳ございませんが、トップページよりお買い物を再開してください。'),
//             const SizedBox(height: 8),
//             if (handledError?.status != null)
//               _errorCodeText(
//                   status: handledError?.status.toString(),
//                   statusCode: handledError?.statusCode,
//                   errorReasonCode: handledError?.errorReasonCode),
//             const SizedBox(height: 32),
//             _sorryImage(),
//             const SizedBox(height: 40),
//             _toTopPageLink(context: context),
//             const SizedBox(height: 64),
//             _naviDial(),
//             const SizedBox(height: 16),
//           ],
//         ),
//       ),
//     );
//   }
// }

class SorryPageArgument {
  const SorryPageArgument({
    required this.type,
    this.handledError,
  });

  SorryPageArgument.loginRestricted() : this(type: SorryPageType.loginRestricted);

  SorryPageArgument.resourceNotFound() : this(type: SorryPageType.resourceNotFound);

  SorryPageArgument.serviceUnavailable([HandledError? handledError])
      : this(
          type: SorryPageType.serviceUnavailable,
          handledError: handledError,
        );

  SorryPageArgument.cartClear() : this(type: SorryPageType.cartClear);

  SorryPageArgument.unexpected([HandledError? handledError])
      : this(
          type: SorryPageType.unexpected,
          handledError: handledError,
        );

  SorryPageArgument.accessPointInfoFetchError([HandledError? handledError])
      : this(
          type: SorryPageType.accessPointInfoFetchError,
          handledError: handledError,
        );

  SorryPageArgument.accessConcentration([HandledError? handledError])
      : this(
          type: SorryPageType.accessConcentration,
          handledError: handledError,
        );

  final SorryPageType type;
  final HandledError? handledError;
}
