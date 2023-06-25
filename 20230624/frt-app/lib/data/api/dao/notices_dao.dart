import '../../../enum/notification_type.dart';
import '../../repository/notices_repository.dart';
import '../iyns_api_dio.dart';
import '../model/notices_model.dart';
import '../model/response_model.dart';

class NoticesDao extends IynsApiDio implements NoticesRepository {
  @override
  Future<ResponseModel<NoticesModel>> getNotifications({
    List<NotificationType>? notificationTypes,
    String? shopCode,
  }) async {
    final response = await get<Map<String, dynamic>>(
      '/notices',
      queryParameters: <String, dynamic>{
        'notification_type': notificationTypes?.map((e) => e.value).join(','),
        'shop_code': shopCode,
      }..removeWhere((key, dynamic value) => value == null),
    );
    return ResponseModel.fromJson(response.data!);
  }
}
