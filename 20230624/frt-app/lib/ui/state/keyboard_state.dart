import 'package:freezed_annotation/freezed_annotation.dart';

part 'keyboard_state.freezed.dart';

@freezed
class KeyboardState with _$KeyboardState {
  const factory KeyboardState({
    @Default(false) bool visible,
    @Default(false) bool hasFocus,
  }) = _KeyboardState;
}
