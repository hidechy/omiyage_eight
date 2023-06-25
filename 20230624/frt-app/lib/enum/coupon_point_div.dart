import 'package:freezed_annotation/freezed_annotation.dart';

enum CouponPointDiv {
  // nanacoポイントプラスクーポン適用
  @JsonValue('1')
  pointPlus,
  // nanacoポイントN倍クーポン適用
  @JsonValue('2')
  pointNTimes,
  @JsonValue('')
  none,
}
