import 'package:freezed_annotation/freezed_annotation.dart';

import 'previous_order_model.dart';

part 'products_previous_order_model.freezed.dart';
part 'products_previous_order_model.g.dart';

@freezed
class ProductsPreviousOrderModel with _$ProductsPreviousOrderModel {
  const factory ProductsPreviousOrderModel({
    /* 前回注文小計 */
    String? previousTotalPrice,
    /* 全商品SOLD OUT判定 ``` true：全商品SOLD OUTである false：全商品SOLD OUTでない ``` */
    @Default(false) bool isAllSoldout,
    /* 仮会員判定 ``` true：仮会員である false：仮会員でない ``` */
    @Default(false) bool isTemporaryCustomer,
    /* 店舗コード */
    String? shopCode,
    /* 受注ID - 前回注文時の受注ID */
    int? orderId,
    /* 前回注文商品 */
    List<PreviousOrderModel>? previusOrders,
    /* 医薬品事前購入確認承認判定 - true：承認済み - false：未承認 */
    @Default(false) bool isConsentMedicine,
    /* 赤ちゃん本舗事前承認判定 - true：承認済み - false：未承認 */
    @Default(false) bool isConsentAkachanHonpo,
  }) = _ProductsPreviousOrderModel;

  factory ProductsPreviousOrderModel.fromJson(Map<String, dynamic> json) => _$ProductsPreviousOrderModelFromJson(json);
}
