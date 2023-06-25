import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../enum/authentication_type.dart';
import '../../repository/authentication_repository.dart';

class AuthenticationDao implements AuthenticationRepository {
  AuthenticationDao._internal(this._storage);
  factory AuthenticationDao() => _instance;

  static final AuthenticationDao _instance = AuthenticationDao._internal(const FlutterSecureStorage());

  final FlutterSecureStorage _storage;

  // 書き込み(アイテムは{key:value, key:value, ...}で渡す)
  @override
  Future<void> write(Map<AuthenticationType, String> values) async {
    values.forEach((key, value) => _storage.write(key: key.toString(), value: value));
  }

  // 個別アイテムの読み出し
  @override
  Future<String?> fetchOne(AuthenticationType request) {
    return _storage.read(key: request.toString());
  }

  // 全アイテムの読み出し
  // FIXME flutter_secure_storage:5.0.2では使用できません。5.1.2以上へアップデートするかfetchOneメソッドを使用してください
  @override
  Future<Map<AuthenticationType, String>> fetchAll() async {
    final response = await _storage.readAll();
    final responseMap = AuthenticationType.values.asMap().map((_, value) {
      return MapEntry(value, response[value.toString()] ?? '');
    });
    responseMap.removeWhere((key, value) => value.isEmpty);
    return responseMap;
  }

  // 個別アイテムの削除
  @override
  Future<void> delete(AuthenticationType request) async {
    await _storage.delete(key: request.toString());
  }

  // 全アイテムの削除
  @override
  Future<void> deleteAll() async {
    for (var element in AuthenticationType.values) {
      await _storage.delete(key: element.toString());
    }
  }
}
