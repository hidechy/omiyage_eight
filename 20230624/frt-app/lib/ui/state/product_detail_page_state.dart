import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/product_detail_model.dart';
import '../../data/api/model/product_label.dart';
import '../../data/api/model/recommended_product_model.dart';
import '../../enum/label_type.dart';
import '../view_model/product_detail_page_view_model.dart';

part 'product_detail_page_state.freezed.dart';

@freezed
class ProductDetailPageState with _$ProductDetailPageState {
  const ProductDetailPageState._();

  factory ProductDetailPageState({
    @Default(0) int imageIndex,
    @Default(ProductDetailModel()) ProductDetailModel productDetailModel,
    @Default(ProductNumberState()) ProductNumberState productNumberState,
    @Default(false) bool isFavoriteAdded,
    @Default(true) bool canReload,
    @Default(<RecommendedProductModel>[]) List<RecommendedProductModel> relatedRecommendedProducts,
    @Default(<RecommendedProductModel>[]) List<RecommendedProductModel> resembledRecommendedProducts,
    @Default(false) bool noItem,
    @Default(false) bool isConfirmationsView,
    @Default(false) bool isReadWarning,
    @Default(<bool>[]) List<bool> tabooCheckList,
    @Default(<bool>[]) List<bool> consultCheckList,
  }) = _ProductDetailPageState;

  Iterable<ProductLabel> get topLabels => productDetailModel.product.topLabelList.where((label) =>
      (label.labelType == LabelType.clearance || label.labelType == LabelType.otherAppeals) &&
      label.imageUrl.isNotEmpty);

  Iterable<ProductLabel> get bottomLabels {
    final labels = productDetailModel.product.bottomLabelList
        .where((label) =>
            (label.labelType == LabelType.discountTerms || label.labelType == LabelType.productInformation) &&
            label.imageUrl.isNotEmpty)
        .toList();
    labels.addAll(productDetailModel.product.bottomLabelList.where((label) => label.labelType == LabelType.medicine));
    if (productDetailModel.product.liquorLabel.imageUrl.isNotEmpty) {
      labels.add(productDetailModel.product.liquorLabel);
    }

    return labels;
  }
}
