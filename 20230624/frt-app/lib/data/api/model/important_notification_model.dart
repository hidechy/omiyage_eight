import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'important_notification_model.freezed.dart';
part 'important_notification_model.g.dart';

@freezed
class ImportantNotificationModel with _$ImportantNotificationModel {
  const factory ImportantNotificationModel({
    /* １週間以内の配送規制の有無判定 ``` true：配送規制あり false：配送規制なし ※店舗コード未指定の場合は、falseを返却 ``` */
    @Default(false) bool isDeliveryControlOneWeek,
/* エリアコード ```※アンダーバー「_」区切りのフォーマット「都道府県コード_市区町村コード_通称コード_丁目コード」``` */
    @Default('') String areaCode,
  }) = _ImportantNotificationModel;

  factory ImportantNotificationModel.fromJson(Map<String, dynamic> json) => _$ImportantNotificationModelFromJson(json);
}
