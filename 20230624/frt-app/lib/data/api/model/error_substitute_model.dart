class ErrorSubstituteModel {
  const ErrorSubstituteModel({
    this.key = '',
    this.value = '',
  });

  factory ErrorSubstituteModel.fromJson(dynamic json) {
    return json == null
        ? const ErrorSubstituteModel()
        : ErrorSubstituteModel(
            key: json['key'] as String? ?? '',
            value: json['value'] as String? ?? '',
          );
  }

  /* 置換対象のkey番号 */
  final String key;
  /* 置換文字列 */
  final String value;

  @override
  String toString() {
    return 'ErrorSubstituteModel[key=$key, value=$value, ]';
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  static List<ErrorSubstituteModel> listFromJson(List<dynamic>? json) {
    return json?.map((dynamic value) => ErrorSubstituteModel.fromJson(value)).toList() ?? const [];
  }

  static Map<String, ErrorSubstituteModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = <String, ErrorSubstituteModel>{};
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = ErrorSubstituteModel.fromJson(value));
    }
    return map;
  }
}
