import '../../../enum/banner_type.dart';
import '../../../enum/front_div.dart';
import '../../../enum/sort_number.dart';
import '../../repository/banners_repository.dart';
import '../iyns_api_dio.dart';
import '../model/banner_advertising_model.dart';
import '../model/banner_summary_model.dart';
import '../model/response_model.dart';

class BannersDao extends IynsApiDio implements BannersRepository {
  @override
  Future<ResponseModel<BannerSummaryModel>> getBannerSummary({
    required String shopCode,
    required int productCount,
    int? cartId,
  }) async {
    final response = await get<Map<String, dynamic>>(
      '/banners',
      queryParameters: <String, dynamic>{
        'shop_code': shopCode,
        'product_count': productCount,
        'banner_type': BannerType.afterLogin.value,
        'front_div': FrontDiv.sp.value,
        'sort_number': SortNumber.recommendation.value,
        'cart_id': cartId,
      }..removeWhere((key, dynamic value) => value == null),
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<BannerAdvertisingModel>> getBannerAdvertising({
    required String bannerAdvertisingId,
    required String categoryCode,
    required String shopCode,
    required int cartId,
  }) async {
    final response = await get<Map<String, dynamic>>(
      '/banners/after_login/$bannerAdvertisingId',
      queryParameters: <String, dynamic>{
        'category_code': categoryCode,
        'shop_code': shopCode,
        'front_div': FrontDiv.sp.value,
        'cart_id': cartId,
      }..removeWhere((key, dynamic value) => value == null),
    );
    return ResponseModel.fromJson(response.data!);
  }
}
