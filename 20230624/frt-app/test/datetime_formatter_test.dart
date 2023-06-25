import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:netsuper/util/datetime_formatter.dart';

void main() {
  test(
    "指定された日付(String)がfrom(String)〜to(String)の範囲内であれば'MM月dd日(E)〜MM月dd日(E)'の形式で返すテスト",
    () async {
      await initializeDateFormatting('ja');
      final timeZone = DateTime.now().timeZoneName == 'JST' ? '9' : '0';
      expect(
          formatFromToMonthDay(
            targetDatetime: '2022-07-01T00:00:00+0$timeZone:00',
            fromDatetime: '2022-07-02T00:00:00+0$timeZone:00',
            toDatetime: '2022-07-10T00:00:00+0$timeZone:00',
          ),
          '');
      expect(
          formatFromToMonthDay(
            targetDatetime: '2022-07-05T00:00:00+0$timeZone:00',
            fromDatetime: '2022-07-05T00:00:00+0$timeZone:00',
            toDatetime: '2022-07-05T00:00:00+0$timeZone:00',
          ),
          '07/05(火)');
      expect(
          formatFromToMonthDay(
            targetDatetime: '2022-07-04T00:00:00+0$timeZone:00',
            fromDatetime: '2022-07-05T00:00:00+0$timeZone:00',
            toDatetime: '2022-07-05T00:00:00+0$timeZone:00',
          ),
          '');
      expect(
          formatFromToMonthDay(
            targetDatetime: '2022-07-06T00:00:00+0$timeZone:00',
            fromDatetime: '2022-07-05T00:00:00+0$timeZone:00',
            toDatetime: '2022-07-05T00:00:00+0$timeZone:00',
          ),
          '');
      expect(
          formatFromToMonthDay(
            targetDatetime: '2022-07-02T00:00:00+0$timeZone:00',
            fromDatetime: '2022-07-02T00:00:00+0$timeZone:00',
            toDatetime: '2022-07-10T00:00:00+0$timeZone:00',
          ),
          '07/02(土)～07/10(日)');
      // HH:MM:SSは関係ないことの確認
      expect(
          formatFromToMonthDay(
            targetDatetime: '2022-07-02T00:00:00+0$timeZone:00',
            fromDatetime: '2022-07-02T10:00:00+0$timeZone:00',
            toDatetime: '2022-07-10T00:00:00+0$timeZone:00',
          ),
          '07/02(土)～07/10(日)');
      // HH:MM:SSは関係ないことの確認
      expect(
          formatFromToMonthDay(
            targetDatetime: '2022-07-10T23:59:00+0$timeZone:00',
            fromDatetime: '2022-07-02T10:00:00+0$timeZone:00',
            toDatetime: '2022-07-10T00:00:00+0$timeZone:00',
          ),
          '07/02(土)～07/10(日)');
      expect(
          formatFromToMonthDay(
            targetDatetime: '2022-07-05T00:00:00+0$timeZone:00',
            fromDatetime: '2022-07-02T00:00:00+0$timeZone:00',
            toDatetime: '2022-07-10T00:00:00+0$timeZone:00',
          ),
          '07/02(土)～07/10(日)');
      expect(
          formatFromToMonthDay(
            targetDatetime: '2022-07-10T00:00:00+0$timeZone:00',
            fromDatetime: '2022-07-02T00:00:00+0$timeZone:00',
            toDatetime: '2022-07-10T00:00:00+0$timeZone:00',
          ),
          '07/02(土)～07/10(日)');
      expect(
          formatFromToMonthDay(
            targetDatetime: '2022-07-11T00:00:00+0$timeZone:00',
            fromDatetime: '2022-07-02T00:00:00+0$timeZone:00',
            toDatetime: '2022-07-10T00:00:00+0$timeZone:00',
          ),
          '');
    },
  );
}
