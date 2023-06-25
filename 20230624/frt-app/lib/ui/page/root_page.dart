import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../data/api/model/config_model.dart';
import '../../data/api/model/response_model.dart';
import '../../data/repository/config_repository.dart';
import '../../util/access_point_info_manager.dart';
import '../../util/analytics_manager.dart';
import '../../util/authentication_manager.dart';
import '../../util/customer_manager.dart';
import '../../util/logger.dart';
import '../../util/update_manager.dart';
import '../common/app_colors.dart';
import '../common/app_loading2.dart';
import '../common/error_handler.dart';
import '../state/customer_state.dart';
import 'main_page.dart';
import 'sorry_page.dart';
import 'top_page.dart';

/// ルート画面
class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  static Route<Object?> route([Object? arguments]) => MaterialPageRoute<Object?>(
        builder: (_) => const RootPage(),
        settings: RouteSettings(name: name, arguments: arguments),
      );

  static void flush() => WidgetsBinding.instance.addPostFrameCallback((_) {
        // build中にbuildするなのエラーが出る場合があるため
        GetIt.I<GlobalKey<NavigatorState>>().currentState?.pushAndRemoveUntil(route(), (route) => false);
      });

  static const name = '/';

  @override
  Widget build(BuildContext context) {
    ConfigModel configModel = const ConfigModel();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ValueNotifier(GetIt.I<AccessPointInfoManager>().isValid),
        ),
        ChangeNotifierProvider(
          create: (_) => ValueNotifier(configModel),
        ),
      ],
      builder: (context, _) {
        return ColoredBox(
          color: AppColors.white,
          child: LoadingFullScreen(
            future: () async {
              // Flutter Widgetの初期化後でないとWebViewインスタンスをoverlayに追加することができないためここで、初期化する
              await GetIt.I.isReady<String>(instanceName: 'userAgent');
              context.read<ValueNotifier<bool>>().value = await _fetch();

              configModel =
                  await GetIt.I<ConfigRepository>().fetchInfo().onError((error, stackTrace) => const ConfigModel());

              final updateManager = GetIt.I<UpdateManager>();
              // タイマー設定後に初回アップデート確認をしないと初回に任意アップデートで引っかかって放置している状態で
              // 緊急メンテ or 強制アップデートが来た場合にキャッチできない
              updateManager.startTimer();
              // 初回アップデート確認
              await updateManager.initialCheck();

              final manager = GetIt.I<AuthenticationManager>();
              // 未認証の場合
              if (!(await manager.isAuthenticated)) {
                logger.info('未認証です');
                return;
              }

              // (見学) 会員情報取得済みの場合
              if (context.read<CustomerManager>().info.isValid) {
                logger.info('ログイン済みです');
                await manager.reLogin(shouldGetCart: true);
                await context.read<CustomerManager>().getInfo();
                return;
              }

              logger.info('自動ログインを開始します');
              // 再起動時に(見学)会員情報未取得の場合
              await manager.reLogin(shouldGetCart: true);
            },
            child: const _SwitchPage(),
          ),
        );
      },
    );
  }

  Future<bool> _fetch() async {
    try {
      return await GetIt.I<AccessPointInfoManager>().fetch();
    } on DioError catch (error) {
      if (error.type != DioErrorType.response) {
        rethrow;
      }
      // ignore: prefer_void_to_null
      final errorResponse = ResponseModel<Null>.fromJson(error.response!.data);
      final statusCode = errorResponse.statusCode;
      final frontMessage = errorResponse.frontMessage;
      // 計画停止の場合
      if (statusCode == 'E-00009' && frontMessage.isNotEmpty) {
        // 共通エラー処理側で計画停止ソーリーページを表示する
        rethrow;
      }

      final httpStatus = error.response!.statusCode;
      // 接続先情報取得エラー画面の表示
      _showAccessPointInfoFetchError(httpStatus, statusCode);
      throw const LoadingStopError();
    }
  }

  void _showAccessPointInfoFetchError(int? httpStatus, String? statusCode) {
    SorryPage.push(
      SorryPageArgument.accessPointInfoFetchError(
        HandledError(
          status: httpStatus,
          statusCode: statusCode,
        ),
      ),
    );
  }
}

class _SwitchPage extends StatelessWidget {
  const _SwitchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!context.watch<ValueNotifier<bool>>().value) {
      return const SizedBox.shrink();
    }

    final isValid = context.select((CustomerState state) => state.isValid);
    if (isValid) {
      return const MainPage();
    }
    final analytics = GetIt.I<AnalyticsManager>();
    analytics.sendScreenView(TopPage.name);
    return const TopPage();
  }
}
