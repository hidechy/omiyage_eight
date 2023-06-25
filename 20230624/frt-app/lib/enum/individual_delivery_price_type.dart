import 'package:freezed_annotation/freezed_annotation.dart';

enum IndividualDeliveryPriceType {
  /* 固定額 */
  @JsonValue('1')
  fixedAmount,
  /* ％割引 */
  @JsonValue('2')
  percentDiscount,
/* 配送料金が通常配送料に設定されている会員の場合 */
  @JsonValue('')
  standard,
}

extension IndividualDeliveryPriceTypeExt on IndividualDeliveryPriceType {
  String get value {
    switch (this) {
      case IndividualDeliveryPriceType.standard:
        return '';
      case IndividualDeliveryPriceType.fixedAmount:
        return '1';
      case IndividualDeliveryPriceType.percentDiscount:
        return '2';
    }
  }
}
