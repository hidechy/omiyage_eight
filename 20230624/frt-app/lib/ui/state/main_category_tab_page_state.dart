import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/category_summary_model.dart';
import '../../enum/products_category_summary_loading_status.dart';

part 'main_category_tab_page_state.freezed.dart';

@freezed
class MainCategoryTabPageState with _$MainCategoryTabPageState {
  factory MainCategoryTabPageState({
    @Default(false) bool isOpen,
    @Default(<CategorySummaryModel>[]) List<CategorySummaryModel> categorySummaryModel,
    @Default(ProductsCategorySummaryLoadingStatus.initialLoading)
        ProductsCategorySummaryLoadingStatus productsCategorySummaryLoadingStatus,
  }) = _MainCategoryTabPageState;
}
