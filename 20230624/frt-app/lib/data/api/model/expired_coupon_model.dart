// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../util/datetime_json_converter.dart';

part 'expired_coupon_model.freezed.dart';
part 'expired_coupon_model.g.dart';

/// 注文確定時失効クーポンModel
@freezed
class ExpiredCouponModel with _$ExpiredCouponModel {
  const ExpiredCouponModel._();

  const factory ExpiredCouponModel({
    /* クーポン名 */
    @Default('') String couponName,

    /* クーポンコード */
    @Default('') String couponCode,

    /* 配布期間超過判定を返却 - true：配布期間を超過したクーポン - false：配布期間内クーポン */
    @Default(false) bool isDealTermExpired,

    /* 失効:購入金額の判定 - true：購入金額による失効である - false：購入金額による失効ではない */
    @Default(false) bool isExpiredSalePrice,

    /* 獲得条件:配布期間終了日をフォーマット変換しているためAPI側は獲得条件:配布期間終了日を返却する ※yyyy-MM-ddTHH:mm:ss+09:00 */
    @StringToEpochTimeConverter() @Default(0) @JsonKey(name: 'deal_finish_datetime') int epochDealFinishDatetime,

    /* 使用可能条件:注文購入金額 */
    @Default(0) int orderSalePrice,

    /* 失効:注文回数の判定 - true：注文回数による失効である - false：注文回数による失効ではない */
    @Default(false) bool isExpiredOrderCount,

    /* 獲得条件：注文数合計 */
    @Default(0) int orderCount,

    /* 失効:使用解禁日の判定を返却 - true：使用解禁日による失効である - false：使用解禁日による失効ではない */
    @Default(false) bool isExpiredUseDeliveryDate,

    /* 獲得条件:配布終了配達日をフォーマット変換しているためAPI側は使用可能条件:適用終了配達日を返却する ※yyyy-MM-ddTHH:mm:ss+09:00 */
    @StringToEpochTimeConverter()
    @Default(0)
    @JsonKey(name: 'use_delivery_finish_datetime')
        int epochUseDeliveryFinishDatetime,
  }) = _ExpiredCouponModel;

  factory ExpiredCouponModel.fromJson(Map<String, dynamic> json) => _$ExpiredCouponModelFromJson(json);

  DateTime get dealFinishDatetime => const StringToEpochTimeConverter().toDateTime(epochDealFinishDatetime);
  DateTime get useDeliveryFinishDatetime =>
      const StringToEpochTimeConverter().toDateTime(epochUseDeliveryFinishDatetime);
}
