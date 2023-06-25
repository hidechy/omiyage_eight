import 'package:flutter/widgets.dart';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:get_it/get_it.dart';

import '../data/api/dao/access_point_info_dao.dart';
import '../data/api/dao/adjust_dao.dart';
import '../data/api/dao/akchanhonpo_dao.dart';
import '../data/api/dao/authentication_dao.dart';
import '../data/api/dao/banners_dao.dart';
import '../data/api/dao/carts_dao.dart';
import '../data/api/dao/categories_dao.dart';
import '../data/api/dao/check_update_dao.dart';
import '../data/api/dao/closed_shop_dao.dart';
import '../data/api/dao/config_dao.dart';
import '../data/api/dao/customers_dao.dart';
import '../data/api/dao/delivery_dao.dart';
import '../data/api/dao/favorite_dao.dart';
import '../data/api/dao/front_dao.dart';
import '../data/api/dao/keep_alive_dao.dart';
import '../data/api/dao/login_dao.dart';
import '../data/api/dao/logout_dao.dart';
import '../data/api/dao/notices_dao.dart';
import '../data/api/dao/orders_dao.dart';
import '../data/api/dao/products_dao.dart';
import '../data/api/dao/recipe_detail_dao.dart';
import '../data/api/dao/recipes_dao.dart';
import '../data/api/dao/regular_shipments_dao.dart';
import '../data/api/dao/search_history_dao.dart';
import '../data/api/dao/shops_dao.dart';
import '../data/repository/access_point_info_repository.dart';
import '../data/repository/adjust_repository.dart';
import '../data/repository/akachanhonpo_repository.dart';
import '../data/repository/authentication_repository.dart';
import '../data/repository/banners_repository.dart';
import '../data/repository/carts_repository.dart';
import '../data/repository/categories_repository.dart';
import '../data/repository/check_update_repository.dart';
import '../data/repository/closed_shop_repository.dart';
import '../data/repository/config_repository.dart';
import '../data/repository/customers_repository.dart';
import '../data/repository/delivery_repository.dart';
import '../data/repository/favorite_repository.dart';
import '../data/repository/front_repository.dart';
import '../data/repository/keep_alive_repository.dart';
import '../data/repository/login_repository.dart';
import '../data/repository/logout_repository.dart';
import '../data/repository/notices_repository.dart';
import '../data/repository/orders_repository.dart';
import '../data/repository/products_repository.dart';
import '../data/repository/recipe_detail_repository.dart';
import '../data/repository/recipe_detail_view_history_repository.dart';
import '../data/repository/recipes_repository.dart';
import '../data/repository/regular_shipments_repository.dart';
import '../data/repository/search_history_repository.dart';
import '../data/repository/shops_repository.dart';
import '../data/shared_preferences/dao/recipe_detail_view_history_dao.dart';
import '../enum/search_history_type.dart';
import '../util/access_point_info_manager.dart';
import '../util/adjust_manager.dart';
import '../util/analytics_manager.dart';
import '../util/authentication_manager.dart';
import '../util/basic_authentication_manager.dart';
import '../util/update_manager.dart';
import '../util/web_view_user_agent.dart';

void setUpDI() {
  GetIt.I.registerLazySingletonAsync(() => DeviceInfoPlugin().deviceInfo);
  GetIt.I.registerLazySingleton<AdjustRepository>(() => AdjustDao());
  GetIt.I.registerLazySingleton<AnalyticsManager>(() => AnalyticsManager());
  GetIt.I.registerLazySingleton<AuthenticationRepository>(() => AuthenticationDao());
  GetIt.I.registerLazySingleton<GlobalKey<NavigatorState>>(() => GlobalKey());
  GetIt.I.registerLazySingleton<BasicAuthenticationManager>(() => BasicAuthenticationManager());
  GetIt.I.registerLazySingleton<AuthenticationManager>(() => AuthenticationManager());
  GetIt.I.registerLazySingleton<KeepAliveRepository>(() => KeepAliveDao());
  GetIt.I.registerLazySingleton<CustomersRepository>(() => CustomersDao());
  GetIt.I.registerLazySingleton<OrdersRepository>(() => OrdersDao());
  GetIt.I.registerLazySingleton<BannersRepository>(() => BannersDao());
  GetIt.I.registerLazySingleton<CartsRepository>(() => CartsDao());
  GetIt.I.registerLazySingleton<ProductsRepository>(() => ProductsDao());
  GetIt.I.registerLazySingleton<NoticesRepository>(() => NoticesDao());
  GetIt.I.registerLazySingleton<DeliveryRepository>(() => DeliveryDao());
  GetIt.I.registerLazySingleton<FavoriteRepository>(() => FavoriteDao());
  GetIt.I.registerLazySingleton<LoginRepository>(() => LoginDao());
  GetIt.I.registerLazySingleton<LogoutRepository>(() => LogoutDao());
  GetIt.I.registerLazySingleton<RecipeDetailRepository>(() => RecipeDetailDao());
  GetIt.I.registerLazySingleton<RecipesRepository>(() => RecipesDao());
  GetIt.I.registerLazySingleton<ShopsRepository>(() => ShopsDao());
  GetIt.I.registerLazySingleton<FrontRepository>(() => FrontDao());
  GetIt.I.registerLazySingleton<AkachanhonpoRepository>(() => AkachanhonpoDao());
  GetIt.I.registerLazySingleton<ClosedShopRepository>(() => ClosedShopDao());
  for (var element in SearchHistoryType.values) {
    GetIt.I.registerLazySingleton<SearchHistoryRepository>(
      () => SearchHistoryDao(element),
      instanceName: element.toString(),
    );
  }
  GetIt.I.registerLazySingleton<RecipeDetailViewHistoryRepository>(() => RecipeDetailViewHistoryDao());
  GetIt.I.registerLazySingleton<CheckUpdateRepository>(() => CheckUpdateDao());
  GetIt.I.registerLazySingleton<UpdateManager>(
    () => UpdateManager(),
    dispose: (updateManager) => updateManager.dispose(),
  );
  GetIt.I.registerLazySingleton<AccessPointInfoRepository>(() => AccessPointInfoDao());
  GetIt.I.registerLazySingleton<AccessPointInfoManager>(() => AccessPointInfoManager());
  GetIt.I.registerLazySingleton<CategoriesRepository>(() => CategoriesDao());
  GetIt.I.registerLazySingleton<RegularShipmentsRepository>(() => RegularShipmentsDao());
  GetIt.I.registerLazySingletonAsync<AdjustManager>(
    () => Future.value(AdjustManager()..initialize()),
    dispose: (adjustManager) => adjustManager.finalize(),
  );
  GetIt.I.registerLazySingletonAsync<String>(() => WebViewUserAgent().userAgent, instanceName: 'userAgent');
  GetIt.I.registerLazySingleton<ConfigRepository>(() => ConfigDao());
}
