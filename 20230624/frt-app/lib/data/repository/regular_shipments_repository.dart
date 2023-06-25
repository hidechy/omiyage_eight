import '../api/model/regular_shipment_model.dart';
import '../api/model/response_model.dart';

abstract class RegularShipmentsRepository {
  /// 会員定期便一覧取得API
  Future<ResponseModel<RegularShipmentModel>> getRegularShipments();
}
