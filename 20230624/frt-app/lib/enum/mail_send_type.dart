import 'package:freezed_annotation/freezed_annotation.dart';

enum MailSendType {
  @JsonValue('1')
  mainMailAddress,
  @JsonValue('2')
  subMailAddress,
  @JsonValue('3')
  both,
  @JsonValue('')
  none,
}

extension MailSendTypeExt on MailSendType {
  String get value {
    switch (this) {
      case MailSendType.mainMailAddress:
        return '1';
      case MailSendType.subMailAddress:
        return '2';
      case MailSendType.both:
        return '3';
      case MailSendType.none:
        return '';
    }
  }
}
