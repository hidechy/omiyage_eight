import '../../enum/notification_type.dart';
import '../api/model/notices_model.dart';
import '../api/model/response_model.dart';

abstract class NoticesRepository {
  // お知らせ情報取得
  Future<ResponseModel<NoticesModel>> getNotifications({
    List<NotificationType>? notificationTypes,
    String? shopCode,
  });
}
