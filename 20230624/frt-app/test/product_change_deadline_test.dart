import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:netsuper/util/product_string_helper.dart';

void main() {
  test(
    '変更/削除の期日のテキスト決定ロジックのテスト',
    () async {
      await initializeDateFormatting('ja');
      final timeZone = DateTime.now().timeZoneName == 'JST' ? '9' : '0';
      // パターン1
      // ※表示条件の一つ「選択している配達日時が承り可能配達開始日時(enables_sale_delivery_datetime)以降（開始日含む）」の開始日含むの確認
      expect(
          ProductStringHelper.productChangeDeadlineForTest(
            visitorCartFlag: false,
            deemedDeliveryCartFlag: false,
            isAfterDaySaleProduct: true,
            enablesSaleDeliveryDatetime: DateTime.tryParse('2022-03-21T00:00:00+0$timeZone:00'),
            deliveryPlanFromDatetime: DateTime.tryParse('2022-03-21T13:54:23+0$timeZone:00') ?? DateTime.now(),
            changeProductClosingDatetime: DateTime.tryParse('2022-03-21T13:54:23+0$timeZone:00'),
            isLimitedSaleDeliveryDate: false,
          ),
          '変更/削除は\n03/21(月)13時まで');
      // パターン2
      // 承り可能配達開始日時は3/21、選択中の配達日 3/21とした場合
      expect(
          ProductStringHelper.productChangeDeadlineForTest(
            visitorCartFlag: false,
            deemedDeliveryCartFlag: false,
            isAfterDaySaleProduct: true,
            enablesSaleDeliveryDatetime: DateTime.tryParse('2022-03-21T00:00:00+0$timeZone:00'),
            deliveryPlanFromDatetime: DateTime.tryParse('2022-03-21T13:54:23+0$timeZone:00') ?? DateTime.now(),
            changeProductClosingDatetime: DateTime.tryParse('2022-03-21T11:54:23+0$timeZone:00'),
            isLimitedSaleDeliveryDate: false,
          ),
          '変更/削除は\n03/21(月)11時まで');
      // パターン3
      // 承り可能配達開始日時は3/21、選択中の配達日 3/22とした場合
      expect(
          ProductStringHelper.productChangeDeadlineForTest(
            visitorCartFlag: false,
            deemedDeliveryCartFlag: false,
            isAfterDaySaleProduct: true,
            enablesSaleDeliveryDatetime: DateTime.tryParse('2022-03-21T00:00:00+0$timeZone:00'),
            deliveryPlanFromDatetime: DateTime.tryParse('2022-03-22T13:54:23+0$timeZone:00') ?? DateTime.now(),
            changeProductClosingDatetime: DateTime.tryParse('2022-03-21T13:54:23+0$timeZone:00'),
            isLimitedSaleDeliveryDate: false,
          ),
          '変更/削除は\n03/21(月)13時まで');
      // パターン4
      // isAfterDaySaleProductがfalseなので、空文字
      expect(
          ProductStringHelper.productChangeDeadlineForTest(
            visitorCartFlag: false,
            deemedDeliveryCartFlag: false,
            isAfterDaySaleProduct: false,
            enablesSaleDeliveryDatetime: DateTime.tryParse('2022-03-21T00:10:00+0$timeZone:00'),
            deliveryPlanFromDatetime: DateTime.tryParse('2022-03-21T13:54:23+0$timeZone:00') ?? DateTime.now(),
            changeProductClosingDatetime: DateTime.tryParse('2022-03-21T13:54:23+0$timeZone:00'),
            isLimitedSaleDeliveryDate: false,
          ),
          '');
      // パターン5
      // 選択している配達日時が承り可能配達開始日時(enables_sale_delivery_datetime)以降でないため、空文字
      expect(
          ProductStringHelper.productChangeDeadlineForTest(
            visitorCartFlag: false,
            deemedDeliveryCartFlag: false,
            isAfterDaySaleProduct: true,
            enablesSaleDeliveryDatetime: DateTime.tryParse('2022-03-21T00:00:00+0$timeZone:00'),
            deliveryPlanFromDatetime: DateTime.tryParse('2022-03-20T00:00:00+0$timeZone:00') ?? DateTime.now(),
            changeProductClosingDatetime: DateTime.tryParse('2022-03-21T13:54:23+0$timeZone:00'),
            isLimitedSaleDeliveryDate: false,
          ),
          '');
      // パターン6
      // enablesSaleDeliveryDatetimeがnullのため、空文字
      expect(
          ProductStringHelper.productChangeDeadlineForTest(
            visitorCartFlag: false,
            deemedDeliveryCartFlag: false,
            isAfterDaySaleProduct: true,
            enablesSaleDeliveryDatetime: null,
            deliveryPlanFromDatetime: DateTime.tryParse('2022-03-20T00:00:00+0$timeZone:00') ?? DateTime.now(),
            changeProductClosingDatetime: DateTime.tryParse('2022-03-21T13:54:23+0$timeZone:00'),
            isLimitedSaleDeliveryDate: false,
          ),
          '');
      // パターン7
      // changeProductClosingDatetimeがnullのため、空文字
      expect(
          ProductStringHelper.productChangeDeadlineForTest(
            visitorCartFlag: false,
            deemedDeliveryCartFlag: false,
            isAfterDaySaleProduct: true,
            enablesSaleDeliveryDatetime: DateTime.tryParse('2022-03-21T00:00:00+0$timeZone:00'),
            deliveryPlanFromDatetime: DateTime.tryParse('2022-03-20T00:00:00+0$timeZone:00') ?? DateTime.now(),
            changeProductClosingDatetime: null,
            isLimitedSaleDeliveryDate: false,
          ),
          '');
      // パターン8
      // 見学カートのため、空文字
      expect(
          ProductStringHelper.productChangeDeadlineForTest(
            visitorCartFlag: true,
            deemedDeliveryCartFlag: false,
            isAfterDaySaleProduct: true,
            enablesSaleDeliveryDatetime: DateTime.tryParse('2022-03-21T00:00:00+0$timeZone:00'),
            deliveryPlanFromDatetime: DateTime.tryParse('2022-03-21T13:54:23+0$timeZone:00') ?? DateTime.now(),
            changeProductClosingDatetime: DateTime.tryParse('2022-03-21T13:54:23+0$timeZone:00'),
            isLimitedSaleDeliveryDate: false,
          ),
          '');
      // パターン9
      // みなし便カートのため、空文字
      expect(
          ProductStringHelper.productChangeDeadlineForTest(
            visitorCartFlag: false,
            deemedDeliveryCartFlag: true,
            isAfterDaySaleProduct: true,
            enablesSaleDeliveryDatetime: DateTime.tryParse('2022-03-21T00:00:00+0$timeZone:00'),
            deliveryPlanFromDatetime: DateTime.tryParse('2022-03-21T13:54:23+0$timeZone:00') ?? DateTime.now(),
            changeProductClosingDatetime: DateTime.tryParse('2022-03-21T13:54:23+0$timeZone:00'),
            isLimitedSaleDeliveryDate: false,
          ),
          '');
      // パターン10
      // 承り配達日限定判定がtrueなので空文字列
      expect(
          ProductStringHelper.productChangeDeadlineForTest(
            visitorCartFlag: false,
            deemedDeliveryCartFlag: false,
            isAfterDaySaleProduct: true,
            enablesSaleDeliveryDatetime: DateTime.tryParse('2022-03-21T00:00:00+0$timeZone:00'),
            deliveryPlanFromDatetime: DateTime.tryParse('2022-03-21T13:54:23+0$timeZone:00') ?? DateTime.now(),
            changeProductClosingDatetime: DateTime.tryParse('2022-03-21T13:54:23+0$timeZone:00'),
            isLimitedSaleDeliveryDate: true,
          ),
          '');
    },
  );
}
