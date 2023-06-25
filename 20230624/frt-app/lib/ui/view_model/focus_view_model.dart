import 'package:state_notifier/state_notifier.dart';

import '../state/focus_state.dart';

class FocusViewModel extends StateNotifier<FocusState> {
  FocusViewModel() : super(FocusState());

  void focusIn() => state = state.copyWith(isFocused: true);
  void focusOut() => state = state.copyWith(isFocused: false);
}
