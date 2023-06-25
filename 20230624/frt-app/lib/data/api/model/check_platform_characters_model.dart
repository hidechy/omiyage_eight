import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_platform_characters_model.freezed.dart';

part 'check_platform_characters_model.g.dart';

@freezed
class CheckPlatformCharactersModel with _$CheckPlatformCharactersModel {
  const factory CheckPlatformCharactersModel({
    @Default(true) bool isValid,
  }) = _CheckPlatformCharactersModel;

  factory CheckPlatformCharactersModel.fromJson(Map<String, dynamic> json) =>
      _$CheckPlatformCharactersModelFromJson(json);
}
