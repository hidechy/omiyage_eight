import '../../enum/update_status_type.dart';
import '../api/model/update_model.dart';

abstract class CheckUpdateRepository {
  /// アップデート情報取得
  Future<List<UpdateModel>?> fetchUpdateInfo(UpdateStatusType type);
}
