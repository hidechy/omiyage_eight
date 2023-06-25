import 'package:state_notifier/state_notifier.dart';

import '../state/loading_state.dart';

// 複数のローディング状態で使用しにくくなった場合、generic型に変更する
class LoadingViewModel extends StateNotifier<LoadingState> {
  LoadingViewModel(this._future) : super(LoadingState(future: _future()));

  final Future<bool> Function() _future;

  void load() => state = state.copyWith(future: _future());
}
