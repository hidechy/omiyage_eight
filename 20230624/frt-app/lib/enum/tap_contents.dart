enum TapContents {
  sellingOff,
  banners,
  sevenPremium,
  toUserRecommends,
}

extension TapContentsExt on TapContents {
  String get value {
    switch (this) {
      case TapContents.sellingOff:
        return 'SellingOff';
      case TapContents.banners:
        return 'Banners';
      case TapContents.sevenPremium:
        return 'SevenPremium';
      case TapContents.toUserRecommends:
        return 'ToUserRecommends';
    }
  }
}
