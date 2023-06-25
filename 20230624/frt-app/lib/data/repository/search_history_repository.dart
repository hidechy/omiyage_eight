abstract class SearchHistoryRepository {
  Future<void> add(String text);
  Future<void> deleteAll();
  Future<List<String>> fetchAny(String pattern, {int count = 10});
}
