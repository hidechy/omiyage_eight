import '../api/model/config_model.dart';

abstract class ConfigRepository {
  Future<ConfigModel> fetchInfo();
}
