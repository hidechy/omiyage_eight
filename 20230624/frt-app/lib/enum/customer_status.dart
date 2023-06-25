import 'package:freezed_annotation/freezed_annotation.dart';

enum CustomerStatus {
  @JsonValue('0')
  regular,
  @JsonValue('1')
  special,
  @JsonValue('2')
  maintenance,
  @JsonValue('')
  none,
}
