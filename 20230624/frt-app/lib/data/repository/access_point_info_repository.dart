import '../api/model/access_point_info_model.dart';

abstract class AccessPointInfoRepository {
  /// アプリ接続先情報取得
  Future<AccessPointInfoModel> fetchInfo();
}
