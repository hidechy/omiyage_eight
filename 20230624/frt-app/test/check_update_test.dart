import 'package:flutter_test/flutter_test.dart';
import 'package:version/version.dart';

import 'package:netsuper/data/api/model/update_model.dart';
import 'package:netsuper/util/update_manager.dart';

void main() {
  test(
    'アップデート情報モデルリストによるアップデートの要否の判定テスト',
    () {
      /*
      iOS端末の場合の確認
      */

      // iOS端末 UpdateModelの条件に全て一致する true
      expect(
          UpdateManager().needUpdate(
            updateList: [
              const UpdateModel(os: 'iOS', osVersion: '14.7.1', appVersion: '1.0.0'),
            ],
            deviceOs: 'iOS',
            deviceOsVersion: Version.parse('14.7.1'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          true);
      // iOS端末 UpdateModel全て空文字のため true
      expect(
          UpdateManager().needUpdate(
            updateList: [
              const UpdateModel(os: '', osVersion: '', appVersion: ''),
            ],
            deviceOs: 'iOS',
            deviceOsVersion: Version.parse('14.7.1'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          true);
      // iOS端末 UpdateModelのosが全てAndroidのため false
      expect(
          UpdateManager().needUpdate(
            updateList: [
              const UpdateModel(os: 'Android', osVersion: '', appVersion: ''),
            ],
            deviceOs: 'iOS',
            deviceOsVersion: Version.parse('14.7.1'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          false);
      // iOS端末 UpdateModelのosVersionが異なるため false
      expect(
          UpdateManager().needUpdate(
            updateList: [
              const UpdateModel(os: 'iOS', osVersion: '14.7.0', appVersion: ''),
              const UpdateModel(os: 'iOS', osVersion: '14.7.2', appVersion: ''),
            ],
            deviceOs: 'iOS',
            deviceOsVersion: Version.parse('14.7.1'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          false);
      // iOS端末 UpdateModelのosVersionが整数15でも端末OS15.0.0にマッチする確認 true
      expect(
          UpdateManager().needUpdate(
            updateList: [
              const UpdateModel(os: 'iOS', osVersion: '15', appVersion: ''),
            ],
            deviceOs: 'iOS',
            deviceOsVersion: Version.parse('15.0.0'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          true);
      // iOS端末 UpdateModelのappVersionが端末のアプリバージョンと同じのため（未満ではないので）false（境界値テスト）
      expect(
          UpdateManager().needUpdate(
            updateList: [
              const UpdateModel(os: '', osVersion: '', appVersion: '0.0.23'),
            ],
            deviceOs: 'iOS',
            deviceOsVersion: Version.parse('14.7.1'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          false);
      // iOS端末 UpdateModelのappVersionが端末のアプリバージョン未満のためtrue（境界値テスト）
      expect(
          UpdateManager().needUpdate(
            updateList: [
              const UpdateModel(os: '', osVersion: '', appVersion: '0.0.24'),
            ],
            deviceOs: 'iOS',
            deviceOsVersion: Version.parse('14.7.1'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          true);
      // iOS端末 UpdateModelが全て不正な値 false
      expect(
          UpdateManager().needUpdate(
            updateList: [
              const UpdateModel(os: '12345', osVersion: 'aaaaa', appVersion: 'b'),
            ],
            deviceOs: 'iOS',
            deviceOsVersion: Version.parse('14.7.1'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          false);

      /*
      Android端末の場合の確認
      */

      // Android端末 UpdateModelの条件に全て一致する true
      expect(
          UpdateManager().needUpdate(
            updateList: [
              const UpdateModel(os: 'Android', osVersion: '11', appVersion: '1.0.0'),
            ],
            deviceOs: 'Android',
            deviceOsVersion: Version.parse('11'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          true);
      // Android端末 UpdateModel全て空文字のためtrue
      expect(
          UpdateManager().needUpdate(
            updateList: [
              const UpdateModel(os: '', osVersion: '', appVersion: ''),
            ],
            deviceOs: 'Android',
            deviceOsVersion: Version.parse('11'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          true);
      // Android端末 UpdateModelのosが全てiOSのためfalse
      expect(
          UpdateManager().needUpdate(
            updateList: [
              const UpdateModel(os: 'iOS', osVersion: '', appVersion: ''),
              const UpdateModel(os: 'iOS', osVersion: '11', appVersion: ''),
            ],
            deviceOs: 'Android',
            deviceOsVersion: Version.parse('11'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          false);
      // Android端末 UpdateModelのosVersionが異なるため false
      expect(
          UpdateManager().needUpdate(
            updateList: [
              const UpdateModel(os: 'Android', osVersion: '11.0.1', appVersion: ''),
              const UpdateModel(os: 'Android', osVersion: '11.1', appVersion: ''),
            ],
            deviceOs: 'Android',
            deviceOsVersion: Version.parse('11'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          false);
      // Android端末 UpdateModelのosVersionが11.0.0でも端末OS11にマッチする確認 true
      expect(
          UpdateManager().needUpdate(
            updateList: [
              const UpdateModel(os: '', osVersion: '11.0.0', appVersion: ''),
            ],
            deviceOs: 'Android',
            deviceOsVersion: Version.parse('11'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          true);
      // Android端末 UpdateModelのappVersionが端末のアプリバージョンと同じのため（未満ではないので）false（境界値テスト）
      expect(
          UpdateManager().needUpdate(
            updateList: [
              const UpdateModel(os: '', osVersion: '', appVersion: '0.0.23'),
            ],
            deviceOs: 'Android',
            deviceOsVersion: Version.parse('11'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          false);
      // Android端末 UpdateModelのappVersionが端末のアプリバージョン未満のため true（境界値テスト）
      expect(
          UpdateManager().needUpdate(
            updateList: [
              const UpdateModel(os: '', osVersion: '', appVersion: '0.0.24'),
            ],
            deviceOs: 'Android',
            deviceOsVersion: Version.parse('11'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          true);
      // Android端末 UpdateModelが全て不正な値 false
      expect(
          UpdateManager().needUpdate(
            updateList: [
              const UpdateModel(os: 'xxx', osVersion: 'a', appVersion: 'ccc'),
            ],
            deviceOs: 'Android',
            deviceOsVersion: Version.parse('11'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          false);

      /*

      タイトルとメッセージの確認
      trueの場合、UpdateModelに設定したtitleとmessage
      falseの場合、titleとmessageは空文字

       */
      /*
      iOS端末の場合の確認
      */

      // iOS端末 UpdateModelの条件に全て一致する true
      expect(
          UpdateManager().getUpdateTitleAndMessage(
            updateList: [
              const UpdateModel(
                  os: 'iOS', osVersion: '14.7.1', appVersion: '1.0.0', title: 'TestTitle', message: 'TestMessage'),
            ],
            deviceOs: 'iOS',
            deviceOsVersion: Version.parse('14.7.1'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          {'TestTitle': 'TestMessage'});
      // iOS端末 UpdateModel全て空文字のため true
      expect(
          UpdateManager().getUpdateTitleAndMessage(
            updateList: [
              const UpdateModel(os: '', osVersion: '', appVersion: '', title: 'TestTitle', message: 'TestMessage'),
            ],
            deviceOs: 'iOS',
            deviceOsVersion: Version.parse('14.7.1'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          {'TestTitle': 'TestMessage'});
      // iOS端末 UpdateModelのosが全てAndroidのため false
      expect(
          UpdateManager().getUpdateTitleAndMessage(
            updateList: [
              const UpdateModel(
                  os: 'Android', osVersion: '', appVersion: '', title: 'TestTitle', message: 'TestMessage'),
            ],
            deviceOs: 'iOS',
            deviceOsVersion: Version.parse('14.7.1'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          {'': ''});
      // iOS端末 UpdateModelのosVersionが異なるため false
      expect(
          UpdateManager().getUpdateTitleAndMessage(
            updateList: [
              const UpdateModel(
                  os: 'iOS', osVersion: '14.7.0', appVersion: '', title: 'TestTitle', message: 'TestMessage'),
              const UpdateModel(
                  os: 'iOS', osVersion: '14.7.2', appVersion: '', title: 'TestTitle2', message: 'TestMessage2'),
            ],
            deviceOs: 'iOS',
            deviceOsVersion: Version.parse('14.7.1'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          {'': ''});
      // iOS端末 UpdateModelのosVersionが整数15でも端末OS15.0.0にマッチする確認 true
      expect(
          UpdateManager().getUpdateTitleAndMessage(
            updateList: [
              const UpdateModel(os: 'iOS', osVersion: '15', appVersion: '', title: 'TestTitle', message: 'TestMessage'),
            ],
            deviceOs: 'iOS',
            deviceOsVersion: Version.parse('15.0.0'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          {'TestTitle': 'TestMessage'});
      // iOS端末 UpdateModelのappVersionが端末のアプリバージョンと同じのため（未満ではないので）false（境界値テスト）
      expect(
          UpdateManager().getUpdateTitleAndMessage(
            updateList: [
              const UpdateModel(
                  os: '', osVersion: '', appVersion: '0.0.23', title: 'TestTitle', message: 'TestMessage'),
            ],
            deviceOs: 'iOS',
            deviceOsVersion: Version.parse('14.7.1'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          {'': ''});
      // iOS端末 UpdateModelのappVersionが端末のアプリバージョン未満のためtrue（境界値テスト）
      expect(
          UpdateManager().getUpdateTitleAndMessage(
            updateList: [
              const UpdateModel(
                  os: '', osVersion: '', appVersion: '0.0.24', title: 'TestTitle', message: 'TestMessage'),
            ],
            deviceOs: 'iOS',
            deviceOsVersion: Version.parse('14.7.1'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          {'TestTitle': 'TestMessage'});
      // iOS端末 UpdateModelが全て不正な値 false
      expect(
          UpdateManager().getUpdateTitleAndMessage(
            updateList: [
              const UpdateModel(
                  os: '12345', osVersion: 'aaaaa', appVersion: 'b', title: 'TestTitle', message: 'TestMessage'),
            ],
            deviceOs: 'iOS',
            deviceOsVersion: Version.parse('14.7.1'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          {'': ''});

      /*
      Android端末の場合の確認
      */

      // Android端末 UpdateModelの条件に全て一致する true
      expect(
          UpdateManager().getUpdateTitleAndMessage(
            updateList: [
              const UpdateModel(
                  os: 'Android', osVersion: '11', appVersion: '1.0.0', title: 'TestTitle', message: 'TestMessage'),
            ],
            deviceOs: 'Android',
            deviceOsVersion: Version.parse('11'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          {'TestTitle': 'TestMessage'});
      // Android端末 UpdateModel全て空文字のためtrue
      expect(
          UpdateManager().getUpdateTitleAndMessage(
            updateList: [
              const UpdateModel(os: '', osVersion: '', appVersion: '', title: 'TestTitle', message: 'TestMessage'),
            ],
            deviceOs: 'Android',
            deviceOsVersion: Version.parse('11'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          {'TestTitle': 'TestMessage'});
      // Android端末 UpdateModelのosが全てiOSのためfalse
      expect(
          UpdateManager().getUpdateTitleAndMessage(
            updateList: [
              const UpdateModel(os: 'iOS', osVersion: '', appVersion: '', title: 'TestTitle1', message: 'TestMessage1'),
              const UpdateModel(
                  os: 'iOS', osVersion: '11', appVersion: '', title: 'TestTitle2', message: 'TestMessage2'),
            ],
            deviceOs: 'Android',
            deviceOsVersion: Version.parse('11'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          {'': ''});
      // Android端末 UpdateModelのosVersionが異なるため false
      expect(
          UpdateManager().getUpdateTitleAndMessage(
            updateList: [
              const UpdateModel(
                  os: 'Android', osVersion: '11.0.1', appVersion: '', title: 'TestTitle', message: 'TestMessage'),
              const UpdateModel(
                  os: 'Android', osVersion: '11.1', appVersion: '', title: 'TestTitle', message: 'TestMessage'),
            ],
            deviceOs: 'Android',
            deviceOsVersion: Version.parse('11'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          {'': ''});
      // Android端末 UpdateModelのosVersionが11.0.0でも端末OS11にマッチする確認 true
      expect(
          UpdateManager().getUpdateTitleAndMessage(
            updateList: [
              const UpdateModel(
                  os: '', osVersion: '11.0.0', appVersion: '', title: 'TestTitle', message: 'TestMessage'),
            ],
            deviceOs: 'Android',
            deviceOsVersion: Version.parse('11'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          {'TestTitle': 'TestMessage'});
      // Android端末 UpdateModelのappVersionが端末のアプリバージョンと同じのため（未満ではないので）false（境界値テスト）
      expect(
          UpdateManager().getUpdateTitleAndMessage(
            updateList: [
              const UpdateModel(
                  os: '', osVersion: '', appVersion: '0.0.23', title: 'TestTitle', message: 'TestMessage'),
            ],
            deviceOs: 'Android',
            deviceOsVersion: Version.parse('11'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          {'': ''});
      // Android端末 UpdateModelのappVersionが端末のアプリバージョン未満のため true（境界値テスト）
      expect(
          UpdateManager().getUpdateTitleAndMessage(
            updateList: [
              const UpdateModel(
                  os: '', osVersion: '', appVersion: '0.0.24', title: 'TestTitle', message: 'TestMessage'),
            ],
            deviceOs: 'Android',
            deviceOsVersion: Version.parse('11'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          {'TestTitle': 'TestMessage'});
      // Android端末 UpdateModelが全て不正な値 false
      expect(
          UpdateManager().getUpdateTitleAndMessage(
            updateList: [
              const UpdateModel(
                  os: 'xxx', osVersion: 'a', appVersion: 'ccc', title: 'TestTitle', message: 'TestMessage'),
            ],
            deviceOs: 'Android',
            deviceOsVersion: Version.parse('11'),
            deviceAppVersion: Version.parse('0.0.23'),
          ),
          {'': ''});
    },
  );
}
