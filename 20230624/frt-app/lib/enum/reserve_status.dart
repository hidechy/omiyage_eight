import 'package:freezed_annotation/freezed_annotation.dart';

enum ReserveStatus {
/*  非予約受注 */
  @JsonValue('0')
  notReservedOrder,
/*  予約のみ受注 */
  @JsonValue('1')
  onlyReservedOrder,
/*  予約含む受注 */
  @JsonValue('2')
  hasReservedOrder,
  /*  未設定 */
  @JsonValue('')
  none,
}
