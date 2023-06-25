import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:netsuper/data/api/model/product_model.dart';

void main() {
  //////////
  test('承り可能_当日翌日のみ承り商品', () async {
    await initializeDateFormatting('ja');

    // 当翌商品ではない場合
    expect(
      ProductModel(
        epochNetsuperNextDatetime: DateTime.parse('2022-01-10T17:00:00+09:00').millisecondsSinceEpoch,
        isTomorrowOnlySaleProduct: false,
        isLimitedSaleDeliveryDate: false,
      ).untilLimitedDeliveryDate(
        visitorCartFlag: false,
        deemedDeliveryCartFlag: false,
      ),
      '',
    );
    // 当翌商品で選択している、承り配達日限定あり判定がtrue
    expect(
      ProductModel(
        epochNetsuperNextDatetime: DateTime.parse('2022-01-10T17:00:00+09:00').millisecondsSinceEpoch,
        isTomorrowOnlySaleProduct: true,
        isLimitedSaleDeliveryDate: true,
      ).untilLimitedDeliveryDate(
        visitorCartFlag: false,
        deemedDeliveryCartFlag: false,
      ),
      '01/10(月)',
    );
    // 当翌商品で選択している、承り配達日限定あり判定がfalse
    expect(
      ProductModel(
        epochNetsuperNextDatetime: DateTime.parse('2022-01-10T17:00:00+09:00').millisecondsSinceEpoch,
        isTomorrowOnlySaleProduct: true,
        isLimitedSaleDeliveryDate: false,
      ).untilLimitedDeliveryDate(
        visitorCartFlag: false,
        deemedDeliveryCartFlag: false,
      ),
      '',
    );

    // 当翌商品で選択している、見学カートなら日付を返す
    expect(
      ProductModel(
        epochNetsuperNextDatetime: DateTime.parse('2022-01-10T17:00:00+09:00').millisecondsSinceEpoch,
        isTomorrowOnlySaleProduct: true,
        isLimitedSaleDeliveryDate: true,
      ).untilLimitedDeliveryDate(
        visitorCartFlag: true,
        deemedDeliveryCartFlag: false,
      ),
      '01/10(月)',
    );

    // 当翌商品で選択している、みなしカートなら日付を返す
    expect(
      ProductModel(
        epochNetsuperNextDatetime: DateTime.parse('2022-01-10T17:00:00+09:00').millisecondsSinceEpoch,
        isTomorrowOnlySaleProduct: true,
        isLimitedSaleDeliveryDate: true,
      ).untilLimitedDeliveryDate(
        visitorCartFlag: false,
        deemedDeliveryCartFlag: true,
      ),
      '01/10(月)',
    );
  });

  //////////////////////////////////////////////////
  test('承り可能_N日目以降承り商品', () async {
    await initializeDateFormatting('ja');

    // N日目以降承り商品ではない場合
    expect(
      ProductModel(
        epochEnablesSaleDeliveryDatetime: DateTime.parse('2022-01-10T17:00:00+09:00').millisecondsSinceEpoch,
        isAfterDaySaleProduct: false,
        isLimitedSaleDeliveryDate: false,
      ).afterLimitedDeliveryDate(
        visitorCartFlag: false,
        deemedDeliveryCartFlag: false,
      ),
      '',
    );
    // N日目以降承り商品は選択している、承り配達日限定あり判定がtrue
    expect(
      ProductModel(
        epochEnablesSaleDeliveryDatetime: DateTime.parse('2022-01-10T17:00:00+09:00').millisecondsSinceEpoch,
        isAfterDaySaleProduct: true,
        isLimitedSaleDeliveryDate: true,
      ).afterLimitedDeliveryDate(
        visitorCartFlag: false,
        deemedDeliveryCartFlag: false,
      ),
      '01/10(月)',
    );
    // N日目以降承り商品は選択している、承り配達日限定あり判定がfalse
    expect(
      ProductModel(
        epochEnablesSaleDeliveryDatetime: DateTime.parse('2022-01-10T17:00:00+09:00').millisecondsSinceEpoch,
        isAfterDaySaleProduct: true,
        isLimitedSaleDeliveryDate: false,
      ).afterLimitedDeliveryDate(
        visitorCartFlag: false,
        deemedDeliveryCartFlag: false,
      ),
      '',
    );
    // N日目以降承り商品は選択している、見学カートなら日付を返す
    expect(
      ProductModel(
        epochEnablesSaleDeliveryDatetime: DateTime.parse('2022-01-10T17:00:00+09:00').millisecondsSinceEpoch,
        isAfterDaySaleProduct: true,
      ).afterLimitedDeliveryDate(
        visitorCartFlag: true,
        deemedDeliveryCartFlag: false,
      ),
      '01/10(月)',
    );
    // N日目以降承り商品は選択している、みなしカートなら日付を返す
    expect(
      ProductModel(
        epochEnablesSaleDeliveryDatetime: DateTime.parse('2022-01-10T17:00:00+09:00').millisecondsSinceEpoch,
        isAfterDaySaleProduct: true,
      ).afterLimitedDeliveryDate(
        visitorCartFlag: false,
        deemedDeliveryCartFlag: true,
      ),
      '01/10(月)',
    );
  });

  //////////////////////////////////////////////////
  test('売り切り商品', () async {
    await initializeDateFormatting('ja');

    // お届け日が設定されていない場合は空文字列
    expect(
      const ProductModel(
        isSellOutDisplayStart: true,
      ).sellOutDate(
        visitorCartFlag: true,
        deemedDeliveryCartFlag: false,
      ),
      '',
    );
    expect(
      const ProductModel(
        isSellOutDisplayStart: true,
      ).sellOutDate(
        visitorCartFlag: false,
        deemedDeliveryCartFlag: true,
      ),
      '',
    );
    expect(
      const ProductModel(
        isSellOutDisplayStart: true,
      ).sellOutDate(
        visitorCartFlag: false,
        deemedDeliveryCartFlag: false,
      ),
      '',
    );
    expect(
      const ProductModel(
        isSellOutDisplayStart: true,
        isInDeliveryTerm: true,
      ).sellOutDate(
        visitorCartFlag: false,
        deemedDeliveryCartFlag: false,
      ),
      '',
    );
    expect(
      const ProductModel(
        isSellOutDisplayStart: true,
        isInDeliveryTerm: false,
      ).sellOutDate(
        visitorCartFlag: false,
        deemedDeliveryCartFlag: false,
      ),
      '',
    );
    expect(
      ProductModel(
        epochDeliveryStartDatetime: DateTime.parse('2022-01-09T12:00:00+09:00').millisecondsSinceEpoch,
        epochDeliveryFinishDatetime: DateTime.parse('2022-01-12T12:00:00+09:00').millisecondsSinceEpoch,
        isSellOutDisplayStart: true,
        isInDeliveryTerm: true,
      ).sellOutDate(
        visitorCartFlag: false,
        deemedDeliveryCartFlag: false,
      ),
      '',
    );
    // お届け期間内判定がお届け期間外場合、日付文字列を返す
    expect(
      ProductModel(
        epochDeliveryStartDatetime: DateTime.parse('2022-01-09T12:00:00+09:00').millisecondsSinceEpoch,
        epochDeliveryFinishDatetime: DateTime.parse('2022-01-12T12:00:00+09:00').millisecondsSinceEpoch,
        isSellOutDisplayStart: true,
        isInDeliveryTerm: false,
      ).sellOutDate(
        visitorCartFlag: false,
        deemedDeliveryCartFlag: false,
      ),
      '01/09(日)～01/12(水)',
    );
    // 見学/みなしになる場合、日付文字列を返す
    expect(
      ProductModel(
        epochDeliveryStartDatetime: DateTime.parse('2022-01-09T12:00:00+09:00').millisecondsSinceEpoch,
        epochDeliveryFinishDatetime: DateTime.parse('2022-01-12T12:00:00+09:00').millisecondsSinceEpoch,
        isSellOutDisplayStart: true,
      ).sellOutDate(
        visitorCartFlag: true,
        deemedDeliveryCartFlag: false,
      ),
      '01/09(日)～01/12(水)',
    );
    expect(
      ProductModel(
        epochDeliveryStartDatetime: DateTime.parse('2022-01-09T12:00:00+09:00').millisecondsSinceEpoch,
        epochDeliveryFinishDatetime: DateTime.parse('2022-01-12T12:00:00+09:00').millisecondsSinceEpoch,
        isSellOutDisplayStart: true,
      ).sellOutDate(
        visitorCartFlag: false,
        deemedDeliveryCartFlag: true,
      ),
      '01/09(日)～01/12(水)',
    );
    expect(
      ProductModel(
        epochDeliveryStartDatetime: DateTime.parse('2022-01-09T12:00:00+09:00').millisecondsSinceEpoch,
        epochDeliveryFinishDatetime: DateTime.parse('2022-01-09T12:00:00+09:00').millisecondsSinceEpoch,
        isSellOutDisplayStart: true,
        isInDeliveryTerm: true,
      ).sellOutDate(
        visitorCartFlag: false,
        deemedDeliveryCartFlag: false,
      ),
      '',
    );
    // お届け期間内判定がお届け期間外場合、日付文字列を返す
    expect(
      ProductModel(
        epochDeliveryStartDatetime: DateTime.parse('2022-01-09T12:00:00+09:00').millisecondsSinceEpoch,
        epochDeliveryFinishDatetime: DateTime.parse('2022-01-09T12:00:00+09:00').millisecondsSinceEpoch,
        isSellOutDisplayStart: true,
        isInDeliveryTerm: false,
      ).sellOutDate(
        visitorCartFlag: false,
        deemedDeliveryCartFlag: false,
      ),
      '01/09(日)',
    );
    // 見学/みなしになる場合、日付文字列を返す
    expect(
      ProductModel(
        epochDeliveryStartDatetime: DateTime.parse('2022-01-09T12:00:00+09:00').millisecondsSinceEpoch,
        epochDeliveryFinishDatetime: DateTime.parse('2022-01-09T12:00:00+09:00').millisecondsSinceEpoch,
        isSellOutDisplayStart: true,
      ).sellOutDate(
        visitorCartFlag: true,
        deemedDeliveryCartFlag: false,
      ),
      '01/09(日)',
    );
    expect(
      ProductModel(
        epochDeliveryStartDatetime: DateTime.parse('2022-01-09T12:00:00+09:00').millisecondsSinceEpoch,
        epochDeliveryFinishDatetime: DateTime.parse('2022-01-09T12:00:00+09:00').millisecondsSinceEpoch,
        isSellOutDisplayStart: true,
      ).sellOutDate(
        visitorCartFlag: false,
        deemedDeliveryCartFlag: true,
      ),
      '01/09(日)',
    );
  });
}
