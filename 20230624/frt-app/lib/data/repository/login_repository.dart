import '../../enum/mail_magazine_type.dart';
import '../api/model/first_use_registoration_model.dart';
import '../api/model/login_customer_model.dart';
import '../api/model/login_visitor_model.dart';
import '../api/model/response_model.dart';

abstract class LoginRepository {
  /// 見学ログインAPI
  /// @param zipCode 郵便番号
  Future<ResponseModel<LoginVisitorModel>> loginVisitor({String? shopCode, String? iyVisitId});

  /// ログインAPI
  /// @param ssoState CSRF対策用state
  /// @param ssoStateToken CSRF対策用トークン
  /// @param appId システムID
  /// @param userHash 7IDユーザハッシュ
  /// @param ssoStartTime SSO連携開始時刻
  /// @param oneTimeToken オムニワンタイムトークン
  /// @param signature 改竄チェック署名
  /// @param iyVisitId 見学ID
  /// @param shopCode 店舗コード: 見学カートの引き継ぎに必要
  /// @param isManualLogin 手動ログインかどうか: カートクリア時のハンドリングに使用
  Future<ResponseModel<LoginCustomerModel>> login({
    required String ssoState,
    required String ssoStateToken,
    required String appId,
    required String userHash,
    required String ssoStartTime,
    required String oneTimeToken,
    required String signature,
    String? iyVisitId,
    String? shopCode,
    bool isManualLogin = false,
  });

  /// 初回利用登録API
  /// @param firstUseToken 初回利用登録トークン
  /// @param prefectureCode お届け先都道府県コード
  /// @param cityCode お届け先市区町村コード
  /// @param townCode お届け先通称コード
  /// @param chomeCode お届け先丁目コード
  /// @param address お届け先住所詳細（番地以下）
  /// @param address2 お届け先住所詳細2（マンション名その他）
  /// @param mailMagazineType メールマガジン区分
  /// @param iyVisitId 仮会員ID
  /// @param shopCode 店舗コード
  Future<ResponseModel<FirstUseRegistrationModel>> firstUseRegistration({
    required String firstUseToken,
    required String prefectureCode,
    required String cityCode,
    required String townCode,
    required String chomeCode,
    required String address,
    required String address2,
    required MailMagazineType mailMagazineType,
    String? iyVisitId,
    String? shopCode,
  });
}
