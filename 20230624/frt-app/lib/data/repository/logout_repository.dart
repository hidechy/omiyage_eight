abstract class LogoutRepository {
  /// ログアウトAPI
  Future<void> logout();

  /// 見学終了API
  Future<void> logoutVisitor();
}
