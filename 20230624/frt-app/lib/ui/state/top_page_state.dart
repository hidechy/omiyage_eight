import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_page_state.freezed.dart';

@freezed
class TopPageState with _$TopPageState {
  factory TopPageState({
    String? postalNumber,
    @Default(false) bool isValidPostalNumber,
  }) = _TopPageState;
}
