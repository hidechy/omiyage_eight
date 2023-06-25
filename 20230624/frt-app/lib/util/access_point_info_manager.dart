import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../data/api/model/access_point_info_model.dart';
import '../data/repository/access_point_info_repository.dart';
import '../enum/flavor_type.dart';
import 'customer_manager.dart';
import 'url.dart';

// 以下URLの定義が定数ではないのは、AccessPointInfoManagerクラスによってAWS S3バケット内に存在する接続先情報の代入がアプリ起動時に行われるため。
String get iynsApiBaseUrl => _iynsApiBaseUrl;

String get iynsBaseUrl => _iynsBaseUrl;

String get iynsWebBaseUrl => _iynsWebBaseUrl;

String get iynsStaticImagesBaseUrlAndPath => _iynsStaticImagesBaseUrlAndPath;

String get iynsStaticImagesBaseUrlAndSpPath => _iynsStaticImagesBaseUrlAndSpPath;

String get iynsAuthBaseUrl => _iynsAuthBaseUrl;

String get iynsAccountBaseUrl => _iynsAccountBaseUrl;

String get iynsMileProgramBaseUrl => _iynsMileProgramBaseUrl;

String get iynsLoginRestrictionUrl => '$iynsBaseUrl/nds/error/access-restriction.html';

String get iynsCartClearUrl => '$iynsBaseUrl/nds/error/cart-clear.html';

String get iynsNotFoundErrorUrl => '$iynsBaseUrl/nds/error/not-found.html';

String get iynsUnexpectedErrorUrl => '$iynsBaseUrl/nds/error/runtime.html';

String get iynsServiceUnavailableErrorUrl => '$iynsBaseUrl/nds/error/server.html';

String get iynsAccessConcentrationErrorUrl => '$iynsBaseUrl/nds/error/access-concentration.html';

Uri get afterLoginUrl => _afterLoginUrl;

Uri get iynsAuthUrl => _iynsAuthUrl;

Uri get iynsNanacoEditUrl => _iynsNanacoEditUrl;

Uri get iyns2faUrl => _iyns2faUrl;

Uri get signupUrl => _signupUrl;

Uri get iynsShopTopUrl => Uri.parse('$iynsWebBaseUrl/shop/');

/// 領収書画面URL
Uri get iynsReceiptBaseUrl => Uri.parse('$iynsWebBaseUrl/receipt/');

/// お住まい情報確認画面URL
Uri get iynsResidenceConfirmationUrl => Uri.parse('$iynsWebBaseUrl/member/residence/confirm/');

///　お住まい確認中画面URL/置き配再交渉画面
Uri get iynsResidenceNegotiationUrl => Uri.parse('$iynsWebBaseUrl/member/residence/contactless-delivery/negotiation/');

/// 置き配説明画面URL
Uri get iynsResidenceExplanationUrl => Uri.parse('$iynsWebBaseUrl/member/residence/contactless-delivery/explanation/');

/// 定期便URL
Uri get iynsSubscribeBaseUrl => Uri.parse('$iynsWebBaseUrl/subscribe/');

/// 予約便URL
Uri get iynsReserveBaseUrl => Uri.parse('$iynsWebBaseUrl/reserve/');

/// 子育て応援URL
Uri get iynsChildcareSupportBaseUrl => Uri.parse('$iynsWebBaseUrl/member/applications/new-application/01/');

/// TMS配送状況確認画面URL
Uri get deliveryStatusBaseUrl => Uri.parse('https://logistics.iy-net.jp/notice/');

/// IYプライバシーポリシーURL
Uri get iyPrivacyPolicyBaseUrl => Uri.parse('$iyBaseUrl/');

/// nanacoポイント照会
final nanacoPointInquiryBaseUrl = Uri.parse('https://www.nanaco-net.jp/');

/// 日本郵便ドメイン
final japanPostBaseUrl = Uri.parse('https://www.post.japanpost.jp/');

/// 独立行政法人医薬品医療機器総合機構ドメイン
final pmdaBaseUrl = Uri.parse('https://www.pmda.go.jp/');

/// 厚生労働省一般用医薬品販売サイト一覧ドメイン
final mhlwBaseUrl = Uri.parse('https://www.mhlw.go.jp/');

Uri get iynsReConsentUrl => _iynsReConsentUrl;

Uri get iynsCreditCartRegistrationBaseUrl => Uri.parse(iynsAccountBaseUrl).replace(
      path: '/credit/list/init',
      queryParameters: <String, String>{
        'sitecd': '0003',
        'r_url': afterLoginUrl.toString(),
      },
    );

Uri get iynsCreditCardRegistrationUrl => iynsAuthRedirectUrl(
      iynsCreditCartRegistrationBaseUrl,
      appId: '7ptl',
      forceLogin: true,
      utmCampaign: 'iyns_7id-acc',
    );

Uri get stateRedirectUrl => Uri.parse('$iynsAuthBaseUrl/state/redirect');

Uri unwrapRedirectUrl(Uri url) {
  if (!url.toString().startsWith(stateRedirectUrl.toString())) {
    return url;
  }
  final queryParameters = url.queryParameters;
  final redirect = Uri.tryParse(queryParameters['r_url'] ?? '');
  // アプリ内ではありえない
  if (redirect == null) {
    return url;
  }
  return redirect;
}

Uri iynsAuthRedirectUrl(
  Uri to, {
  bool forceLogin = false,
  String appId = 'iyns',
  String utmCampaign = '',
}) {
  if (to.authority == Uri.parse(iynsBaseUrl).authority) {
    to = to.replace(
      path: to.normalizedPath,
      queryParameters: Map<String, dynamic>.of(to.queryParameters)..putIfAbsent('logging_in', () => true.toString()),
    );
  }
  final id = GetIt.I<GlobalKey<NavigatorState>>().currentContext?.read<CustomerManager>().member?.cmnmmbridhash128;
  final utmParam = utmCampaign.isEmpty
      ? ''
      : Uri.encodeQueryComponent('utm_campaign=$utmCampaign&utm_medium=app&utm_source=app_iyns');
  return stateRedirectUrl.replace(
    queryParameters: <String, dynamic>{
      'appid': appId,
      'r_url': to.toString(),
      if (!forceLogin) 'cmnmmbridhash_128': id,
      if (utmParam.isNotEmpty) 'utmparam': utmParam,
    },
  );
}

var _iynsApiBaseUrl = '';
var _iynsBaseUrl = '';
var _iynsWebBaseUrl = '';
var _iynsStaticImagesBaseUrlAndPath = '';
var _iynsStaticImagesBaseUrlAndSpPath = '';
var _iynsAuthBaseUrl = '';
var _iynsAccountBaseUrl = '';
var _iynsMileProgramBaseUrl = '';
var _afterLoginUrl = Uri();
var _iynsAuthUrl = Uri();
var _iynsNanacoEditUrl = Uri();
var _iyns2faUrl = Uri();
var _signupUrl = Uri();
var _iynsReConsentUrl = Uri();

class AccessPointInfoManager {
  var _accessPointInfo = const AccessPointInfoModel();

  bool get isValid => !_accessPointInfo.isEmpty;

  Future<bool> fetch() async {
    // 既に接続先情報を保持していたら成功で返却
    if (isValid) {
      return true;
    }

    try {
      _accessPointInfo = await GetIt.I<AccessPointInfoRepository>().fetchInfo();
    } on TypeError catch (e, st) {
      // 接続先情報JOSN自体のフォーマットがおかしい場合はCrashlyticsに飛ばす
      FirebaseCrashlytics.instance.recordError(e, st, fatal: true);

      // レスポンスのオブジェクトマッピングに失敗した場合はアプリを終了
      if (Platform.isIOS) {
        exit(0);
      } else {
        SystemNavigator.pop(animated: false);
      }
    }

    _updateUrl();

    return true;
  }

  void _updateUrl() {
    if (FlavorConfig.instance.name == FlavorType.local.name) {
      _iynsApiBaseUrl = _convertLocalhostUrl(_accessPointInfo.iynsApiBaseUrl);
      _iynsBaseUrl = 'https://www.frt.dev.iy-net.biz';
      _iynsWebBaseUrl = '${_convertLocalhostUrl(_accessPointInfo.iynsBaseUrl)}/sp';
      _iynsAuthBaseUrl = _convertLocalhostUrl(_accessPointInfo.iynsAuthBaseUrl);
      _iynsAccountBaseUrl = _convertLocalhostUrl(_accessPointInfo.iynsAccountBaseUrl);
      _iynsMileProgramBaseUrl = _convertLocalhostUrl(_accessPointInfo.iynsMileProgramBaseUrl);
      _afterLoginUrl = Uri.parse('${_convertLocalhostUrl(_accessPointInfo.iynsBaseUrl)}/nds/app/after-login/');
    } else {
      _iynsApiBaseUrl = _accessPointInfo.iynsApiBaseUrl;
      _iynsBaseUrl = _accessPointInfo.iynsBaseUrl;
      _iynsWebBaseUrl = '${_accessPointInfo.iynsBaseUrl}/sp';
      _iynsAuthBaseUrl = _accessPointInfo.iynsAuthBaseUrl;
      _iynsAccountBaseUrl = _accessPointInfo.iynsAccountBaseUrl;
      _iynsMileProgramBaseUrl = _accessPointInfo.iynsMileProgramBaseUrl;
      _afterLoginUrl = Uri.parse('${_accessPointInfo.iynsBaseUrl}/nds/app/after-login/');
    }

    _iynsStaticImagesBaseUrlAndPath = '$iynsBaseUrl/nds/shared/images';
    _iynsStaticImagesBaseUrlAndSpPath = '$iynsBaseUrl/nds/sp/images';
    _iynsAuthUrl = Uri.parse(iynsAuthBaseUrl).replace(
      path: '/login-id/input',
      queryParameters: <String, dynamic>{
        'sitecd': '0003',
        'r_url': afterLoginUrl.toString(),
      },
    );
    _iynsNanacoEditUrl = iynsAuthRedirectUrl(
      Uri.parse(iynsAccountBaseUrl).replace(
        path: '/nanaco/edit',
        queryParameters: <String, dynamic>{
          'sitecd': '0003',
        },
      ),
      forceLogin: true,
      appId: '7ptl',
      utmCampaign: 'iyns_7id-acc',
    );
    _iyns2faUrl = Uri.parse('$iynsAuthBaseUrl/2fa-config/option');
    _signupUrl = Uri.parse(iynsAccountBaseUrl).replace(
      path: '/new-account/mail',
      queryParameters: <String, dynamic>{
        'sitecd': '0003',
        'r_url': afterLoginUrl.toString(),
      },
    );
    _iynsReConsentUrl = Uri.parse('$iynsAccountBaseUrl/terms/option');
  }

  String _convertLocalhostUrl(String url) => Platform.isAndroid ? url.replaceFirst('localhost', '10.0.2.2') : url;
}
