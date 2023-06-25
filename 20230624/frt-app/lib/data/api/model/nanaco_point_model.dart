import 'package:freezed_annotation/freezed_annotation.dart';

part 'nanaco_point_model.freezed.dart';
part 'nanaco_point_model.g.dart';

@freezed
class NanacoPointModel with _$NanacoPointModel {
  const factory NanacoPointModel({
    /* 付与単位ポイント */
    @Default(0) int nanacoPointUnitPoint,
/* nanacoポイント付与対象額 */
    @Default(0) int nanacoPointPrice,
/* 上位ポイント繰越額 */
    @Default(0) int nanacoPointCarryOver,
/* nanacoポイント付与対象額-繰越額  ~~~ 上位ポイント繰越額が0より多い場合は(nanacoポイント付与対象額-上位ポイント繰越額) 上位ポイント繰越額が0以下の場合はnanacoポイント付与対象額を返却 ~~~ */
    @Default(0) int nanacoPointOriginalPrice,
/* 付与単位ポイントの合計付与ポイント */
    @Default(0) int nanacoPointTotalPoint,
  }) = _NanacoPointModel;

  factory NanacoPointModel.fromJson(Map<String, dynamic> json) => _$NanacoPointModelFromJson(json);
}
