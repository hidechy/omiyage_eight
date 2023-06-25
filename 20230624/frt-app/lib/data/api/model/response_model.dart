import '../../../util/json_helper.dart';
import '../../../util/logger.dart';
import 'clear_cart_model.dart';
import 'error_model.dart';
import 'notice_model.dart';

/// レスポンスモデル
class ResponseModel<T> {
  const ResponseModel({
    this.statusCode = '',
    this.message = '',
    this.frontMessage = '',
    this.errorDetails = const [],
    this.data = const [],
    this.totalDataNum = 0,
    this.currentPageNum = 0,
    this.totalPageNum = 0,
    this.pageHasNext = '',
    this.pagePerSize = 0,
    this.totalSize = 0,
    this.noticeDetails = const [],
    this.clearCart = const [],
  });

  factory ResponseModel.fromJson(dynamic json) {
    if (json is! Map<String, dynamic>) {
      logger
        ..warning('Map<String, dynamic>ではない型で呼び出されました。')
        ..warning(json);
      return const ResponseModel();
    }
    return ResponseModel(
      statusCode: json['status_code'] as String? ?? '',
      message: json['message'] as String? ?? '',
      frontMessage: json['front_message'] as String? ?? '',
      errorDetails: ErrorModel.listFromJson(json['error_details'] as List<dynamic>?),
      data: JsonHelper.listFromJson<T>(json['data'] as List<dynamic>?),
      totalDataNum: json['total_data_num'] as int? ?? 0,
      currentPageNum: json['current_page_num'] as int? ?? 0,
      totalPageNum: json['total_page_num'] as int? ?? 0,
      pageHasNext: json['page_has_next'] as String? ?? '',
      pagePerSize: json['page_per_size'] as int? ?? 0,
      totalSize: json['total_size'] as int? ?? 0,
      noticeDetails: NoticeModel.listFromJson(json['notice_details'] as List<dynamic>?),
      clearCart: ClearCartModel.listFromJson(json['clear_cart'] as List<dynamic>?),
    );
  }

  /* ステータスコード */
  final String statusCode;

  /* メッセージID */
  final String message;

  /* コード表マップからの取得メッセージ */
  final String frontMessage;

  final List<ErrorModel> errorDetails;

  final List<T> data;

  /* 総データ数 */
  final int totalDataNum;

  /* 現在のページ数 */
  final int currentPageNum;

  /* 総ページ数 */
  final int totalPageNum;

  /* 次ページ有無 */
  final String pageHasNext;

  /* 現在のページ内件数 */
  final int pagePerSize;

  /* 総件数 */
  final int totalSize;

  final List<NoticeModel> noticeDetails;

  final List<ClearCartModel> clearCart;

  T get first => data.isNotEmpty ? data.first : JsonHelper.fromJson(const <String, dynamic>{});

  ResponseModel<T> copyWith({
    String? statusCode,
    String? message,
    String? frontMessage,
    List<ErrorModel>? errorDetails,
    List<T>? data,
    int? totalDataNum,
    int? currentPageNum,
    int? totalPageNum,
    String? pageHasNext,
    int? pagePerSize,
    int? totalSize,
    List<NoticeModel>? noticeDetails,
    List<ClearCartModel>? clearCart,
  }) =>
      ResponseModel(
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message,
        frontMessage: frontMessage ?? this.frontMessage,
        errorDetails: errorDetails ?? this.errorDetails,
        data: data ?? this.data,
        totalDataNum: totalDataNum ?? this.totalDataNum,
        currentPageNum: currentPageNum ?? this.currentPageNum,
        totalPageNum: totalPageNum ?? this.currentPageNum,
        pageHasNext: pageHasNext ?? this.pageHasNext,
        pagePerSize: pagePerSize ?? this.pagePerSize,
        totalSize: totalSize ?? this.totalSize,
        noticeDetails: noticeDetails ?? this.noticeDetails,
        clearCart: clearCart ?? this.clearCart,
      );

  @override
  String toString() {
    final s = toJson().entries.map((e) {
      final key = e.key.replaceAllMapped(RegExp(r'_([a-z])'), (match) => match[1]?.toUpperCase() ?? '');
      return '$key: ${e.value}';
    }).join(', ');
    return 'ResponseModel($s)';
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'status_code': statusCode,
      'message': message,
      'front_message': frontMessage,
      'error_details': errorDetails,
      'data': data,
      'total_data_num': totalDataNum,
      'current_page_num': currentPageNum,
      'total_page_num': totalPageNum,
      'page_has_next': pageHasNext,
      'page_per_size': pagePerSize,
      'total_size': totalSize,
      'notice_details': noticeDetails,
      'clear_cart': clearCart,
    };
  }
}
