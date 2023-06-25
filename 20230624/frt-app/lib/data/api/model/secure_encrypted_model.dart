import 'package:freezed_annotation/freezed_annotation.dart';

part 'secure_encrypted_model.freezed.dart';
part 'secure_encrypted_model.g.dart';

@freezed
class SecureEncryptedModel with _$SecureEncryptedModel {
  const factory SecureEncryptedModel({
    /* エンコードした値 */
    @Default('') String value,
  }) = _SecureEncryptedModel;

  factory SecureEncryptedModel.fromJson(Map<String, dynamic> json) => _$SecureEncryptedModelFromJson(json);
}
