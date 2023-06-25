import 'package:flutter/material.dart';

import '../../data/api/model/product_model.dart';
import 'cart_button.dart';
import 'cassette_label_and_link_row.dart';
import 'product_cassette.dart';

class ProductCassetteSet extends StatelessWidget {
  const ProductCassetteSet({
    Key? key,
    required this.products,
    required this.categoryName,
    required this.onPressed,
    required this.cartButtonKey,
    this.needLabel = true,
    required this.needLinkLabel,
    this.paddingBottom = 32.0,
  }) : super(key: key);

  final List<ProductModel> products;
  final String categoryName;
  final Future<void> Function() onPressed;
  final GlobalKey<CartButtonState> cartButtonKey;
  final bool needLabel;
  final bool needLinkLabel;
  final double paddingBottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: paddingBottom),
      child: Column(
        children: [
          CassetteLabelAndLinkRow(
            onPressed: onPressed,
            needLabel: needLabel,
            needLinkLabel: needLinkLabel,
            titleLabel: categoryName,
          ),
          LayoutBuilder(
            builder: (context, constrains) {
              final productCassetteList = products.take(3).map((ProductModel product) {
                return SizedBox(
                  width: constrains.maxWidth * 0.318,
                  child: ProductCassette(
                    key: ValueKey(product),
                    productModel: product,
                    cartButtonKey: cartButtonKey,
                  ),
                );
              }).toList();
              // 3件に満たない場合は空のwidgetで埋める
              if (products.length < 3) {
                productCassetteList
                    .addAll(List.filled(3 - products.length, SizedBox(width: constrains.maxWidth * 0.318)));
              }
              return IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: productCassetteList,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
