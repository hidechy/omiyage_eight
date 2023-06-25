import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/product_model.dart';
import '../../data/api/model/search_category_model.dart';
import '../../enum/sort_number.dart';

part 'product_search_results_page_state.freezed.dart';

@freezed
class ProductSearchResultsPageState with _$ProductSearchResultsPageState {
  factory ProductSearchResultsPageState({
    @Default(SortNumber.recommendation) SortNumber selectedSortNumber,
    @Default(<ProductModel>[]) List<ProductModel> products,
    @Default(<SearchCategoryModel>[]) List<SearchCategoryModel> categories,
    @Default(0) int totalSize,
  }) = _ProductSearchResultsPageState;
}
