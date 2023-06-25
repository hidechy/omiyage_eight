import 'package:flutter/foundation.dart';

import '../ui/state/product_detail_page_state.dart';
import 'cart_info_manager.dart';
import 'datetime_formatter.dart';

// 商品カセットや商品詳細の文字列を返すメソッドをまとめたクラス
class ProductStringHelper {
  ProductStringHelper._();

  // 選択している便がお届け開始と終了の期間内の場合、お届け日文字列を返す
  static String sellInDate({
    required bool visitorCartFlag,
    required bool isSellOutDisplayStart,
    required bool deemedDeliveryCartFlag,
    required bool isInDeliveryTerm,
    required DateTime deliveryPlanFromDatetime,
    required DateTime? deliveryStartDatetime,
    required DateTime? deliveryFinishDatetime,
  }) {
    // 見学、みなし便、店別商品売切商品でない場合は空文字を返す
    if (visitorCartFlag || deemedDeliveryCartFlag || !isSellOutDisplayStart || !isInDeliveryTerm) {
      return '';
    }
    final text = formatDateTimeFromToMonthDay(
      targetDatetime: deliveryPlanFromDatetime,
      fromDatetime: deliveryStartDatetime,
      toDatetime: deliveryFinishDatetime,
    );
    return text.isEmpty ? '' : '$text受け取り限り';
  }

  // 変更/削除の期日のテキスト取得
  static String productChangeDeadline({
    required bool visitorCartFlag,
    required bool deemedDeliveryCartFlag,
    required bool isAfterDaySaleProduct,
    required DateTime? enablesSaleDeliveryDatetime,
    required DateTime deliveryPlanFromDatetime,
    required DateTime? changeProductClosingDatetime,
    required bool isLimitedSaleDeliveryDate,
    bool needSingleLine = false,
  }) {
    return _productChangeDeadlineRequiredDateTimeNow(
      visitorCartFlag: visitorCartFlag,
      deemedDeliveryCartFlag: deemedDeliveryCartFlag,
      isAfterDaySaleProduct: isAfterDaySaleProduct,
      enablesSaleDeliveryDatetime: enablesSaleDeliveryDatetime,
      deliveryPlanFromDatetime: deliveryPlanFromDatetime,
      changeProductClosingDatetime: changeProductClosingDatetime,
      isLimitedSaleDeliveryDate: isLimitedSaleDeliveryDate,
      needSingleLine: needSingleLine,
    );
  }

  // テスト用に現在日時を引数として渡す
  @visibleForTesting
  static String productChangeDeadlineForTest({
    required bool visitorCartFlag,
    required bool deemedDeliveryCartFlag,
    required bool isAfterDaySaleProduct,
    required DateTime? enablesSaleDeliveryDatetime,
    required DateTime deliveryPlanFromDatetime,
    required DateTime? changeProductClosingDatetime,
    required bool isLimitedSaleDeliveryDate,
  }) {
    return _productChangeDeadlineRequiredDateTimeNow(
      visitorCartFlag: visitorCartFlag,
      deemedDeliveryCartFlag: deemedDeliveryCartFlag,
      isAfterDaySaleProduct: isAfterDaySaleProduct,
      enablesSaleDeliveryDatetime: enablesSaleDeliveryDatetime,
      deliveryPlanFromDatetime: deliveryPlanFromDatetime,
      changeProductClosingDatetime: changeProductClosingDatetime,
      isLimitedSaleDeliveryDate: isLimitedSaleDeliveryDate,
    );
  }

  static String _productChangeDeadlineRequiredDateTimeNow({
    required bool visitorCartFlag,
    required bool deemedDeliveryCartFlag,
    required bool isAfterDaySaleProduct,
    required DateTime? enablesSaleDeliveryDatetime,
    required DateTime deliveryPlanFromDatetime,
    required DateTime? changeProductClosingDatetime,
    required bool isLimitedSaleDeliveryDate,
    bool needSingleLine = false,
  }) {
    // 見学、みなし便
    // 承り配達日限定判定/N日目以降承り商品判定がfalse(表示対象の商品ではないため)
    // 判定に必要な日付情報がnull
    // 上記の場合、空文字列を返す
    if (visitorCartFlag ||
        deemedDeliveryCartFlag ||
        !isAfterDaySaleProduct ||
        isLimitedSaleDeliveryDate ||
        enablesSaleDeliveryDatetime == null ||
        changeProductClosingDatetime == null) {
      return '';
    }
    // 選択している配達日時が承り可能配達開始日時(enables_sale_delivery_datetime)以降(開始日含む)
    final isAfter = deliveryPlanFromDatetime.compareTo(enablesSaleDeliveryDatetime) != -1;
    if (isAfter) {
      if (needSingleLine) {
        return '変更/削除は${formatDateTimeMonthDayHour(changeProductClosingDatetime)}まで';
      }
      return '変更/削除は\n${formatDateTimeMonthDayHour(changeProductClosingDatetime)}まで';
    }

    // 表示条件を満たさなない場合、空文字を返す
    return '';
  }

  static String limitDeliveryDate(CartInfoState cartInfo, ProductDetailPageState productDetailPage) {
    final visitorCartFlag = cartInfo.visitorCartFlag;
    final deemedDeliveryCartFlag = cartInfo.deemedDeliveryCartFlag;
    final deliveryPlanFromDatetime = cartInfo.deliveryPlanFromDatetime;
    final deliveryFinishDatetime = productDetailPage.productDetailModel.product.deliveryFinishDatetime;
    final deliveryStartDatetime = productDetailPage.productDetailModel.product.deliveryStartDatetime;
    final isSellOutDisplayStart = productDetailPage.productDetailModel.product.isSellOutDisplayStart;
    final isInDeliveryTerm = productDetailPage.productDetailModel.product.isInDeliveryTerm;
    final sellInDate = ProductStringHelper.sellInDate(
      visitorCartFlag: visitorCartFlag,
      isSellOutDisplayStart: isSellOutDisplayStart,
      deemedDeliveryCartFlag: deemedDeliveryCartFlag,
      isInDeliveryTerm: isInDeliveryTerm,
      deliveryPlanFromDatetime: deliveryPlanFromDatetime,
      deliveryStartDatetime: deliveryStartDatetime,
      deliveryFinishDatetime: deliveryFinishDatetime,
    );
    return sellInDate;
  }

  static String getProductChangeDeadlineText(CartInfoState cartInfo, ProductDetailPageState productDetailPage) {
    final visitorCartFlag = cartInfo.visitorCartFlag;
    final deemedDeliveryCartFlag = cartInfo.deemedDeliveryCartFlag;
    final deliveryPlanFromDatetime = cartInfo.deliveryPlanFromDatetime;
    final changeProductClosingDatetime = productDetailPage.productDetailModel.product.changeProductClosingDatetime;
    final isAfterDaySaleProduct = productDetailPage.productDetailModel.product.isAfterDaySaleProduct;
    final enablesSaleDeliveryDatetime = productDetailPage.productDetailModel.product.enablesSaleDeliveryDatetime;
    final isLimitedSaleDeliveryDate = productDetailPage.productDetailModel.product.isLimitedSaleDeliveryDate;

    final productChangeDeadlineText = ProductStringHelper.productChangeDeadline(
      visitorCartFlag: visitorCartFlag,
      deemedDeliveryCartFlag: deemedDeliveryCartFlag,
      isAfterDaySaleProduct: isAfterDaySaleProduct,
      enablesSaleDeliveryDatetime: enablesSaleDeliveryDatetime,
      deliveryPlanFromDatetime: deliveryPlanFromDatetime,
      changeProductClosingDatetime: changeProductClosingDatetime,
      isLimitedSaleDeliveryDate: isLimitedSaleDeliveryDate,
      needSingleLine: true,
    );
    return productChangeDeadlineText;
  }

  /// キャンセル可否文言取得
  /// キャンセル可否文言表示が不要である場合、空文字列を返す
  static String getCancellabilityWording(int? deliveryLeadTimeDays, bool isOrderOnlyProduct) {
    return isOrderOnlyProduct && (deliveryLeadTimeDays ?? 0) >= 1
        ? 'キャンセル不可商品のため、お届け日より$deliveryLeadTimeDays日前以降はキャンセル不可となりますのでご了承ください'
        : '';
  }

  /// 承り日文言
  /// 受け取り日が 〜まで or 〜以降
  /// 売り切り日文言
  /// 受け取り日MM/DD(E)～MM/DD(E)で承ります
  static String limitedSaleDeliveryInfo(
      String untilLimitedDeliveryDate,
      String afterLimitedDeliveryDate,
      String sellOutDate,
      bool isProductDetailComponent,
      ) {
    if (untilLimitedDeliveryDate.isNotEmpty) {
      return isProductDetailComponent
          ? '受け取り日$untilLimitedDeliveryDateまで承ります'
          : '受け取り日\n$untilLimitedDeliveryDateまで\n承ります';
    }
    if (afterLimitedDeliveryDate.isNotEmpty) {
      return isProductDetailComponent
          ? '受け取り日$afterLimitedDeliveryDate以降で承ります'
          : '受け取り日\n$afterLimitedDeliveryDate以降\nで承ります';
    }
    if (sellOutDate.isNotEmpty) {
      return isProductDetailComponent ? '受け取り日$sellOutDateで承ります' : '受け取り日\n$sellOutDate\nで承ります';
    }
    return '';
  }
}
