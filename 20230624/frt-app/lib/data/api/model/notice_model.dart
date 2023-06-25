class NoticeModel {
  const NoticeModel({
    this.noticeKey = '',
    this.noticeReason = '',
    this.noticeReasonCode = '',
  });

  factory NoticeModel.fromJson(dynamic json) {
    return json == null
        ? const NoticeModel()
        : NoticeModel(
            noticeKey: json['notice_key'] as String? ?? '',
            noticeReason: json['notice_reason'] as String? ?? '',
            noticeReasonCode: json['notice_reason_code'] as String? ?? '',
          );
  }

  /* 通知項目 */
  final String noticeKey;
  /* 通知理由 */
  final String noticeReason;
  /* 通知理由コード ※別ファイル：メッセージコード_一覧参照 */
  final String noticeReasonCode;

  @override
  String toString() {
    return 'NoticeModel[noticeKey=$noticeKey, noticeReason=$noticeReason, noticeReasonCode=$noticeReasonCode, ]';
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'notice_key': noticeKey,
        'notice_reason': noticeReason,
        'notice_reason_code': noticeReasonCode,
      };

  static List<NoticeModel> listFromJson(List<dynamic>? json) {
    return json?.map((dynamic value) => NoticeModel.fromJson(value)).toList() ?? const [];
  }

  Map<String, NoticeModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = <String, NoticeModel>{};
    if (json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = NoticeModel.fromJson(value));
    }
    return map;
  }
}
