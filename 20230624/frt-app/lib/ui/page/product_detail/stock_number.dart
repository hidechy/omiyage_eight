import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../common/app_colors.dart';
import '../../state/product_detail_page_state.dart';

// 在庫数
class StockNumber extends StatelessWidget {
  const StockNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stockQuantity =
        context.select((ProductDetailPageState state) => state.productDetailModel.product.stockQuantity);
    return Padding(
      padding: const EdgeInsets.only(bottom: 9.0),
      child: Visibility(
        visible: stockQuantity != null,
        child: Text(
          '残り$stockQuantity点',
          style: const TextStyle(
            color: AppColors.emphasis1,
            fontSize: 14,
            height: 19 / 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
