import '../../repository/access_point_info_repository.dart';
import '../iyns_aws_s3_dio.dart';
import '../model/access_point_info_model.dart';

class AccessPointInfoDao extends IynsAwsS3Dio implements AccessPointInfoRepository {
  @override
  Future<AccessPointInfoModel> fetchInfo() async {
    const path = '/settings/info/access_point_info.json';
    final response = await get<Map<String, dynamic>>(path);
    return AccessPointInfoModel.fromJson(response.data!);
  }
}
