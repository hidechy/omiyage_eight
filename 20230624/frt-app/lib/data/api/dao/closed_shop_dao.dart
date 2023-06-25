import '../../repository/closed_shop_repository.dart';
import '../iyns_aws_s3_dio.dart';
import '../model/closed_shop_info_model.dart';

class ClosedShopDao extends IynsAwsS3Dio implements ClosedShopRepository {
  @override
  Future<List<ClosedShopInfoModel>> fetchClosedShopInfo() async {
    const path = '/settings/info/closed_shop_info.json';
    final response = await get<List<dynamic>>(path);
    final json = response.data!;
    return json.map((dynamic data) => ClosedShopInfoModel.fromJson(data as Map<String, dynamic>)).toList();
  }
}
