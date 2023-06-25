import 'package:freezed_annotation/freezed_annotation.dart';

enum OrderDisabledReason {
/* 締め日時経過NG */
  @JsonValue('1')
  closingDate,
/* 配達休み・交通規制NG */
  @JsonValue('2')
  holidayOrTraffic,
/* 最大受注件数到達NG */
  @JsonValue('3')
  upperLimit,
/* 梱包まとめ方法の異なる承り済み受注ありNG */
  @JsonValue('4')
  differentPackage,
/* 予約お渡し時間制限以降の便NG */
  @JsonValue('5')
  limitedReservation,
/* 受取便変更先に他の承り済み受注ありNG */
  @JsonValue('6')
  otherOrders,
/* 受取便変更先の在庫販売可否が異なる配達日NG */
  @JsonValue('7')
  differentInventory,
/* 見学またはみなし便に他の承り済み受注ありNG */
  @JsonValue('8')
  deemedOrders,
/* その他 */
  @JsonValue('')
  other,
}
