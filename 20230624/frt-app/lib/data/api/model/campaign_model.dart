// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../util/datetime_json_converter.dart';

part 'campaign_model.freezed.dart';
part 'campaign_model.g.dart';

@freezed
class CampaignModel with _$CampaignModel {
  const CampaignModel._();

  const factory CampaignModel({
    /* キャンペーン区分 ``` \"1\"：キャンペーン配達料の適用 \"2\"：キャンペーン配達料割引率の適用 ``` */
    @Default(PriceType.price) PriceType priceType,
/* キャンペーン名称 */
    @Default('') String name,
/* キャンペーン配達料 - キャンペーン区分が\"1\"の場合に設定され、それ以外はnullとなる */
    int? price,
/* キャンペーン配達料割引率 - キャンペーン区分が\"2\"の場合に設定され、それ以外はnullとなる */
    int? discountRate,
/* キャンペーン適用開始日 ※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter() @Default(0) @JsonKey(name: 'start_datetime') int epochStartDatetime,
/* キャンペーン適用終了日 ※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter() @Default(0) @JsonKey(name: 'finish_datetime') int epochFinishDatetime,
  }) = _CampaignModel;

  factory CampaignModel.fromJson(Map<String, dynamic> json) => _$CampaignModelFromJson(json);

  DateTime get startDatetime => const StringToEpochTimeConverter().toDateTime(epochStartDatetime);
  DateTime get finishDatetime => const StringToEpochTimeConverter().toDateTime(epochFinishDatetime);
}

enum PriceType {
  @JsonValue('1')
  price,
  @JsonValue('2')
  discountRate,
}
