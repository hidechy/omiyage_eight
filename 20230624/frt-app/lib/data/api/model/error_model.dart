import 'error_substitute_model.dart';

/// エラーモデル
class ErrorModel {
  const ErrorModel({
    this.errorKey = '',
    this.errorReason = '',
    this.errorReasonSubstitute = const [],
    this.errorReasonCode = '',
    this.errorFrontMessage = '',
  });

  factory ErrorModel.fromJson(dynamic json) {
    return json == null
        ? const ErrorModel()
        : ErrorModel(
            errorKey: json['error_key'] as String? ?? '',
            errorReason: json['error_reason'] as String? ?? '',
            errorReasonSubstitute: ErrorSubstituteModel.listFromJson(json['error_reason_substitute'] as List<dynamic>?),
            errorReasonCode: json['error_reason_code'] as String? ?? '',
            errorFrontMessage: json['error_front_message'] as String? ?? '',
          );
  }

  /* エラー項目 */
  final String errorKey;
/* エラー理由 */
  final String errorReason;
/* エラー理由の置換文字のMAP */
  final List<ErrorSubstituteModel> errorReasonSubstitute;
/* エラー理由コード ※別ファイル：メッセージコード_一覧参照 */
  final String errorReasonCode;
/* コード表マップをもとに置換対象の文字がない場合はerror_reasonをそのまま転記 */
  final String errorFrontMessage;

  @override
  String toString() {
    return 'ErrorModel[errorKey=$errorKey, errorReason=$errorReason, errorReasonSubstitute=$errorReasonSubstitute, errorReasonCode=$errorReasonCode, errorFrontMessage=$errorFrontMessage, ]';
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'error_key': errorKey,
      'error_reason': errorReason,
      'error_reason_substitute': errorReasonSubstitute,
      'error_reason_code': errorReasonCode,
      'error_front_message': errorFrontMessage
    };
  }

  static List<ErrorModel> listFromJson(List<dynamic>? json) {
    return json?.map((dynamic value) => ErrorModel.fromJson(value)).toList() ?? const [];
  }

  Map<String, ErrorModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = <String, ErrorModel>{};
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = ErrorModel.fromJson(value));
    }
    return map;
  }
}
