import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';

import '../../data/api/model/base_category_model.dart';
import '../../enum/analytics_event_type.dart';
import '../../enum/event_parameter_type.dart';
import '../../enum/screen_name.dart';
import '../../util/analytics_manager.dart';
import '../page/main_category_tab_page.dart';
import '../page/sub_category_tab_page.dart';
import 'app_colors.dart';

/// カテゴリタブ
class CategoryTabBar extends StatelessWidget {
  const CategoryTabBar({Key? key, required this.tabs, this.initialIndex = 0}) : super(key: key);

  final Map<BaseCategoryModel, Widget> tabs;
  final int initialIndex;

  static const height = 37.0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      initialIndex: initialIndex,
      child: Column(
        children: [
          Container(
            height: height,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.white,
              border: Border(
                bottom: BorderSide(
                  color: AppColors.inactive,
                  width: 1,
                ),
              ),
            ),
            child: TabBar(
              isScrollable: true,
              tabs: tabs.entries.map((tab) => Tab(text: tab.key.name)).toList(),
              onTap: (index) {
                final tabEntries = tabs.entries;
                final widget = tabEntries.elementAt(index).value;
                final categoryId = tabEntries.elementAt(index).key.code;
                final analytics = GetIt.I<AnalyticsManager>();

                analytics.sendEvent(
                  eventType: AnalyticsEventType.switchCategory,
                  parameters: {
                    EventParameterType.categoryId: categoryId,
                  },
                );

                if (widget is MainCategoryTabPage) {
                  analytics.sendScreenView(ScreenName.productsPage.value);
                }
                if (widget is SubCategoryTabPage) {
                  analytics.sendScreenView(ScreenName.category2Page.value);
                }
              },
            ),
          ),
          Expanded(
            child: TabBarView(
              children: tabs.entries.map((tab) => tab.value).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
