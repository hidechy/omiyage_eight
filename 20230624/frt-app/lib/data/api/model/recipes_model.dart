import 'package:freezed_annotation/freezed_annotation.dart';

import 'video_url_model.dart';

part 'recipes_model.freezed.dart';

part 'recipes_model.g.dart';

@freezed
class RecipesModel with _$RecipesModel {
  const factory RecipesModel({
    /* レシピを識別するユニークなID */
    @Default('') String id,
    /* レシピの特徴を示した文言 */
    @Default('') String lead,
    /* レシピのタイトル */
    @Default('') String title,
    /* レシピの説明文 */
    @Default('') String description,
    /* お料理の摂取カロリー量 例 "514kcal/人" */
    @Default('') String cookingTime,
    /* お料理所要時間 例　30分 */
    @Default('') String calorie,
    /* 長方形表示の画像素材 */
    @Default(VideoUrlModel()) VideoUrlModel rectVideo,
    /* 正方形表示の画像素材 */
    @Default(VideoUrlModel()) VideoUrlModel squareVideo,
  }) = _RecipesModel;

  factory RecipesModel.fromJson(Map<String, dynamic> json) => _$RecipesModelFromJson(json);
}
