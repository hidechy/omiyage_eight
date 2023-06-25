import 'package:flutter/material.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../enum/analytics_event_type.dart';
import '../../enum/search_history_type.dart';
import '../../gen/assets.gen.dart';
import '../../util/analytics_manager.dart';
import '../page/notifications_web_view_page.dart';
import '../state/focus_state.dart';
import '../view_model/focus_view_model.dart';
import 'app_colors.dart';
import 'search_field.dart';

const double _top = 13;
const double _bottom = 7;
const double _left = 9;
const double _right = 9;

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  SearchAppBar({
    Key? key,
    required this.historyType,
    this.hintText = '例：野菜、牛乳、金の食パンなど',
    this.initialText,
    required this.onSubmitted,
  }) : super(key: key) {
    preferredSize = const Size.fromHeight(height);
  }

  final SearchHistoryType historyType;
  final String? hintText;
  final String? initialText;
  final Future<void> Function(String) onSubmitted;
  @override
  late final Size preferredSize;

  static const _searchFieldHeight = 40.0;
  static const height = _searchFieldHeight + _top + _bottom;

  @override
  Widget build(BuildContext context) {
    final hasEndDrawer = Scaffold.maybeOf(context)?.hasEndDrawer ?? false;
    final canPop = ModalRoute.of(context)?.canPop ?? false;

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
                  if (!hasEndDrawer && canPop && isFocusedOut)
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
                    child: SearchField(
                      historyType: historyType,
                      hintText: hintText,
                      initialText: initialText,
                      onSubmitted: onSubmitted,
                    ),
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
