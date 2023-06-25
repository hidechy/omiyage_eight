import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/reserve_status.dart';
import '../../../util/boolean_json_converter.dart';

part 'order_history_model.freezed.dart';

part 'order_history_model.g.dart';

/// 注文履歴
@freezed
class OrderHistoryModel with _$OrderHistoryModel {
  const factory OrderHistoryModel({
    /* 配達便変更開始-無効フラグ ``` \"0\"：配達便変更開始が有効である \"1\"：配達便変更開始が無効である ``` */
    @Default(false) @StringToBooleanConverter() bool disableDeliveryPlanChangeStartFlag,
    /* 受注ID */
    @Default('') String orderId,
    /* 予約ステータス ``` \"0\"：非予約受注 \"1\"：予約のみ受注 \"2\"：予約含む受注``` */
    @Default(ReserveStatus.notReservedOrder) ReserveStatus reserveStatus,
  }) = _OrderHistoryModel;

  factory OrderHistoryModel.fromJson(Map<String, dynamic> json) => _$OrderHistoryModelFromJson(json);
}
