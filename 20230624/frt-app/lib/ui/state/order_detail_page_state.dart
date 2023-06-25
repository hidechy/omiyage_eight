import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/order_details_model.dart';

part 'order_detail_page_state.freezed.dart';

@freezed
class OrderDetailPageState with _$OrderDetailPageState {
  factory OrderDetailPageState({
    @Default(OrderDetailsModel()) OrderDetailsModel orderDetail,
    @Default(false) bool isOpen,
  }) = _OrderDetailPageState;
}
