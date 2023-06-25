import 'package:freezed_annotation/freezed_annotation.dart';

part 'loading_state.freezed.dart';

@freezed
class LoadingState with _$LoadingState {
  const LoadingState._();

  factory LoadingState({
    required Future<bool> future,
  }) = _LoadingState;
}
