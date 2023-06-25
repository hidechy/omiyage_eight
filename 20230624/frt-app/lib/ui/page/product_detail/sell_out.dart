import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../common/app_colors.dart';
import '../../state/product_detail_page_state.dart';

// 売り切りセール詳細の注釈
class SellOutNotes extends StatelessWidget {
  const SellOutNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isExistSellingOffCode = context.select((ProductDetailPageState state) =>
        state.productDetailModel.product.productDiscount?.sellingOffCode.isNotEmpty ?? false);
    return Visibility(
      visible: isExistSellingOffCode,
      child: const Padding(
        padding: EdgeInsets.only(bottom: 16),
        child: Text(
          '「売り切りセール」は、本日または翌日の配達分に限定したお得な価格の商品です',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            height: 19 / 14,
            color: AppColors.blackAlpha60,
          ),
        ),
      ),
    );
  }
}
