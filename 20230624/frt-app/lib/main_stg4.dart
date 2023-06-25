import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:simple_logger/simple_logger.dart';

import 'enum/flavor_type.dart';
import 'main.dart';
import 'util/logger.dart';

Future<void> main() async {
  // フレーバーの追加、削除、編集を行う際は下記設計書の修正も行うこと
  // ・設定内容を修正する場合
  //  → 各環境毎の設定情報（APP） : https://7andi-digital.atlassian.net/wiki/spaces/IYNS/pages/113122978/APP
  //   → 「ビルドフレーバー」に記載してある設定内容を修正する。
  // ・フレーバーの追加・削除を行う場合
  //  → アプリビルドフレーバー : https://7andi-digital.atlassian.net/wiki/spaces/IYNS/pages/111449447/APP
  //   → 「各環境毎の設定情報（APP）」設計書に加え、上記設計書の修正も併せて行う。
  //  → アプリ実行環境の切り替え（APP） : https://7andi-digital.atlassian.net/wiki/spaces/IYNS/pages/102271005/APP
  //   → 「各環境毎の設定情報（APP）」設計書に加え、上記設計書の2章の修正も併せて行う。
  FlavorConfig(
    name: FlavorType.stg4.name,
    variables: <String, dynamic>{
      'title': 'Stg4 ネットスーパー',
      'iynsAwsS3': 'https://app.stg4.iy-net.biz',
    },
  );
  logger.setLevel(Level.ALL, includeCallerInfo: true);
  await appMain();
}
