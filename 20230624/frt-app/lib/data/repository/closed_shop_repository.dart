import '../api/model/closed_shop_info_model.dart';

abstract class ClosedShopRepository {
  /// 閉店予定店舗情報取得
  Future<List<ClosedShopInfoModel>> fetchClosedShopInfo();
}
