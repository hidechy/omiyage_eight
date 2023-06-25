// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../util/boolean_json_converter.dart';
import 'cart_model.dart';
import 'warn_message_model.dart';

part 'changed_cart_model.freezed.dart';

part 'changed_cart_model.g.dart';

/// カート情報変更APIのレスポンスModel
@freezed
class ChangedCartModel with _$ChangedCartModel {
  const factory ChangedCartModel({
    /* 購入不可商品あり判定 */
    @Default(false) bool isCanNotBuyProduct,
    /* 購入不可商品名リスト */
    @Default(<String>[]) List<String> canNotBuyProductNames,
    /* 配達料金変更フラグ ``` \"0\"：配達料金変更なし \"1\"：配達料金変更あり ``` */
    @Default(false) @StringToBooleanConverter() bool deliveryPriceChangeFlag,
    /* クーポン適用の自動解除フラグ ``` \"0\"：自動解除なし \"1\"：自動解除あり ``` */
    @Default(false) @StringToBooleanConverter() bool couponChangeFlag,
    /* 配送日時限定商品あり判定  ``` true：配送日時限定商品あり false：配送日時限定商品なし ``` */
    @Default(false) bool isLimitedDeliveryProduct,
    /* 配送日時限定商品名リスト */
    @Default(<String>[]) List<String> limitedDeliveryProductNames,
    /* 警告メッセージリスト */
    @Default(<WarnMessageModel>[]) List<WarnMessageModel> warnMessages,
    CartModel? cart,
  }) = _ChangedCartModel;

  factory ChangedCartModel.fromJson(Map<String, dynamic> json) => _$ChangedCartModelFromJson(json);
}
