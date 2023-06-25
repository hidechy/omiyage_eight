import 'package:freezed_annotation/freezed_annotation.dart';

enum PackMaterialType {
  /* レジ袋 */
  @JsonValue('0')
  plasticBag,
  /* 複数注文(エコdeバスケット) */
  @JsonValue('1')
  ecoBag,
  /* 簡易包装 */
  @JsonValue('2')
  simplePackaging,
  /* 梱包方法未設定 */
  @JsonValue('')
  none,
}

extension PackMaterialTypeExt on PackMaterialType {
  String get value {
    switch (this) {
      case PackMaterialType.plasticBag:
        return '0';
      case PackMaterialType.ecoBag:
        return '1';
      case PackMaterialType.simplePackaging:
        return '2';
      case PackMaterialType.none:
        return '';
    }
  }

  String get description {
    switch (this) {
      case PackMaterialType.plasticBag:
        return 'レジ袋';
      case PackMaterialType.ecoBag:
        return 'エコｄｅバスケット';
      case PackMaterialType.simplePackaging:
        return '簡易包装';
      case PackMaterialType.none:
        return '';
    }
  }
}
