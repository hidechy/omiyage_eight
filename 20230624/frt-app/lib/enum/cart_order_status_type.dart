import 'package:freezed_annotation/freezed_annotation.dart';

enum CartOrderStatusType {
  /* 未受注 */
  @JsonValue('3')
  notOrdered,
  /* 変更中 */
  @JsonValue('4')
  nowChanging,
  @JsonValue('')
  none,
}
