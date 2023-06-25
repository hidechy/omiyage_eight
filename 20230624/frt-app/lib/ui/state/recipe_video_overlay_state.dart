import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_video_overlay_state.freezed.dart';

@freezed
class RecipeVideoOverlayState with _$RecipeVideoOverlayState {
  factory RecipeVideoOverlayState({
    @Default(0.0) double opacity,
    @Default(false) bool uiVisibility,
    @Default(0.0) double sliderValue,
    @Default(false) bool isMute,
    @Default(false) bool isSliderMoving,
    @Default(false) bool isPlaying,
    @Default(true) bool isFirstPlaying,
  }) = _RecipeVideoOverlayState;
}
