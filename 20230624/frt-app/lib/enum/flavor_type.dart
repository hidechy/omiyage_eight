// ビルドフレーバー タイプ列挙体
enum FlavorType {
  local,
  mock,
  stg1,
  stg2,
  stg3,
  stg4,
  production,
}

extension FlavorTypeExt on FlavorType {
  String get name {
    switch (this) {
      case FlavorType.local:
        return 'local';
      case FlavorType.mock:
        return 'mock';
      case FlavorType.stg1:
        return 'stg1';
      case FlavorType.stg2:
        return 'stg2';
      case FlavorType.stg3:
        return 'stg3';
      case FlavorType.stg4:
        return 'stg4';
      case FlavorType.production:
        return 'production';
    }
  }
}
