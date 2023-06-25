import 'package:freezed_annotation/freezed_annotation.dart';

class StringToEpochTimeConverter implements JsonConverter<int, String> {
  const StringToEpochTimeConverter();

  @override
  int fromJson(String json) => DateTime.tryParse(json)?.millisecondsSinceEpoch ?? 0;

  @override
  String toJson(int object) => toDateTime(object).toIso8601String();

  DateTime toDateTime(int epoch) => DateTime.fromMillisecondsSinceEpoch(epoch);
}

class NullableStringToEpochTimeConverter implements JsonConverter<int?, String?> {
  const NullableStringToEpochTimeConverter();

  @override
  int? fromJson(String? json) => DateTime.tryParse(json ?? '')?.millisecondsSinceEpoch;

  @override
  String? toJson(int? object) => toDateTime(object)?.toIso8601String();

  DateTime? toDateTime(int? epoch) => epoch == null ? null : DateTime.fromMillisecondsSinceEpoch(epoch);
}
