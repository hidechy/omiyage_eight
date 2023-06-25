// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../util/datetime_json_converter.dart';

part 'customer_deal_coupon_model.freezed.dart';
part 'customer_deal_coupon_model.g.dart';

/// 初回利用登録クーポンModel
@freezed
class CustomerDealCouponModel with _$CustomerDealCouponModel {
  const CustomerDealCouponModel._();

  const factory CustomerDealCouponModel({
    /* 適用開始配達日をフォーマット変換しているためAPI側は適用開始配達日を返却する ※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter()
    @Default(0)
    @JsonKey(name: 'use_delivery_start_datetime')
        int epochUseDeliveryStartDatetime,

    /* クーポン名 */
    @Default('') String couponName,

    /* クーポンコード */
    @Default('') String couponCode,

    /* 1日限定判定 true：使用出来るのは1日限り false：複数日の期間あり */
    @Default(false) bool isLimitedUseOneDay,

    /* 適用終了配達日をフォーマット変換しているためAPI側は使用可能条件:適用終了配達日を返却 ※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter()
    @Default(0)
    @JsonKey(name: 'use_delivery_finish_datetime')
        int epochUseDeliveryFinishDatetime,

    /* クーポン残り使用回数を返却 */
    @Default('') String couponUseRemainingNumber,

    /* クーポン注意事項 */
    @Default('') String couponGuide,
  }) = _CustomerDealCouponModel;

  factory CustomerDealCouponModel.fromJson(Map<String, dynamic> json) => _$CustomerDealCouponModelFromJson(json);

  DateTime get useDeliveryStartDatetime => const StringToEpochTimeConverter().toDateTime(epochUseDeliveryStartDatetime);
  DateTime get useDeliveryFinishDatetime =>
      const StringToEpochTimeConverter().toDateTime(epochUseDeliveryFinishDatetime);
}
