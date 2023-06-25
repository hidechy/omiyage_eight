// 承り

import 'package:flutter/material.dart';

import '../../util/product_string_helper.dart';
import 'app_colors.dart';

class LimitedSaleDeliveryInfoText extends StatelessWidget {
  const LimitedSaleDeliveryInfoText({
    Key? key,
    required this.visibleLimitedSaleDeliveryInfo,
    required this.untilLimitedDeliveryDate,
    required this.afterLimitedDeliveryDate,
    required this.sellOutDate,
  }) : super(key: key);

  final bool visibleLimitedSaleDeliveryInfo;
  final String untilLimitedDeliveryDate;
  final String afterLimitedDeliveryDate;
  final String sellOutDate;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visibleLimitedSaleDeliveryInfo,
      child: Positioned.fill(
        child: Center(
          child: _text(),
        ),
      ),
    );
  }

  Widget _text() {
    return Text(
      ProductStringHelper.limitedSaleDeliveryInfo(
        untilLimitedDeliveryDate,
        afterLimitedDeliveryDate,
        sellOutDate,
        false,
      ),
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        height: 16 / 12,
        color: AppColors.black2,
      ),
    );
  }
}
