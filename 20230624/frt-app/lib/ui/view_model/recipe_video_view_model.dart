import 'dart:async';

import 'package:state_notifier/state_notifier.dart';
import 'package:video_player/video_player.dart';

import '../state/recipe_video_state.dart';

class RecipeVideoViewModel extends StateNotifier<RecipeVideoState> {
  RecipeVideoViewModel({required String videoUrl})
      : _videoController = VideoPlayerController.network(videoUrl),
        super(const RecipeVideoState());

  final VideoPlayerController _videoController;
  final _firstPlayController = StreamController<bool>();

  VideoPlayerController get videoController => _videoController;

  Stream<bool> get firstPlayStream => _firstPlayController.stream;

  StreamSink<bool> get firstPlaySink => _firstPlayController.sink;

  Future<void> init() async =>
      _videoController.initialize().then((_) => state = state.copyWith(isVideoControllerInit: true));

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }
}
