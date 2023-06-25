enum EventParameterType {
  deliveryStatus,
  categoryId,
  productId,
  recipeProductKeyword,
  recipeKeyword,
  recipeCookingName,
  recipeMaterialName,
  recipeId,
  productKeyword,
  bannerAdvertisingId,
  orderId,
  recommendType,
  iosAppTrackingAuthorizationStatus,
  isFirstChoice,
  cartShopCd,
  currency,
  value,
  items,
  tapContents,
  shipping,
  transactionId,
  firstUse,
  deliveryType,
}

extension EventParameterTypeExt on EventParameterType {
  String get name {
    switch (this) {
      case EventParameterType.deliveryStatus:
        return 'DeliveryStatus';
      case EventParameterType.categoryId:
        return 'CategoryID';
      case EventParameterType.productId:
        return 'ProductID';
      case EventParameterType.recipeProductKeyword:
        return 'RecipeProductKeyword';
      case EventParameterType.recipeKeyword:
        return 'RecipeKeyword';
      case EventParameterType.recipeCookingName:
        return 'RecipeCookingName';
      case EventParameterType.recipeMaterialName:
        return 'RecipeMaterialName';
      case EventParameterType.recipeId:
        return 'RecipeID';
      case EventParameterType.productKeyword:
        return 'ProductKeyword';
      case EventParameterType.bannerAdvertisingId:
        return 'BannerAdvertisingID';
      case EventParameterType.orderId:
        return 'OrderID';
      case EventParameterType.recommendType:
        return 'RecommendType';
      case EventParameterType.iosAppTrackingAuthorizationStatus:
        return 'IosAppTrackingAuthorizationStatus';
      case EventParameterType.isFirstChoice:
        return 'is_first_choice';
      case EventParameterType.cartShopCd:
        return 'CartShopCd';
      case EventParameterType.currency:
        return 'currency';
      case EventParameterType.value:
        return 'value';
      case EventParameterType.items:
        return 'items';
      case EventParameterType.tapContents:
        return 'TapContents';
      case EventParameterType.shipping:
        return 'shipping';
      case EventParameterType.transactionId:
        return 'transaction_id';
      case EventParameterType.firstUse:
        return 'firstUse';
      case EventParameterType.deliveryType:
        return 'deliveryType';
    }
  }
}
