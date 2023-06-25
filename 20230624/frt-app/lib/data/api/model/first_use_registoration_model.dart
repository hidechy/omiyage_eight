import 'package:freezed_annotation/freezed_annotation.dart';

import 'customer_deal_coupon_model.dart';

part 'first_use_registoration_model.freezed.dart';
part 'first_use_registoration_model.g.dart';

/// 初回利用登録Model
@freezed
class FirstUseRegistrationModel with _$FirstUseRegistrationModel {
  const factory FirstUseRegistrationModel({
    /* 初回利用登録クーポンモデル */
    @Default(<CustomerDealCouponModel>[]) List<CustomerDealCouponModel> dealCoupons,

    /* 購入不可商品あり判定 */
    @Default(false) bool isCanNotBuyProduct,

    /* 購入不可商品名リスト */
    @Default(<String>[]) List<String> canNotBuyProductNames,
  }) = _FirstUseRegistrationModel;

  factory FirstUseRegistrationModel.fromJson(Map<String, dynamic> json) => _$FirstUseRegistrationModelFromJson(json);
}
