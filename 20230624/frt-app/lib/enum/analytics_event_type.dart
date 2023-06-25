// アナリティクスイベント列挙体
enum AnalyticsEventType {
  signUp,
  signUpOp,
  login,
  loginOp,
  visit,
  changeDeliveryAddress,
  selectDatePlan,
  selectDatePlanHighlight,
  showInformation,
  switchCategory,
  addToCart,
  answerCounseling,
  removeFromCart,
  changeDeliveryTime,
  confirmInformationDetail,
  cancelOrderChange,
  addToWishlist,
  deleteFavorite,
  deleteCartAll,
  proceedToPayment,
  changeOrderWithDelivery,
  changeOrderWithProduct,
  logout,
  clickSearchProductTab,
  clickDeliveryDateTab,
  viewCart,
  seeMoreSameCategory,
  seeMoreRecommendProduct,
  clickProductDetailImage,
  recipeProductSearch,
  recipeMoviePlay,
  recipeKeywordSearch,
  recipeCookingNameSearch,
  recipeMaterialNameSearch,
  recipeBrowsingHistory,
  productSearch,
  selectProductDetail,
  selectRecipeDetail,
  changeDeliveryTimeByCassette,
  orderComplete,
  selectBannerFeatureDetail,
  selectBannerCarouselSlider,
  viewMileageBalance,
  printReceipt,
  selectIosAppTrackingTransparencyModal,
  purchase,
}

extension AnalyticsEventTypeExt on AnalyticsEventType {
  String get name {
    switch (this) {
      case AnalyticsEventType.signUp:
        return 'sign_up';
      case AnalyticsEventType.signUpOp:
        return 'sign_up_op';
      case AnalyticsEventType.login:
        return 'login';
      case AnalyticsEventType.loginOp:
        return 'login_op';
      case AnalyticsEventType.visit:
        return 'visit';
      case AnalyticsEventType.changeDeliveryAddress:
        return 'changeDeliveryAddress';
      case AnalyticsEventType.selectDatePlan:
        return 'selectDatePlan';
      case AnalyticsEventType.selectDatePlanHighlight:
        return 'selectDatePlanHighlight';
      case AnalyticsEventType.showInformation:
        return 'showInformation';
      case AnalyticsEventType.switchCategory:
        return 'switchCategory';
      case AnalyticsEventType.addToCart:
        return 'add_to_cart';
      case AnalyticsEventType.answerCounseling:
        return 'answerCounseling';
      case AnalyticsEventType.removeFromCart:
        return 'remove_from_cart';
      case AnalyticsEventType.changeDeliveryTime:
        return 'changeDeliveryTime';
      case AnalyticsEventType.confirmInformationDetail:
        return 'confirmInformationDetail';
      case AnalyticsEventType.cancelOrderChange:
        return 'cancelOrderChange';
      case AnalyticsEventType.addToWishlist:
        return 'add_to_wishlist';
      case AnalyticsEventType.deleteFavorite:
        return 'deleteFavorite';
      case AnalyticsEventType.deleteCartAll:
        return 'deleteCartAll';
      case AnalyticsEventType.proceedToPayment:
        return 'proceedToPayment';
      case AnalyticsEventType.changeOrderWithDelivery:
        return 'changeOrderWithDelivery';
      case AnalyticsEventType.changeOrderWithProduct:
        return 'changeOrderWithProduct';
      case AnalyticsEventType.logout:
        return 'logout';
      case AnalyticsEventType.clickSearchProductTab:
        return 'clickSearchProductTab';
      case AnalyticsEventType.clickDeliveryDateTab:
        return 'clickDeliveryDateTab';
      case AnalyticsEventType.viewCart:
        return 'view_cart';
      case AnalyticsEventType.seeMoreSameCategory:
        return 'seeMoreSameCategory';
      case AnalyticsEventType.seeMoreRecommendProduct:
        return 'seeMoreRecommendProduct';
      case AnalyticsEventType.clickProductDetailImage:
        return 'clickProductDetailImage';
      case AnalyticsEventType.recipeProductSearch:
        return 'recipeProductSearch';
      case AnalyticsEventType.recipeMoviePlay:
        return 'recipeMoviePlay';
      case AnalyticsEventType.recipeKeywordSearch:
        return 'recipeKeywordSearch';
      case AnalyticsEventType.recipeCookingNameSearch:
        return 'recipeCookingNameSearch';
      case AnalyticsEventType.recipeMaterialNameSearch:
        return 'recipeMaterialNameSearch';
      case AnalyticsEventType.recipeBrowsingHistory:
        return 'recipeBrowsingHistory';
      case AnalyticsEventType.productSearch:
        return 'productSearch';
      case AnalyticsEventType.selectProductDetail:
        return 'selectProductDetail';
      case AnalyticsEventType.selectRecipeDetail:
        return 'selectRecipeDetail';
      case AnalyticsEventType.changeDeliveryTimeByCassette:
        return 'changeDeliveryTimeByCassette';
      case AnalyticsEventType.orderComplete:
        return 'orderComplete';
      case AnalyticsEventType.selectBannerFeatureDetail:
        return 'selectBannerFeatureDetail';
      case AnalyticsEventType.selectBannerCarouselSlider:
        return 'selectBannerCarouselSlider';
      case AnalyticsEventType.viewMileageBalance:
        return 'viewMileageBalance';
      case AnalyticsEventType.printReceipt:
        return 'printReceipt';
      case AnalyticsEventType.selectIosAppTrackingTransparencyModal:
        return 'selectIosAppTrackingTransparencyModal';
      case AnalyticsEventType.purchase:
        return 'purchase';
    }
  }
}
