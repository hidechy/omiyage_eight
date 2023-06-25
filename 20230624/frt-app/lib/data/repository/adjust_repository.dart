// 永続化リポジトリ用インターフェース

abstract class AdjustRepository {
  Future<void> write(bool value);
  Future<bool?> read();
}
