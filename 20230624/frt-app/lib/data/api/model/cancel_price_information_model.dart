// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../util/datetime_json_converter.dart';

part 'cancel_price_information_model.freezed.dart';
part 'cancel_price_information_model.g.dart';

@freezed
class CancelPriceInformationModel with _$CancelPriceInformationModel {
  const CancelPriceInformationModel._();

  const factory CancelPriceInformationModel({
/* キャンセル日　※YYYY-MM-DDThh:mm:ss+09:00 */
    @Default(0) @StringToEpochTimeConverter() @JsonKey(name: 'cancel_datetime') int epochCancelDatetime,
/* キャンセル料(税込) */
    @Default(0) int cancelPrice,
  }) = _CancelPriceInformationModel;
  factory CancelPriceInformationModel.fromJson(Map<String, dynamic> json) =>
      _$CancelPriceInformationModelFromJson(json);

  DateTime get cancelDatetime => const StringToEpochTimeConverter().toDateTime(epochCancelDatetime);
}
