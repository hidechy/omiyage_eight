import 'package:freezed_annotation/freezed_annotation.dart';

enum PaymentMethodType {
  /* 代金引換 */
  @JsonValue('1')
  cashOnDelivery,
  /* クレジットカード */
  @JsonValue('2')
  creditCard,
  /* 全額ポイント利用 */
  @JsonValue('4')
  useFullPoints,
  /* 未設定 */
  @JsonValue('')
  none,
}
