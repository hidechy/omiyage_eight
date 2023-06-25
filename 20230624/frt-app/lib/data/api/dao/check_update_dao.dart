import '../../../enum/update_status_type.dart';
import '../../repository/check_update_repository.dart';
import '../iyns_aws_s3_dio.dart';
import '../model/update_model.dart';

class CheckUpdateDao extends IynsAwsS3Dio implements CheckUpdateRepository {
  @override
  Future<List<UpdateModel>?> fetchUpdateInfo(UpdateStatusType type) async {
    final response = await get<List<dynamic>>(type.path);
    final json = response.data!;
    return json.map((dynamic data) => UpdateModel.fromJson(data as Map<String, dynamic>)).toList();
  }
}
