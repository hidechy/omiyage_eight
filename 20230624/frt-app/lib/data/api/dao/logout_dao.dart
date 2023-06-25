import '../../repository/logout_repository.dart';
import '../iyns_api_dio.dart';

class LogoutDao extends IynsApiDio implements LogoutRepository {
  @override
  Future<void> logout() async {
    await delete<Map<String, dynamic>>('/logout');
  }

  @override
  Future<void> logoutVisitor() async {
    await delete<Map<String, dynamic>>('/logout/visitor');
  }
}
