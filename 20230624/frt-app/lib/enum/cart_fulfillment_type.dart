import 'package:freezed_annotation/freezed_annotation.dart';

enum CartFulfillmentType {
  /* 通常 */
  @JsonValue('01')
  normal,
  /* 通常(遠隔) */
  @JsonValue('02')
  remoteNormal,
  /* 店舗受取 */
  @JsonValue('03')
  shopReceipt,
  /* 置き配 */
  @JsonValue('04')
  placement,
  /* 7&iロッカー受取 */
  @JsonValue('05')
  sevenAndILockerReceipt,
  /* 店舗ロッカー受取 */
  @JsonValue('06')
  shopLockerReceipt,
  /* 便未選択 */
  @JsonValue('')
  none,
}
