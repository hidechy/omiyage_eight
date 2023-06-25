import 'package:freezed_annotation/freezed_annotation.dart';

enum CartReserveStatusType {
  /* 非予約受注 */
  @JsonValue('0')
  nonReservedOrders,
  /* 予約のみ受注 */
  @JsonValue('1')
  ordersOnlyForReservations,
  /* 予約含む受注 */
  @JsonValue('2')
  ordersIncludingReservations,
  @JsonValue('')
  none,
}
