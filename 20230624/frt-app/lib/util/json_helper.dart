import '../data/api/model/autolock_mansion_model.dart';
import '../data/api/model/banner_advertising_model.dart';
import '../data/api/model/banner_summary_model.dart';
import '../data/api/model/cart_added_item_model.dart';
import '../data/api/model/cart_changed_quantity_model.dart';
import '../data/api/model/cart_model.dart';
import '../data/api/model/categories_model.dart';
import '../data/api/model/category_summary_model.dart';
import '../data/api/model/changed_cart_model.dart';
import '../data/api/model/check_platform_characters_model.dart';
import '../data/api/model/customer_model.dart';
import '../data/api/model/customers_me_nanaco_model.dart';
import '../data/api/model/delivery_addresses_model.dart';
import '../data/api/model/delivery_information_model.dart';
import '../data/api/model/delivery_restriction_model.dart';
import '../data/api/model/delivery_shops_model.dart';
import '../data/api/model/first_use_registoration_model.dart';
import '../data/api/model/front_categories_model.dart';
import '../data/api/model/front_delis_model.dart';
import '../data/api/model/front_master_model.dart';
import '../data/api/model/login_customer_model.dart';
import '../data/api/model/login_visitor_model.dart';
import '../data/api/model/message_model.dart';
import '../data/api/model/notice_model.dart';
import '../data/api/model/notices_model.dart';
import '../data/api/model/order_cancel_response_model.dart';
import '../data/api/model/order_details_model.dart';
import '../data/api/model/order_history_list_model.dart';
import '../data/api/model/order_history_model.dart';
import '../data/api/model/orders_model.dart';
import '../data/api/model/product_detail_model.dart';
import '../data/api/model/product_model.dart';
import '../data/api/model/products_previous_order_model.dart';
import '../data/api/model/products_product_id_questions_get_model.dart';
import '../data/api/model/receipt_locations_model.dart';
import '../data/api/model/recipe_detail_model.dart';
import '../data/api/model/recipes_model.dart';
import '../data/api/model/recommended_product_model.dart';
import '../data/api/model/regular_shipment_model.dart';
import '../data/api/model/search_result_model.dart';
import '../data/api/model/secure_decrypted_model.dart';
import '../data/api/model/secure_encrypted_model.dart';
import '../data/api/model/select_delivery_plan_model.dart';
import '../data/api/model/selectable_address_model.dart';
import '../data/api/model/shop_info_model.dart';
import '../data/api/model/shopping_start_check_result_model.dart';
import '../data/api/model/shops_deliverables_get_response_model.dart';
import '../data/api/model/shops_medicine_confirms_model.dart';

abstract class JsonHelper {
  static T fromJson<T>(Map<String, dynamic> json) {
    switch (T) {
      case ShoppingStartCheckResultModel:
        return ShoppingStartCheckResultModel.fromJson(json) as T;
      case SelectDeliveryPlanModel:
        return SelectDeliveryPlanModel.fromJson(json) as T;
      case OrderHistoryModel:
        return OrderHistoryModel.fromJson(json) as T;
      case CartModel:
        return CartModel.fromJson(json) as T;
      case CustomerModel:
        return CustomerModel.fromJson(json) as T;
      case SearchResultModel:
        return SearchResultModel.fromJson(json) as T;
      case ProductsProductIdQuestionsGetModel:
        return ProductsProductIdQuestionsGetModel.fromJson(json) as T;
      case OrderHistoryListModel:
        return OrderHistoryListModel.fromJson(json) as T;
      case CartAddedItemModel:
        return CartAddedItemModel.fromJson(json) as T;
      case CartChangedQuantityModel:
        return CartChangedQuantityModel.fromJson(json) as T;
      case NoticesModel:
        return NoticesModel.fromJson(json) as T;
      case CategorySummaryModel:
        return CategorySummaryModel.fromJson(json) as T;
      case ProductModel:
        return ProductModel.fromJson(json) as T;
      case ProductDetailModel:
        return ProductDetailModel.fromJson(json) as T;
      case ChangedCartModel:
        return ChangedCartModel.fromJson(json) as T;
      case LoginVisitorModel:
        return LoginVisitorModel.fromJson(json) as T;
      case FrontDelisModel:
        return FrontDelisModel.fromJson(json) as T;
      case RecipeDetailModel:
        return RecipeDetailModel.fromJson(json) as T;
      case RecipesModel:
        return RecipesModel.fromJson(json) as T;
      case ProductsPreviousOrderModel:
        return ProductsPreviousOrderModel.fromJson(json) as T;
      case OrderDetailsModel:
        return OrderDetailsModel.fromJson(json) as T;
      case OrderCancelResponseModel:
        return OrderCancelResponseModel.fromJson(json) as T;
      case DeliveryInformationModel:
        return DeliveryInformationModel.fromJson(json) as T;
      case DeliveryRestrictionModel:
        return DeliveryRestrictionModel.fromJson(json) as T;
      case OrdersModel:
        return OrdersModel.fromJson(json) as T;
      case ShopsMedicineConfirmsModel:
        return ShopsMedicineConfirmsModel.fromJson(json) as T;
      case CategoriesModel:
        return CategoriesModel.fromJson(json) as T;
      case NoticeModel:
        return NoticeModel.fromJson(json) as T;
      case BannerSummaryModel:
        return BannerSummaryModel.fromJson(json) as T;
      case MessageModel:
        return MessageModel.fromJson(json) as T;
      case ShopsDeliverablesGetResponseModel:
        return ShopsDeliverablesGetResponseModel.fromJson(json) as T;
      case ReceiptLocationsModel:
        return ReceiptLocationsModel.fromJson(json) as T;
      case FrontCategoriesModel:
        return FrontCategoriesModel.fromJson(json) as T;
      case SecureEncryptedModel:
        return SecureEncryptedModel.fromJson(json) as T;
      case SecureDecryptedModel:
        return SecureDecryptedModel.fromJson(json) as T;
      case ShopInfoModel:
        return ShopInfoModel.fromJson(json) as T;
      case RecommendedProductModel:
        return RecommendedProductModel.fromJson(json) as T;
      case LoginCustomerModel:
        return LoginCustomerModel.fromJson(json) as T;
      case BannerAdvertisingModel:
        return BannerAdvertisingModel.fromJson(json) as T;
      case FrontMasterModel:
        return FrontMasterModel.fromJson(json) as T;
      case CustomersMeNanacoModel:
        return CustomersMeNanacoModel.fromJson(json) as T;
      case FirstUseRegistrationModel:
        return FirstUseRegistrationModel.fromJson(json) as T;
      case DeliveryAddressesModel:
        return DeliveryAddressesModel.fromJson(json) as T;
      case SelectableAddressModel:
        return SelectableAddressModel.fromJson(json) as T;
      case DeliveryShopsModel:
        return DeliveryShopsModel.fromJson(json) as T;
      case CheckPlatformCharactersModel:
        return CheckPlatformCharactersModel.fromJson(json) as T;
      case RegularShipmentModel:
        return RegularShipmentModel.fromJson(json) as T;
      case AutoLockMansionModel:
        return AutoLockMansionModel.fromJson(json) as T;
      case Null:
        return null as T;
      default:
        throw StateError('型:$TはJsonHelper.fromJsonでサポートしていません');
    }
  }

  static List<T> listFromJson<T>(List<dynamic>? json) {
    return json?.map((dynamic e) => fromJson<T>(e as Map<String, dynamic>)).toList() ?? const [];
  }
}
