import 'package:freezed_annotation/freezed_annotation.dart';

enum MailMagazineType {
  @JsonValue('0')
  doNotSend,
  @JsonValue('1')
  mainMailAddress,
  @JsonValue('2')
  subMailAddress,
  @JsonValue('3')
  both,
  @JsonValue('')
  none,
}

extension MailMagazineTypeExt on MailMagazineType {
  String get value {
    switch (this) {
      case MailMagazineType.doNotSend:
        return '0';
      case MailMagazineType.mainMailAddress:
        return '1';
      case MailMagazineType.subMailAddress:
        return '2';
      case MailMagazineType.both:
        return '3';
      case MailMagazineType.none:
        return '';
    }
  }
}
