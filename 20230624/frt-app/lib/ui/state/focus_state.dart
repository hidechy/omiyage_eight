import 'package:freezed_annotation/freezed_annotation.dart';

part 'focus_state.freezed.dart';

@freezed
class FocusState with _$FocusState {
  factory FocusState({
    @Default(false) bool isFocused,
  }) = _FocusState;
}
