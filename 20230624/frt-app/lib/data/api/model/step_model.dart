import 'package:freezed_annotation/freezed_annotation.dart';

part 'step_model.freezed.dart';

part 'step_model.g.dart';

/// レシピ調理手順モデル
@freezed
class StepModel with _$StepModel {
  const factory StepModel({
    @Default(0) int step,
    @Default('') String description,
    @Default('') String point,
  }) = _StepModel;

  factory StepModel.fromJson(Map<String, dynamic> json) => _$StepModelFromJson(json);
}
