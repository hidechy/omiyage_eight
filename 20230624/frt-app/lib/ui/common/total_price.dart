import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../util/cart_info_manager.dart';
import '../../util/text_formatter.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productTotalPrice = context.select((CartInfoState state) => state.productTotalPrice);
    return Container(
      height: 35,
      width: double.infinity,
      alignment: Alignment.centerRight,
      color: Colors.white.withOpacity(0.9),
      child: Padding(
        padding: const EdgeInsets.only(right: 103.0),
        child: RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 11.0,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            children: [
              const TextSpan(
                text: '商品合計',
              ),
              const WidgetSpan(
                child: SizedBox(
                  width: 4,
                ),
              ),
              TextSpan(
                text: formatToYen(productTotalPrice),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  letterSpacing: -1.0,
                ),
              ),
              const WidgetSpan(
                child: SizedBox(
                  width: 4,
                ),
              ),
              const TextSpan(
                text: '(税込)',
              )
            ],
          ),
        ),
      ),
    );
  }
}
