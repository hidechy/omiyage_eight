import 'package:freezed_annotation/freezed_annotation.dart';

import 'recipes_model.dart';

part 'front_delis_model.freezed.dart';

part 'front_delis_model.g.dart';

@freezed
class FrontDelisModel with _$FrontDelisModel {
  const factory FrontDelisModel({
    @Default(<RecipesModel>[]) List<RecipesModel> recipes,
  }) = _FrontDelisModel;

  factory FrontDelisModel.fromJson(Map<String, dynamic> json) => _$FrontDelisModelFromJson(json);
}
