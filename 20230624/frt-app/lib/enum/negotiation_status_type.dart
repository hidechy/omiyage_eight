import 'package:freezed_annotation/freezed_annotation.dart';

enum NegotiationStatusType {
  /* 未交渉 */
  @JsonValue('1')
  notNegotiated,
  /* 交渉中 */
  @JsonValue('2')
  duringNegotiation,
  /* 置き配可 */
  @JsonValue('3')
  enablePackageDrop,
  /* 置き配不可 */
  @JsonValue('4')
  unablePackageDrop,
  /* 再交渉 */
  @JsonValue('5')
  reNegotiation,
  @JsonValue('')
  none,
}
