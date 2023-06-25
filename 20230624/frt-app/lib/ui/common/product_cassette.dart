import 'package:flutter/material.dart';

import 'package:collection/collection.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../data/api/model/card_customer_discount_model.dart';
import '../../data/api/model/market_time_from_to_model.dart';
import '../../data/api/model/product_model.dart';
import '../../gen/assets.gen.dart';
import '../../util/analytics_manager.dart';
import '../../util/cart_info_manager.dart';
import '../../util/product_string_helper.dart';
import '../../util/text_formatter.dart';
import '../page/product_detail/product_detail_distribute_page.dart';
import '../state/shop_info_state.dart';
import '../view_model/product_cassette_view_model.dart';
import 'app_cached_network_image.dart';
import 'app_colors.dart';
import 'app_image_not_found.dart';
import 'app_media_query.dart';
import 'card_image.dart';
import 'cart_button.dart';
import 'limited_sale_delivery_info_text.dart';
import 'product_cassette_cart_button.dart';
import 'product_cassette_notification.dart';
import 'product_image_label.dart';

class ProductCassette extends StatelessWidget {
  const ProductCassette({
    required this.productModel,
    required this.cartButtonKey,
    Key? key,
  }) : super(key: key);

  final ProductModel productModel;
  final GlobalKey<CartButtonState> cartButtonKey;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: productModel.thumbnailUrl),
        ProxyProvider<CartInfoManager, ProductCassetteViewModel>(
          update: (_, manager, __) => ProductCassetteViewModel(manager, cartButtonKey),
        ),
      ],
      builder: (context, _) {
        final visitorCartFlag = context.select((CartInfoState state) => state.visitorCartFlag);
        final deemedDeliveryCartFlag = context.select((CartInfoState state) => state.deemedDeliveryCartFlag);
        final untilLimitedDeliveryDate = productModel.untilLimitedDeliveryDate(
          visitorCartFlag: visitorCartFlag,
          deemedDeliveryCartFlag: deemedDeliveryCartFlag,
        );
        final afterLimitedDeliveryDate = productModel.afterLimitedDeliveryDate(
          visitorCartFlag: visitorCartFlag,
          deemedDeliveryCartFlag: deemedDeliveryCartFlag,
        );
        final sellOutDate = productModel.sellOutDate(
          visitorCartFlag: visitorCartFlag,
          deemedDeliveryCartFlag: deemedDeliveryCartFlag,
        );
        final visibleLimitedSaleDeliveryInfo =
            sellOutDate.isNotEmpty || afterLimitedDeliveryDate.isNotEmpty || untilLimitedDeliveryDate.isNotEmpty;

        return GestureDetector(
          onTap: () {
            if (productModel.maxBuyPossibleNumber != 0) {
              // 商品カセットが選択された際にProductSelectNotificationを通知する
              ProductSelectNotification().dispatch(context);
              Navigator.of(context).push(
                ProductDetailDistributePage.route(
                  productId: productModel.productId,
                  sendAnalytics: true,
                  advertisingId: context.read<AnalyticsParam?>()?.advertisingId,
                  recommendType: context.read<AnalyticsParam?>()?.recommendType,
                ),
              );
            }
          },
          child: Container(
            color: AppColors.white,
            child: Column(
              children: [
                Stack(
                  children: [
                    const _Image(),
                    _ProductImageTopLabel(
                      imageUrl: productModel.topLabel.imageUrl,
                    ),
                    _ProductImageBottomArea(
                      productModel: productModel,
                      imageUrl: productModel.bottomLabel.imageUrl,
                    ),
                    _ImageWhiteCover(
                      maxBuyPossibleNumber: productModel.maxBuyPossibleNumber,
                      visibleLimitedSaleDeliveryInfo: visibleLimitedSaleDeliveryInfo,
                    ),
                    LimitedSaleDeliveryInfoText(
                      visibleLimitedSaleDeliveryInfo: visibleLimitedSaleDeliveryInfo,
                      untilLimitedDeliveryDate: untilLimitedDeliveryDate,
                      afterLimitedDeliveryDate: afterLimitedDeliveryDate,
                      sellOutDate: sellOutDate,
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Column(
                      children: [
                        _DateTimeInfoLabel(
                          deliveryStartDatetime: productModel.deliveryStartDatetime,
                          deliveryFinishDatetime: productModel.deliveryFinishDatetime,
                          advertisingTerm: productModel.advertisingTerm,
                          marketTimes: productModel.marketTimes,
                          changeProductClosingDatetime: productModel.changeProductClosingDatetime,
                          enablesSaleDeliveryDatetime: productModel.enablesSaleDeliveryDatetime,
                          isAfterDaySaleProduct: productModel.isAfterDaySaleProduct,
                          netsuperNextDatetime: productModel.netsuperNextDatetime,
                          notQuantityChangedAndDeleted: ProductStringHelper.getCancellabilityWording(
                              productModel.deliveryLeadTimeDays, productModel.isOrderOnlyProduct),
                          stockQuantity: productModel.stockQuantity != null ? '残り${productModel.stockQuantity}点' : '',
                          isSellOutDisplayStart: productModel.isSellOutDisplayStart,
                          isMarketDeliveryLimitedProduct: productModel.isMarketDeliveryLimitedProduct,
                          isLimitedSaleDeliveryDate: productModel.isLimitedSaleDeliveryDate,
                          isInDeliveryTerm: productModel.isInDeliveryTerm,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            children: [
                              _ProducingArea(productModel.producingArea),
                              const SizedBox(height: 4),
                              _Name(productModel.productName),
                              const SizedBox(height: 2),
                              ProductImageLabel(imageUrl: productModel.liquorLabel.imageUrl),
                            ],
                          ),
                        ),
                        Expanded(child: Container()),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                          child: Column(
                            children: [
                              _NanacoPoint(productModel.nanacoPointUnitPoint),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: _BasePrice(
                                  basePrice: productModel.basePrice,
                                  sellingOffBasePrice: productModel.productDiscount!.sellingOffBasePrice,
                                  isProductNumber: productModel.isProductNumber,
                                  sellingOffCode: productModel.productDiscount?.sellingOffCode,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: _Price(
                                  price: productModel.price,
                                  sellingOffPrice: productModel.productDiscount!.sellingOffPrice,
                                  isProductNumber: productModel.isProductNumber,
                                  isTaxExemptProduct: productModel.isTaxExemptProduct,
                                  sellingOffCode: productModel.productDiscount?.sellingOffCode,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: _LimitedNumberText(productModel.limitedNumber),
                              ),
                              _DisplayPriceNote(
                                visible: !productModel.isProductNumber &&
                                    (productModel.isDiscountedPrice ||
                                        productModel.isSumDiscount ||
                                        productModel.isPeriodDiscount ||
                                        productModel.previousValue.isNotEmpty),
                                note: '※表示価格は割引後の販売価格です',
                              ),
                              _DisplayPriceNote(
                                visible: productModel.isDiscountExclusionProduct && !productModel.isProductNumber,
                                note: '※こちらの商品は割引対象外です',
                              ),
                              _DisplayPriceNote(
                                visible: productModel.isNsPrice && !productModel.isAdvertisingProduct,
                                note: '※表示価格は販売価格です',
                              ),
                              _DisplayPriceNote(
                                visible: productModel.productDiscount?.sellingOffCode.isNotEmpty ?? false,
                                note: '※元値は本日の販売価格です',
                              ),
                              _CardMemberDiscountInfo(
                                productModel.isProductNumber,
                                productModel.cardMemberDiscounts.firstOrNull,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: ProductCassetteCartButton(
                    productModel,
                    imageUrl: context.watch<String>(),
                    visibleLimitedSaleDeliveryInfo: visibleLimitedSaleDeliveryInfo,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = context.watch<String>();
    return Center(
      child: SizedBox(
        height: AppMediaQuery.of(context).widthRate * 114,
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(4.0)),
          child: AppCachedNetworkImage(
            key: ValueKey(imageUrl),
            imageUrl: imageUrl,
            errorBuilder: (_, __, ___) => const AppImageNotFound(),
          ),
        ),
      ),
    );
  }
}

class _ImageWhiteCover extends StatelessWidget {
  const _ImageWhiteCover({
    Key? key,
    required this.maxBuyPossibleNumber,
    required this.visibleLimitedSaleDeliveryInfo,
  }) : super(key: key);

  final int maxBuyPossibleNumber;
  final bool visibleLimitedSaleDeliveryInfo;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: maxBuyPossibleNumber == 0 || visibleLimitedSaleDeliveryInfo,
      child: Positioned.fill(
        child: Container(
          color: AppColors.whiteAlpha70,
        ),
      ),
    );
  }
}

class _ProducingArea extends StatelessWidget {
  const _ProducingArea(
    this.producingArea, {
    Key? key,
  }) : super(key: key);

  final String producingArea;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: producingArea.isNotEmpty,
      child: Container(
        margin: const EdgeInsets.only(top: 4),
        alignment: Alignment.centerLeft,
        child: Text(
          producingArea,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w300,
            color: AppColors.gray1,
            height: 15 / 11,
          ),
        ),
      ),
    );
  }
}

class _Name extends StatelessWidget {
  const _Name(
    this.name, {
    Key? key,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        color: AppColors.black2,
        fontSize: 12,
        fontWeight: FontWeight.w300,
        height: 16 / 12,
      ),
      maxLines: 2,
    );
  }
}

class _DateTimeInfoLabel extends StatelessWidget {
  const _DateTimeInfoLabel({
    Key? key,
    required this.deliveryStartDatetime,
    required this.deliveryFinishDatetime,
    required this.advertisingTerm,
    required this.marketTimes,
    required this.changeProductClosingDatetime,
    required this.enablesSaleDeliveryDatetime,
    required this.isAfterDaySaleProduct,
    required this.netsuperNextDatetime,
    required this.notQuantityChangedAndDeleted,
    required this.stockQuantity,
    required this.isSellOutDisplayStart,
    required this.isMarketDeliveryLimitedProduct,
    required this.isLimitedSaleDeliveryDate,
    required this.isInDeliveryTerm,
  }) : super(key: key);

  /// お届け開始日
  final DateTime? deliveryStartDatetime;

  /// お届け終了日
  final DateTime? deliveryFinishDatetime;

  /// 広告掲載期間
  final String advertisingTerm;

  /// 市商品時間帯リスト
  final List<MarketTimeFromToModel> marketTimes;

  /// 商品変更締め日時
  final DateTime? changeProductClosingDatetime;

  /// 承り可能配達開始日時
  final DateTime? enablesSaleDeliveryDatetime;

  /// N日目以降承り商品判定
  final bool isAfterDaySaleProduct;

  /// ネットスーパー翌日日時
  final DateTime netsuperNextDatetime;

  /// キャンセル可否文言
  final String notQuantityChangedAndDeleted;

  /// 在庫数
  final String stockQuantity;

  /// 売り切り商品表示判定
  final bool isSellOutDisplayStart;

  /// 配送便限定の市商品判定
  final bool isMarketDeliveryLimitedProduct;

  /// 承り配達日限定判定
  final bool isLimitedSaleDeliveryDate;

  /// お届け期間内判定
  final bool isInDeliveryTerm;

  @override
  Widget build(BuildContext context) {
    const advertisingTermKey = 'advertisingTerm';
    const limitDeliveryDateKey = 'limitDeliveryDate';
    const marketTimeKey = 'marketTime';
    const productChangeDeadlineKey = 'productChangeDeadline';
    const stockQuantityKey = 'stockQuantity';
    const notQuantityChangedAndDeletedKey = 'notQuantityChangedAndDeleted';
    final visitorCartFlag = context.select((CartInfoState state) => state.visitorCartFlag);
    final deemedDeliveryCartFlag = context.select((CartInfoState state) => state.deemedDeliveryCartFlag);
    final deliveryPlanFromDatetime = context.select((CartInfoState state) => state.deliveryPlanFromDatetime);
    final limitDeliveryDate = ProductStringHelper.sellInDate(
      isSellOutDisplayStart: isSellOutDisplayStart,
      visitorCartFlag: visitorCartFlag,
      deemedDeliveryCartFlag: deemedDeliveryCartFlag,
      isInDeliveryTerm: isInDeliveryTerm,
      deliveryPlanFromDatetime: deliveryPlanFromDatetime,
      deliveryStartDatetime: deliveryStartDatetime,
      deliveryFinishDatetime: deliveryFinishDatetime,
    );
    final productChangeDeadline = ProductStringHelper.productChangeDeadline(
      visitorCartFlag: visitorCartFlag,
      deemedDeliveryCartFlag: deemedDeliveryCartFlag,
      isAfterDaySaleProduct: isAfterDaySaleProduct,
      enablesSaleDeliveryDatetime: enablesSaleDeliveryDatetime,
      deliveryPlanFromDatetime: deliveryPlanFromDatetime,
      changeProductClosingDatetime: changeProductClosingDatetime,
      isLimitedSaleDeliveryDate: isLimitedSaleDeliveryDate,
    );
    final dateTimeInfo = <String, String>{
      advertisingTermKey: isMarketDeliveryLimitedProduct ? advertisingTerm : '',
      limitDeliveryDateKey: limitDeliveryDate,
      marketTimeKey: marketTime(isMarketDeliveryLimitedProduct),
      productChangeDeadlineKey: productChangeDeadline,
      stockQuantityKey: stockQuantity,
      notQuantityChangedAndDeletedKey: notQuantityChangedAndDeleted,
    }..removeWhere((_, value) => value.isEmpty);

    return Visibility(
      visible: dateTimeInfo.isNotEmpty,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.background2,
        ),
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            for (final entry in dateTimeInfo.entries)
              Text(
                entry.value,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w300,
                  color: entry.key == notQuantityChangedAndDeletedKey ? AppColors.emphasis1 : AppColors.black2,
                  height: 15 / 11,
                ),
                textAlign: TextAlign.center,
              )
          ],
        ),
      ),
    );
  }

  String marketTime(bool isMarketDeliveryLimitedProduct) {
    if (marketTimes.isEmpty || !isMarketDeliveryLimitedProduct) {
      return '';
    }
    return '${marketTimes.map((e) => '${e.from}〜${e.to}時').join('・')} 受け取り時間限り';
  }
}

class _NanacoPoint extends StatelessWidget {
  const _NanacoPoint(
    this.nanacoPointUnitPoint, {
    Key? key,
  }) : super(key: key);

  final int nanacoPointUnitPoint;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: nanacoPointUnitPoint > 1,
      child: Row(
        children: [
          SvgPicture.asset(Assets.icons.nanacoPoint.path, width: 16),
          const SizedBox(width: 4),
          Text(
            '$nanacoPointUnitPoint倍！',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
              height: 16 / 12,
              color: AppColors.black2,
            ),
          ),
        ],
      ),
    );
  }
}

class _LimitedNumberText extends StatelessWidget {
  const _LimitedNumberText(
    this.limitedNumber, {
    Key? key,
  }) : super(key: key);

  final String limitedNumber;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: limitedNumber.isNotEmpty,
      child: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Text(
          limitedNumber,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w300,
            color: AppColors.gray1,
            height: 15 / 11,
          ),
        ),
      ),
    );
  }
}

class _DisplayPriceNote extends StatelessWidget {
  const _DisplayPriceNote({
    Key? key,
    required this.visible,
    required this.note,
  }) : super(key: key);
  final bool visible;
  final String note;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Text(
          note,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w300,
            color: AppColors.gray1,
            height: 15 / 11,
          ),
        ),
      ),
    );
  }
}

class _BasePrice extends StatelessWidget {
  const _BasePrice({
    required this.basePrice,
    required this.sellingOffBasePrice,
    required this.isProductNumber,
    required this.sellingOffCode,
    Key? key,
  }) : super(key: key);

  final int basePrice;
  final int? sellingOffBasePrice;
  final bool isProductNumber;
  final String? sellingOffCode;

  @override
  Widget build(BuildContext context) {
    final visibleSellingOffBasePrice = (sellingOffCode?.isNotEmpty ?? false) && sellingOffBasePrice != null;
    final Widget child;
    if (visibleSellingOffBasePrice) {
      child = Wrap(
        alignment: WrapAlignment.end,
        children: [
          Text(
            '${formatToYen(basePrice)}${isProductNumber ? '~' : ''}',
            style: const TextStyle(
              color: AppColors.gray2,
              decoration: TextDecoration.lineThrough,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              '${formatToYen(sellingOffBasePrice!)}${isProductNumber ? '~' : ''}',
              style: const TextStyle(
                color: AppColors.emphasis1,
              ),
            ),
          ),
        ],
      );
    } else {
      child = Text(
        '${formatToYen(basePrice)}${isProductNumber ? '~' : ''}',
      );
    }

    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 16,
        height: 22 / 16,
        fontWeight: FontWeight.w600,
        color: AppColors.black2,
      ),
      child: child,
    );
  }
}

class _Price extends StatelessWidget {
  const _Price({
    required this.price,
    required this.sellingOffPrice,
    required this.isProductNumber,
    required this.isTaxExemptProduct,
    required this.sellingOffCode,
    Key? key,
  }) : super(key: key);

  final int price;
  final int? sellingOffPrice;
  final bool isProductNumber;
  final bool isTaxExemptProduct;
  final String? sellingOffCode;

  @override
  Widget build(BuildContext context) {
    final visibleSellingOffPrice = (sellingOffCode?.isNotEmpty ?? false) && sellingOffPrice != null;
    final Widget child;

    if (isTaxExemptProduct) {
      child = const Text(
        '(非課税)',
      );
    } else if (visibleSellingOffPrice) {
      child = Wrap(
        alignment: WrapAlignment.end,
        children: [
          Text(
            '${formatToYen(price)}${isProductNumber ? '~' : ''}',
            style: const TextStyle(
              color: AppColors.gray2,
              decoration: TextDecoration.lineThrough,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              '${formatToYen(sellingOffPrice!)}${isProductNumber ? '~' : ''}(税込)',
            ),
          ),
        ],
      );
    } else {
      child = Text(
        '${formatToYen(price)}${isProductNumber ? '~' : ''}(税込)',
      );
    }

    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 12,
        height: 15 / 12,
        fontWeight: FontWeight.w300,
        color: AppColors.black2,
      ),
      child: child,
    );
  }
}

// カード会員割引情報
class _CardMemberDiscountInfo extends StatelessWidget {
  const _CardMemberDiscountInfo(
    this.isProductNumber,
    this.cardMemberDiscount, {
    Key? key,
  }) : super(key: key);

  final bool isProductNumber;
  final CardCustomerDiscountModel? cardMemberDiscount;

  @override
  Widget build(BuildContext context) {
    if (isProductNumber || cardMemberDiscount == null) {
      return const SizedBox.shrink();
    }
    if (!cardMemberDiscount!.isCardMemberDiscount ||
        cardMemberDiscount!.cardMemberSaleRate == 0 ||
        cardMemberDiscount!.discountCardImages.isEmpty) {
      return const SizedBox.shrink();
    }
    final discountCardImages = cardMemberDiscount!.discountCardImages;
    // 透明のカードを含めたカードを並べる数を3の倍数に揃える(6が最大とする)
    final images = List.generate((discountCardImages.length / 3).ceil() * 3,
        (i) => i < discountCardImages.length ? discountCardImages[i] : null);
    final cardList = images.map(
      (image) => image != null
          ? CardImage(imageUrl: image)
          : SizedBox(
              width: AppMediaQuery.of(context).widthRate * 24,
              height: AppMediaQuery.of(context).widthRate * 14,
            ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '会員様限定${cardMemberDiscount!.cardMemberSaleRate}%割引',
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w300,
            height: 15 / 11,
            color: AppColors.gray1,
          ),
        ),
        const SizedBox(height: 4),
        Wrap(
          spacing: 4,
          runSpacing: 4,
          children: cardList.toList(),
        ),
      ],
    );
  }
}

class _ProductImageTopLabel extends StatelessWidget {
  const _ProductImageTopLabel({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: 0,
      child: _ProductCassetteImageLabel(
        imageUrl: imageUrl,
      ),
    );
  }
}

class _ProductImageBottomArea extends StatelessWidget {
  const _ProductImageBottomArea({
    Key? key,
    required this.productModel,
    required this.imageUrl,
  }) : super(key: key);

  final ProductModel productModel;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final isCenterShop = context.select((ShopInfoState state) => state.shopInfo.isCenterShop);
    return Positioned(
      left: 0,
      bottom: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 不定貫アイコン
          Visibility(
            visible: isCenterShop && productModel.isSaleByMeasure,
            child: Padding(
              padding: const EdgeInsets.only(left: 6, bottom: 6),
              child: Assets.icons.saleByMeasure.svg(width: 16, height: 16),
            ),
          ),
          _ProductCassetteImageLabel(
            imageUrl: imageUrl,
          ),
        ],
      ),
    );
  }
}

class _ProductCassetteImageLabel extends StatelessWidget {
  const _ProductCassetteImageLabel({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    // コンテンツ幅（端末画面幅 - 左右16px）
    final contentsWidth = AppMediaQuery.of(context).size.width - 32;
    // 商品カセットの幅 (コンテンツ幅の31.8%)
    final cassetteWidth = contentsWidth * 0.318;
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: cassetteWidth,
        maxHeight: 17,
      ),
      child: ProductImageLabel(
        imageUrl: imageUrl,
      ),
    );
  }
}
