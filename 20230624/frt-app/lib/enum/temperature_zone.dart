import 'package:freezed_annotation/freezed_annotation.dart';

enum TemperatureZone {
  /* 常温 */
  @JsonValue('0')
  normal,
  /* 大物常温 */
  @JsonValue('1')
  largeNormal,
  /* 冷蔵 */
  @JsonValue('2')
  refrigeration,
  /* 冷凍 */
  @JsonValue('3')
  frozen,
  /* 店別商品で温度帯が設定されていない、かつ単品で温度帯が設定されていない場合 */
  @JsonValue('')
  none,
}

extension TemperatureZoneExt on TemperatureZone {
  String get value {
    switch (this) {
      case TemperatureZone.none:
      case TemperatureZone.normal:
      // return '常温';
      case TemperatureZone.largeNormal:
      // return '大物常温';
      case TemperatureZone.refrigeration:
        // return '冷蔵';
        return '';
      case TemperatureZone.frozen:
        return '冷凍';
    }
  }
}
