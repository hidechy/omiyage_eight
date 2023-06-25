import 'package:freezed_annotation/freezed_annotation.dart';

enum PackMethodType {
  /* 個別配送 */
  @JsonValue('0')
  individualOrder,
  /* 複数注文(注文毎に個別梱包する) */
  @JsonValue('1')
  multipleOrder,
  /* 複数注文(まとめて梱包する) */
  @JsonValue('2')
  collectivelyPacked,
  /* 個人会員の場合 */
  @JsonValue('')
  none,
}
