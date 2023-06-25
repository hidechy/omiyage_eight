import 'package:freezed_annotation/freezed_annotation.dart';

part 'secure_decrypted_model.freezed.dart';
part 'secure_decrypted_model.g.dart';

@freezed
class SecureDecryptedModel with _$SecureDecryptedModel {
  const factory SecureDecryptedModel({
    /* デコードした値 */
    @Default('') String value,
  }) = _SecureDecryptedModel;

  factory SecureDecryptedModel.fromJson(Map<String, dynamic> json) => _$SecureDecryptedModelFromJson(json);
}
