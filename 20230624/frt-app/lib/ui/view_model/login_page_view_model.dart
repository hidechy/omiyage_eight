import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:get_it/get_it.dart';
import 'package:native_webview/native_webview.dart';
import 'package:provider/provider.dart';

import '../../data/api/model/base_customer_model.dart';
import '../../data/api/model/login_customer_model.dart';
import '../../data/api/two_factor_authentication_exception.dart';
import '../../data/repository/customers_repository.dart';
import '../../enum/user_property_type.dart';
import '../../gen/assets.gen.dart';
import '../../util/access_point_info_manager.dart';
import '../../util/analytics_manager.dart';
import '../../util/authentication_manager.dart';
import '../../util/customer_manager.dart';
import '../../util/logger.dart';
import '../../util/url.dart';
import '../common/app_dialogs.dart';
import '../common/app_loading.dart';
import '../common/error_handler.dart';
import '../page/first_use_registration_page.dart';
import '../page/sorry_page.dart';
import '../page/web_view_base_page.dart';

class LoginPageViewModel {
  String? _id;
  String? _password;

  bool get _hasIdPassword => _id != null && _password != null;

  bool _isTriedLogin = false;

  Future<bool> deleteAllCookies() async {
    // WebView内部に会員基盤のログイン記録があった時のために全Cookieを削除
    await CookieManager.instance().deleteAllCookies();
    return true;
  }

  FutureOr<ShouldOverrideUrlLoadingAction> shouldOverrideUrlLoading(
    WebViewController controller,
    ShouldOverrideUrlLoadingRequest request,
  ) {
    if (request.url != null) {
      final url = Uri.parse(request.url!);
      // URLのqueryパラメータが違う場合だけアプリ側でリダイレクトをかける
      if (url.host == iynsAuthUrl.host && url.path == iynsAuthUrl.path && url != iynsAuthUrl) {
        controller.loadUrl(iynsAuthUrl.toString());
        return ShouldOverrideUrlLoadingAction.cancel;
      }
    }
    return ShouldOverrideUrlLoadingAction.allow;
  }

  void onPageStarted(
    WebViewController controller,
    String? url,
    LoadingCallback loadStart,
    LoadingCallback loadStop,
  ) {
    logger.info(url);
    // ページ読み込みごとにhandler追加することで、ローディングをこちらの画面で制御できるようにした
    controller.removeJavascriptHandler('GetId');
    controller.removeJavascriptHandler('GetPassword');
    controller.addJavascriptHandler('GetId', (dynamic arguments) async {
      loadStart();
      if (arguments is List && arguments.isNotEmpty) {
        _id = arguments.first as String;
      } else {
        _id = null;
      }
    });
    controller.addJavascriptHandler('GetPassword', (dynamic arguments) async {
      loadStart();
      if (arguments is List && arguments.isNotEmpty) {
        _password = arguments.first as String;
      } else {
        _password = null;
      }
    });
  }

  FutureOr<void> onPageFinished(
    BuildContext context,
    WebViewController controller,
    String? url,
    LoadingCallback loadStop,
  ) async {
    if (_isTriedLogin) {
      // モーダルを表示した際にAndroidで同じURLを複数回読み込んでしまうので、フラグで今後の処理を行わないようにする
      return;
    }
    await controller.evaluateJavascript(await rootBundle.loadString(Assets.js.getIdPassword));
    try {
      // Androidの場合POSTメソッドでshouldOverrideUrlLoadingが反応しない
      mfaEnabledChecker(url);
    } on TwoFactorAuthenticationException catch (e, st) {
      logger.info(e);
      logger.info(st);
      final result = await TwoFactorAuthenticationErrorOperator.showDialog(context);
      if (!result) {
        GetIt.I<AuthenticationManager>().logout();
      }
      return;
    }

    if (url == null) {
      return;
    }
    final parsedUrl = Uri.parse(url);
    if (parsedUrl.normalizedPath != afterLoginUrl.normalizedPath) {
      return;
    }
    // ここでロードを止めてしまうことでローディングのアイコンが二重に表示されることを防ぐ
    loadStop();
    if (!_hasIdPassword) {
      FirebaseCrashlytics.instance.recordError(
        const HttpException('ID/Passwordを取得できませんでした'),
        StackTrace.current,
        fatal: true,
      );
      SorryPage.push(SorryPageArgument.unexpected());
      return;
    }

    // ここまで判定で進んだらAPIでのログイン処理に進むのでWeb側の処理を行わないようにフラグを立てる
    _isTriedLogin = true;
    final Completer<LoginCustomerModel?> completer = Completer();
    await showLoadingModal(
      context: context,
      future: () async {
        try {
          completer.complete(
            await GetIt.I<AuthenticationManager>().tryLogin(parsedUrl, isManual: true),
          );
        } catch (e) {
          completer.complete(null);
          rethrow;
        }
        return true;
      },
    );

    final loginCustomer = await completer.future;

    // ログインAPIでエラーが発生した場合loginCustomerがnullになる
    if (loginCustomer == null) {
      return;
    }

    // 購入不可商品がある場合
    if (loginCustomer.isCanNotBuyProduct) {
      await showDeletedProductsNotificationModal(context, loginCustomer.canNotBuyProductNames);
    }

    // 初回利用登録済みの場合
    if (loginCustomer.isFirstUseRegistered) {
      await _saveAndGetInfo(context, loginCustomer);
      Navigator.pop(context, true);
      return;
    }

    final isRegistered = await Navigator.of(context, rootNavigator: true).push(
      FirstUseRegistrationPage.route(
        firstUseToken: loginCustomer.firstUseToken!,
        customerAddress: loginCustomer.customerAddress!,
        mainMail: loginCustomer.mainMailAddress,
        subMail: loginCustomer.subMailAddress,
      ),
    );

    // ありえないことだが初回利用登録に失敗した場合
    if (isRegistered != true) {
      FirebaseCrashlytics.instance.recordError(
        Exception('初回利用登録に失敗しました'),
        StackTrace.current,
        fatal: true,
      );
      SorryPage.push(SorryPageArgument.unexpected());
      return;
    }

    await _saveAndGetInfo(context);
    Navigator.pop(context, true);
  }

  Future<void> _saveAndGetInfo(BuildContext context, [BaseCustomerModel? customerModel]) async {
    GetIt.I<AuthenticationManager>().save(id: _id!, password: _password!);
    await showLoadingModal(
      context: context,
      future: () async {
        // 会員情報を取得する
        customerModel ??= (await GetIt.I<CustomersRepository>().getCustomerInfo()).first;
        await context.read<CustomerManager>().setInfo(customerModel);
        // GAにユーザープロパティ(カスタムディメンション)を送信
        _sendUserProperty(customerModel!);
        return true;
      },
    );
  }
}

void _sendUserProperty(BaseCustomerModel customer) {
  try {
    final analytics = GetIt.I<AnalyticsManager>();
    // 会員ID
    analytics.sendUserId(customer.cmnmmbridhash128);
    // 店舗コード
    // 担当店舗がない住所で会員登録した場合は担当店舗情報は空になるのでanalyticsには送信不可
    if (customer.deliveryShop.isNotEmpty) {
      analytics.sendUserProperty(
        userPropertyType: UserPropertyType.shopCd,
        value: customer.deliveryShop.first.shopCode,
      );
    }
    // 年齢
    analytics.sendUserProperty(userPropertyType: UserPropertyType.age, value: customer.age);
    // ID種別 先出しではオムニ会員固定
    analytics.sendUserProperty(userPropertyType: UserPropertyType.loginType, value: 'オムニ会員');
    // 個人/法人 先出しアプリでは法人会員は非サポートである為、個人会員固定
    analytics.sendUserProperty(userPropertyType: UserPropertyType.memberType, value: '個人');
    // 配送料タイプ 先出しアプリでは法人は非対応の為、通常配送料固定
    analytics.sendUserProperty(userPropertyType: UserPropertyType.deliveryChargeType, value: '通常配送料');
    // 都道府県
    analytics.sendUserProperty(
      userPropertyType: UserPropertyType.todofuken,
      value: customer.customerAddress?.prefectureName,
    );
    // 会員継続日数
    analytics.sendUserProperty(
      userPropertyType: UserPropertyType.continueDay,
      value: customer.continueDay,
    );
  } catch (e) {
    FirebaseCrashlytics.instance.recordError(
      e,
      StackTrace.current,
      reason: '_sendUserPropertyで例外発生',
    );
  }
}
