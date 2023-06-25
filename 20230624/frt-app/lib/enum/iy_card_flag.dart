import 'package:json_annotation/json_annotation.dart';

enum IyCardFlag {
  /* 無効(未) */
  @JsonValue('0')
  invalid,
  /* IYカード */
  @JsonValue('1')
  iy,
  /* nanacoカード */
  @JsonValue('2')
  nanaco,
  /* シニアナナコカード */
  @JsonValue('3')
  seniorNanaco,
  /* ポイントカード */
  @JsonValue('4')
  point,
  /* 未設定 */
  @JsonValue('')
  none,
}
