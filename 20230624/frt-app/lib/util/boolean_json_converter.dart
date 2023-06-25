import 'package:freezed_annotation/freezed_annotation.dart';

class StringToBooleanConverter implements JsonConverter<bool, String> {
  const StringToBooleanConverter();

  @override
  bool fromJson(String json) {
    switch (json) {
      case '0':
        return false;
      case '1':
        return true;
      default:
        throw ArgumentError.value(json);
    }
  }

  @override
  String toJson(bool value) => value ? '1' : '0';
}

class NullableStringToBooleanConverter implements JsonConverter<bool?, String?> {
  const NullableStringToBooleanConverter();

  @override
  bool? fromJson(String? json) {
    switch (json) {
      case '0':
        return false;
      case '1':
        return true;
      case null:
        return null;
      default:
        throw ArgumentError.value(json);
    }
  }

  @override
  String? toJson(bool? value) => value == null ? null : (value ? '1' : '0');
}
