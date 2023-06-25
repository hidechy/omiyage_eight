import 'package:freezed_annotation/freezed_annotation.dart';

part 'tax_rate_switch_model.freezed.dart';
part 'tax_rate_switch_model.g.dart';

/// 税率情報のModel - 新／旧税率売価での混在販売中でのみ使用し、そうでない場合はModel自体がnullで返却される
@freezed
class TaxRateSwitchModel with _$TaxRateSwitchModel {
  const factory TaxRateSwitchModel({
    /* 新税率金額表示フラグ - true：新税率を利用する - false：旧税率を利用する */
    @Default(false) bool isDisplayNewTaxPrice,
    /* 旧税率 */
    @Default(0) int oldTaxRate,
    /* 新税率 */
    @Default(0) int newTaxRate,
  }) = _TaxRateSwitchModel;

  factory TaxRateSwitchModel.fromJson(Map<String, dynamic> json) => _$TaxRateSwitchModelFromJson(json);
}
