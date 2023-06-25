import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_shops_model.freezed.dart';
part 'delivery_shops_model.g.dart';

@freezed
class DeliveryShopsModel with _$DeliveryShopsModel {
  const factory DeliveryShopsModel({
    /* 配送先住所担当店舗コード */
    @Default('') String deliveryShopCode,
    /* 配送先住所担当店舗名 */
    @Default('') String deliveryShopName,
  }) = _DeliveryShopsModel;

  factory DeliveryShopsModel.fromJson(Map<String, dynamic> json) => _$DeliveryShopsModelFromJson(json);
}
