import '../../repository/shops_repository.dart';
import '../iyns_api_dio.dart';
import '../model/response_model.dart';
import '../model/shop_info_model.dart';
import '../model/shops_deliverables_get_response_model.dart';
import '../model/shops_medicine_confirms_model.dart';

class ShopsDao extends IynsApiDio implements ShopsRepository {
  @override
  Future<ResponseModel<ShopsDeliverablesGetResponseModel>> getShopsDeliverables({required String postalNumber}) async {
    final response = await get<Map<String, dynamic>>(
      '/shops/deliverables',
      queryParameters: <String, dynamic>{
        'postal_number': postalNumber,
      },
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<ShopInfoModel>> getShopInfo({required String shopCode}) async {
    final response = await get<Map<String, dynamic>>('/shops/$shopCode');
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<ShopsMedicineConfirmsModel>> getShopsMedicineConfirms({required String shopCode}) async {
    final response = await get<Map<String, dynamic>>('/shops/$shopCode/medicine_confirms');
    return ResponseModel.fromJson(response.data!);
  }
}
