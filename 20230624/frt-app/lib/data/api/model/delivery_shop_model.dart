import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/mail_magazine_type.dart';

part 'delivery_shop_model.freezed.dart';
part 'delivery_shop_model.g.dart';

@freezed
class DeliveryShopModel with _$DeliveryShopModel {
  const factory DeliveryShopModel({
    /* 店舗コード */
    @Default('') String shopCode,
/* 店舗名 */
    @Default('') String shopName,
/* 完全閉店フラグ  ``` true：完全閉店状態 false：完全閉店以外の状態 ``` */
    @Default(false) bool isCompleteClosed,
/* 新規オープン前フラグ  ``` true：新規オープン前 false：新規オープン前以外の状態 ``` */
    @Default(false) bool isBeforeNewOpenDate,
/* 置き配可能店舗判定  ``` true：置き配可能店舗 false：置き配不可能店舗 ``` */
    @Default(false) bool canPackageDrop,
/* 配送拠点コード */
    @Default('') String deliveryBaseCode,
/* 配送拠点名 */
    @Default('') String deliveryBaseName,
/* メールマガジン区分 ``` \"0\"：送信しない \"1\"：メインメールアドレス \"2\"：サブメールアドレス \"3\"：メイン/サブ両方 ``` ※メールマガジン登録状態が存在しない場合、「1」を設定する。 */
    @Default(MailMagazineType.doNotSend) MailMagazineType mailMagazineType,
  }) = _DeliveryShopModel;

  factory DeliveryShopModel.fromJson(Map<String, dynamic> json) => _$DeliveryShopModelFromJson(json);
}
