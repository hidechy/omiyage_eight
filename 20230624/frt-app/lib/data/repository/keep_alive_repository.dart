/// トークンの有効期限を確認して伸ばすAPI
abstract class KeepAliveRepository {
  Future<void> check();
}
