import 'package:freezed_annotation/freezed_annotation.dart';

part 'web_view_state.freezed.dart';

@freezed
class WebViewState with _$WebViewState {
  const factory WebViewState({
    String? title,
    @Default(true) bool loading,
    @Default(false) bool canGoBack,
    @Default(false) bool canGoForward,
  }) = _WebViewState;
}
