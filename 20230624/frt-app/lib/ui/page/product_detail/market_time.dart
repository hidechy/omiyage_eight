import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../common/app_colors.dart';
import '../../state/product_detail_page_state.dart';

class MarketTime extends StatelessWidget {
  const MarketTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final limitDeliveryTime = context.select((ProductDetailPageState state) {
      final isMarketDeliveryLimitedProduct = state.productDetailModel.product.isMarketDeliveryLimitedProduct;
      final marketTimes = state.productDetailModel.product.marketTimes;
      if (marketTimes.isEmpty || !isMarketDeliveryLimitedProduct) {
        return '';
      }
      return '${marketTimes.map((e) => '${e.from}時〜${e.to}時').join('・')} 受け取り時間限り';
    });

    return Visibility(
      visible: limitDeliveryTime.isNotEmpty,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(
          limitDeliveryTime,
          style: const TextStyle(
            fontSize: 14,
            height: 21 / 14,
            fontWeight: FontWeight.w300,
            color: AppColors.blackAlpha80,
          ),
        ),
      ),
    );
  }
}
