import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_substitute_model.freezed.dart';
part 'message_substitute_model.g.dart';

@freezed
class MessageSubstituteModel with _$MessageSubstituteModel {
  const factory MessageSubstituteModel({
    /* 置換対象のkey番号 */
    @Default('') String key,
    /* 置換文字列 */
    @Default('') String value,
  }) = _MessageSubstituteModel;

  factory MessageSubstituteModel.fromJson(Map<String, dynamic> json) => _$MessageSubstituteModelFromJson(json);
}
