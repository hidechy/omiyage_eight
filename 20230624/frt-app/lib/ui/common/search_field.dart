import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

import '../../enum/analytics_event_type.dart';
import '../../enum/event_parameter_type.dart';
import '../../enum/search_history_type.dart';
import '../../gen/assets.gen.dart';
import '../../util/analytics_manager.dart';
import '../../util/logger.dart';
import '../../util/validation.dart';
import '../state/focus_state.dart';
import '../view_model/focus_view_model.dart';
import '../view_model/search_input_text_view_model.dart';
import 'app_buttons.dart';
import 'app_colors.dart';
import 'app_dialogs.dart';
import 'app_media_query.dart';
import 'keyboard_state_provider.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
    required this.historyType,
    required this.onSubmitted,
    this.hintText,
    this.initialText,
  }) : super(key: key);

  /// 履歴の種類
  final SearchHistoryType historyType;

  /// 入力決定時の動作
  final Future<void> Function(String) onSubmitted;

  /// 入力ヒント
  final String? hintText;

  /// 検索初期値
  final String? initialText;

  @override
  Widget build(BuildContext context) {
    final focus = context.read<FocusViewModel?>();

    return MultiProvider(
      providers: [
        if (focus == null) StateNotifierProvider<FocusViewModel, FocusState>(create: (_) => FocusViewModel()),
        Provider<SearchInputTextViewModel>(
          create: (_) => SearchInputTextViewModel(historyType, initialText: initialText),
        ),
        Provider.value(value: hintText),
        Provider.value(value: onSubmitted),
        ChangeNotifierProvider(
          create: (_) => ValueNotifier(const _TextFieldSize(Offset.zero, Size.zero)),
        ),
        // オーバーレイを管理するためだけのクラス
        Provider<_OverlayEntry>(
          create: (_) => _OverlayEntry(),
          dispose: (_, entry) => entry.dispose(),
        ),
      ],
      child: const _TextField(),
    );
  }
}

typedef _TextFieldSize = Tuple2<Offset, Size>;
typedef _TextFieldSizeNotifier = ValueNotifier<_TextFieldSize>;

class _OverlayEntry {
  OverlayEntry? _value;
  OverlayEntry? get value => _value;

  void create(BuildContext context) {
    if (_value != null) {
      remove();
    }

    final viewModel = context.read<SearchInputTextViewModel>();
    final onSubmitted = context.read<Future<void> Function(String)>();
    final notifier = context.read<_TextFieldSizeNotifier>();

    _value = OverlayEntry(
      builder: (_) {
        logger.info('Build Overlay');
        return MultiProvider(
          providers: [
            Provider.value(value: viewModel),
            Provider.value(value: onSubmitted),
            ChangeNotifierProvider.value(value: notifier),
          ],
          child: const _HistoryBox(),
          builder: (context, child) {
            final localOffset = context.select<_TextFieldSizeNotifier, Offset>((notifier) => notifier.value.item1);
            logger.info(localOffset);
            final deviceSize = AppMediaQuery.of(context).size;
            final targetSize = context.select<_TextFieldSizeNotifier, Size>((notifier) => notifier.value.item2);
            logger.info(targetSize);
            final offset = targetSize.height - localOffset.dy;
            logger.info(offset);
            final renderingSize = Size(deviceSize.width, deviceSize.height - offset);
            logger.info(renderingSize);
            return Positioned(
              left: 0,
              top: offset,
              width: renderingSize.width,
              height: renderingSize.height,
              child: child!,
            );
          },
        );
      },
    );
  }

  void remove() {
    _value?.remove();
    _value = null;
  }

  void dispose() {
    remove();
  }
}

class _TextField extends StatelessWidget {
  const _TextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final renderObject = context.findRenderObject();
      final Offset offset;
      final Size size;
      if (renderObject == null || renderObject is! RenderBox) {
        offset = Offset.zero;
        size = Size.zero;
      } else {
        offset = renderObject.globalToLocal(Offset.zero);
        size = renderObject.size;
      }
      final notifier = context.read<_TextFieldSizeNotifier>();
      final previous = notifier.value;
      if (previous.item1 != offset || previous.item2 != size) {
        notifier.value = _TextFieldSize(offset, size);
      }
    });
    final isFocused = context.select((FocusState state) => state.isFocused);
    return Row(
      children: [
        Flexible(child: _textFieldBuilder(context)),
        // focus inするとキャンセルボタンを表示
        Visibility(
          visible: isFocused,
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: BlueTextButton(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              child: const Text('キャンセル'),
              onPressed: () => _cancel(context),
            ),
          ),
        ),
      ],
    );
  }

  void _cancel(BuildContext context) {
    context.read<SearchInputTextViewModel>().cancel();
    FocusManager.instance.primaryFocus?.unfocus();
  }

  Widget _textFieldBuilder(BuildContext context) {
    return KeyboardStateProvider(
      onFocusChanged: (hasFocus) {
        logger.info('フォーカス変更');
        logger.info('$hasFocus');
        final viewModel = context.read<FocusViewModel>();
        final entry = context.read<_OverlayEntry>();
        if (hasFocus) {
          viewModel.focusIn();
          // 店舗選択画面など検索バーが動く画面で正しくOffsetを取得できないので、オーバーレイの挿入を遅らせる
          WidgetsBinding.instance.addPostFrameCallback((_) {
            final overlayState = GetIt.I<GlobalKey<NavigatorState>>().currentState?.overlay;
            if (overlayState != null) {
              entry.create(context);
              if (entry.value != null) {
                overlayState.insert(entry.value!);
              }
            }
          });
        } else {
          entry.remove();
          viewModel.focusOut();
        }
      },
      builder: (context, _) => TextField(
        controller: context.read<SearchInputTextViewModel>().controller,
        textAlignVertical: TextAlignVertical.bottom,
        // 入力したら虫眼鏡アイコン?に変更
        textInputAction: TextInputAction.search,
        inputFormatters: [LengthLimitingTextInputFormatter(64)],
        focusNode: KeyboardStateProvider.watchFocus(context),
        style: const TextStyle(
          color: AppColors.black2,
          fontSize: 16,
          fontWeight: FontWeight.w300,
          height: 1,
        ),
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.fromLTRB(8, 12, 4, 12),
            child: SizedBox.square(
              dimension: 16,
              child: Assets.icons.search.svg(colorFilter: const ColorFilter.mode(AppColors.inactive, BlendMode.srcIn)),
            ),
          ),
          prefixIconConstraints: const BoxConstraints(
            minWidth: 28,
            minHeight: 32,
          ),
          hintText: context.watch<String>(),
          suffixIcon: ValueListenableBuilder<TextEditingValue>(
            valueListenable: context.read<SearchInputTextViewModel>().controller,
            builder: (BuildContext context, TextEditingValue value, _) => Visibility(
              // ×アイコンは focus inかつテキストが空で無い時表示
              visible: context.select((FocusState state) => state.isFocused) && value.text.isNotEmpty,
              child: IconButton(
                icon: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.gray2,
                  ),
                  padding: const EdgeInsets.all(2),
                  child: Assets.icons.clear.svg(
                    colorFilter: const ColorFilter.mode(AppColors.white2, BlendMode.srcIn),
                    width: 12,
                    height: 12,
                  ),
                ),
                onPressed: () => context.read<SearchInputTextViewModel>().clear(),
              ),
            ),
          ),
        ),
        onSubmitted: (input) async {
          /// 1文字 && (平仮名 or カタカナ or 半角カタカナ)
          if (checkOneLetterJa(input)) {
            showConfirmationDialog<void>(
              context: context,
              dialogName: 'OneLetterErrorModal',
              title: '2文字以上で検索してください',
              applicationText: '閉じる',
              onApplied: (context) => () {
                Navigator.pop(context);
              },
            );
            return;
          }

          // 入力したら検索可能
          if (input.isNotEmpty) {
            final historyType = context.read<SearchInputTextViewModel>().searchHistoryType;
            if (historyType == SearchHistoryType.product) {
              final analytics = GetIt.I<AnalyticsManager>();
              analytics.sendEvent(
                eventType: AnalyticsEventType.productSearch,
                parameters: {EventParameterType.productKeyword: input},
              );
            }
            // 入力決定時に履歴に登録と外部から与えられた動作を実行
            await context.read<SearchInputTextViewModel>().submit();
            context.read<SearchInputTextViewModel>().clear();
            await context.read<Future<void> Function(String)>().call(input);
          }
        },
      ),
    );
  }
}

class _HistoryBox extends StatelessWidget {
  const _HistoryBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<SearchInputTextViewModel>();
    final suggestion = viewModel.controller.text;
    return FutureProvider.value(
      // 入力を元に履歴を探してくる
      value: viewModel.suggestions(suggestion),
      initialData: List<String>.empty(),
      child: Padding(
        padding: const EdgeInsets.only(top: 31, bottom: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '検索履歴',
              style: TextStyle(
                height: 1,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            BlueTextButton(
              fontSize: 14,
              onPressed: () {
                // 警告モーダル表示
                showAttentionSelectionDialog<void>(
                  context: context,
                  dialogName: 'DeleteSearchHistoryModal',
                  title: '検索履歴を削除しますか？',
                  attentionText: 'この操作は取り消せません',
                  applicationText: '削除する',
                  onApplied: (context) => () async {
                    await viewModel.deleteAll();
                    Navigator.pop(context);
                  },
                  cancellationText: '閉じる',
                  onCanceled: (context) => () => Navigator.pop(context),
                );
              },
              child: const Text('履歴を削除'),
            ),
          ],
        ),
      ),
      builder: (context, child) {
        final suggestions = context.watch<List<String>>();
        return Material(
          type: MaterialType.transparency,
          child: ColoredBox(
            color: AppColors.white,
            child: ConstrainedBox(
              constraints: const BoxConstraints.expand(),
              child: Visibility(
                // 履歴があれば表示する
                visible: suggestions.isNotEmpty,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      child!,
                      const Flexible(child: _HistoryList()),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _HistoryList extends StatelessWidget {
  const _HistoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 縦幅が小さい場合にエラーが出るのでScrollViewに入れる
    return LayoutBuilder(
      builder: (context, constraints) {
        logger.info(constraints);
        return SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final suggestion in context.watch<List<String>>()) _listContent(context, suggestion),
              // リストをいつでもスクロールできるように空の要素を追加
              SizedBox(height: constraints.maxHeight - 38)
            ],
          ),
        );
      },
    );
  }

  Widget _listContent(
    BuildContext context,
    String suggestion,
  ) =>
      Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        width: double.infinity,
        child: InkWell(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              suggestion,
              style: const TextStyle(
                height: 1,
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: AppColors.gray1,
              ),
            ),
          ),
          onTap: () async {
            final historyType = context.read<SearchInputTextViewModel>().searchHistoryType;
            if (historyType == SearchHistoryType.product) {
              final analytics = GetIt.I<AnalyticsManager>();
              analytics.sendEvent(
                eventType: AnalyticsEventType.productSearch,
                parameters: {EventParameterType.productKeyword: suggestion},
              );
            }
            await context.read<Future<void> Function(String)>().call(suggestion);
            FocusManager.instance.primaryFocus?.unfocus();
          },
        ),
      );
}
