import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_model.dart';

part 'recommended_product_model.freezed.dart';
part 'recommended_product_model.g.dart';

@freezed
class RecommendedProductModel with _$RecommendedProductModel {
  const factory RecommendedProductModel({
    @Default(ProductModel()) ProductModel product,
    @Default(false) bool hasStock,
  }) = _RecommendedProductModel;

  factory RecommendedProductModel.fromJson(Map<String, dynamic> json) => _$RecommendedProductModelFromJson(json);
}
