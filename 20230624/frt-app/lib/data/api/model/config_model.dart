import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_model.freezed.dart';

part 'config_model.g.dart';

@freezed
class ConfigModel with _$ConfigModel {
  const ConfigModel._();

  const factory ConfigModel({
    @Default(false) bool isVisitorAllowed,
  }) = _ConfigModel;

  factory ConfigModel.fromJson(Map<String, dynamic> json) => _$ConfigModelFromJson(json);
}
