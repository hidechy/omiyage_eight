import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_bottom_navigation_state.freezed.dart';

@freezed
class MainBottomNavigationState with _$MainBottomNavigationState {
  const factory MainBottomNavigationState({
    @Default(0) int index,
    @Default(<bool>[]) List<bool> initialized,
  }) = _MainBottomNavigationState;
}
