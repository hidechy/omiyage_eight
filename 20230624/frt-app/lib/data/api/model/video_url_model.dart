import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_url_model.freezed.dart';

part 'video_url_model.g.dart';

/// レシピ画像・動画レスポンスモデル
@freezed
class VideoUrlModel with _$VideoUrlModel {
  const factory VideoUrlModel({
    /* 長方形 or 正方形のレシピ画像を取得するためのURL */
    @Default('') String posterUrl,
    /* 長方形 or 正方形のレシピ動画を取得するためのURL */
    @Default('') String videoUrl,
  }) = _VideoUrlModel;

  factory VideoUrlModel.fromJson(Map<String, dynamic> json) => _$VideoUrlModelFromJson(json);
}
