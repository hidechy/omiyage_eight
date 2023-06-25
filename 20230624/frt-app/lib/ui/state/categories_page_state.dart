import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/front_categories_model.dart';

part 'categories_page_state.freezed.dart';

@freezed
class CategoriesPageState with _$CategoriesPageState {
  const CategoriesPageState._();

  factory CategoriesPageState({
    @Default(<String, bool>{}) Map<String, bool> isOpenMap,
    @Default(<FrontCategoriesModel>[]) List<FrontCategoriesModel> frontCategoriesModel,
  }) = _CategoriesPageState;

  double get bottomPadding => frontCategoriesModel.lastOrNull?.children.length.compareTo(6) == 1 ? 45 : 90;
}
