import '../../repository/config_repository.dart';
import '../iyns_aws_s3_dio.dart';
import '../model/config_model.dart';

class ConfigDao extends IynsAwsS3Dio implements ConfigRepository {
  @override
  Future<ConfigModel> fetchInfo() async {
    const path = '/settings/info/v1/config.json';
    final response = await get<Map<String, dynamic>>(path);
    return ConfigModel.fromJson(response.data!);
  }
}
