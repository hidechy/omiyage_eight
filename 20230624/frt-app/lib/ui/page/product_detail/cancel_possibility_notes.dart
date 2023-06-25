import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../util/product_string_helper.dart';
import '../../common/app_colors.dart';
import '../../state/product_detail_page_state.dart';

class CancelPossibilityNotes extends StatelessWidget {
  const CancelPossibilityNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = context.select((ProductDetailPageState state) => ProductStringHelper.getCancellabilityWording(
          state.productDetailModel.product.deliveryLeadTimeDays,
          state.productDetailModel.product.isOrderOnlyProduct,
        ));
    return Visibility(
      visible: text.isNotEmpty,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 13.0),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            height: 19 / 14,
            color: AppColors.emphasis1,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
