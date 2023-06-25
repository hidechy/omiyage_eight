import 'package:flutter/material.dart';

import 'app_colors.dart';

class DiscountLabel extends StatelessWidget {
  const DiscountLabel({
    Key? key,
    required this.isSumDiscount,
    required this.isPeriodDiscount,
    required this.isCardMemberDiscount,
    required this.isProductDetailComponent,
  }) : super(key: key);

  final bool isSumDiscount;
  final bool isPeriodDiscount;
  final bool isCardMemberDiscount;
  final bool isProductDetailComponent;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible(),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
          decoration: const BoxDecoration(
            color: AppColors.orangeAdvertisement,
          ),
          child: Text(
            '割引価格',
            style: TextStyle(
              fontSize: 11,
              color: AppColors.white,
              height: isProductDetailComponent ? 1 : 1.27,
              fontWeight: isProductDetailComponent ? FontWeight.w600 : null,
            ),
          ),
        ),
      ),
    );
  }

  bool visible() => isSumDiscount || isPeriodDiscount || isCardMemberDiscount;
}
