import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_video_state.freezed.dart';

@freezed
class RecipeVideoState with _$RecipeVideoState {
  const factory RecipeVideoState({
    @Default(false) bool isVideoControllerInit,
  }) = _RecipeVideoState;
}
