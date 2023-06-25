import 'package:freezed_annotation/freezed_annotation.dart';

enum RegularShipmentDeliveryWeekDiv {
  /* 月曜日 */
  @JsonValue('01_MON')
  monday,
  /* 火曜日 */
  @JsonValue('02_TUE')
  tuesday,
  /* 水曜日 */
  @JsonValue('03_WED')
  wednesday,
  /* 木曜日 */
  @JsonValue('04_THU')
  thursday,
  /* 金曜日 */
  @JsonValue('05_FRI')
  friday,
  /* 土曜日 */
  @JsonValue('06_SAT')
  saturday,
  /* 日曜日 */
  @JsonValue('07_SUN')
  sunday,
  /* 定期便申込カート以外 */
  @JsonValue('')
  none,
}
