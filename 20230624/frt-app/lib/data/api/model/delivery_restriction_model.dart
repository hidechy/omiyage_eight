import 'package:freezed_annotation/freezed_annotation.dart';

import 'delivery_restriction_model_address.dart';
import 'delivery_restriction_model_delivery_times.dart';

part 'delivery_restriction_model.freezed.dart';
part 'delivery_restriction_model.g.dart';

@freezed
class DeliveryRestrictionModel with _$DeliveryRestrictionModel {
  const factory DeliveryRestrictionModel({
    DeliveryRestrictionModelAddress? address,
    /* 配送便一覧 */
    @Default(<DeliveryRestrictionModelDeliveryTimes>[]) List<DeliveryRestrictionModelDeliveryTimes> deliveryTimes,
  }) = _DeliveryRestrictionModel;

  factory DeliveryRestrictionModel.fromJson(Map<String, dynamic> json) => _$DeliveryRestrictionModelFromJson(json);
}
