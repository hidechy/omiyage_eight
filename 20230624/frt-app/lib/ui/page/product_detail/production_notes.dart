import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../common/app_colors.dart';
import '../../state/product_detail_page_state.dart';

// 注釈
class ProductionNotes extends StatelessWidget {
  const ProductionNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDisplayMileIcon =
        context.select((ProductDetailPageState state) => state.productDetailModel.product.isDisplayMileIcon);
    final limitedNumber =
        context.select((ProductDetailPageState state) => state.productDetailModel.product.limitedNumber);
    final isCounselingProduct =
        context.select((ProductDetailPageState state) => state.productDetailModel.product.isCounselingProduct);
    final isAnsweredCounseling =
        context.select((ProductDetailPageState state) => state.productDetailModel.product.isAnsweredCounseling);
    return Align(
      alignment: Alignment.centerRight,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.end,
        direction: Axis.vertical,
        spacing: 4.0,
        children: [
          Visibility(
            visible: !isDisplayMileIcon,
            child: const Text(
              'マイル対象外',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: AppColors.gray1,
                height: 16 / 12,
              ),
            ),
          ),
          Visibility(
            visible: limitedNumber.isNotEmpty,
            child: Text(
              limitedNumber,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: AppColors.gray1,
                height: 16 / 12,
              ),
            ),
          ),
          const _DiscountNotes(),
          Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: Visibility(
              visible: isCounselingProduct && !isAnsweredCounseling,
              child: const Text(
                'ご購入いただくには、カウンセリングが必要です',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.gray1,
                  height: 16 / 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DiscountNotes extends StatelessWidget {
  const _DiscountNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isNotProductNumber =
        context.select((ProductDetailPageState state) => !state.productDetailModel.product.isProductNumber);

    return Visibility(
      visible: isNotProductNumber,
      child: Text(
        _notes(context),
        style: const TextStyle(
          color: AppColors.gray1,
          fontSize: 12,
          height: 16 / 12,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  String _notes(BuildContext context) {
    final isDiscountedPrice = context.select((ProductDetailPageState state) =>
        state.productDetailModel.product.isDiscountedPrice ||
        state.productDetailModel.product.isSumDiscount ||
        state.productDetailModel.product.isPeriodDiscount ||
        state.productDetailModel.product.previousValue.isNotEmpty);
    final isDiscountExclusionProduct =
        context.select((ProductDetailPageState state) => state.productDetailModel.product.isDiscountExclusionProduct);
    final sellingPriceNotes = context.select((ProductDetailPageState state) =>
        !state.productDetailModel.product.isAdvertisingProduct && state.productDetailModel.product.isNsPrice);
    final hasSellingOffCode = context.select((ProductDetailPageState state) =>
        state.productDetailModel.product.productDiscount?.sellingOffCode.isNotEmpty ?? false);
    if (isDiscountedPrice) {
      return '※表示価格は割引後の販売価格です';
    } else if (isDiscountExclusionProduct) {
      return '※こちらの商品は割引対象外です';
    } else if (sellingPriceNotes) {
      return '※表示価格は販売価格です';
    } else if (hasSellingOffCode) {
      return '※元値は本日の販売価格です';
    } else {
      return '';
    }
  }
}
