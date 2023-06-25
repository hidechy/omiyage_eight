import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

import '../../../util/cart_info_manager.dart';
import '../../../util/product_string_helper.dart';
import '../../common/app_colors.dart';
import '../../state/product_detail_page_state.dart';

class LimitedDeliveryDatetime extends StatelessWidget {
  const LimitedDeliveryDatetime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector2<CartInfoState, ProductDetailPageState, Tuple2<bool, String>>(
      selector: (_, cart, state) {
        final text = ProductStringHelper.limitDeliveryDate(cart, state);
        final textDisplay = text.isNotEmpty;
        return Tuple2(textDisplay, text);
      },
      builder: (_, data, __) => Visibility(
        visible: data.item1,
        child: Text(
          data.item2,
          style: const TextStyle(
            fontSize: 14,
            height: 19 / 14,
            fontWeight: FontWeight.w300,
            color: AppColors.blackAlpha80,
          ),
        ),
      ),
    );
  }
}
