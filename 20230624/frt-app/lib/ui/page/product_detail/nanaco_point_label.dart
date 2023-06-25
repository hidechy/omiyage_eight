import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../gen/assets.gen.dart';
import '../../common/app_colors.dart';
import '../../state/product_detail_page_state.dart';

// nanacoポイント
class NanacoPointLabel extends StatelessWidget {
  const NanacoPointLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nanacoPointUnitPoint =
        context.select((ProductDetailPageState state) => state.productDetailModel.product.nanacoPointUnitPoint);
    return Visibility(
      visible: nanacoPointUnitPoint > 1,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: Assets.icons.nanacoPointThinBorder.svg(),
            ),
            Text(
              'nanacoポイント$nanacoPointUnitPoint倍！',
              style: const TextStyle(
                fontSize: 12,
                height: 16 / 12,
                fontWeight: FontWeight.w300,
                color: AppColors.black2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
