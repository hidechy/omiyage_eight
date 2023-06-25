import 'package:freezed_annotation/freezed_annotation.dart';

enum SevenCSCertificationType {
  /* 未認証 */
  @JsonValue('0')
  unauthenticated,
  /* クラブ・オン/ミレニアムID認証済み */
  @JsonValue('1')
  clubOnMillenniumIDCertified,
  /* クラブ・オン/ミレニアムIDなし(セブンCS以外のセゾン) */
  @JsonValue('2')
  noClubOnMillenniumID,
  @JsonValue('')
  none,
}
