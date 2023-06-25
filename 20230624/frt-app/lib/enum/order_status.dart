import 'package:freezed_annotation/freezed_annotation.dart';

enum OrderStatus {
  /* 未発送 */
  @JsonValue('0')
  undeliveried,
  /* 配送済み */
  @JsonValue('1')
  deliveried,
  /* 売上計上 */
  @JsonValue('2')
  recordSales,
  /* 出荷指示済 */
  @JsonValue('3')
  instructed,
  /* 持ち帰り */
  @JsonValue('4')
  takeOut,
  /* クレジットエラー*/
  @JsonValue('5')
  creditError,
  /* 自動キャンセル */
  @JsonValue('6')
  autoCancel,
  /* 全商品配達不可 */
  @JsonValue('7')
  undeliverableAll,
  /* 一部商品配達不可 */
  @JsonValue('8')
  undeliverablePart,
  @JsonValue('')
  none,
}

extension OrderStatusExt on OrderStatus {
  String get value => index.toString();
  bool get isCurrentOrder => index != 1 && index != 2 && index != 6;
  bool get isActiveReceiptStatus => index == 1 || index == 2;
}
