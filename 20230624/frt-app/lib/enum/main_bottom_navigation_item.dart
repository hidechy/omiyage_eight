import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
import '../ui/common/app_colors.dart';

enum MainBottomNavigationItem {
  shop,
  search,
  favorite,
  deliveryDatetime,
  orderHistory,
  myPage,
}

extension MainBottomNavigationItemExt on MainBottomNavigationItem {
  Widget get unselectedIcon {
    switch (this) {
      case MainBottomNavigationItem.shop:
        return Assets.icons.shop.svg(colorFilter: const ColorFilter.mode(AppColors.gray1, BlendMode.srcIn));
      case MainBottomNavigationItem.search:
        return Assets.icons.search.svg(colorFilter: const ColorFilter.mode(AppColors.gray1, BlendMode.srcIn));
      case MainBottomNavigationItem.favorite:
        return Assets.icons.favorite.svg(colorFilter: const ColorFilter.mode(AppColors.gray1, BlendMode.srcIn));
      case MainBottomNavigationItem.deliveryDatetime:
        return Assets.icons.truck.svg(colorFilter: const ColorFilter.mode(AppColors.gray1, BlendMode.srcIn));
      case MainBottomNavigationItem.orderHistory:
        return Assets.icons.orderHistory.svg(colorFilter: const ColorFilter.mode(AppColors.gray1, BlendMode.srcIn));
      case MainBottomNavigationItem.myPage:
        return Assets.icons.ellipsisH.svg(colorFilter: const ColorFilter.mode(AppColors.gray1, BlendMode.srcIn));
    }
  }

  Widget get selectedIcon {
    switch (this) {
      case MainBottomNavigationItem.shop:
        return Assets.icons.shop.svg(colorFilter: const ColorFilter.mode(AppColors.main, BlendMode.srcIn));
      case MainBottomNavigationItem.search:
        return Assets.icons.search.svg(colorFilter: const ColorFilter.mode(AppColors.main, BlendMode.srcIn));
      case MainBottomNavigationItem.favorite:
        return Assets.icons.favorite.svg(colorFilter: const ColorFilter.mode(AppColors.main, BlendMode.srcIn));
      case MainBottomNavigationItem.deliveryDatetime:
        return Assets.icons.truck.svg(colorFilter: const ColorFilter.mode(AppColors.main, BlendMode.srcIn));
      case MainBottomNavigationItem.orderHistory:
        return Assets.icons.orderHistory.svg(colorFilter: const ColorFilter.mode(AppColors.main, BlendMode.srcIn));
      case MainBottomNavigationItem.myPage:
        return Assets.icons.ellipsisH.svg(colorFilter: const ColorFilter.mode(AppColors.main, BlendMode.srcIn));
    }
  }

  String get label {
    switch (this) {
      case MainBottomNavigationItem.shop:
        return 'トップ';
      case MainBottomNavigationItem.search:
        return '商品検索';
      case MainBottomNavigationItem.favorite:
        return 'お気に入り';
      case MainBottomNavigationItem.deliveryDatetime:
        return '受取日時';
      case MainBottomNavigationItem.orderHistory:
        return '注文履歴';
      case MainBottomNavigationItem.myPage:
        return 'マイページ';
    }
  }
}
