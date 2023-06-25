import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../common/app_colors.dart';
import '../../state/product_detail_page_state.dart';

// 商品名称
class ProductNameLabel extends StatelessWidget {
  const ProductNameLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productName = context.select((ProductDetailPageState state) => state.productDetailModel.product.productName);
    final String _salesCapacity =
        context.select((ProductDetailPageState state) => state.productDetailModel.product.salesCapacity);
    final unitPriceText = _salesCapacity.isNotEmpty && _salesCapacity != '0' ? '($_salesCapacity)' : '';
    return Padding(
      padding: const EdgeInsets.only(bottom: 23.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          '$productName$unitPriceText',
          style: const TextStyle(
            fontSize: 16,
            height: 22 / 16,
            fontWeight: FontWeight.w300,
            color: AppColors.black2,
          ),
        ),
      ),
    );
  }
}
