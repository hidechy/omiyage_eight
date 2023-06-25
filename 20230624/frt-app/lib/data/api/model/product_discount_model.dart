import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_discount_model.freezed.dart';
part 'product_discount_model.g.dart';

/// 割引情報のModel
@freezed
class ProductDiscountModel with _$ProductDiscountModel {
  const factory ProductDiscountModel({
    /* 累進割引商品一覧リンク表示判定 - true:累進割引 - false:非累進割引 */
    @Default(false) bool isDisplayProgressiveDiscountLink,
    /* セット値引ペア商品一覧リンク表示判定 - true：セット値引 - false:非セット値引 */
    @Default(false) bool isDisplaySetDiscountLink,
    /* ミックスマッチ商品一覧リンク表示判定 - true：ミックスマッチ割引 - false：非ミックスマッチ割引 */
    @Default(false) bool isDisplayMixMatchLink,
    /* セット販売商品一覧リンク表示判定 - true：セット販売商品 - false：非セット販売商品 */
    @Default(false) bool isDisplaySetSaleDiscountLink,
    /* 親累進割引コード - is_display_progressive_discount_link：trueの時必須 - is_display_progressive_discount_link：falseの場合、nullを返却*/
    @Default('') String parentProgressiveDiscountCode,
    /* 企画グループコード - is_display_set_discount_link：trueの時必須 - is_display_set_discount_link：falseの場合、nullを返却*/
    @Default('') String planningGroupCode,
    /* もう片方のグループ枝番 - is_display_set_discount_link：trueの時必須 - is_display_set_discount_link：falseの場合、nullを返却*/
    @Default('') String planningGroupBranchNumber,
    /* セット値引額 - is_display_set_discount_link：trueの時必須 - is_display_set_discount_link：falseの場合、nullを返却*/
    @Default(0) int setDiscountPrice,
    /* ミックスマッチコード - is_display_mix_match_link：trueの時必須 - is_display_mix_match_link：falseの場合、nullを返却*/
    @Default('') String mixMatchCode,
    /* ミックスマッチセット数 - is_display_mix_match_link：trueの時必須 - is_display_mix_match_link：falseの場合、nullを返却*/
    @Default(0) int mixMatchSetNumber,
    /* ミックスマッチセット価格 - is_display_mix_match_link：trueの時必須 - is_display_mix_match_link：falseの場合、nullを返却*/
    @Default(0) int mixMatchSetPrice,
    /* セット販売ID - is_display_set_sale_discount_link：trueの時必須 - is_display_set_sale_discount_link：falseの場合、nullを返却*/
    @Default('') String setSaleId,
    /* セット販売名 - is_display_set_sale_discount_link：trueの時必須 - is_display_set_sale_discount_link：falseの場合、nullを返却*/
    @Default('') String setSaleName,
    /* 売り切りセールコード - 売り切りセール対象外の場合、nullを返却 */
    @Default('') String sellingOffCode,
    /* 売り切りセールコード  - 売り切りセール対象外の場合、nullを返却*/
    @Default('') String sellingOffName,
    /* 売り切りセール価格 - 売り切りセール対象外の場合、nullを返却 */
    @Default(0) int sellingOffPrice,
    /* 売り切りセール本体価格 - 売り切りセール対象外の場合、nullを返却 */
    @Default(0) int sellingOffBasePrice,
  }) = _ProductDiscountModel;

  factory ProductDiscountModel.fromJson(Map<String, dynamic> json) => _$ProductDiscountModelFromJson(json);
}
