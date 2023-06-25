import 'package:freezed_annotation/freezed_annotation.dart';

enum LabelType {
  @JsonValue('0')
  medicine,
  @JsonValue('1')
  clearance,
  @JsonValue('2')
  discountTerms,
  @JsonValue('3')
  productInformation,
  @JsonValue('4')
  otherAppeals,
  @JsonValue('5')
  alcohol,
  @JsonValue('')
  none,
}
