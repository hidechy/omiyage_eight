import '../api/model/banner_advertising_model.dart';
import '../api/model/banner_summary_model.dart';
import '../api/model/response_model.dart';

abstract class BannersRepository {
  /// 8連バナー商品サマリAPI
  ///
  /// @param shopCode 店舗コード
  /// @param productCount 商品件数
  /// @param cartId カートID
  Future<ResponseModel<BannerSummaryModel>> getBannerSummary({
    required String shopCode,
    required int productCount,
    int? cartId,
  });

  Future<ResponseModel<BannerAdvertisingModel>> getBannerAdvertising({
    required String bannerAdvertisingId,
    required String categoryCode,
    required String shopCode,
    required int cartId,
  });
}
