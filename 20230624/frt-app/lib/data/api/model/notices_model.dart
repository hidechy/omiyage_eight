import 'package:freezed_annotation/freezed_annotation.dart';

import 'important_notification_model.dart';
import 'message_model.dart';

part 'notices_model.freezed.dart';
part 'notices_model.g.dart';

@freezed
class NoticesModel with _$NoticesModel {
  const factory NoticesModel({
    /* 店舗コード - リクエスト時、店舗コードが未指定の場合、nullを返却 */
    @Default('') String shopCode,
    /* 店舗名 - リクエスト時、店舗コードが未指定の場合、nullを返却 */
    @Default('') String shopName,
    /* お知らせ */
    @Default(<MessageModel>[]) List<MessageModel> messages,
    /* 重要なお知らせ */
    ImportantNotificationModel? importantNotification,
  }) = _NoticesModel;

  factory NoticesModel.fromJson(Map<String, dynamic> json) => _$NoticesModelFromJson(json);
}
