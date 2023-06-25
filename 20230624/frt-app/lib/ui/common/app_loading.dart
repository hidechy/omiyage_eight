import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../../gen/assets.gen.dart';
import '../../util/logger.dart';
import '../page/sorry_page.dart';
import '../state/loading_state.dart';
import '../view_model/loading_view_model.dart';
import 'app_buttons.dart';
import 'app_colors.dart';
import 'app_dialogs.dart';
import 'error_handler.dart';

/// ```dart
/// Future<bool> Function()
/// ```
///を用意することで読み込み状態に応じてスピナー、正常、異常の表示に切り替わる
///
/// FutureBuilderが要素を正常にビルドするためにFutureのレスポンスが返ってくるかを判断するだけに使用している
/// 中身はなんでも構わなく、bool型を返却するということだけが重要
///
/// 状態管理にproviderを使用しているので、画面で使用する値をFutureBuilderのfutureに渡す必要がなくなったためにこのような実装になっている
///
/// 全面ローディング
class LoadingFullScreen extends _LoadingBase {
  LoadingFullScreen({
    Key? key,
    required Future<bool> Function() future,
    required Widget content,
    List<ErrorOperator>? errorOperators,
  })  : indicator = const CupertinoActivityIndicator(radius: 24),
        super(
          key: key,
          future: future,
          content: content,
          errorOperators: errorOperators,
        );

  @override
  final Widget indicator;

  @override
  Widget loadingError({required BuildContext context, required HandledError handledError}) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (handledError.title != null)
              Text(
                handledError.title!,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            DefaultTextStyle(
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.blackAlpha40,
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
              child: Column(
                children: [
                  if (handledError.message != null) Text(handledError.message!),
                  if (handledError.status != null)
                    Text(
                      '[${handledError.status}][${handledError.statusCode ?? ""}][${handledError.errorReasonCode ?? ""}]',
                    ),
                ],
              ),
            ),
            BlueElevatedButton.large(
              widthFactor: 0.49,
              onPressed: () => context.read<LoadingViewModel>().load(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 4,
                      bottom: 4,
                    ),
                    child: Assets.icons.reload.svg(
                      colorFilter: const ColorFilter.mode(AppColors.white, BlendMode.srcIn),
                      width: 20,
                      height: 20,
                    ),
                  ),
                  const Text(
                    '再読み込み',
                    style: TextStyle(height: 1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// パーツ内ローディング
class LoadingPartialScreen extends _LoadingBase {
  LoadingPartialScreen({
    Key? key,
    required Future<bool> Function() future,
    required Widget content,
    List<ErrorOperator>? errorOperators,
  })  : indicator = const Padding(
          padding: EdgeInsets.all(4),
          child: CupertinoActivityIndicator(radius: 24),
        ),
        super(
          key: key,
          future: future,
          content: content,
          errorOperators: errorOperators,
        );

  @override
  final Widget indicator;

  @override
  Widget loadingError({required BuildContext context, required HandledError handledError}) {
    var message = handledError.message ?? '';
    if (handledError.status != null) {
      message += ' [${handledError.status}][${handledError.statusCode ?? ""}][${handledError.errorReasonCode ?? ""}]';
    }
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TextButton.icon(
          onPressed: () => context.read<LoadingViewModel>().load(),
          icon: Assets.icons.reload.svg(
            colorFilter: const ColorFilter.mode(AppColors.gray1, BlendMode.srcIn),
            width: 20,
            height: 20,
          ),
          label: Text(message),
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(AppColors.gray1),
          ),
        ),
      ),
    );
  }
}

const loadingModalName = 'LoadingModal';

/// モーダルローディング
/// モーダルが返却する値は3種類ある
/// 1. 成功 -> true
/// 2. 失敗 (モーダルのボタンタップ) -> false
/// 3. 失敗 (画面が遷移する) -> null
Future<bool?> showLoadingModal({
  Key? key,
  required BuildContext context,
  required Future<bool> Function() future,
  List<ErrorOperator>? errorOperators,
  Widget? indicator,
}) {
  return showDialog<bool>(
    context: context,
    routeSettings: const RouteSettings(name: loadingModalName),
    barrierDismissible: false,
    barrierColor: AppColors.blackAlpha70,
    builder: (_) => WillPopScope(
      onWillPop: () async => false,
      child: _LoadingModal(
        key: key,
        future: future,
        errorOperators: errorOperators,
        context: context,
        indicator: indicator,
      ),
    ),
  );
}

class _LoadingModal extends _LoadingBase {
  _LoadingModal({
    Key? key,
    required Future<bool> Function() future,
    List<ErrorOperator>? errorOperators,
    required BuildContext context,
    Widget? indicator,
  })  : indicator = indicator ??
            Container(
              color: AppColors.white,
              padding: const EdgeInsets.all(4),
              child: const CupertinoActivityIndicator(radius: 24),
            ),
        super(
          key: key,
          future: future,
          errorOperators: errorOperators,
          content: const SizedBox.shrink(),
          isModal: true,
        );

  @override
  final Widget indicator;

  @override
  Widget loadingError({required BuildContext context, required HandledError handledError}) {
    return AppDialog(
      key: key,
      clearButtonEnable: false,
      title: handledError.title != null ? handledError.title! : '',
      content: DefaultTextStyle(
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: AppColors.blackAlpha40,
          fontSize: 12,
          fontWeight: FontWeight.w300,
        ),
        child: Column(
          children: [
            if (handledError.message != null) Text(handledError.message!),
            if (handledError.status != null)
              Text(
                '[${handledError.status}][${handledError.statusCode ?? ""}][${handledError.errorReasonCode ?? ""}]',
              ),
          ],
        ),
      ),
      actions: [
        GreyOutlinedButton.large(
          widthFactor: 0.745,
          // API失敗時に表示されるモーダルでOKを押すとモーダルから `false` が返却される
          onPressed: () => Navigator.pop(context, false),
          child: const Text('OK'),
        ),
      ],
    );
  }
}

abstract class _LoadingBase extends StatelessWidget {
  _LoadingBase({
    Key? key,
    required this.future,
    required this.content,
    List<ErrorOperator>? errorOperators,
    this.isModal = false,
  })  : operators = ErrorOperators.of(errorOperators)..addAll(ErrorOperators.common()),
        super(key: key);

  final Future<bool> Function() future;
  final Widget content;
  final bool isModal;
  final ErrorOperators operators;

  Widget loadingError({required BuildContext context, required HandledError handledError});

  Widget get indicator;

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<LoadingViewModel, LoadingState>(
      create: (_) => LoadingViewModel(future),
      builder: (context, _) => FutureBuilder(
        future: context.select((LoadingState state) => state.future),
        builder: (context, snapshot) {
          Future<Widget> futureWidget() async {
            if (snapshot.connectionState != ConnectionState.done) {
              return Center(child: indicator);
            } else if (snapshot.hasData) {
              if (isModal) {
                // APIに成功した場合、モーダルから `true` が返却される
                Navigator.pop(context, true);
              }
              return content;
            } else if (snapshot.hasError) {
              final error = snapshot.error!;

              final handledError = await operators.handle(error, context);
              if (handledError == null) {
                if (isModal) {
                  final route = ModalRoute.of(context);
                  if (route is PopupRoute && route.settings.name == loadingModalName && route.isCurrent) {
                    route.navigator?.pop();
                  }
                }
                return content;
              } else {
                return loadingError(context: context, handledError: handledError);
              }
            } else {
              return Center(child: indicator);
            }
          }

          return FutureBuilder<Widget>(
            builder: (_, snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return Center(child: indicator);
              }
              try {
                return snapshot.requireData;
              } catch (error, st) {
                // 共通エラーハンドラなどをすりねけてくるパターンがある
                logger.severe(error);
                if (error is Error && error.stackTrace != null) {
                  logger.severe(error.stackTrace);
                }
                // 予期せぬ業務エラー
                FirebaseCrashlytics.instance.recordError(error, st);
                SorryPage.push(SorryPageArgument.unexpected(const HandledError()));
                return loadingError(context: context, handledError: const HandledError());
              }
            },
            future: futureWidget(),
          );
        },
      ),
    );
  }
}
