import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_model.dart';

part 'previous_order_model.freezed.dart';
part 'previous_order_model.g.dart';

@freezed
class PreviousOrderModel with _$PreviousOrderModel {
  const factory PreviousOrderModel({
    /* 商品画像パス(ミニカート表示用) */
    @Default('') String thumbnailImagePath,
    /* 商品情報 */
    @Default(ProductModel()) ProductModel product,
  }) = _PreviousOrderModel;

  factory PreviousOrderModel.fromJson(Map<String, dynamic> json) => _$PreviousOrderModelFromJson(json);
}
