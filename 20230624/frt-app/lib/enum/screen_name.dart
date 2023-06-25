enum ScreenName {
  topPage,
  topUndeliverableModal,
  deliveryDateTimePage,
  deliveryDateTimeCannotBeSelectedModal,
  deliveryDateTimeEndOfAcceptanceModal,
  deliveryDateTimeChangeModal,
  shopTopPage,
  shopTopCancelOrderChangeModal,
  productsPage,
  productDetailPage,
  deliveryTimeChangeModal,
  counselingPage,
  counselingOKModal,
  counselingNGModal,
  cartPage,
  itemDeletionConfirmationModal,
  cartEmptyModal,
  favoritesPage,
  favoriteEditPage,
  categoriesPage,
  category2Page,
  orderCancellationCompletionPage,
  ordersPage,
  orderDetailPage,
  orderCompleteModal,
  orderCancelConfirmModal,
  repurchasePage,
  recipesPage,
  recipeDetailPage,
  shopSelectionPage,
  productSearchResultsPage,
  aboutAppPage,
  licensePage,
  myPage,
  previousOrderPage,
  categoryProductsPage,
  sorryPage,
  afterLoginBannerSpecialFeatureDetailPage,
  deliveryAddressChangeConfirm,
  medicineConfirmationsPage,
  medicineConfirmationsModal,
  medicalProductDetailPage,
  deliveryAddressChangeCompletionPage,
  orderMedicineProcessPage,
  deliveryAddressChangePage,
  akachanhonpoCategoryTopPage,
  medicineAnswerFormPage,
  firstUseRegistrationPage,
  akachanHonpoConfirmationsPage,
  akachanHonpoConfirmationsModal,
  webViewSpMemberInfoPage,
  twoFactorAuthenticationWarningModal,
  twoFactorAuthenticationSettingUserSuppressionModal,
  emergencySPSiteGuidanceModal,
  forcedUpdateModal,
  optionalUpdateModal,
}

extension ScreenNameExt on ScreenName {
  String get value {
    switch (this) {
      case ScreenName.topPage:
        return 'TopPage';
      case ScreenName.topUndeliverableModal:
        return 'TopUndeliverableModal';
      case ScreenName.deliveryDateTimePage:
        return 'DeliveryDateTimePage';
      case ScreenName.deliveryDateTimeCannotBeSelectedModal:
        return 'DeliveryDateTimeCannotBeSelectedModal';
      case ScreenName.deliveryDateTimeEndOfAcceptanceModal:
        return 'DeliveryDateTimeEndOfAcceptanceModal';
      case ScreenName.deliveryDateTimeChangeModal:
        return 'DeliveryDateTimeChangeModal';
      case ScreenName.shopTopPage:
        return 'ShopTopPage';
      case ScreenName.shopTopCancelOrderChangeModal:
        return 'ShopTopCancelOrderChangeModal';
      case ScreenName.productsPage:
        return 'ProductsPage';
      case ScreenName.productDetailPage:
        return 'ProductDetailPage';
      case ScreenName.deliveryTimeChangeModal:
        return 'DeliveryTimeChangeModal';
      case ScreenName.counselingPage:
        return 'CounselingPage';
      case ScreenName.counselingOKModal:
        return 'CounselingOKModal';
      case ScreenName.counselingNGModal:
        return 'CounselingNGModal';
      case ScreenName.cartPage:
        return 'CartPage';
      case ScreenName.itemDeletionConfirmationModal:
        return 'ItemDeletionConfirmationModal';
      case ScreenName.cartEmptyModal:
        return 'CartEmptyModal';
      case ScreenName.favoritesPage:
        return 'FavoritesPage';
      case ScreenName.favoriteEditPage:
        return 'FavoriteEditPage';
      case ScreenName.categoriesPage:
        return 'CategoriesPage';
      case ScreenName.category2Page:
        return 'Category2Page';
      case ScreenName.orderCancellationCompletionPage:
        return 'OrderCancellationCompletionPage';
      case ScreenName.ordersPage:
        return 'OrdersPage';
      case ScreenName.orderDetailPage:
        return 'OrderDetailPage';
      case ScreenName.orderCompleteModal:
        return 'OrderCompleteModal';
      case ScreenName.orderCancelConfirmModal:
        return 'OrderCancelConfirmModal';
      case ScreenName.repurchasePage:
        return 'RepurchasePage';
      case ScreenName.recipesPage:
        return 'RecipesPage';
      case ScreenName.recipeDetailPage:
        return 'RecipeDetailPage';
      case ScreenName.shopSelectionPage:
        return 'ShopSelectionPage';
      case ScreenName.productSearchResultsPage:
        return 'ProductSearchResultsPage';
      case ScreenName.aboutAppPage:
        return 'AboutAppPage';
      case ScreenName.licensePage:
        return 'LicensePage';
      case ScreenName.myPage:
        return 'MyPage';
      case ScreenName.previousOrderPage:
        return 'PreviousOrderPage';
      case ScreenName.categoryProductsPage:
        return 'CategoryProductsPage';
      case ScreenName.sorryPage:
        return 'SorryPage';
      case ScreenName.afterLoginBannerSpecialFeatureDetailPage:
        return 'AfterLoginBannerSpecialFeatureDetailPage';
      case ScreenName.deliveryAddressChangeConfirm:
        return 'DeliveryAddressChangeConfirm';
      case ScreenName.akachanHonpoConfirmationsPage:
        return 'AkachanHonpoConfirmationsPage';
      case ScreenName.akachanHonpoConfirmationsModal:
        return 'AkachanHonpoConfirmationsModal';
      case ScreenName.medicineConfirmationsPage:
        return 'MedicineConfirmationsPage';
      case ScreenName.medicineConfirmationsModal:
        return 'MedicineConfirmationsModal';
      case ScreenName.deliveryAddressChangeCompletionPage:
        return 'DeliveryAddressChangeCompletionPage';
      case ScreenName.medicalProductDetailPage:
        return 'MedicalProductDetailPage';
      case ScreenName.orderMedicineProcessPage:
        return 'OrderMedicineProcessPage';
      case ScreenName.deliveryAddressChangePage:
        return 'DeliveryAddressChangePage';
      case ScreenName.akachanhonpoCategoryTopPage:
        return 'AkachanhonpoCategoryTopPage';
      case ScreenName.medicineAnswerFormPage:
        return 'medicineAnswerFormPage';
      case ScreenName.firstUseRegistrationPage:
        return 'FirstUseRegistrationPage';
      case ScreenName.webViewSpMemberInfoPage:
        return 'WebViewSpMemberInfoPage';
      case ScreenName.twoFactorAuthenticationWarningModal:
        return 'AlertTwoFactorAuthenticationModal';
      case ScreenName.twoFactorAuthenticationSettingUserSuppressionModal:
        return 'TwoFactorAuthenticationSettingUserSuppressionModal';
      case ScreenName.emergencySPSiteGuidanceModal:
        return 'MaintenanceModal';
      case ScreenName.forcedUpdateModal:
        return 'ForceUpdateModal';
      case ScreenName.optionalUpdateModal:
        return 'OptionalUpdateModal';
    }
  }
}

bool screenContains(String? name) {
  return ScreenName.values.any((e) => e.value == name);
}
