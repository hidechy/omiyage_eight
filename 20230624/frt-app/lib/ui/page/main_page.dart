import 'package:flutter/material.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../common/main_bottom_navigation_bar.dart';
import '../common/theme.dart';
import '../state/main_bottom_navigation_state.dart';
import '../view_model/main_bottom_navigation_view_model.dart';

/// TopPageから呼び出される店舗画面等を含むメイン画面
class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 最初の処理内でのAPI呼び出しで再ログイン処理が行われることで自動ログインする
    // ただし、再ログインはAPI呼び出しが401の場合に自動で行われるので実際の再ログインの呼び出しは共通エラーが担う
    return StateNotifierProvider<MainBottomNavigationViewModel, MainBottomNavigationState>(
      create: (_) => MainBottomNavigationViewModel(),
      builder: (context, _) {
        final _viewModel = context.read<MainBottomNavigationViewModel>();
        return WillPopScope(
          onWillPop: () async => _viewModel.onWillPop(),
          child: Theme(
            // platformをAndroidにすることでノッチタップイベントを削除
            data: themeData.copyWith(platform: TargetPlatform.android),
            child: Scaffold(
              body: Theme(
                // ここでplatformを元に戻す
                data: themeData,
                child: Selector<MainBottomNavigationState, int>(
                  selector: (_, state) => state.index,
                  builder: (_, index, __) => IndexedStack(
                    index: index,
                    children: _viewModel.pages,
                  ),
                ),
              ),
              bottomNavigationBar: const MainBottomNavigationBar(),
            ),
          ),
        );
      },
    );
  }
}
