import 'package:freezed_annotation/freezed_annotation.dart';

enum DrugType {
  // すべて
  @JsonValue('all')
  all,
  // 第一類医薬品
  @JsonValue('A')
  firstClassDrugs,
  // 指定第２類医薬品
  @JsonValue('B')
  designatedSecondClassDrugs,
  // 第２類医薬品
  @JsonValue('C')
  secondClassDrugs,
  // 第３医薬品
  @JsonValue('D')
  thirdClassDrugs,
  // 医薬部外品
  @JsonValue('E')
  quasiDrugs,
  // 指定なし
  @JsonValue('')
  none,
}
