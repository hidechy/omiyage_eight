import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicine_confirmations_page_state.freezed.dart';

@freezed
class MedicineConfirmationsPageState with _$MedicineConfirmationsPageState {
  const MedicineConfirmationsPageState._();
  factory MedicineConfirmationsPageState({
    @Default(false) bool isExpanded,
    @Default(false) bool isActive,
  }) = _MedicineConfirmationsPageState;
}
