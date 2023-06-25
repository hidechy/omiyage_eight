import 'package:freezed_annotation/freezed_annotation.dart';

enum Gender {
  @JsonValue('0')
  male,
  @JsonValue('1')
  female,
  @JsonValue('2')
  noAnswer,
  @JsonValue('9')
  unknown,
}

extension GenderExt on Gender {
  String get value {
    switch (this) {
      case Gender.male:
        return '男性';
      case Gender.female:
        return '女性';
      case Gender.noAnswer:
        return '無回答';
      case Gender.unknown:
        return '';
    }
  }
}
