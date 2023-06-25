import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../data/api/model/cart_model.dart';
import '../data/api/model/shop_info_model.dart';
import '../data/repository/shops_repository.dart';
import '../enum/user_property_type.dart';
import '../ui/page/sorry_page.dart';
import '../ui/state/shop_info_state.dart';
import 'analytics_manager.dart';

class ShopInfoManager extends StateNotifier<ShopInfoState> with LocatorMixin {
  ShopInfoManager() : super(const ShopInfoState()) {
    shopsRepository = GetIt.I<ShopsRepository>();
  }

  late final ShopsRepository shopsRepository;

  bool get isAkahonAgentShop => state.shopInfo.isAkahonAgentShop;

  bool get isCenterShop => state.shopInfo.isCenterShop;

  /// 店舗情報取得
  Future<void> getShopInfo(String shopCode) async {
    try {
      final shopInfoResponse = await shopsRepository.getShopInfo(shopCode: shopCode);
      state = state.copyWith(shopInfo: shopInfoResponse.first);

      // 取得した店舗情報の医薬品扱い店舗判定trueであれば、医薬品確認情報取得APIを叩く
      if (state.shopInfo.isDrugShop) {
        final medicineConfirmsResponse = await GetIt.I<ShopsRepository>().getShopsMedicineConfirms(shopCode: shopCode);
        state = state.copyWith(medicineConfirms: medicineConfirmsResponse.first);
      } else {
        state = state.copyWith(medicineConfirms: null);
      }

      final analytics = GetIt.I<AnalyticsManager>();
      analytics.sendUserProperty(
        userPropertyType: UserPropertyType.hub,
        value: state.shopInfo.isCenterShop ? 'センター' : '店舗',
      );
    } catch (error, st) {
      FirebaseCrashlytics.instance.recordError(error, st);
      SorryPage.push(SorryPageArgument.unexpected());
    }
  }

  @override
  void update(Locator watch) {
    super.update(watch);

    final shopCode = watch<CartModel>().shop.shopCode;
    // ログアウトしてカート情報に店舗コードが存在しなくなった時に店舗情報を破棄
    if (shopCode.isEmpty) {
      state = state.copyWith(
        shopInfo: const ShopInfoModel(),
        medicineConfirms: null,
      );
    }

    // カート情報更新された時に店舗コードが変わってなければ、何もしない
    if (shopCode == state.shopInfo.shopCode) {
      return;
    }
    getShopInfo(shopCode);
  }
}
