import 'package:freezed_annotation/freezed_annotation.dart';

import 'delivery_restriction_model_delivery_dates.dart';

part 'delivery_restriction_model_delivery_times.freezed.dart';
part 'delivery_restriction_model_delivery_times.g.dart';

@freezed
class DeliveryRestrictionModelDeliveryTimes with _$DeliveryRestrictionModelDeliveryTimes {
  const factory DeliveryRestrictionModelDeliveryTimes({
    /* 便締め時間　※hhmm */
    @Default('') String deliveryClosingTime,
    /* 前日判定 - 便締め時間が前日のものであるか  - true：便締め時間が前日時間 - false：便締め時間が当日時間 */
    @Default(false) bool isPreviousDay,
    /* 配送開始時間（時分）　※hhmm */
    @Default('') String deliveryStartTime,
    /* 配送終了時間（時分）　※hhmm */
    @Default('') String deliveryFinishTime,
    /* 配送日リスト */
    @Default(<DeliveryRestrictionModelDeliveryDates>[]) List<DeliveryRestrictionModelDeliveryDates> deliveryDates,
  }) = _DeliveryRestrictionModelDeliveryTimes;

  factory DeliveryRestrictionModelDeliveryTimes.fromJson(Map<String, dynamic> json) =>
      _$DeliveryRestrictionModelDeliveryTimesFromJson(json);
}
