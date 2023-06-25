import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:native_webview/native_webview.dart';
import 'package:state_notifier/state_notifier.dart';

import '../constants.dart';
import '../ui/common/app_dialogs.dart';
import 'access_point_info_manager.dart';
import 'logger.dart';

class BasicAuthenticationManager extends StateNotifier<BasicAuthenticationState> {
  BasicAuthenticationManager() : super(const BasicAuthenticationState());

  @override
  bool updateShouldNotify(BasicAuthenticationState old, BasicAuthenticationState current) =>
      super.updateShouldNotify(old, current) && old._authenticated != current._authenticated;

  Completer<bool>? _authUserChallenged;

  bool get authenticated => state._authenticated;

  String? get base64String => state._base64String;

  Future<bool> basicAuthUserChallenge() async {
    if (_authUserChallenged?.isCompleted == false) {
      return await _authUserChallenged!.future;
    }
    _authUserChallenged = Completer();
    final key = GlobalKey<FormState>();
    final result = await showNormalConfirmationDialog<bool>(
      context: GetIt.I<GlobalKey<NavigatorState>>().currentContext!,
      clearButtonEnable: false,
      dialogName: 'BasicAuthUserChallengeModal',
      title: '認証が必要です',
      content: Form(
        key: key,
        child: Column(
          children: [
            TextFormField(
              textInputAction: TextInputAction.next,
              autofocus: true,
              autocorrect: false,
              enableSuggestions: false,
              enableIMEPersonalizedLearning: false,
              decoration: const InputDecoration(hintText: 'Username'),
              onSaved: (id) => state = state.copyWith(id: id),
            ),
            const SizedBox(height: 32),
            TextFormField(
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.visiblePassword,
              autocorrect: false,
              enableSuggestions: false,
              enableIMEPersonalizedLearning: false,
              obscureText: true,
              decoration: const InputDecoration(hintText: 'Password'),
              onSaved: (password) => state = state.copyWith(password: password),
            ),
          ],
        ),
      ),
      applicationText: 'ログイン',
      onApplied: (context) => () {
        key.currentState!.save();
        Navigator.of(context).pop(true);
      },
    );
    _authUserChallenged!.complete(result);
    return _authUserChallenged!.future;
  }

  ReceivedHttpAuthResponse onReceivedHttpAuthRequest(Uri? url) {
    logger.info('Authentication required from $url');
    // API側ですでに認証済み前提の実装
    // アプリでは起動時にアクセス情報取得をしなければ動かないので、その段階ですでにBasic認証が完了している
    if (state._authenticated && urlTrusted(url)) {
      logger.info('Basic Authenticated!');
      return ReceivedHttpAuthResponse.useCredential(state._id!, state._password!);
    }
    return ReceivedHttpAuthResponse.cancel();
  }

  bool urlTrusted(Uri? url) {
    if (url == null) {
      return false;
    }
    final host = url.host;
    return url.scheme == 'https' &&
        (host == Uri.parse(iynsAwsS3).host ||
            host == Uri.parse(iynsApiBaseUrl).host ||
            host == Uri.parse(iynsBaseUrl).host ||
            host == Uri.parse(iynsAuthBaseUrl).host ||
            host == Uri.parse(iynsAccountBaseUrl).host ||
            host == Uri.parse(iynsMileProgramBaseUrl).host ||
            // nanacoサイトはここ以外ソース上で利用されない想定
            // もし接続先情報に追加されたら入れ替える
            RegExp(r'www\.(stg\d\.)?nanaco-net\.jp').hasMatch(host));
  }
}

class BasicAuthenticationState {
  const BasicAuthenticationState({
    String? id,
    String? password,
  })  : _id = id,
        _password = password;

  BasicAuthenticationState copyWith({
    String? id,
    String? password,
  }) =>
      BasicAuthenticationState(id: id ?? _id, password: password ?? _password);

  final String? _id;
  final String? _password;

  bool get _authenticated => _id?.isNotEmpty == true && _password?.isNotEmpty == true;

  String? get _base64String => !_authenticated ? null : 'Basic ${base64.encode(utf8.encode('$_id:$_password'))}';

  Map<String, String>? get base64Header => !_authenticated ? null : {HttpHeaders.authorizationHeader: _base64String!};
}
