import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  /*
  基本的に、カラー定数の命名規則はトンマナの色名に対応している
  ただしトンマナで命名されていないカラーも存在するので、用途やトンマナの命名を参考に命名する
  */

  /// 定期便
  static const Color regularService = Color(0xFF37C378);

  /// 定期便Light
  static const Color regularServiceLight = Color(0xFFC8F4DC);

  /// 定期便ホバー
  static const Color regularServiceHover = Color(0xFF5DD695);

  /// 定期便カレント
  static const Color regularServiceCurrent = Color(0xFF2BB169);

  /// 背景色1
  static const Color background1 = Color(0xFFF1F2F3);

  /// 背景色2
  static const Color background2 = Color(0xFFF6F6F6);

  /// 背景色3
  static const Color background3 = Color(0xFFF0F8FA);

  /// 購入動線
  static const Color purchaseFlow = Color(0xFFF47035);

  /// 購入動線Light
  static const Color purchaseFlowLight = Color(0xFFFFDED0);

  /// 購入動線ホバー
  static const Color purchaseFlowHover = Color(0xFFF68C5D);

  /// 購入動線カレント
  static const Color purchaseFlowCurrent = Color(0xFFF2682A);

  /// オレンジの広告ラベル
  static const Color orangeAdvertisement = Color(0xFFFF8259);

  /// 強調1
  static const Color emphasis1 = Color(0xFFF27740);

  /// 強調2
  static const Color emphasis2 = Color(0xFFFFF0D9);

  /// 警告1
  static const Color warning1 = Color(0xFFEF4040);

  /// 警告2
  static const Color warning2 = Color(0xFFFFDEDE);

  /// メイン
  static const Color main = Color(0xFF53AAEF);

  /// メインLight
  static const Color mainLight = Color(0xFFD4EBF5);

  /// メインホバー
  static const Color mainHover = Color(0xFF75BAF2);

  /// メインカレント
  static const Color mainCurrent = Color(0xFF3C9EEB);

  /// メインボーダー
  static const Color mainBorder = Color(0xFF5db0f2);

  /// 非活性
  static const Color inactive = Color(0xFFCCCCCC);

  /// White1
  static const Color white = Color(0xFFFFFFFF);

  /// White 0%
  static const Color whiteAlpha0 = Color.fromRGBO(0xFF, 0xFF, 0xFF, 0);

  /// White 70%
  static const Color whiteAlpha70 = Color.fromRGBO(0xFF, 0xFF, 0xFF, 0.7);

  /// White 90%
  static const Color whiteAlpha90 = Color.fromRGBO(0xFF, 0xFF, 0xFF, 0.9);

  /// White2
  static const Color white2 = Color(0xFFFAFAFA);

  /// White3
  static const Color white3 = Color(0xFFEEEEEE);

  /// White Border
  static const Color whiteBorder = Color(0xFFF3F3F3);

  /// Black1
  static const Color black = Color(0xFF000000);

  /// Black 10%
  static const Color blackAlpha10 = Color.fromRGBO(0x00, 0x00, 0x00, 0.1);

  /// Gray2 40%
  static const Color blackAlpha40 = Color.fromRGBO(0x00, 0x00, 0x00, 0.4);

  /// Gray1 60%
  static const Color blackAlpha60 = Color.fromRGBO(0x00, 0x00, 0x00, 0.6);

  /// Black 70%
  static const Color blackAlpha70 = Color.fromRGBO(0x00, 0x00, 0x00, 0.7);

  /// Black 80%
  static const Color blackAlpha80 = Color.fromRGBO(0x00, 0x00, 0x00, 0.8);

  /// Black2
  static const Color black2 = Color(0xFF333333);

  /// Black Border
  static const Color blackBorder = Color(0xFF707070);

  /// Black Shadow
  static const Color blackShadow = Color.fromRGBO(0x00, 0x00, 0x00, 0.1);

  /// Gray1
  static const Color gray1 = Color(0xFF666666);

  /// Gray2
  static const Color gray2 = Color(0xFF999999);

  /// Gray3
  static const Color gray3 = Color(0xFF888888);

  /// ライン色
  static const Color line = Color(0xFFCCCCCC);

  /// フッター文言用1
  static const Color footerGray1 = Color(0xFF4B4B4B);

  /// フッター文言用2
  static const Color footerGray2 = Color(0xFF393939);

  /// iconTheme
  static const Color iconTheme = Color(0xFFAAAAAA);

  /// 区切り点線
  static const Color dottedBorder = Color(0xFFC7C7C7);

  /// 選択中の店舗
  static const Color selectedShop = Color.fromRGBO(0x53, 0xAA, 0xEF, 0.1);

  /// 透明
  static const Color transparent = Color.fromRGBO(0x00, 0x00, 0x00, 0);
}
