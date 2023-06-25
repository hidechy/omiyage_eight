import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/living_status_type.dart';
import '../../../enum/negotiation_status_type.dart';

part 'autolock_mansion_model.freezed.dart';
part 'autolock_mansion_model.g.dart';

@freezed
class AutoLockMansionModel with _$AutoLockMansionModel {
  const AutoLockMansionModel._();

  factory AutoLockMansionModel({
    /* お住まいステータス */
    @Default(LivingStatusType.unconfirmed) LivingStatusType livingStatus,
    /* マンション情報 */
    DeliveryAutolockMansionModel? deliveryAutolockMansion,
    /* マンションアタックリスト存在フラグ */
    @Default(false) bool existsMansionAttacklist,
  }) = _AutoLockMansionModel;

  factory AutoLockMansionModel.fromJson(Map<String, dynamic> json) => _$AutoLockMansionModelFromJson(json);
}

@freezed
class DeliveryAutolockMansionModel with _$DeliveryAutolockMansionModel {
  factory DeliveryAutolockMansionModel({
    /* マンションID */
    @Default('') String mansionId,
    /* マンション名 */
    @Default('') String mansionName,
    /* 交渉状況 */
    @Default(NegotiationStatusType.none) NegotiationStatusType negotiationStatus,
    /* 都道府県 */
    @Default('') String prefectureName,
    /* 市 */
    @Default('') String cityName,
    /* 町 */
    @Default('') String townName,
    /* 丁目 */
    @Default('') String chomeName,
    /* 住所詳細 */
    @Default('') String addressDetail,
  }) = _DeliveryAutolockMansionModel;

  factory DeliveryAutolockMansionModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryAutolockMansionModelFromJson(json);
}
