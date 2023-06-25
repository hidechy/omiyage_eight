import 'package:freezed_annotation/freezed_annotation.dart';

import 'cart_model.dart';

part 'cart_changed_quantity_model.freezed.dart';
part 'cart_changed_quantity_model.g.dart';

/// カート商品数量変更APIのレスポンスModel
@freezed
class CartChangedQuantityModel with _$CartChangedQuantityModel {
  const factory CartChangedQuantityModel({
    /* 価格変更要確認フラグ　true：価格変更要確認　false：価格変更確認不要 */
    @Default(false) bool needPriceChangeConfirm,
    /* カートモデル */
    @Default(CartModel()) CartModel cart,
  }) = _CartChangedQuantityModel;

  factory CartChangedQuantityModel.fromJson(Map<String, dynamic> json) => _$CartChangedQuantityModelFromJson(json);
}
