enum UpdateStatusType {
  /* 緊急メンテナンス */
  maintenance,
  /* 強制アップデート */
  forceUpdate,
  /* 任意アップデート */
  optionalUpdate,
}

extension UpdateStatusTypeExt on UpdateStatusType {
  String get path {
    switch (this) {
      case UpdateStatusType.maintenance:
        return '/settings/maintenance/maintenance-v2.json';
      case UpdateStatusType.forceUpdate:
        return '/settings/update/force.json';
      case UpdateStatusType.optionalUpdate:
        return '/settings/update/optional.json';
    }
  }
}
