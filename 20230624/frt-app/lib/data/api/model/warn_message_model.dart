import 'package:freezed_annotation/freezed_annotation.dart';

import 'message_substitute_model.dart';

part 'warn_message_model.freezed.dart';
part 'warn_message_model.g.dart';

@freezed
class WarnMessageModel with _$WarnMessageModel {
  const factory WarnMessageModel({
    /* メッセージ */
    @Default('') String message,
    @Default(<MessageSubstituteModel>[]) List<MessageSubstituteModel> messageSubstitute,
    /* メッセージコード */
    @Default('') String messageCode,
  }) = _WarnMessageModel;
  factory WarnMessageModel.fromJson(Map<String, dynamic> json) => _$WarnMessageModelFromJson(json);
}
