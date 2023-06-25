import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

import '../../data/api/model/front_master_model.dart';
import '../../data/shared_preferences/model/recipe_detail_view_history_model.dart';
import '../../enum/analytics_event_type.dart';
import '../../enum/event_parameter_type.dart';
import '../../enum/recipe_search_type.dart';
import '../../gen/assets.gen.dart';
import '../../util/analytics_manager.dart';
import '../../util/logger.dart';
import '../../util/validation.dart';
import '../page/notifications_web_view_page.dart';
import '../page/recipe_detail_page.dart';
import '../page/recipes_page.dart';
import '../state/focus_state.dart';
import '../state/recipe_search_field_state.dart';
import '../view_model/focus_view_model.dart';
import '../view_model/recipe_search_field_view_model.dart';
import 'app_buttons.dart';
import 'app_colors.dart';
import 'app_dialogs.dart';
import 'app_media_query.dart';
import 'keyboard_state_provider.dart';

const double _top = 13;
const double _bottom = 7;
const double _left = 9;
const double _right = 9;

class RecipeSearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  RecipeSearchAppBar({
    Key? key,
    String? previousSearchWord,
    required this.masterInfo,
  })  : _previousSearchWord = previousSearchWord ?? '',
        super(key: key) {
    preferredSize = const Size.fromHeight(height);
  }

  final String _previousSearchWord;
  final FrontMasterModel masterInfo;

  static const _searchFieldHeight = 40.0;
  static const height = _searchFieldHeight + _top + _bottom;

  @override
  late final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<FocusViewModel, FocusState>(
      create: (_) => FocusViewModel(),
      builder: (context, _) {
        final isFocusedOut = context.select((FocusState state) => !state.isFocused);
        return PreferredSize(
          preferredSize: preferredSize,
          child: SafeArea(
            child: Container(
              padding: const EdgeInsets.fromLTRB(_left, _top, _right, _bottom),
              color: AppColors.white,
              child: Row(
                children: [
                  if (isFocusedOut)
                    Padding(
                      padding: const EdgeInsets.only(left: 7, right: 8),
                      child: IconButton(
                        icon: const BackButtonIcon(),
                        color: AppColors.iconTheme,
                        constraints: const BoxConstraints(maxWidth: 30, maxHeight: 30),
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        tooltip: MaterialLocalizations.of(context).backButtonTooltip,
                        onPressed: () {
                          Navigator.maybePop(context);
                        },
                      ),
                    ),
                  Expanded(
                    child: RecipeSearchField(previousSearchWord: _previousSearchWord, masterInfo: masterInfo),
                  ),
                  Visibility(
                    visible: isFocusedOut,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: IconButton(
                        icon: Assets.icons.bell.svg(),
                        color: AppColors.gray1,
                        alignment: Alignment.centerRight,
                        constraints: const BoxConstraints(maxWidth: 30, maxHeight: 30),
                        padding: const EdgeInsets.all(2),
                        iconSize: 28,
                        onPressed: () {
                          final analytics = GetIt.I<AnalyticsManager>();
                          analytics.sendEvent(eventType: AnalyticsEventType.showInformation);
                          Navigator.push(context, NotificationsWebView.route());
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class RecipeSearchField extends StatelessWidget {
  const RecipeSearchField({
    Key? key,
    required this.previousSearchWord,
    required this.masterInfo,
  }) : super(key: key);

  final String previousSearchWord;
  final FrontMasterModel masterInfo;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<RecipeSearchFieldViewModel, RecipeSearchFieldState>(
          create: (_) => RecipeSearchFieldViewModel(previousSearchWord),
        ),
        Provider.value(value: masterInfo),
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
typedef _SubmittedFunction = void Function({String? recipeId, String? keyword});

class _OverlayEntry {
  OverlayEntry? _value;

  OverlayEntry? get value => _value;

  void create(BuildContext context) {
    if (_value != null) {
      remove();
    }

    final navigator = Navigator.of(context);
    void onSubmitted({String? recipeId, String? keyword}) {
      if (recipeId != null) {
        navigator.push(RecipeDetailPage.route(recipeId));
      } else if (keyword != null) {
        navigator.push(
          RecipesPage.route(
            searchType: RecipeSearchType.category,
            keyword: keyword,
          ),
        );
      }
    }

    final viewModel = context.read<RecipeSearchFieldViewModel>();
    final masterInfo = context.read<FrontMasterModel>();
    final notifier = context.read<_TextFieldSizeNotifier>();

    _value = OverlayEntry(
      builder: (_) {
        return MultiProvider(
          providers: [
            Provider.value(value: viewModel),
            Provider.value(value: onSubmitted),
            Provider.value(value: masterInfo),
            ChangeNotifierProvider.value(value: notifier),
          ],
          child: const _RecipeSearchPanel(),
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
        const Flexible(child: _SearchTextField()),
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
}

void _cancel(BuildContext context) {
  context.read<RecipeSearchFieldViewModel>().cancel();
  FocusManager.instance.primaryFocus?.unfocus();
}

class _SearchTextField extends StatelessWidget {
  const _SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KeyboardStateProvider(
      onFocusChanged: (hasFocus) {
        logger.info('フォーカス変更');
        logger.info('$hasFocus');
        final viewModel = context.read<FocusViewModel>();
        final entry = context.read<_OverlayEntry>();
        if (hasFocus) {
          viewModel.focusIn();
          final overlayState = GetIt.I<GlobalKey<NavigatorState>>().currentState?.overlay;
          if (overlayState != null) {
            entry.create(context);
            if (entry.value != null) {
              overlayState.insert(entry.value!);
            }
          }
        } else {
          entry.remove();
          viewModel.focusOut();
        }
      },
      builder: (context, _) => TextField(
        controller: context.read<RecipeSearchFieldViewModel>().controller,
        textAlignVertical: TextAlignVertical.bottom,
        // 入力したら虫眼鏡アイコンに変更
        textInputAction: TextInputAction.search,
        focusNode: KeyboardStateProvider.watchFocus(context),
        inputFormatters: [LengthLimitingTextInputFormatter(64)],
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
          hintText: 'レシピを見つける',
          suffixIcon: Visibility(
            // ×アイコンは focus inかつテキストが空で無い時表示
            visible: context.select((FocusState state) => state.isFocused) &&
                context.select((RecipeSearchFieldState text) => text.isNotEmpty),
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
              onPressed: () => context.read<RecipeSearchFieldViewModel>().clear(),
            ),
          ),
        ),
        onSubmitted: (input) {
          // 1文字 && (平仮名 or カタカナ or 半角カタカナ)
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
            final analytics = GetIt.I<AnalyticsManager>();
            analytics.sendEvent(
              eventType: AnalyticsEventType.recipeKeywordSearch,
              parameters: {EventParameterType.recipeKeyword: input},
            );
            Navigator.push(
              context,
              RecipesPage.route(
                searchType: RecipeSearchType.keyword,
                keyword: input,
              ),
            );
          }
        },
      ),
    );
  }
}

class _RecipeSearchPanel extends StatelessWidget {
  const _RecipeSearchPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureProvider<List<RecipeDetailViewHistoryModel>>.value(
      value: context.read<RecipeSearchFieldViewModel>().viewHistories(),
      initialData: const [],
      builder: (context, child) {
        return Material(
          type: MaterialType.transparency,
          child: Container(
            height: double.infinity,
            color: AppColors.white2,
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  SizedBox(height: 31),
                  _RecipeHistory(),
                  _IngredientCategories(),
                  _RecipeCategories(),
                  SizedBox(
                    // キーボード表示時に画面全体が見えるようにするため空白を画面下部に追加
                    height: 600,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _RecipeHistory extends StatelessWidget {
  const _RecipeHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewHistories = context.watch<List<RecipeDetailViewHistoryModel>>();

    return Visibility(
      // レシピ閲覧履歴があれば表示する
      visible: viewHistories.isNotEmpty,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: const [
                Text(
                  '閲覧履歴',
                  style: TextStyle(
                    height: 19 / 14,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          _HistoryList(viewHistories),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _HistoryList extends StatelessWidget {
  const _HistoryList(this.viewHistories, {Key? key}) : super(key: key);

  final List<RecipeDetailViewHistoryModel> viewHistories;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        viewHistories.length,
        (index) => _listContent(context, viewHistories[index]),
      ),
    );
  }

  Widget _listContent(
    BuildContext context,
    RecipeDetailViewHistoryModel viewHistory,
  ) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      width: double.infinity,
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            viewHistory.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              height: 19 / 14,
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: AppColors.gray1,
            ),
          ),
        ),
        onTap: () {
          final analytics = GetIt.I<AnalyticsManager>();
          analytics.sendEvent(
            eventType: AnalyticsEventType.recipeBrowsingHistory,
            parameters: {EventParameterType.recipeId: viewHistory.recipeId},
          );
          FocusManager.instance.primaryFocus?.unfocus();
          context.read<_SubmittedFunction>().call(recipeId: viewHistory.recipeId);
        },
      ),
    );
  }
}

/// 材料カテゴリ
class _IngredientCategories extends StatelessWidget {
  const _IngredientCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '材料で探す',
            style: TextStyle(
              height: 25 / 18,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          Column(children: _ingredientCategories(context))
        ],
      ),
    );
  }

  List<Widget> _ingredientCategories(BuildContext context) {
    final categories = context.select((FrontMasterModel state) => state.categories);
    return categories.map((category) {
      final ingredientsWidgets = category.children.map((ingredient) {
        return _CategoryButton(
          name: ingredient.name,
          onPressed: () async {
            FocusManager.instance.primaryFocus?.unfocus();
            context.read<_SubmittedFunction>().call(keyword: ingredient.name);
          },
          analyticsEventType: AnalyticsEventType.recipeMaterialNameSearch,
          eventParameters: {EventParameterType.recipeMaterialName: ingredient.name},
        );
      }).toList();
      return Theme(
        // ExpansionTile では自動的に下に線が表示されるため、線を透明にする。
        data: Theme.of(context).copyWith(dividerColor: AppColors.transparent),
        child: ExpansionTile(
          title: Text(
            category.rootName,
            style: const TextStyle(
              height: 22 / 16,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          textColor: AppColors.black2,
          tilePadding: const EdgeInsets.symmetric(horizontal: 16),
          iconColor: AppColors.gray2,
          collapsedIconColor: AppColors.gray2,
          children: [
            GridView.count(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 3.27,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: ingredientsWidgets,
            ),
            const SizedBox(height: 8),
          ],
        ),
      );
    }).toList();
  }
}

class _RecipeCategories extends StatelessWidget {
  const _RecipeCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Theme(
              // ExpansionTile では自動的に下に線が表示されるため、線を透明にする。
              data: Theme.of(context).copyWith(dividerColor: AppColors.transparent),
              child: ExpansionTile(
                title: const Text(
                  '料理名で探す',
                  style: TextStyle(
                    height: 25 / 18,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                textColor: AppColors.black2,
                tilePadding: const EdgeInsets.symmetric(horizontal: 0),
                iconColor: AppColors.gray2,
                collapsedIconColor: AppColors.gray2,
                children: [
                  const SizedBox(height: 8),
                  GridView.count(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 3.27,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: _recipeCategories(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _recipeCategories(BuildContext context) {
    final recipes = context.select((FrontMasterModel state) => state.recipes);
    // レシピリスト
    return recipes.map((recipe) {
      return _CategoryButton(
        name: recipe.name,
        onPressed: () async {
          FocusManager.instance.primaryFocus?.unfocus();
          context.read<_SubmittedFunction>().call(keyword: recipe.name);
        },
        analyticsEventType: AnalyticsEventType.recipeCookingNameSearch,
        eventParameters: {EventParameterType.recipeCookingName: recipe.name},
      );
    }).toList();
  }
}

class _CategoryButton extends StatelessWidget {
  const _CategoryButton({
    Key? key,
    required this.name,
    required this.onPressed,
    this.analyticsEventType,
    this.eventParameters,
  }) : super(key: key);

  final String name;
  final VoidCallback onPressed;
  final AnalyticsEventType? analyticsEventType;
  final Map<EventParameterType, Object>? eventParameters;

  @override
  Widget build(BuildContext context) {
    return AppOutlinedButton(
      borderRadius: 4,
      borderWidth: 1,
      borderColor: AppColors.inactive,
      analyticsEventType: analyticsEventType,
      eventParameters: eventParameters,
      child: Text(
        name,
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          height: 19 / 14,
          fontSize: 14,
          fontWeight: FontWeight.w300,
          color: AppColors.black2,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
