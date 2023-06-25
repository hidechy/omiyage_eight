import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:open_store/open_store.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:version/version.dart';

import '../../util/access_point_info_manager.dart';
import '../data/api/model/update_model.dart';
import '../data/repository/check_update_repository.dart';
import '../enum/screen_name.dart';
import '../enum/update_status_type.dart';
import '../ui/common/app_buttons.dart';
import '../ui/common/app_colors.dart';
import '../ui/common/app_dialogs.dart';
import 'launcher.dart';
import 'logger.dart';
import 'route_history_navigator_observer.dart';

class UpdateManager {
  factory UpdateManager() => _instance;

  UpdateManager._internal();

  static final UpdateManager _instance = UpdateManager._internal();

  Timer? _timer;

  bool _initialChecked = false;

  //優先度が高いモーダルが、常に文言を上書きする
  String _title = '';
  String _message = '';

  void dispose() {
    _stopTimer();
  }

  Future<void> initialCheck() async {
    if (_initialChecked) {
      return;
    }
    await _checkMaintenanceOrForceUpdate();
    await _checkOptionalUpdate();
    _initialChecked = true;
  }

  void startTimer() {
    if (_timer != null) {
      return;
    }
    logger.info('[AppTimer]startTimer');
    _timer = Timer.periodic(
      const Duration(minutes: kDebugMode ? 1 : 10),
      (_) => _checkMaintenanceOrForceUpdate(),
    );
  }

  Future<void> _checkMaintenanceOrForceUpdate() async {
    logger.info('緊急SPサイト誘導の確認開始');
    if (await GetIt.I<UpdateManager>().checkUpdateStatus(UpdateStatusType.maintenance)) {
      _stopTimer();
      await _showMaintenanceDialog();
      return;
    }

    logger.info('強制アップデートの確認開始');
    if (await GetIt.I<UpdateManager>().checkUpdateStatus(UpdateStatusType.forceUpdate)) {
      _stopTimer();
      await _showForceUpdateDialog();
      return;
    }
  }

  void _stopTimer() {
    logger.info('[AppTimer]stopTimer');
    _timer?.cancel();
    _timer = null;
  }

  // 緊急メンテナンス・アップデート確認共通の確認メソッド
  Future<bool> checkUpdateStatus(UpdateStatusType type) async {
    try {
      final updateList = await GetIt.I<CheckUpdateRepository>().fetchUpdateInfo(type);
      if (updateList == null) {
        logger.info('json取得失敗のため、アップデート確認処理終了');
        return false;
      }
      if (updateList.isEmpty) {
        logger.info('jsonは取得できたが中身が空のため、アップデート確認処理終了');
        return false;
      }
      // 端末のOS
      final deviceOs = Platform.isAndroid ? 'Android' : 'iOS';

      // 端末のOSバージョン
      final deviceOsVersion = _getDeviceOsVersion();
      if (deviceOsVersion == null) {
        logger.info('端末OSバージョン取得失敗したため、アップデート確認処理終了');
        return false;
      }

      // 端末のアプリバージョン
      final deviceAppVersion = Version.parse((await PackageInfo.fromPlatform()).version);

      return _needUpdate(
        updateList: updateList,
        deviceOs: deviceOs,
        deviceOsVersion: deviceOsVersion,
        deviceAppVersion: deviceAppVersion,
      );
    } catch (e) {
      logger.info('アップデート確認処理失敗');
      if (e is DioError) {
        logger.info('${e.requestOptions.uri} ステータスコード[${e.response?.statusCode}]');
      }
      logger.warning(e);
      // アップデート確認失敗した場合は何もしないのでfalseを返す
      return false;
    }
  }

  // アップデート情報モデルリストからアップデートの要否を判断する
  bool _needUpdate({
    // UpdateModelのリスト
    required List<UpdateModel> updateList, // 端末OS('iOS'もしくは'Android'を指定)
    required String deviceOs, // 端末OSバージョン
    required Version deviceOsVersion, // 端末アプリバージョン
    required Version deviceAppVersion,
  }) {
    // os項目が空文字もしくは端末OSと一致するUpdateModelリスト
    final matchOsUpdateList =
        updateList.where((updateModel) => updateModel.os.isEmpty || updateModel.os == deviceOs).toList();
    if (matchOsUpdateList.isEmpty) {
      logger.info('端末のOSに一致する情報がないため、アップデート確認処理終了');
      return false;
    }
    for (final updateModel in matchOsUpdateList) {
      final osVersion = updateModel.osVersion;
      // jsonのos_versionに該当するOSバージョンでなければ無視する
      if (osVersion != '' && Version.parse(osVersion) != deviceOsVersion) {
        continue;
      }

      final title = updateModel.title;
      final message = updateModel.message;
      final appVersion = updateModel.appVersion;
      // jsonのapp_version項目が空文字であれば全バージョンが対象なので、trueを返して終了
      if (appVersion == '') {
        // モーダルのタイトルと本文を設定
        _title = title;
        _message = message;
        return true;
      }
      // jsonのapp_version項目より、端末のアプリバージョンが古い場合、trueを返して終了する
      if (Version.parse(appVersion) > deviceAppVersion) {
        // モーダルのタイトルと本文を設定
        _title = title;
        _message = message;
        return true;
      }
    }
    // 該当するものが無ければfalseを返す
    return false;
  }

  @visibleForTesting
  bool needUpdate({
    // UpdateModelのリスト
    required List<UpdateModel> updateList, // 端末OS('iOS'もしくは'Android'を指定)
    required String deviceOs, // 端末OSバージョン
    required Version deviceOsVersion, // 端末アプリバージョン
    required Version deviceAppVersion,
  }) {
    return _needUpdate(
      updateList: updateList,
      deviceOs: deviceOs,
      deviceOsVersion: deviceOsVersion,
      deviceAppVersion: deviceAppVersion,
    );
  }

  @visibleForTesting
  Map<String, String> getUpdateTitleAndMessage({
    // UpdateModelのリスト
    required List<UpdateModel> updateList, // 端末OS('iOS'もしくは'Android'を指定)
    required String deviceOs, // 端末OSバージョン
    required Version deviceOsVersion, // 端末アプリバージョン
    required Version deviceAppVersion,
  }) {
    _title = '';
    _message = '';
    _needUpdate(
      updateList: updateList,
      deviceOs: deviceOs,
      deviceOsVersion: deviceOsVersion,
      deviceAppVersion: deviceAppVersion,
    );
    return {_title: _message};
  }

  // 端末のOSバージョンを取得する
  Version? _getDeviceOsVersion() {
    try {
      final deviceInfo = GetIt.I<BaseDeviceInfo>();
      if (deviceInfo is AndroidDeviceInfo) {
        final androidInfo = deviceInfo.version.release!;
        return Version.parse(androidInfo);
      } else if (deviceInfo is IosDeviceInfo) {
        final iosInfo = deviceInfo.systemVersion!;
        return Version.parse(iosInfo);
      }
    } catch (_) {
      logger.info('端末のOSバージョン取得失敗');
    }
    return null;
  }

  // 任意アップデート確認して、必要であれば任意アップデートモーダル表示する
  Future<void> _checkOptionalUpdate() async {
    logger.info('任意アップデートの確認開始');
    final isUpdated = await checkUpdateStatus(UpdateStatusType.optionalUpdate);
    if (isUpdated) {
      await _showOptionalUpdateDialog();
    }
  }

  Future<void> _showOptionalUpdateDialog() async {
    await showNormalSelectionDialog<void>(
      context: GetIt.I<GlobalKey<NavigatorState>>().currentContext!,
      dialogName: ScreenName.optionalUpdateModal.value,
      title: 'アプリアップデート',
      content: const Text(
        '新しいアプリバージョンがリリースされました。アップデートしますか?',
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          height: 19 / 14,
          color: AppColors.black2,
        ),
      ),
      applicationText: '今すぐアップデートする',
      onApplied: (context) => () async {
        await OpenStore.instance.open(
          appStoreId: '1617802181',
          androidAppBundleId: 'jp.itoyokado.netsuper',
        );
      },
      cancellationText: '後で確認する',
      onCanceled: (context) => () => Navigator.pop(context),
    );
  }

  Future<void> _showMaintenanceDialog() async {
    await _showUpdateSingleButtonDialog(
      dialogName: ScreenName.emergencySPSiteGuidanceModal.value,
      title: (_title.isNotEmpty) ? _title : '現在接続しづらい状況となっておりイトーヨーカドーネットスーパーアプリはご利用いただけません',
      contentText: (_message.isNotEmpty) ? _message : '誠に申し訳ございませんがWebブラウザ版をご利用ください。',
      applicationText: 'Webブラウザ版を開く',
      onApplied: (context) => () async {
        final url = iynsAuthRedirectUrl(iynsShopTopUrl);
        await toExternalBrowser(url);
      },
    );
  }

  Future<void> _showForceUpdateDialog() async {
    await _showUpdateSingleButtonDialog(
      dialogName: ScreenName.forcedUpdateModal.value,
      title: 'アップデートのお願い',
      contentText: '引き続きイトーヨーカドーネットスーパーアプリをご利用いただくには、ストアより最新版へアップデートをお願いします。',
      applicationText: 'アップデートする',
      onApplied: (context) => () async {
        await OpenStore.instance.open(
          appStoreId: '1617802181',
          androidAppBundleId: 'jp.itoyokado.netsuper',
        );
      },
    );
  }

  /// 緊急SPサイト誘導/強制アップデートモーダルのテンプレート
  Future<void> _showUpdateSingleButtonDialog({
    Key? key,
    required String dialogName,
    required String title,
    required String contentText,
    required String applicationText,
    VoidCallback? Function(BuildContext)? onApplied,
  }) {
    final context = GetIt.I<GlobalKey<NavigatorState>>().currentContext!;
    final observer = RouteHistoryNavigatorObserver.of(context);
    if (observer.hasLast(ScreenName.optionalUpdateModal.value)) {
      // 優先順位が低い任意アップデートモーダルが出ていたら、閉じる
      Navigator.of(context).pop();
    }
    return showDialog(
      context: context,
      routeSettings: RouteSettings(name: dialogName),
      barrierDismissible: false,
      barrierColor: AppColors.blackAlpha70,
      builder: (context) => WillPopScope(
        onWillPop: () async => false,
        child: AppDialog(
          key: key,
          clearButtonEnable: false,
          title: title,
          content: Text(
            contentText,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              height: 19 / 14,
              color: AppColors.black2,
            ),
          ),
          actions: [
            BlueElevatedButton.large(
              widthFactor: 0.76,
              onPressed: onApplied?.call(context),
              child: Text(applicationText),
              fontSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}
