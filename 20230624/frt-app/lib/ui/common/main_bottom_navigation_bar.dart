import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../enum/main_bottom_navigation_item.dart';
import '../state/main_bottom_navigation_state.dart';
import '../view_model/main_bottom_navigation_view_model.dart';
import 'app_colors.dart';

class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: context.select((MainBottomNavigationState state) => state.index),
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.main,
      unselectedItemColor: AppColors.gray1,
      selectedLabelStyle: const TextStyle(fontSize: 9.0, height: 2.0),
      unselectedLabelStyle: const TextStyle(fontSize: 9.0, height: 2.0),
      onTap: context.read<MainBottomNavigationViewModel>().onTap,
      items: [
        for (final tab in MainBottomNavigationItem.values)
          BottomNavigationBarItem(
            icon: tab.unselectedIcon,
            activeIcon: tab.selectedIcon,
            label: tab.label,
          ),
      ],
    );
  }
}
