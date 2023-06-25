import 'package:freezed_annotation/freezed_annotation.dart';

enum NanacoPointUseType {
  /* 全てのポイントを利用する */
  @JsonValue('1')
  useAllPoints,
  /* nポイントを利用する */
  @JsonValue('2')
  useNPoints,
  /* ポイントを利用しない */
  @JsonValue('9')
  doNotUsePoints,
  @JsonValue('')
  none,
}
