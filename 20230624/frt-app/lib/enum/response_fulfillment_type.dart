import 'package:freezed_annotation/freezed_annotation.dart';

enum ResponseFulfillmentType {
/* 通常 */
  @JsonValue('01')
  common,
/* 通常（遠隔） */
  @JsonValue('02')
  commonRemote,
/* 店舗受取 */
  @JsonValue('03')
  pickupStore,
/* 置き配 */
  @JsonValue('04')
  packageDrop,
/* 7&iロッカー受取 */
  @JsonValue('05')
  pickup7iLocker,
/* 店舗ロッカー受取 */
  @JsonValue('06')
  pickupStoreLocker,
  @JsonValue('')
  none,
}

extension ResponseFulfillmentTypeExt on ResponseFulfillmentType {
  bool get isPickup =>
      ResponseFulfillmentType.pickupStore == this ||
      ResponseFulfillmentType.pickup7iLocker == this ||
      ResponseFulfillmentType.pickupStoreLocker == this;

  bool get isHomeDelivery => ResponseFulfillmentType.common == this || ResponseFulfillmentType.commonRemote == this;

  String get value {
    switch (this) {
      case ResponseFulfillmentType.common:
        return '自宅配送';
      case ResponseFulfillmentType.commonRemote:
        return '自宅配送';
      case ResponseFulfillmentType.pickupStore:
        return '店舗受取';
      case ResponseFulfillmentType.packageDrop:
        return '置き配便';
      case ResponseFulfillmentType.pickup7iLocker:
        return 'ロッカー便';
      case ResponseFulfillmentType.pickupStoreLocker:
        return 'ロッカー便';
      case ResponseFulfillmentType.none:
        return '';
    }
  }
}
