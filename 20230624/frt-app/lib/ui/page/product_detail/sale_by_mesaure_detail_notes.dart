import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

import '../../common/app_colors.dart';
import '../../state/product_detail_page_state.dart';
import '../../state/shop_info_state.dart';

// 不定貫詳細の注釈文言
class SaleByMeasureDetailNotes extends StatelessWidget {
  const SaleByMeasureDetailNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector2<ShopInfoState, ProductDetailPageState, Tuple3<bool, String, String>>(
      selector: (_, shop, product) {
        final capacityNotes = '${product.productDetailModel.product.lowerSalesCapacity}〜'
            '${product.productDetailModel.product.upperSalesCapacity}の範囲';
        final price = '¥${product.productDetailModel.product.lowerPrice}〜¥'
            '${product.productDetailModel.product.upperPrice}の範囲';
        final isCenterShop = shop.shopInfo.isCenterShop;
        final isCenterShopAndSaleByMeasure = isCenterShop && product.productDetailModel.product.isSaleByMeasure;
        return Tuple3(isCenterShopAndSaleByMeasure, capacityNotes, price);
      },
      builder: (_, data, __) => Visibility(
        visible: data.item1,
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.gray1,
            height: 19 / 14,
            fontWeight: FontWeight.w300,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('※当商品は内容量により価格が変動する商品です。内容量、価格が下記の範囲で変動いたしますのであらかじめご承知おきください。'),
              _normalAndBoldText('お届けする商品の内容量：', data.item2),
              _normalAndBoldText('お届けする商品の税込価格：', data.item3),
              const Text('※100g当たりの価格は変わりません。'),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _normalAndBoldText(String left, String right) {
    return Row(
      children: [
        const Text('・'),
        Flexible(
          child: Text.rich(
            TextSpan(children: [
              TextSpan(text: left),
              TextSpan(text: right, style: const TextStyle(fontWeight: FontWeight.w600)),
            ]),
          ),
        ),
      ],
    );
  }
}
