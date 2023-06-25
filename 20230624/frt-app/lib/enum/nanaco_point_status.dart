import 'package:freezed_annotation/freezed_annotation.dart';

enum NanacoPointStatus {
  // 未送信
  @JsonValue('0')
  unsent,
  // 送信済
  @JsonValue('1')
  completeSent,
  // 結果受信済（正常）
  @JsonValue('2')
  completeReceiveResultNormal,
  // 結果受信済（エラー）
  @JsonValue('3')
  completeReceiveResultError,
  // 再付与依頼
  @JsonValue('4')
  requestRegrant,
  // 再付与依頼済
  @JsonValue('5')
  completeRequestRegrant,
  @JsonValue('')
  none,
}
