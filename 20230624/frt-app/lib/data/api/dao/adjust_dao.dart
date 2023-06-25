import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../util/boolean_json_converter.dart';
import '../../repository/adjust_repository.dart';

class AdjustDao implements AdjustRepository {
  AdjustDao._internal(this._storage, this._converter);
  factory AdjustDao() => _instance;

  static final AdjustDao _instance = AdjustDao._internal(
    const FlutterSecureStorage(),
    const NullableStringToBooleanConverter(),
  );

  final FlutterSecureStorage _storage;

  final NullableStringToBooleanConverter _converter;

  final _key = 'isFirstOrderCompleted';

  @override
  Future<bool?> read() async {
    final storageValue = await _storage.read(key: _key);
    return _converter.fromJson(storageValue);
  }

  @override
  Future<void> write(bool value) async {
    _storage.write(key: _key, value: _converter.toJson(value));
  }
}
