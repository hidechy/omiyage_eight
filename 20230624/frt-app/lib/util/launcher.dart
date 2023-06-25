import 'package:flutter/material.dart';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';

import '../ui/page/web_view_base_page.dart';
import 'access_point_info_manager.dart';
import 'logger.dart';
import 'url.dart';

Future<void> toExternalBrowser(Uri? url) async {
  if (url == null) {
    FirebaseCrashlytics.instance.recordError(
      Exception('表示対象のURLがnullです'),
      StackTrace.current,
    );
    return;
  }
  if (!await canLaunchUrl(url)) {
    logger.info('デバイスで開く事ができないURIです: $url');
    FirebaseCrashlytics.instance.recordError(
      Exception('デバイスで開く事ができないURIです: $url'),
      StackTrace.current,
    );
    return;
  }

  logger.info('launch url: $url');
  launchUrl(url, mode: LaunchMode.externalApplication);
}

// ブラックリスト
final _deny = <RegExp>{
  // 領収書画面
  RegExp(r'^' + RegExp.escape(iynsReceiptBaseUrl.toString()) + r'*'),
  // お住まい住所確認画面
  RegExp(r'^' + RegExp.escape(iynsResidenceConfirmationUrl.toString()) + r'$'),
  // お住まい住所確認中画面/置き配再交渉画面
  RegExp(r'^' + RegExp.escape(iynsResidenceNegotiationUrl.toString()) + r'$'),
  // 置き配説明画面
  RegExp(r'^' + RegExp.escape(iynsResidenceExplanationUrl.toString()) + r'$'),
  // 予約便
  RegExp(r'^' + RegExp.escape(iynsSubscribeBaseUrl.toString()) + r'.*'),
  // 定期便
  RegExp(r'^' + RegExp.escape(iynsReserveBaseUrl.toString()) + r'.*'),
  // 子育て応援
  RegExp(r'^' + RegExp.escape(iynsChildcareSupportBaseUrl.toString()) + r'.*'),
  // PDF
  RegExp(r'.*\.pdf/$'),
};

// ホワイトリスト
final _allow = <RegExp>{
  // IYNS全般
  _createUrlPattern(iynsBaseUrl, 1),
  // プライバシーポリシー
  _createUrlPattern(iyPrivacyPolicyBaseUrl.toString(), 1),
  // 会員基盤全般(nanaco/クレジットカード設定/会員情報編集/マイル)
  _createUrlPattern(iynsAuthBaseUrl, 2),
  // nanacoポイント照会画面
  _createUrlPattern(nanacoPointInquiryBaseUrl.toString(), 1),
  // 郵便番号検索(日本郵便)
  RegExp(r'^' + RegExp.escape(japanPostBaseUrl.toString()) + r'.*'),
  // 独立行政法人医薬品医療機器総合機構
  RegExp(r'^' + RegExp.escape(pmdaBaseUrl.toString()) + r'.*'),
  // 厚生労働省一般用医薬品販売サイト一覧
  RegExp(r'^' + RegExp.escape(mhlwBaseUrl.toString()) + r'.*'),
};

RegExp _createUrlPattern(String url, int skip) {
  final parsedUrl = Uri.parse(url);
  final scheme = parsedUrl.scheme;
  final host = parsedUrl.host;
  final baseHost = host.split('.').skip(skip).join('.');
  return RegExp('^$scheme://[a-z0-9-.]*${RegExp.escape(baseHost)}.*');
}

bool canOpenByWebView(
  Uri? url, {
  Set<RegExp>? deny,
  Set<RegExp>? allow,
}) {
  if (url == null) {
    return false;
  }

  deny ??= {};
  deny.addAll(_deny);
  allow ??= {};
  allow.addAll(_allow);

  // https://xxx.xxx/yyy/形式に変換
  final to = '${url.origin}${url.normalizedPath}';

  var allowed = false;
  for (final r in allow) {
    if (r.hasMatch(to)) {
      logger.info('Allowed $url to $r}');
      allowed = true;
      break;
    }
  }

  // 許可リストに入っていないものは全て拒否
  if (!allowed) {
    return false;
  }

  // 拒否リストに入っているものは拒否
  for (final r in deny) {
    if (r.hasMatch(to)) {
      logger.info('Denied $url to $r}');
      return false;
    }
  }

  // 許可リストに入っていて、拒否リストに入っていないものは許可
  return true;
}

Future<void> browse(
  Uri? url, {
  String? title,
  String? routeName,
  bool authenticationRequired = false,
  Set<RegExp>? deny,
  Set<RegExp>? allow,
}) {
  if (!canOpenByWebView(url, deny: deny, allow: allow)) {
    logger.info('to: $url');
    toExternalBrowser(url);
    return Future.value(null);
  }
  return Navigator.of(GetIt.I<GlobalKey<NavigatorState>>().currentContext!).push<void>(
    MaterialPageRoute(
      builder: (_) => WebViewBasePage(
        authenticationRequired: authenticationRequired,
        showAppBar: true,
        title: title,
        initialUrl: url.toString(),
        deny: deny,
        allow: allow,
      ),
      settings: RouteSettings(name: routeName),
    ),
  );
}
