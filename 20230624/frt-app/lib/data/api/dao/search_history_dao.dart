import 'package:shared_preferences/shared_preferences.dart';

import '../../../enum/search_history_type.dart';
import '../../repository/search_history_repository.dart';

class SearchHistoryDao implements SearchHistoryRepository {
  SearchHistoryDao(this._historyType);

  final _storage = SharedPreferences.getInstance();
  final SearchHistoryType _historyType;

  @override
  Future<void> add(String text) async {
    final storage = await _storage;
    final histories = storage.getStringList(_historyType.toString()) ?? <String>[];
    // 今ある同じ要素を削除
    histories.remove(text);
    // 末尾に追加
    histories.add(text);
    await storage.setStringList(_historyType.toString(), histories);
  }

  @override
  Future<void> deleteAll() async {
    final storage = await _storage;
    await storage.remove(_historyType.toString());
  }

  @override
  Future<List<String>> fetchAny(String pattern, {int count = 10}) async {
    final storage = await _storage;
    final histories = storage.getStringList(_historyType.toString()) ?? <String>[];
    return histories.reversed.take(count).toList();
  }
}
