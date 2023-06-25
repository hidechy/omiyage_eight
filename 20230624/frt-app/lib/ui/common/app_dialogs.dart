import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../data/api/model/response_model.dart';
import '../../enum/analytics_event_type.dart';
import '../../gen/assets.gen.dart';
import '../../util/analytics_manager.dart';
import '../../util/cart_info_manager.dart';
import '../../util/route_history_navigator_observer.dart';
import '../page/delivery_datetime_page.dart';
import '../page/login_web_view_page.dart';
import '../page/root_page.dart';
import '../page/signup_web_view_page.dart';
import 'app_buttons.dart';
import 'app_colors.dart';
import 'app_loading.dart';
import 'app_media_query.dart';
import 'error_handler.dart';

// flutter標準のAlertDialogのソースを流用した。
class AppDialog extends StatelessWidget {
  const AppDialog({
    Key? key,
    this.clearButtonEnable = true,
    required this.title,
    this.additionalText,
    this.attentionText,
    bool? dividerEnable,
    this.content,
    required this.actions,
  })  : dividerEnable = dividerEnable ?? false,
        super(key: key);

  final bool clearButtonEnable;

  final String title;

  final String? additionalText;

  final String? attentionText;

  final bool dividerEnable;

  final Widget? content;

  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    Widget clearButton = Align(
      alignment: Alignment.centerRight,
      child: SizedBox.square(
        dimension: 18,
        child: clearButtonEnable
            ? IconButton(
                // UiIconsで生成されるiconは線だけのsvgを表示できない
                icon: Assets.icons.clear.svg(),
                iconSize: 18.0,
                padding: EdgeInsets.zero,
                color: AppColors.gray2,
                onPressed: () => Navigator.pop(context),
              )
            : const SizedBox.shrink(),
      ),
    );

    Widget titleWidget = Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 12),
      child: Text(
        title,
        textAlign: TextAlign.center,
        textHeightBehavior: const TextHeightBehavior(
          applyHeightToFirstAscent: false,
          applyHeightToLastDescent: false,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        style: const TextStyle(
          color: AppColors.black2,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          height: 22 / 16,
          leadingDistribution: TextLeadingDistribution.even,
        ),
      ),
    );

    Widget? additionalTextWidget;
    if (additionalText != null) {
      additionalTextWidget = Text(
        additionalText!,
        textAlign: TextAlign.center,
        textHeightBehavior: const TextHeightBehavior(
          applyHeightToFirstAscent: false,
          applyHeightToLastDescent: false,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        style: const TextStyle(
          color: AppColors.gray1,
          fontSize: 12,
          fontWeight: FontWeight.w300,
          height: 16 / 12,
        ),
      );
    }

    Widget? attentionTextWidget;
    if (attentionText != null) {
      attentionTextWidget = Text(
        attentionText!,
        textAlign: TextAlign.center,
        textHeightBehavior: const TextHeightBehavior(
          applyHeightToFirstAscent: false,
          applyHeightToLastDescent: false,
          leadingDistribution: TextLeadingDistribution.even,
        ),
        style: const TextStyle(
          color: AppColors.warning1,
          fontSize: 12,
          fontWeight: FontWeight.w600,
          height: 16 / 12,
        ),
      );
    }

    Widget? divider;
    if (dividerEnable) {
      divider = const Padding(
        padding: EdgeInsets.only(top: 24),
        child: Divider(),
      );
    }

    Widget? contentWidget;
    if (content != null) {
      contentWidget = Padding(
        padding: EdgeInsets.only(top: clearButtonEnable ? 24 : 12),
        child: DefaultTextStyle(
          textAlign: TextAlign.center,
          textHeightBehavior: const TextHeightBehavior(
            applyHeightToFirstAscent: false,
            applyHeightToLastDescent: false,
            leadingDistribution: TextLeadingDistribution.even,
          ),
          style: const TextStyle(
            color: AppColors.black2,
            fontSize: 14.0,
            fontWeight: FontWeight.w300,
            height: 19 / 14,
            leadingDistribution: TextLeadingDistribution.even,
          ),
          child: content!,
        ),
      );
    }

    var actionWithSeparator = <Widget>[];
    for (var i = 0; i < actions.length; ++i) {
      if (i > 0) {
        actionWithSeparator.add(const SizedBox(height: 16));
      }
      actionWithSeparator.add(actions[i]);
    }
    Widget actionsWidget = Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: actionWithSeparator,
      ),
    );

    List<Widget> columnChildren = <Widget>[
      clearButton,
      Flexible(
        child: Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              titleWidget,
              if (additionalTextWidget != null) additionalTextWidget,
              if (attentionTextWidget != null) attentionTextWidget,
              if (dividerEnable) divider!,
              Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      if (content != null) contentWidget!,
                    ],
                  ),
                ),
              ),
              actionsWidget,
            ],
          ),
        ),
      ),
    ];

    Widget dialogChild = Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 8, 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: columnChildren,
      ),
    );

    return Dialog(
      backgroundColor: AppColors.white,
      elevation: 10,
      insetPadding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Semantics(child: dialogChild),
    );
  }
}

/// 標準の青ボタンと灰縁ボタンが表示されるモーダル
Future<T?> showNormalSelectionDialog<T>({
  Key? key,
  required BuildContext context,
  required String dialogName,
  bool barrierDismissible = false,
  bool clearButtonEnable = true,
  Color barrierColor = AppColors.blackAlpha70,
  required String title,
  String? additionalText,
  String? attentionText,
  bool? dividerEnable,
  Widget? content,
  required String applicationText,
  double applicationTextFontSize = 18,
  VoidCallback? Function(BuildContext)? onApplied,
  required String cancellationText,
  double cancellationTextFontSize = 18,
  VoidCallback? Function(BuildContext)? onCanceled,
}) {
  final observer = RouteHistoryNavigatorObserver.of(context);
  if (dialogName.isNotEmpty && observer.hasLast(dialogName)) {
    // 同じモーダルだった場合、モーダルの終了をまつ
    return observer.last!.popped as Future<T?>;
  }
  return showDialog(
    context: context,
    routeSettings: RouteSettings(name: dialogName),
    barrierDismissible: barrierDismissible,
    barrierColor: observer.isModalCurrent ? Colors.transparent : barrierColor,
    builder: (context) => WillPopScope(
      onWillPop: () async => barrierDismissible,
      child: AppDialog(
        key: key,
        clearButtonEnable: clearButtonEnable,
        title: title,
        additionalText: additionalText,
        attentionText: attentionText,
        dividerEnable: dividerEnable,
        content: content,
        actions: [
          _DialogButton.blue.button(
            title: applicationText,
            callback: onApplied?.call(context),
            fontSize: applicationTextFontSize,
          ),
          _DialogButton.greyBorder.button(
            title: cancellationText,
            callback: onCanceled?.call(context),
            fontSize: cancellationTextFontSize,
          ),
        ],
      ),
    ),
  );
}

/// 標準の青ボタンと青縁ボタンが表示されるモーダル
Future<T?> showNormalBlueSelectionDialog<T>({
  Key? key,
  required BuildContext context,
  required String dialogName,
  bool barrierDismissible = false,
  bool clearButtonEnable = true,
  Color barrierColor = AppColors.blackAlpha70,
  required String title,
  String? additionalText,
  String? attentionText,
  bool? dividerEnable,
  Widget? content,
  required String applicationText,
  double applicationTextFontSize = 18,
  VoidCallback? Function(BuildContext)? onApplied,
  required String cancellationText,
  double cancellationTextFontSize = 18,
  VoidCallback? Function(BuildContext)? onCanceled,
}) {
  final observer = RouteHistoryNavigatorObserver.of(context);
  if (dialogName.isNotEmpty && observer.hasLast(dialogName)) {
    // 同じモーダルだった場合、モーダルの終了をまつ
    return observer.last!.popped as Future<T?>;
  }
  return showDialog(
    context: context,
    routeSettings: RouteSettings(name: dialogName),
    barrierDismissible: barrierDismissible,
    barrierColor: observer.isModalCurrent ? Colors.transparent : barrierColor,
    builder: (context) => WillPopScope(
      onWillPop: () async => barrierDismissible,
      child: AppDialog(
        key: key,
        clearButtonEnable: clearButtonEnable,
        title: title,
        additionalText: additionalText,
        attentionText: attentionText,
        dividerEnable: dividerEnable,
        content: content,
        actions: [
          _DialogButton.blue.button(
            title: applicationText,
            callback: onApplied?.call(context),
            fontSize: applicationTextFontSize,
          ),
          _DialogButton.blueBorder.button(
            title: cancellationText,
            callback: onCanceled?.call(context),
            fontSize: cancellationTextFontSize,
          ),
        ],
      ),
    ),
  );
}

/// 標準の青ボタンが表示されるモーダル
Future<T?> showNormalConfirmationDialog<T>({
  Key? key,
  required BuildContext context,
  required String dialogName,
  bool barrierDismissible = false,
  bool clearButtonEnable = false,
  Color barrierColor = AppColors.blackAlpha70,
  required String title,
  String? additionalText,
  String? attentionText,
  bool? dividerEnable,
  Widget? content,
  required String applicationText,
  double applicationTextFontSize = 18,
  VoidCallback? Function(BuildContext)? onApplied,
}) {
  final observer = RouteHistoryNavigatorObserver.of(context);
  if (dialogName.isNotEmpty && observer.hasLast(dialogName)) {
    // 同じモーダルだった場合、モーダルの終了をまつ
    return observer.last!.popped as Future<T?>;
  }
  return showDialog(
    context: context,
    routeSettings: RouteSettings(name: dialogName),
    barrierDismissible: barrierDismissible,
    barrierColor: observer.isModalCurrent ? Colors.transparent : barrierColor,
    builder: (context) => WillPopScope(
      onWillPop: () async => barrierDismissible,
      child: AppDialog(
        key: key,
        clearButtonEnable: clearButtonEnable,
        title: title,
        additionalText: additionalText,
        attentionText: attentionText,
        dividerEnable: dividerEnable,
        content: content,
        actions: [
          _DialogButton.blue.button(
            title: applicationText,
            callback: onApplied?.call(context),
            fontSize: applicationTextFontSize,
          ),
        ],
      ),
    ),
  );
}

/// 赤縁ボタンと灰縁ボタンが表示されるモーダル
Future<T?> showAttentionSelectionDialog<T>({
  Key? key,
  required BuildContext context,
  required String dialogName,
  bool barrierDismissible = false,
  bool clearButtonEnable = true,
  Color barrierColor = AppColors.blackAlpha70,
  required String title,
  String? additionalText,
  String? attentionText,
  bool? dividerEnable,
  Widget? content,
  required String applicationText,
  double applicationTextFontSize = 18,
  VoidCallback? Function(BuildContext)? onApplied,
  required String cancellationText,
  double cancellationTextFontSIze = 18,
  VoidCallback? Function(BuildContext)? onCanceled,
}) {
  final observer = RouteHistoryNavigatorObserver.of(context);
  if (dialogName.isNotEmpty && observer.hasLast(dialogName)) {
    // 同じモーダルだった場合、モーダルの終了をまつ
    return observer.last!.popped as Future<T?>;
  }
  return showDialog(
    context: context,
    routeSettings: RouteSettings(name: dialogName),
    barrierDismissible: barrierDismissible,
    barrierColor: observer.isModalCurrent ? Colors.transparent : barrierColor,
    builder: (context) => WillPopScope(
      onWillPop: () async => barrierDismissible,
      child: AppDialog(
        key: key,
        clearButtonEnable: clearButtonEnable,
        title: title,
        additionalText: additionalText,
        attentionText: attentionText,
        dividerEnable: dividerEnable,
        content: content,
        actions: [
          _DialogButton.redBorder.button(
            title: applicationText,
            callback: onApplied?.call(context),
            fontSize: applicationTextFontSize,
          ),
          _DialogButton.greyBorder.button(
            title: cancellationText,
            callback: onCanceled?.call(context),
            fontSize: cancellationTextFontSIze,
          ),
        ],
      ),
    ),
  );
}

/// ログインモーダル
/// 返却値がNullの場合、ログインすることなく戻るボタンなどで画面を消した
Future<bool?> showLoginDialog({
  Key? key,
  required BuildContext context,
}) {
  const name = 'LoginModal';
  final observer = RouteHistoryNavigatorObserver.of(context);
  if (observer.hasRoute(name)) {
    // 同じモーダルだった場合、モーダルの終了をまつ
    return observer.withName(name)!.popped as Future<bool?>;
  }
  return showDialog<bool>(
    context: context,
    routeSettings: const RouteSettings(name: name),
    barrierDismissible: false,
    barrierColor: observer.isModalCurrent ? Colors.transparent : AppColors.blackAlpha70,
    builder: (context) => WillPopScope(
      onWillPop: () async => false,
      child: AppDialog(
        key: key,
        clearButtonEnable: true,
        title: 'ログインが必要です',
        content: const Text(
          'ログインしてください。7iDをお持ちでない方は、\n新規会員登録にお進みください。',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w300,
            color: AppColors.black2,
          ),
        ),
        actions: [
          _DialogButton.blue.button(
            title: 'ログイン',
            callback: () async {
              final analytics = GetIt.I<AnalyticsManager>();
              analytics.sendEvent(eventType: AnalyticsEventType.loginOp);
              final visitorShopCode = context.read<CartInfoManager>().info.shop.shopCode;
              // ログイン画面を表示
              final succeeded = await Navigator.push(context, LoginWebViewPage.route());
              // ログイン成功したら、店舗コードチェックして差異があったらスタック消して店舗トップ
              if (succeeded ?? false) {
                final shopCode = context.read<CartInfoManager>().info.shop.shopCode;
                if (shopCode != visitorShopCode) {
                  RootPage.flush();
                  return;
                }
              }
              // ログインの終了を待ってからモーダルを削除
              Navigator.pop(context, succeeded);
            },
          ),
          _DialogButton.blueBorder.button(
            title: '新規会員登録',
            callback: () async {
              final visitorShopCode = context.read<CartInfoManager>().info.shop.shopCode;
              final succeeded = await showSignupDialog(context: context);
              // ログイン成功したら、店舗コードチェックして差異があったらスタック消して店舗トップ
              if (succeeded ?? false) {
                final shopCode = context.read<CartInfoManager>().info.shop.shopCode;
                if (shopCode != visitorShopCode) {
                  RootPage.flush();
                  return;
                }
              }
              // ログインの終了を待ってからモーダルを削除
              Navigator.pop(context, succeeded);
            },
          ),
        ],
      ),
    ),
  );
}

/// 灰縁ボタンのみ表示されるモーダル
Future<T?> showConfirmationDialog<T>({
  Key? key,
  required BuildContext context,
  required String dialogName,
  bool barrierDismissible = false,
  bool clearButtonEnable = false,
  Color barrierColor = AppColors.blackAlpha70,
  required String title,
  Widget? content,
  required String applicationText,
  double applicationTextFontSize = 18,
  VoidCallback? Function(BuildContext)? onApplied,
}) {
  final observer = RouteHistoryNavigatorObserver.of(context);
  if (dialogName.isNotEmpty && observer.hasLast(dialogName)) {
    // 同じモーダルだった場合、モーダルの終了をまつ
    return observer.last!.popped as Future<T?>;
  }
  return showDialog(
    context: context,
    routeSettings: RouteSettings(name: dialogName),
    barrierDismissible: barrierDismissible,
    barrierColor: observer.isModalCurrent ? Colors.transparent : barrierColor,
    builder: (context) => WillPopScope(
      onWillPop: () async => barrierDismissible,
      child: AppDialog(
        key: key,
        clearButtonEnable: clearButtonEnable,
        title: title,
        content: content,
        actions: [
          _DialogButton.greyBorder.button(
            title: applicationText,
            callback: onApplied?.call(context),
            fontSize: applicationTextFontSize,
          ),
        ],
      ),
    ),
  );
}

/// 配達日時変更モーダル
///
/// @param changeOrderDialogType ダイアログ操作後の画面遷移に利用
Future<bool?> showChangeOrderDialog({
  Key? key,
  required BuildContext originContext,
  required Future<bool> Function() changeOrder,
}) {
  return showNormalBlueSelectionDialog<bool?>(
    context: originContext,
    dialogName: 'ChangeOrderModal',
    title: '受け取り日時を変更しますか？',
    attentionText: '操作を実行するとお買い物途中のカートがあった場合は削除されます',
    applicationText: '変更する',
    onApplied: (context) => () async {
      final analytics = GetIt.I<AnalyticsManager>();
      analytics.sendEvent(eventType: AnalyticsEventType.changeOrderWithDelivery);
      // 注文変更実行
      final result = await _changeOrder(
        isChangeDeliveryDatetime: true,
        changeOrder: changeOrder,
      );
      Navigator.pop(context, result);
    },
    cancellationText: '受け取り日時は変更せず商品を変更する',
    cancellationTextFontSize: 14,
    onCanceled: (context) => () async {
      final analytics = GetIt.I<AnalyticsManager>();
      analytics.sendEvent(eventType: AnalyticsEventType.changeOrderWithProduct);
      // 注文変更実行
      final result = await _changeOrder(
        changeOrder: changeOrder,
      );
      Navigator.pop(context, result);
    },
  );
}

/// 注文変更
Future<bool?> _changeOrder({
  bool isChangeDeliveryDatetime = false,
  required Future<bool> Function() changeOrder,
}) async {
  final result = await showLoadingModal(
    context: GetIt.I<GlobalKey<NavigatorState>>().currentContext!,
    future: changeOrder,
    errorOperators: [ErrorOperatorWrapper(_changeOrderErrorHandler)],
  );
  if (result == false) {
    // 注文変更締め日を過ぎていた場合
    return false;
  }
  // 日時変更を行う場合、便選択画面をフルスクリーンモーダルで開く
  if (isChangeDeliveryDatetime) {
    final isEnsureCart = await GetIt.I<GlobalKey<NavigatorState>>().currentState?.push(
          DeliveryDatetimePage.route(fullscreenDialog: true),
        );
    if (isEnsureCart ?? false) {
      RootPage.flush();
    }
  }
  // 配達日時を変更しない場合、店舗トップを表示する
  else {
    RootPage.flush();
  }
  return true;
}

/// 注文変更エラー
Future<ErrorHandlerState> _changeOrderErrorHandler(DioError error, BuildContext context, ErrorHandler handler) async {
  final httpStatus = error.response!.statusCode;
  if (httpStatus != 400) {
    return handler.next(error);
  }

  // ignore: prefer_void_to_null
  final errorResponse = ResponseModel<Null>.fromJson(error.response!.data);
  final statusCode = errorResponse.statusCode;
  if (statusCode != 'E-00007') {
    return handler.next(error);
  }

  final errorResponseCode = errorResponse.errorDetails.first.errorReasonCode;
  if (errorResponseCode != '2000039') {
    return handler.next(error);
  }
  return handler.resolve(const HandledError(
    title: '変更不可',
    message: '変更締め時間を過ぎています。',
  ));
}

enum _DialogButton {
  blue,
  redBorder,
  greyBorder,
  blueBorder,
}

extension _DialogButtonExt on _DialogButton {
  Widget button({
    required String title,
    VoidCallback? callback,
    double fontSize = 18,
  }) {
    switch (this) {
      case _DialogButton.blue:
        return BlueElevatedButton.large(
          widthFactor: 0.76,
          onPressed: callback,
          child: Text(title),
          fontSize: fontSize,
        );
      case _DialogButton.redBorder:
        return RedOutlinedButton.large(
          widthFactor: 0.76,
          onPressed: callback,
          child: Text(title),
          fontSize: fontSize,
        );
      case _DialogButton.greyBorder:
        return GreyOutlinedButton.large(
          widthFactor: 0.76,
          onPressed: callback,
          child: Text(title),
          fontSize: fontSize,
        );
      case _DialogButton.blueBorder:
        return BlueOutlinedButton.large(
          widthFactor: 0.76,
          onPressed: callback,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(title),
          ),
          fontSize: fontSize,
        );
    }
  }
}

/// ModalBottomSheet (半モーダル)
Future<T?> showAppModalBottomSheet<T>({
  required BuildContext context,
  required String dialogName,
  Color backgroundColor = AppColors.white,
  Color barrierColor = AppColors.blackAlpha70,
  BoxConstraints? constraints,
  required String title,
  Widget? content,
  bool isScrollControlled = false,
}) {
  final observer = RouteHistoryNavigatorObserver.of(context);
  if (dialogName.isNotEmpty && observer.hasLast(dialogName)) {
    // 同じモーダルだった場合、モーダルの終了をまつ
    return observer.last!.popped as Future<T?>;
  }
  return showModalBottomSheet<T>(
    context: context,
    routeSettings: RouteSettings(name: dialogName),
    backgroundColor: backgroundColor,
    isScrollControlled: isScrollControlled,
    barrierColor: observer.isModalCurrent ? Colors.transparent : barrierColor,
    // とりあえずモーダルの高さは画面サイズの1/3を超えないようにしている
    constraints: constraints ?? BoxConstraints.loose(Size.fromHeight(AppMediaQuery.read(context).size.height / 3)),
    shape: const RoundedRectangleBorder(
      side: BorderSide(color: AppColors.inactive),
      borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8)),
    ),
    builder: (context) => Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: AppColors.black2,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: Assets.icons.clear.svg(),
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.zero,
                  iconSize: 18.0,
                  color: AppColors.gray2,
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          ),
          if (content != null) content,
        ],
      ),
    ),
  );
}

/// 二要素認証警告モーダルを表示し、新規会員登録→ログインを行う
Future<bool?> showSignupDialog({
  Key? key,
  required BuildContext context,
}) {
  const name = 'AlertTwoFactorAuthenticationModal';

  return showNormalSelectionDialog<bool?>(
    context: context,
    dialogName: name,
    title: '注意事項',
    additionalText: '二要素認証を設定した場合、イトーヨーカドーネットスーパーアプリをご利用いただけなくなりますのでご注意ください。',
    applicationText: '新規会員登録',
    onApplied: (context) => () async {
      final analyticsManager = GetIt.I<AnalyticsManager>();
      analyticsManager.sendEvent(eventType: AnalyticsEventType.signUpOp);
      final navigator = Navigator.of(context, rootNavigator: true);
      final isSignedUp = await navigator.push(SignupWebViewPage.route());
      if (isSignedUp == true) {
        final isLogined = await navigator.push(LoginWebViewPage.route());
        Navigator.pop(context, isLogined);
        return;
      }
      Navigator.pop(context, false);
    },
    cancellationText: 'キャンセル',
    onCanceled: (context) => () => Navigator.pop(context, false),
  );
}

// 購入不可商品削除モーダル
Future<void> showDeletedProductsNotificationModal(BuildContext context, List<String> deletedProducts) {
  return showConfirmationDialog(
    context: context,
    dialogName: 'deletedProductsNotificationModal',
    title: '20歳未満のお客様、もしくは商品の販売可能エリアと配達住所が異なるため、下記の商品は購入できません。カートから削除されます。',
    applicationText: 'OK',
    onApplied: (context) => () => Navigator.pop(context),
    content: Container(
      color: AppColors.background2,
      padding: const EdgeInsets.all(16),
      child: Text(
        deletedProducts.join('、'),
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          height: 19 / 14,
        ),
        textAlign: TextAlign.left,
      ),
    ),
  );
}

/// 便再確保不可モーダル
Future<void> showReEnsureCartFailureModal(BuildContext context) async {
  return await showNormalConfirmationDialog<void>(
    context: context,
    dialogName: 'DeliveryDate',
    title: '受け取り日時を選択してください',
    content: const Text('一定時間操作がなかったため、受け取り日時がリセットされました。'),
    applicationText: '受け取り日時を選択する',
    onApplied: (context) => () async {
      Navigator.pop(context);
      final isEnsureCart = await Navigator.of(context, rootNavigator: true).pushReplacement(
        DeliveryDatetimePage.route(fullscreenDialog: true),
      );
      if (isEnsureCart ?? false) {
        RootPage.flush();
      }
    },
  );
}
