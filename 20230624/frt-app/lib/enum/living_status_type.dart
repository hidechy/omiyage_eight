import 'package:freezed_annotation/freezed_annotation.dart';

enum LivingStatusType {
  @JsonValue('0')
  unconfirmed,
  @JsonValue('1')
  confirmed,
  @JsonValue('2')
  duringConfirmation,
  @JsonValue('')
  none,
}
