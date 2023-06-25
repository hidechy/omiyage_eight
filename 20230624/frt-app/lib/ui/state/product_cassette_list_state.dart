import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/product_model.dart';

part 'product_cassette_list_state.freezed.dart';

@freezed
class ProductCassetteListState with _$ProductCassetteListState {
  const ProductCassetteListState._();
  const factory ProductCassetteListState({
    @Default(<ProductModel>[]) List<ProductModel> products,
    @Default(0) int totalSize,
  }) = _ProductCassetteListState;

  int get length => products.length;

  ProductModel operator [](int index) => products[index];
}
