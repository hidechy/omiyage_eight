import 'package:freezed_annotation/freezed_annotation.dart';

import 'cart_model.dart';

part 'cart_added_item_model.freezed.dart';
part 'cart_added_item_model.g.dart';

@freezed
class CartAddedItemModel with _$CartAddedItemModel {
  const factory CartAddedItemModel({
    /* カウンセリング結果 以下の値に対するメッセージは、クライアント側で任意に設定する。 ``` \"1\"：販売可能 \"2\"：販売可能だが、商品の説明をよく読むなどの注意喚起の必要あり \"3\"：販売不可 \"4\"：未回答あり（全未回答含む） ``` */
    @Default(CounselingResult.unanswered) CounselingResult counselingResult,
    @Default(CartModel()) CartModel cart,
  }) = _CartAddedItemModel;

  factory CartAddedItemModel.fromJson(Map<String, dynamic> json) => _$CartAddedItemModelFromJson(json);
}

/// カウンセリング結果 以下の値に対するメッセージは、クライアント側で任意に設定する。
enum CounselingResult {
/* 販売可能 */
  @JsonValue('1')
  available,
/* 販売可能だが、商品の説明をよく読むなどの注意喚起の必要あり */
  @JsonValue('2')
  caution,
/* 販売不可 */
  @JsonValue('3')
  unavailable,
/* 未回答あり（全未回答含む） */
  @JsonValue('4')
  unanswered,
}
