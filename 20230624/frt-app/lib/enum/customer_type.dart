import 'package:freezed_annotation/freezed_annotation.dart';

enum CustomerType {
  @JsonValue('1')
  sevenId,
  @JsonValue('2')
  netsuper,
  @JsonValue('3')
  visitor,
  @JsonValue('')
  none,
}
