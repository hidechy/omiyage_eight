import 'package:freezed_annotation/freezed_annotation.dart';

enum NanacoConfirmType {
  /* セキュリティーコード認証 */
  @JsonValue('1')
  securityCodeAuthentication,
  /* パスワード認証 */
  @JsonValue('2')
  passwordAuthentication,
  @JsonValue('')
  none,
}
