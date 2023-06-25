import '../../repository/regular_shipments_repository.dart';
import '../iyns_api_dio.dart';
import '../model/regular_shipment_model.dart';
import '../model/response_model.dart';

class RegularShipmentsDao extends IynsApiDio implements RegularShipmentsRepository {
  @override
  Future<ResponseModel<RegularShipmentModel>> getRegularShipments() async {
    final response = await get<Map<String, dynamic>>('/regular_shipments');
    return ResponseModel.fromJson(response.data);
  }
}
