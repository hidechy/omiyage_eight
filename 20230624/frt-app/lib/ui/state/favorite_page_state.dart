import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/product_model.dart';

part 'favorite_page_state.freezed.dart';

@freezed
class FavoritePageState with _$FavoritePageState {
  const FavoritePageState._();
  const factory FavoritePageState({
    @Default(<ProductModel>[]) List<ProductModel> products,
    @Default(0) int totalSize,
    @Default(1) int page,
    @Default(false) bool isLastPage,
  }) = _FavoritePageState;

  int get productCount => products.length;

  ProductModel operator [](int index) => products[index];
}
