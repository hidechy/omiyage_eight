import '../../repository/akachanhonpo_repository.dart';
import '../iyns_aws_s3_dio.dart';
import '../model/akachanhonpo_category_top_info_model.dart';

class AkachanhonpoDao extends IynsAwsS3Dio implements AkachanhonpoRepository {
  @override
  Future<AkachanhonpoCategoryTopInfoModel> fetchCategoryTopInfo() async {
    const path = '/settings/info/akachanhonpo_category_top.json';
    final response = await get<Map<String, dynamic>>(path);
    return AkachanhonpoCategoryTopInfoModel.fromJson(response.data!);
  }
}
