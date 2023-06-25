enum BannerType {
  /* ログイン後バナー */
  afterLogin,
  /* ログイン前バナー */
  beforeLogin,
  /* 予約バナー */
  reserve,
}

extension BannerTypeExt on BannerType {
  String get value {
    switch (this) {
      case BannerType.afterLogin:
        return '1';
      case BannerType.beforeLogin:
        return '2';
      case BannerType.reserve:
        return '3';
    }
  }
}
