import 'package:freezed_annotation/freezed_annotation.dart';

enum CartDivType {
/*通常注文用カート*/
  @JsonValue('1')
  normal,
/*予約注文用カート*/
  @JsonValue('2')
  reserve,
}

extension CartDivTypeExt on CartDivType {
  String get value {
    switch (this) {
      case CartDivType.normal:
        return '1';
      case CartDivType.reserve:
        return '2';
    }
  }
}
