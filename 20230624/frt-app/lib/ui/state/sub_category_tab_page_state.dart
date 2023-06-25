import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/product_model.dart';
import '../../enum/sort_number.dart';

part 'sub_category_tab_page_state.freezed.dart';

@freezed
class SubCategoryTabPageState with _$SubCategoryTabPageState {
  factory SubCategoryTabPageState({
    @Default(SortNumber.recommendation) SortNumber selectedSortNumber,
    @Default(<ProductModel>[]) List<ProductModel> products,
    @Default(0) int totalSize,
  }) = _SubCategoryTabPageState;
}
