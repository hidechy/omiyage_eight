import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_set_sale_group_list_model_order_set_sale_details.freezed.dart';
part 'order_set_sale_group_list_model_order_set_sale_details.g.dart';

@freezed
class OrderSetSaleGroupListModelOrderSetSaleDetails with _$OrderSetSaleGroupListModelOrderSetSaleDetails {
  const factory OrderSetSaleGroupListModelOrderSetSaleDetails({
    /* 商品名の返却 */
    @Default('') String productName,
    /* 単品数量の返却 */
    @Default(0) int productCount,
  }) = _OrderSetSaleGroupListModelOrderSetSaleDetails;

  factory OrderSetSaleGroupListModelOrderSetSaleDetails.fromJson(Map<String, dynamic> json) =>
      _$OrderSetSaleGroupListModelOrderSetSaleDetailsFromJson(json);
}
