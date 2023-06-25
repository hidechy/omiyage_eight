import 'package:freezed_annotation/freezed_annotation.dart';

import 'order_set_sale_group_list_model_order_set_sale_details.dart';

part 'order_set_sale_group_list_model.freezed.dart';
part 'order_set_sale_group_list_model.g.dart';

@freezed
class OrderSetSaleGroupListModel with _$OrderSetSaleGroupListModel {
  const factory OrderSetSaleGroupListModel({
    /* セット販売割引名 */
    @Default('') String setSaleName,
    /* セット販売価格の返却 */
    @Default(0) int setSalePrice,
    /* セット割引成立数の返却 */
    @Default(0) int fixSetSaleNumber,
    /* 割引グループ別小計の返却 */
    @Default(0) int totalSetSaleDiscount,
    /* 受注セットグループ明細 */
    @Default(<OrderSetSaleGroupListModelOrderSetSaleDetails>[])
        List<OrderSetSaleGroupListModelOrderSetSaleDetails> orderSetSaleDetails,
  }) = _OrderSetSaleGroupListModel;

  factory OrderSetSaleGroupListModel.fromJson(Map<String, dynamic> json) => _$OrderSetSaleGroupListModelFromJson(json);
}
