import 'package:freezed_annotation/freezed_annotation.dart';

enum PackageDropPlace {
  /*  玄関向かって右 */
  @JsonValue('1')
  rightAtTheEntrance,
  /*  玄関向かって左 */
  @JsonValue('2')
  leftAtTheEntrance,
  /*  インターフォン下 */
  @JsonValue('3')
  underTheIntercom,
  /*  その他 */
  @JsonValue('9')
  other,
  /*  置き配利用以外 */
  @JsonValue('')
  notPackageDropPlace,
}

extension PackageDropPlaceExt on PackageDropPlace {
  String get placeName {
    switch (this) {
      case PackageDropPlace.rightAtTheEntrance:
        return '玄関向かって右';
      case PackageDropPlace.leftAtTheEntrance:
        return '玄関向かって左';
      case PackageDropPlace.underTheIntercom:
        return 'インターフォン下';
      case PackageDropPlace.notPackageDropPlace:
      case PackageDropPlace.other:
        return '';
    }
  }
}
