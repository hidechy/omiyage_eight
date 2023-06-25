enum SortNumber {
  // 0：おすすめ順
  recommendation,
  // 1：価格の安い順
  cheap,
  // 2：価格の高い順
  expensive,
  // 3：売れ筋順
  hotSelling,
}

extension SortNumberExt on SortNumber {
  int get value {
    switch (this) {
      case SortNumber.recommendation:
        return 0;
      case SortNumber.cheap:
        return 1;
      case SortNumber.expensive:
        return 2;
      case SortNumber.hotSelling:
        return 3;
    }
  }
}

extension SortNumberNameExt on SortNumber {
  String get name {
    switch (this) {
      case SortNumber.recommendation:
        return 'おすすめ順';
      case SortNumber.cheap:
        return '価格が安い順';
      case SortNumber.expensive:
        return '価格が高い順';
      case SortNumber.hotSelling:
        return '売れ筋順';
    }
  }
}
