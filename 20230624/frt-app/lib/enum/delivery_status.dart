import 'package:freezed_annotation/freezed_annotation.dart';

/// 配達ステータス
enum DeliveryStatus {
  /* 未配達 */
  @JsonValue('0')
  undelivered,
  /* 未受取り */
  @JsonValue('1')
  notReceive,
  /* 配達中 */
  @JsonValue('2')
  inDelivery,
  /* お渡し済 */
  @JsonValue('3')
  delivered,
  /* お受取り済 */
  @JsonValue('4')
  received,
  /* 空文字の場合 */
  @JsonValue('')
  none,
}

extension DeliveryStatusExt on DeliveryStatus {
  String get displayValue {
    switch (this) {
      case DeliveryStatus.undelivered:
        return '配達準備中';
      case DeliveryStatus.notReceive:
        return '未受け取り';
      case DeliveryStatus.inDelivery:
        return '配達中';
      case DeliveryStatus.delivered:
        return '配達完了';
      case DeliveryStatus.received:
        return '受け取り済み';
      case DeliveryStatus.none:
        return '';
    }
  }

  bool get isCompleteDelivery => displayValue == '配達完了' || displayValue == '受け取り済み';
}
