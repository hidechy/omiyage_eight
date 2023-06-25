import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

import '../../../gen/assets.gen.dart';
import '../../../util/text_formatter.dart';
import '../../common/app_colors.dart';
import '../../state/product_detail_page_state.dart';

class PriceAndUnit extends StatelessWidget {
  const PriceAndUnit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector<ProductDetailPageState, Tuple2<bool, String>>(
      selector: (_, product) {
        final visibleSellingOffBasePrice =
            product.productDetailModel.product.productDiscount?.sellingOffCode.isNotEmpty ?? false;
        final unitPrice = product.productDetailModel.product.unitPrice;
        return Tuple2(visibleSellingOffBasePrice, unitPrice);
      },
      builder: (_, data, __) => Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          data.item1 ? const _DiscountPriceComponent() : const _PriceComponent(),
          Visibility(
            visible: data.item2.isNotEmpty,
            child: Text(
              data.item2,
              style: const TextStyle(
                fontSize: 12,
                height: 16 / 12,
                fontWeight: FontWeight.w300,
                color: AppColors.blackAlpha60,
              ),
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _DiscountPriceComponent extends StatelessWidget {
  const _DiscountPriceComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final basePrice = context.select((ProductDetailPageState state) => state.productDetailModel.product.basePrice);
    final sellingOffBasePrice = context.select(
        (ProductDetailPageState state) => state.productDetailModel.product.productDiscount!.sellingOffBasePrice);
    final price = context.select((ProductDetailPageState state) => state.productDetailModel.product.price);
    final sellingOffPrice = context
        .select((ProductDetailPageState state) => state.productDetailModel.product.productDiscount!.sellingOffPrice);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _basePrice(basePrice, sellingOffBasePrice),
        _taxPrice(price, sellingOffPrice),
      ],
    );
  }

  Widget _basePrice(int basePrice, int? sellingOffBasePrice) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '¥$basePrice',
          style: const TextStyle(
            color: AppColors.gray2,
            fontWeight: FontWeight.w600,
            fontSize: 20,
            decoration: TextDecoration.lineThrough,
            height: 28 / 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(4, 4, 11, 4),
          child: Assets.icons.doubleArrowRight.svg(),
        ),
        Text(
          '¥$sellingOffBasePrice',
          style: const TextStyle(
            color: AppColors.emphasis1,
            fontWeight: FontWeight.w600,
            fontSize: 20,
            height: 28 / 20,
          ),
        ),
      ],
    );
  }

  Widget _taxPrice(int price, int? sellingOffPrice) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '¥$price(税込)',
          style: const TextStyle(
            color: AppColors.gray2,
            decoration: TextDecoration.lineThrough,
            fontSize: 14,
            height: 19 / 14,
            fontWeight: FontWeight.w300,
          ),
        ),
        Assets.icons.doubleArrowRight.svg(),
        Text(
          '¥$sellingOffPrice(税込)',
          style: const TextStyle(
            color: AppColors.gray1,
            fontSize: 14,
            height: 19 / 14,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}

// 金額表示(¥234, ¥234(税込), 100g当たり¥100(税込))
class _PriceComponent extends StatelessWidget {
  const _PriceComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final basePrice = context.select((ProductDetailPageState state) => _basePrice(
          state.productDetailModel.isConfirmSodastream || state.productDetailModel.product.isProductNumber,
          state.productNumberState.basePrice,
          state.productDetailModel.product.basePrice,
        ));
    final price = context.select((ProductDetailPageState state) => _taxPrice(
          state.productDetailModel.product.isTaxExemptProduct,
          state.productDetailModel.isConfirmSodastream || state.productDetailModel.product.isProductNumber,
          state.productNumberState.price,
          state.productDetailModel.product.price,
        ));
    return Align(
      alignment: Alignment.centerRight,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.end,
        direction: Axis.vertical,
        spacing: 4.0,
        children: [
          Text(
            basePrice,
            style: const TextStyle(
              height: 28 / 20,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.black2,
            ),
          ),
          Text(
            price,
            style: const TextStyle(
              height: 19 / 14,
              fontSize: 14,
              color: AppColors.gray1,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }

  String _basePrice(
    bool isProductNumber,
    int? stateBasePrice,
    int basePrice,
  ) {
    if (isProductNumber) {
      return stateBasePrice != null ? formatToYen(stateBasePrice) : '¥-';
    }
    return formatToYen(basePrice);
  }

  String _taxPrice(
    bool isTaxExemptProduct,
    bool isProductNumber,
    int? statePrice,
    int price,
  ) {
    if (isTaxExemptProduct) {
      return '(非課税)';
    } else if (isProductNumber) {
      return statePrice != null ? '${formatToYen(statePrice)}(税込)' : '¥-(税込)';
    }
    return '${formatToYen(price)}(税込)';
  }
}
