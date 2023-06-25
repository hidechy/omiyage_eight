import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_page_state.freezed.dart';

@freezed
class MyPageState with _$MyPageState {
  factory MyPageState({
    int? nanacoPoint,
  }) = _MyPageState;
}
