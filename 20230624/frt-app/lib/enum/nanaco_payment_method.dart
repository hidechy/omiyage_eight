import 'package:freezed_annotation/freezed_annotation.dart';

/// 支払方法とnanacoポイント利用額
enum NanacoPaymentMethod {
  /* 代金引換 */
  @JsonValue('1')
  cashOnDelivery,
  /* クレジットカード */
  @JsonValue('2')
  creditCard,
  /* クレジットカードとポイント利用：クレジットカードとnanacoポイント併用の場合 */
  @JsonValue('3')
  creditCardAndPoints,
  /* 全額ポイント利用 */
  @JsonValue('4')
  useFullPoints,
  /* 代金引換とポイント利用：代金引換とnanacoポイント併用の場合 */
  @JsonValue('5')
  cashOnDeliveryAndPoints,
  /* 空文字の場合 */
  @JsonValue('')
  none,
}

extension NanacoPaymentMethodExt on NanacoPaymentMethod {
  String get value {
    switch (this) {
      case NanacoPaymentMethod.cashOnDelivery:
        return '代金引換';
      case NanacoPaymentMethod.creditCard:
        return 'クレジットカード';
      case NanacoPaymentMethod.creditCardAndPoints:
        return 'クレジットカードとポイント利用';
      case NanacoPaymentMethod.useFullPoints:
        return '全額ポイント利用';
      case NanacoPaymentMethod.cashOnDeliveryAndPoints:
        return '代金引換とポイント利用';
      case NanacoPaymentMethod.none:
        return '';
    }
  }
}
