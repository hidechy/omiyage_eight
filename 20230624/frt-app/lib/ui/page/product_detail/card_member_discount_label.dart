import 'package:flutter/material.dart';

import 'package:collection/collection.dart';
import 'package:provider/provider.dart';

import '../../common/app_colors.dart';
import '../../common/card_image.dart';
import '../../state/product_detail_page_state.dart';

// カード会員割引
class CardMemberDiscountLabel extends StatelessWidget {
  const CardMemberDiscountLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isCardMemberDiscount = context.select(
      (ProductDetailPageState state) =>
          (!state.productDetailModel.product.isProductNumber &&
              (state.productDetailModel.product.cardMemberDiscounts.firstOrNull?.isCardMemberDiscount ?? false)) ||
          (state.productDetailModel.product.isProductNumber &&
              state.productNumberState.size != null &&
              state.productNumberState.color != null &&
              (state.productNumberState.cardMemberDiscounts?.firstOrNull?.isCardMemberDiscount ?? false)),
    );
    if (!isCardMemberDiscount) {
      return const SizedBox.shrink();
    }

    /// カード会員割引対象判定がtrueの場合はcardMemberSaleRateがnullになることはない
    final cardMemberSaleRate = context.select(
      (ProductDetailPageState state) => state.productDetailModel.product.isProductNumber
          ? state.productNumberState.cardMemberDiscounts!.first.cardMemberSaleRate
          : state.productDetailModel.product.cardMemberDiscounts.first.cardMemberSaleRate,
    );
    final discountCardImages = context.select(
      (ProductDetailPageState state) => state.productDetailModel.product.isProductNumber
          ? state.productNumberState.cardMemberDiscounts!.first.discountCardImages
          : state.productDetailModel.product.cardMemberDiscounts.first.discountCardImages,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '会員様限定$cardMemberSaleRate％割引',
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.blackAlpha80,
                height: 16 / 12,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(width: 8),
            for (final image in discountCardImages)
              Padding(
                padding: EdgeInsets.only(right: image != discountCardImages.last ? 4 : 0),
                child: CardImage(imageUrl: image),
              ),
          ],
        ),
        const Text(
          '※表示価格は会員様限定割引前の販売価格です。',
          style: TextStyle(
            fontSize: 12,
            color: AppColors.blackAlpha60,
            height: 16 / 12,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
