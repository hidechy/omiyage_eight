import 'package:freezed_annotation/freezed_annotation.dart';

enum CardMemberType {
/*セブンカード・7CSカード*/
  @JsonValue('01')
  seven7CS,
/*セブンカード・ポイントカード・7CSカード*/
  @JsonValue('02')
  sevenSevenPoint7CS,
/*セブンカード・nanaco・シニアnanaco・7CSカード*/
  @JsonValue('03')
  sevenNanacoSeniorNanaco7CS,
/*nanaco・シニアnanaco*/
  @JsonValue('04')
  nanacoSeniorNanaco,
/*セブンカード・ポイントカード・nanaco・シニアnanaco・7CSカード*/
  @JsonValue('05')
  sevenSevenPointNanacoSeniorNanaco7CS,
/*シニアnanaco*/
  @JsonValue('06')
  seniorNanaco,
  /* 区分未設定 */
  @JsonValue('')
  none,
}

extension CardMemberTypeExt on CardMemberType {
  String get value {
    switch (this) {
      case CardMemberType.seven7CS:
        return '01';
      case CardMemberType.sevenSevenPoint7CS:
        return '02';
      case CardMemberType.sevenNanacoSeniorNanaco7CS:
        return '03';
      case CardMemberType.nanacoSeniorNanaco:
        return '04';
      case CardMemberType.sevenSevenPointNanacoSeniorNanaco7CS:
        return '05';
      case CardMemberType.seniorNanaco:
        return '06';
      case CardMemberType.none:
        return '';
    }
  }
}
