// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'cart_model.dart';

part 'shopping_start_check_result_model.freezed.dart';
part 'shopping_start_check_result_model.g.dart';

@freezed
class ShoppingStartCheckResultModel with _$ShoppingStartCheckResultModel {
  const factory ShoppingStartCheckResultModel({
    /* 配送日時限定商品あり判定  ``` true：商品あり false：商品なし ``` */
    @Default(false) bool isLimitedDeliveryProduct,
    /* 配送日時限定商品名リスト */
    @Default(<String>[]) List<String> limitedDeliveryProductNames,
    /* 購入不可商品あり判定  ``` true：商品あり false：商品なし ``` */
    @Default(false) bool isCanNotBuyProduct,
    /* 購入不可商品名リスト */
    @Default(<String>[]) List<String> canNotBuyProductNames,
    /* カートID - 買物開始チェック結果がNGの場合、nullを返却 */
    int? cartId,
    // range from 1 to 99999999//

    CartModel? cart,
  }) = _ShoppingStartCheckResultModel;

  factory ShoppingStartCheckResultModel.fromJson(Map<String, dynamic> json) =>
      _$ShoppingStartCheckResultModelFromJson(json);
}
