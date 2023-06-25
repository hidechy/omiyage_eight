import 'dart:async';

import 'package:state_notifier/state_notifier.dart';
import 'package:video_player/video_player.dart';

import '../state/recipe_video_overlay_state.dart';

class RecipeVideoOverlayViewModel extends StateNotifier<RecipeVideoOverlayState> {
  RecipeVideoOverlayViewModel(this._videoController, this._totalTime)
      : super(RecipeVideoOverlayState(
          sliderValue: _videoController.value.position.inMilliseconds / _totalTime.inMilliseconds,
          isMute: _videoController.value.volume == 0,
          isPlaying: _videoController.value.isPlaying,
        )) {
    _videoController.addListener(_controllerListener);
  }

  final VideoPlayerController _videoController;
  final Duration _totalTime;

  var _overlayTimer = Timer(const Duration(), () {});

  void overlayShow() {
    _overlayTimer.cancel();
    _overlayTimer = Timer(const Duration(seconds: 3), () {
      // cancel すると Callback が呼ばれなくなるため再生成する
      if (_videoController.value.isPlaying && !state.isSliderMoving) {
        state = state.copyWith(opacity: 0.0);
      }
    });
    if (state.opacity == 1.0) {
      return;
    }
    state = state.copyWith(opacity: 1.0, uiVisibility: true);
  }

  void playPause() async {
    overlayShow();
    state.isPlaying ? await _videoController.pause() : await _videoController.play();
    state = state.copyWith(isPlaying: _videoController.value.isPlaying);
  }

  void onSliderMoveStart() => state = state.copyWith(isSliderMoving: true);

  void onSliderMoving(double value) {
    state = state.copyWith(sliderValue: value);
  }

  void onSliderMoveEnd(double value) {
    overlayShow();
    state = state.copyWith(isSliderMoving: false);
    final currentTime = Duration(seconds: (_totalTime.inSeconds * value).toInt());
    _videoController.seekTo(currentTime);
  }

  void onTapVolumeIcon() {
    overlayShow();
    _videoController.setVolume(state.isMute ? 1.0 : 0.0);
    state = state.copyWith(isMute: !state.isMute);
  }

  void onOpacityAnimationEnd() {
    if (state.opacity == 1) {
      return;
    }
    // アニメーション終了前に Visibility を false にするとパッと消えてしまうため
    // アニメーション終了後に Visibility を false にする
    state = state.copyWith(uiVisibility: false);
  }

  String getTimeLeft() {
    final timeLeft = Duration(
      // 合計時間秒数 - 合計時間秒数 * スライダーの値 = 残り秒数
      seconds: (_totalTime.inSeconds - _totalTime.inSeconds * state.sliderValue).toInt(),
    );

    String _twoDigits(int n) {
      return '$n'.padLeft(2, '0');
    }

    final minutes = _twoDigits(timeLeft.inMinutes.remainder(Duration.minutesPerHour));
    final seconds = _twoDigits(timeLeft.inSeconds.remainder(Duration.secondsPerMinute));

    // mm:ss 形式
    return '$minutes:$seconds';
  }

  void _controllerListener() {
    if (state.isSliderMoving) {
      return;
    }
    final videoValue = _videoController.value;
    state = state.copyWith(sliderValue: videoValue.position.inMilliseconds / _totalTime.inMilliseconds);
    if (videoValue.position == videoValue.duration) {
      // 動画が最後まで再生終了時
      state = state.copyWith(
        opacity: 1.0,
        uiVisibility: true,
        isPlaying: false,
        isFirstPlaying: false,
      );
    }

    if (videoValue.position == const Duration(microseconds: 0) && !state.isFirstPlaying && videoValue.isPlaying) {
      // 動画が最後まで再生された後の最初の再生直後
      state = state.copyWith(
        isPlaying: true,
        isFirstPlaying: true,
      );
    }
  }

  @override
  void dispose() {
    // VideoPlayerController自体はOverlay実装先でDisposeする前提
    _videoController.removeListener(_controllerListener);
    super.dispose();
  }
}
