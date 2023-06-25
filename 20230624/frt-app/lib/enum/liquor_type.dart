import 'package:json_annotation/json_annotation.dart';

enum LiquorType {
  /* 酒 */
  @JsonValue('1')
  alcohol,
  /* みりん */
  @JsonValue('2')
  mirin,
  /* ノンアルコール */
  @JsonValue('3')
  nonAlcohol,
  /* それ以外 */
  @JsonValue('')
  other,
}
