import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../repository/recipe_detail_view_history_repository.dart';
import '../model/recipe_detail_view_history_model.dart';

class RecipeDetailViewHistoryDao implements RecipeDetailViewHistoryRepository {
  final _storage = SharedPreferences.getInstance();
  final _key = 'recipe_detail_view_history';

  @override
  Future<void> add(RecipeDetailViewHistoryModel historyModel) async {
    final storage = await _storage;
    final jsonHistoryModel = jsonEncode(historyModel.toJson());
    // 今ある同じ要素を削除して末尾に追加
    final jsonHistoryModels = storage.getStringList(_key) ?? []
      ..remove(jsonHistoryModel)
      ..add(jsonHistoryModel);
    await storage.setStringList(_key, jsonHistoryModels);
  }

  @override
  Future<void> deleteAll() async {
    final storage = await _storage;
    await storage.remove(_key);
  }

  @override
  Future<List<RecipeDetailViewHistoryModel>> fetchAny({int count = 5}) async {
    final storage = await _storage;
    final jsonHistoryModels = storage.getStringList(_key) ?? [];
    final historyModels = jsonHistoryModels
        .map((json) => RecipeDetailViewHistoryModel.fromJson(jsonDecode(json) as Map<String, dynamic>))
        .toList();
    return historyModels.reversed.take(count).toList();
  }
}
