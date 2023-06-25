import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../enum/temperature_zone.dart';
import '../../common/app_colors.dart';
import '../../common/html_parser.dart';
import '../../state/product_detail_page_state.dart';

// 商品説明(美味しいお肉、冷凍、長野県産など)
class ProductSpecificationText extends StatelessWidget {
  const ProductSpecificationText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productCatchphrase =
        context.select((ProductDetailPageState state) => state.productDetailModel.product.productCatchphrase);
    final temperatureZone =
        context.select((ProductDetailPageState state) => state.productDetailModel.temperatureZone.value);
    final producingArea =
        context.select((ProductDetailPageState state) => state.productDetailModel.product.producingArea);

    List<String> _descriptions = [
      if (productCatchphrase.isNotEmpty) productCatchphrase,
      if (temperatureZone.isNotEmpty) temperatureZone,
      if (producingArea.isNotEmpty) producingArea,
    ];

    return Visibility(
      visible: _descriptions.isNotEmpty,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 2.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final _description in _descriptions)
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: HtmlParser(
                    value: _description,
                    fontStyle: const TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w300,
                      color: AppColors.black2,
                      height: 16 / 12,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
