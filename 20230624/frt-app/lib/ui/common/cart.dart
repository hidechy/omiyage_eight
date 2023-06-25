import 'dart:io';

import 'package:flutter/material.dart';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';

import '../../data/api/model/response_model.dart';
import 'app_dialogs.dart';
import 'error_handler.dart';

Future<ErrorHandlerState> addToCartErrorHandler(
  DioError error,
  BuildContext context,
  bool isMember,
  ErrorHandler handler, {
  required String productName,
  String? limitedNumber,
}) async {
  final httpStatus = error.response!.statusCode;
  if (httpStatus != HttpStatus.badRequest) {
    return handler.next(error);
  }
  // ignore: prefer_void_to_null
  final errorResponse = ResponseModel<Null>.fromJson(error.response!.data);
  final statusCode = errorResponse.statusCode;
  if (!(statusCode == 'E-00007' || statusCode == 'E-00002')) {
    return handler.next(error);
  }
  final errorReasonCode = errorResponse.errorDetails.first.errorReasonCode;
  // 業務エラー(見学カート・みなし便カートに追加できない商品を追加)
  if (errorReasonCode == '2000218') {
    // ログイン中であれば便選択を促す
    if (isMember) {
      await showConfirmationDialog<void>(
        context: context,
        dialogName: 'DeliveryDate',
        title: '配達日時を選択してください',
        applicationText: 'OK',
        onApplied: (context) => () => Navigator.pop(context),
      );
      // ログイン中でない場合は見学なのでログインダイアログ表示
    } else {
      await showLoginDialog(context: context);
    }
    return handler.resolve();
  }
  if (errorReasonCode == '2100095') {
    await showReEnsureCartFailureModal(context);
    return handler.resolve();
  }

  final errorMessage = {
    '2000069': '$productNameの情報が削除されています。注文内容を確認してください。',
    '2000080': '受け取り日時限定商品のため、注文を承ることができません。',
    '2000081': errorResponse.errorDetails.first.errorFrontMessage,
    '2000082': '在庫数が不足しています。注文数を確認してください。',
    // 在庫数：errorResponse.errorDetails.first.errorReasonSubstitute.last.value
    '2000083': '誠に申し訳御座いませんが、商品名（$productName）の在庫数が購入数より少なくなってしまったため、お買い物カゴに追加頂けません。\n'
        'この商品の在庫数は(${errorResponse.errorDetails.firstOrNull?.errorReasonSubstitute.lastOrNull?.value ?? 0})となっております。\nお手数では御座いますが、ご購入数の修正をお願いいたします。',
    '2000084': '以下のいずれかの理由によりお酒の販売ができません。\n・法令により20歳未満の方の場合\n・担当店舗にてお酒を取り扱っていない場合\n・酒税法により店舗所在地とお届け住所で都道府県が異なる場合',
    '2100036':
        '誠に申し訳ございませんが、お支払い方法がデビットカードまたは全額ポイント利用で設定されている場合、$productNameは不定貫商品のため、カートに追加できません。\nお手数ですが、クレジットカードでのお支払いを設定の上、カートに追加してください。',
    '2100028': '誠に申し訳ございませんが、$productNameは現在注文可能期間外のため、カートに追加できません。',
    '2100045': '購入可能数を超えています。購入数を確認してください。',
    '2100046': '購入可能数を超えています。購入数を確認してください。',
  }[errorReasonCode];
  if (errorMessage == null) {
    return handler.next(error);
  }
  return handler.resolve(
    HandledError(
      message: errorMessage,
    ),
  );
}
