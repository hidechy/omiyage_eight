import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants.dart';
import 'di/di.dart';
import 'ui/common/app_media_query.dart';
import 'ui/common/theme.dart';
import 'ui/page/root_page.dart';
import 'ui/state/customer_state.dart';
import 'ui/state/shop_info_state.dart';
import 'util/adjust_manager.dart';
import 'util/analytics_navigator_observer.dart';
import 'util/authentication_manager.dart';
import 'util/basic_authentication_manager.dart';
import 'util/cart_info_manager.dart';
import 'util/customer_manager.dart';
import 'util/logger.dart';
import 'util/route_history_navigator_observer.dart';
import 'util/shop_info_manager.dart';

class IYNetSuper extends StatelessWidget {
  const IYNetSuper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = FlavorConfig.instance.variables['title'] as String;
    return MultiProvider(
      providers: [
        StateNotifierProvider<BasicAuthenticationManager, BasicAuthenticationState>.value(
          value: GetIt.I<BasicAuthenticationManager>(),
        ),
        StateNotifierProvider<CustomerManager, CustomerState>(
          lazy: false,
          create: (_) => CustomerManager(),
        ),
        StateNotifierProvider<CartInfoManager, CartInfoState>(
          // 遅延初期化を切らないと初回ログイン後までCartInfoManagerがbuildされず
          // CustomerStateの更新に合わせてカートの取得ができない
          lazy: false,
          create: (_) => CartInfoManager(),
        ),
        StateNotifierProvider<ShopInfoManager, ShopInfoState>(
          lazy: false,
          create: (_) => ShopInfoManager(),
        ),
      ],
      child: MaterialApp(
        navigatorKey: GetIt.I<GlobalKey<NavigatorState>>(),
        title: title,
        theme: themeData,
        locale: const Locale('ja', 'JP'),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ja', 'JP'),
        ],
        navigatorObservers: [
          AnalyticsNavigatorObserver(),
          RouteHistoryNavigatorObserver(),
        ],
        builder: (BuildContext context, Widget? child) {
          var data = MediaQuery.of(context);
          final size = data.size;
          final orientation = data.orientation;
          final ratio = 390 / size.width;
          logger.info(size);
          logger.info(orientation);
          logger.info(ratio);
          logger.info(data.viewInsets);
          // 縦向きかつ横幅が390pxより小さい場合
          if (orientation == Orientation.portrait && ratio > 1.0) {
            logger.info(data.size * ratio);
            // MediaQueryDataを書き換えることで全体に画面サイズの変更を適用
            data = data.copyWith(
              size: data.size * ratio,
              padding: data.padding * ratio,
              viewPadding: data.viewPadding * ratio,
              systemGestureInsets: data.systemGestureInsets * ratio,
              viewInsets: data.viewInsets * ratio,
            );
            // FittedBoxで内部の390pxの画面を現在の画面サイズに縮小
            child = FittedBox(
              fit: BoxFit.contain,
              // 内部は390pxのサイズで描画
              // 高さをあらかじめ大きくしておかないと縮小した際に上下に空白ができる
              child: SizedBox.fromSize(
                size: data.size,
                child: child!,
              ),
            );
          }
          return MediaQuery(
            data: data.copyWith(textScaleFactor: 1),
            child: AppMediaQuery(child: child),
          );
        },
        home: const RootPage(),
      ),
    );
  }
}

class _DartEnvironmentEmptyException implements Exception {
  const _DartEnvironmentEmptyException({
    required this.dartEnvironmentName,
  });

  final String dartEnvironmentName;
  String get message => 'Dart環境変数$dartEnvironmentNameが指定されていないので正常起動できない';
}

Future<void> appMain() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    //Firebaseの初期化
    await Firebase.initializeApp();
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

    // Dart環境変数の空チェック
    _checkDartEnvironmentEmpty();

    // iOSの場合、MethodChannelを介してGoogleMapAPIを登録
    if (Platform.isIOS) {
      const channel = MethodChannel('jp.itoyokado.netsuper/initGoogleMap');
      await channel.invokeMethod<String>('initGoogleMap', dartEnvironmentValueIosGoogleMapApiKey);
    }

    setUpDI();

    // アプリインストール後の初回起動の場合はログアウトする
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getBool('first_launch') ?? true) {
      await GetIt.I<AuthenticationManager>().deletePersistentData();
      prefs.setBool('first_launch', false);
    }
    // ここでDeviceInfoを初期化しておく
    await GetIt.I.isReady<BaseDeviceInfo>();

    // Adjustマネージャのシングルトンインスタンスの生成・初期化
    await GetIt.I.isReady<AdjustManager>();

    // 画面を縦固定
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    runApp(const IYNetSuper());
  }, (error, stack) {
    logger.info(error is _DartEnvironmentEmptyException ? error.message : error);
    logger.info(stack);
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  });
}

void _checkDartEnvironmentEmpty() {
  if (Platform.isIOS) {
    if (dartEnvironmentValueIosGoogleMapApiKey.isEmpty) {
      throw const _DartEnvironmentEmptyException(dartEnvironmentName: dartEnvironmentNameIosGoogleMapApiKey);
    }
  } else if (Platform.isAndroid) {
    if (dartEnvironmentValueAndroidGoogleMapApiKey.isEmpty) {
      throw const _DartEnvironmentEmptyException(dartEnvironmentName: dartEnvironmentNameAndroidGoogleMapApiKey);
    }
  }

  if (dartEnvironmentValueAdjustAppToken.isEmpty) {
    throw const _DartEnvironmentEmptyException(dartEnvironmentName: dartEnvironmentNameAdjustAppToken);
  }
}
