import 'package:freezed_annotation/freezed_annotation.dart';

part 'tax_price_information_model.freezed.dart';
part 'tax_price_information_model.g.dart';

@freezed
class TaxPriceInformationModel with _$TaxPriceInformationModel {
  const factory TaxPriceInformationModel({
    /* 非課税情報判定  ``` true：非課税情報である false：非課税情報でない ``` */
    @Default(false) bool isTaxExempt,
/* 課税対象額 */
    @Default(0) int taxationPrice,
/* 税率（％） */
    @Default(0) int taxRate,
/* 税額 */
    @Default(0) int taxIncludedPrice,
  }) = _TaxPriceInformationModel;

  factory TaxPriceInformationModel.fromJson(Map<String, dynamic> json) => _$TaxPriceInformationModelFromJson(json);
}
