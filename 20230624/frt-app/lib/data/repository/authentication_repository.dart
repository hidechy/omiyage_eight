// 永続化リポジトリ用インターフェース

import '../../enum/authentication_type.dart';

abstract class AuthenticationRepository {
  Future<void> write(Map<AuthenticationType, String> values);
  Future<String?> fetchOne(AuthenticationType request);
  @Deprecated('flutter_secure_storageがver5.0.2では使用できません')
  Future<Map<AuthenticationType, String>> fetchAll();
  Future<void> delete(AuthenticationType request);
  Future<void> deleteAll();
}
