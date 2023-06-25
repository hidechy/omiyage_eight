import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../gen/assets.gen.dart';
import '../../util/logger.dart';
import '../page/sorry_page.dart';
import 'app_buttons.dart';
import 'app_colors.dart';
import 'app_dialogs.dart';
import 'error_handler.dart';

// 現在のapp_loadingでたまに遭遇する不具合や使いにくさを改善した
// 今後は徐々にapp_loading2に置き換えていくようにする

typedef LoadingCallback = Future<void> Function();

/// ローディング処理中にエラーハンドリングを行いローディングを終了する時に投げる
/// ``` dart
/// try {
///   await someFuture();
/// } on SomeException {
///   // 例外ハンドリングが終わった
///   throw const LoadingStopError();
/// }
/// ```
class LoadingStopError implements Exception {
  const LoadingStopError();
}

/// ローディングWidget配下でリロードをかけるために使用できるクラス
/// ``` dart
/// ChangeNotifierProvider(
///   create: (_) => ValueNotifier(0),
///   builder: (c, _) {
///     return LoadingPartialScreen(
///       future: () => Future.delayed(
///         const Duration(seconds: 3),
///         () => logger.info(c.read<ValueNotifier<int>>().value),
///       ),
///       builder: (c, _) => OrangeElevatedButton.large(
///         onPressed: () {
///           c.read<ValueNotifier<int>>().value++;
///           c.read<Reload>()();
///         },
///         child: Text(c.watch<ValueNotifier<int>>().value.toString()),
///       ),
///     );
///   },
/// )
/// ```
/// などのように使用できる
class Reload {
  const Reload(this._future);

  final Future<void> Function() _future;

  Future<void> call() => _future();
}

class LoadingFullScreen extends _LoadingBase {
  /// * [future] 行いたい処理
  /// * [futureArguments] futureに渡す引数
  /// * [indicator] ローディング時のindicatorを自作したい場合
  /// * [child] 子Widget
  /// * [builder] BuildContextを分離して新しいBuildContextを操作しながらWidgetを作成したい場合。
  /// 第二引数に[child]を受け取る
  const LoadingFullScreen({
    Key? key,
    required LoadingCallback future,
    Widget? indicator,
    Widget? child,
    TransitionBuilder? builder,
  }) : super(
          key: key,
          future: future,
          indicator: indicator ?? const Center(child: CupertinoActivityIndicator(radius: 24)),
          child: child,
          builder: builder,
          errorBuilder: _defaultErrorWidgetBuilder,
        );

  static Widget? _defaultErrorWidgetBuilder(BuildContext context, HandledError? handledError) {
    if (handledError == null) {
      return Container(color: AppColors.white);
    }
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
              onPressed: () => context.read<_LoadingViewModel>().load(),
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

class LoadingPartialScreen extends _LoadingBase {
  const LoadingPartialScreen({
    Key? key,
    required LoadingCallback future,
    Widget? indicator,
    Widget? child,
    TransitionBuilder? builder,
  }) : super(
          key: key,
          future: future,
          indicator: indicator ??
              const Padding(
                padding: EdgeInsets.all(4),
                child: CupertinoActivityIndicator(radius: 24),
              ),
          child: child,
          builder: builder,
          errorBuilder: _defaultErrorWidgetBuilder,
        );

  static Widget? _defaultErrorWidgetBuilder(BuildContext context, HandledError? handledError) {
    if (handledError == null) {
      return Container(color: AppColors.white);
    }
    var message = handledError.message ?? '';
    if (handledError.status != null) {
      message += ' [${handledError.status}]'
          '[${handledError.statusCode ?? ""}]'
          '[${handledError.errorReasonCode ?? ""}]';
    }
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TextButton.icon(
          onPressed: () => context.read<_LoadingViewModel>().load(),
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

/// 不可視のローディングを行う
/// 定期的にローディングを行いたい処理に使う想定
class InvisibleLoadingWidget extends _LoadingBase {
  const InvisibleLoadingWidget({
    Key? key,
    required LoadingCallback future,
    Object? futureArguments,
    Widget? child,
    TransitionBuilder? builder,
  }) : super(
          key: key,
          future: future,
          child: child,
          builder: builder,
          errorBuilder: _defaultErrorWidgetBuilder,
        );

  /// デフォルトは勝手にリロード
  static Widget? _defaultErrorWidgetBuilder(BuildContext context, HandledError? handledError) {
    context.read<_LoadingViewModel>().load();
    return null;
  }
}

/// モーダルローディング
/// モーダルが返却する値
/// 1. 成功 -> T
/// 2. 失敗 -> null
Future<T?> showLoadingModal<T>({
  Key? key,
  required Future<T> Function() future,
  Widget? indicator,
}) async {
  final overlayState = GetIt.I<GlobalKey<NavigatorState>>().currentState?.overlay;
  if (overlayState == null) {
    return null;
  }

  Widget? defaultErrorWidgetBuilder(BuildContext context, HandledError? handledError) {
    if (handledError == null) {
      context.read<Completer<T?>>().complete();
      return null;
    }
    return AppDialog(
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
          // API失敗時に表示されるモーダルでOKを押すとモーダルから `null` が返却される
          onPressed: () => context.read<Completer<T?>>().complete(null),
          child: const Text('OK'),
        ),
      ],
    );
  }

  final completer = Completer<T?>();
  final overlay = OverlayEntry(
    builder: (_) {
      return Provider.value(
        value: completer,
        child: ColoredBox(
          color: AppColors.blackAlpha70,
          child: ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: _LoadingModal(
              future: () async {
                completer.complete(await future());
              },
              errorBuilder: defaultErrorWidgetBuilder,
              indicator: indicator,
            ),
          ),
        ),
      );
    },
  );

  overlayState.insert(overlay);
  final result = await completer.future;
  overlay.remove();
  return result;
}

class _LoadingModal extends _LoadingBase {
  const _LoadingModal({
    Key? key,
    required LoadingCallback future,
    required Widget? Function(BuildContext context, HandledError? handledError) errorBuilder,
    Widget? indicator,
  }) : super(
          key: key,
          future: future,
          indicator: indicator ??
              const Center(
                child: ColoredBox(
                  color: AppColors.white,
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: CupertinoActivityIndicator(radius: 24),
                  ),
                ),
              ),
          errorBuilder: errorBuilder,
        );
}

abstract class _LoadingBase extends StatelessWidget {
  const _LoadingBase({
    Key? key,
    required this.future,
    this.indicator,
    this.child,
    this.builder,
    required this.errorBuilder,
  }) : super(key: key);

  final LoadingCallback future;
  final Widget? indicator;
  final Widget? child;
  final TransitionBuilder? builder;
  final Widget? Function(BuildContext context, HandledError? handledError) errorBuilder;

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<_LoadingViewModel, _LoadingState>(
      create: (context) => _LoadingViewModel(context, future),
      child: builder != null ? Builder(builder: (c) => builder!(c, child)) : child,
      builder: (context, child) {
        final state = context.watch<_LoadingState>();
        logger.info('_LoadingState: ${state.type}');
        final Widget? current;
        switch (state.type) {
          case _LoadingStateType.initializing:
          case _LoadingStateType.loading:
            current = indicator;
            break;
          case _LoadingStateType.succeeded:
            current = child;
            break;
          case _LoadingStateType.error:
            current = errorBuilder(context, state.error);
            break;
        }
        return Provider(
          create: (context) => Reload(context.read<_LoadingViewModel>().load),
          child: current ?? const SizedBox.shrink(),
        );
      },
    );
  }
}

class _LoadingViewModel extends StateNotifier<_LoadingState> with LocatorMixin {
  _LoadingViewModel(this.context, this.future) : super(const _LoadingState.init());

  final BuildContext context;
  final LoadingCallback future;

  @override
  void initState() {
    super.initState();
    load();
  }

  Future<void> load() async {
    try {
      if (state.type == _LoadingStateType.loading) {
        return;
      }
      state = const _LoadingState.loading();
      await future();
      state = const _LoadingState.succeeded();
    } on LoadingStopError {
      logger.info('LoadingStop');
      state = const _LoadingState.error(null);
    } on HandledError catch (error) {
      state = _LoadingState.error(error);
    } catch (error) {
      try {
        final handledError = await ErrorOperators.common().handle(error, context);
        state = _LoadingState.error(handledError);
      } catch (e, st) {
        // 共通エラーハンドラなどをすり抜けてくるパターンがある
        logger.severe(e);
        // 予期せぬ業務エラー
        FirebaseCrashlytics.instance.recordError(e, st, fatal: true);
        state = const _LoadingState.error(null);
        SorryPage.push(SorryPageArgument.unexpected());
      }
    }
  }
}

class _LoadingState {
  const _LoadingState._(this.type) : error = null;

  const _LoadingState.init() : this._(_LoadingStateType.initializing);

  const _LoadingState.loading() : this._(_LoadingStateType.loading);

  const _LoadingState.succeeded() : this._(_LoadingStateType.succeeded);

  const _LoadingState.error(this.error) : type = _LoadingStateType.error;

  final HandledError? error;
  final _LoadingStateType type;
}

enum _LoadingStateType {
  initializing,
  loading,
  succeeded,
  error,
}
