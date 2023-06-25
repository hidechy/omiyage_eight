import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/order_details_model.dart';

part 'repurchase_page_state.freezed.dart';

@freezed
class RepurchasePageState with _$RepurchasePageState {
  factory RepurchasePageState({
    @Default(OrderDetailsModel()) OrderDetailsModel orderDetail,
    @Default(false) bool isExistDrugProduct,
  }) = _RepurchasePageState;
}
