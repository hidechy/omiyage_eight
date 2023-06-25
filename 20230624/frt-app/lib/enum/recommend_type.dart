enum RecommendType {
  inCart,
  toUser,
  userRegularityProduct,
  concurrentSelling,
}

extension RecommendedTypeExt on RecommendType {
  String get value {
    switch (this) {
      case RecommendType.inCart:
        return '1';
      case RecommendType.toUser:
        return '2';
      case RecommendType.userRegularityProduct:
        return '3';
      case RecommendType.concurrentSelling:
        return '4';
    }
  }
}
