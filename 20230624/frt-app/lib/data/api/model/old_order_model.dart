import 'package:freezed_annotation/freezed_annotation.dart';

part 'old_order_model.freezed.dart';
part 'old_order_model.g.dart';

@freezed
class OldOrderModel with _$OldOrderModel {
  const factory OldOrderModel({
    /* 旧受注-nanacoポイント利用判定 ``` true：旧受注-nanacoポイント利用あり false：旧受注-nanacoポイント利用なし ``` */
    @Default(false) bool isNanacoPointUse,
    /* 旧受注-nanacoポイント利用額 */
    @Default(0) int nanacoPointUsePoint,
    /* 旧受注ID */
    @Default(0) int oldOrderId,
  }) = _OldOrderModel;
  factory OldOrderModel.fromJson(Map<String, dynamic> json) => _$OldOrderModelFromJson(json);
}
