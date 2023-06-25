import 'package:freezed_annotation/freezed_annotation.dart';

import 'expired_coupon_model.dart';

part 'order_cancel_response_model.freezed.dart';
part 'order_cancel_response_model.g.dart';

@freezed
class OrderCancelResponseModel with _$OrderCancelResponseModel {
  const factory OrderCancelResponseModel({
    /* 失効クーポン情報リスト */
    @Default(<ExpiredCouponModel>[]) List<ExpiredCouponModel> expiredCoupons,
  }) = _OrderCancelResponseModel;

  factory OrderCancelResponseModel.fromJson(Map<String, dynamic> json) => _$OrderCancelResponseModelFromJson(json);
}
