import 'package:freezed_annotation/freezed_annotation.dart';

enum NotificationType {
  /* 重要なお知らせ */
  @JsonValue('important')
  important,
  /* NEWS */
  @JsonValue('news')
  news,
  /* 店舗からのお知らせ */
  @JsonValue('shop')
  shop,
  /* 緊急告知 */
  @JsonValue('urgent')
  urgent,
  @JsonValue('')
  none,
}

extension NotificationTypeExt on NotificationType {
  String get value {
    switch (this) {
      case NotificationType.important:
        return 'important';
      case NotificationType.news:
        return 'news';
      case NotificationType.shop:
        return 'shop';
      case NotificationType.urgent:
        return 'urgent';
      case NotificationType.none:
        return '';
    }
  }
}
