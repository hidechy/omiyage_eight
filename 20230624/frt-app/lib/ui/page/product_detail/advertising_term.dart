import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../common/app_colors.dart';
import '../../state/product_detail_page_state.dart';

class AdvertisingTerm extends StatelessWidget {
  const AdvertisingTerm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final advertisingTerm = context.select((ProductDetailPageState state) {
      if (!state.productDetailModel.product.isMarketDeliveryLimitedProduct) {
        return '';
      }
      return state.productDetailModel.product.advertisingTerm;
    });

    return Visibility(
      visible: advertisingTerm.isNotEmpty,
      child: Text(
        advertisingTerm,
        style: const TextStyle(
          fontSize: 14,
          height: 21 / 14,
          fontWeight: FontWeight.w300,
          color: AppColors.blackAlpha80,
        ),
      ),
    );
  }
}
