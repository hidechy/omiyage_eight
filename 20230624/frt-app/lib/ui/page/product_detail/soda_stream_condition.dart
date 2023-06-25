import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../common/app_colors.dart';
import '../../state/product_detail_page_state.dart';

// ソーダストリーム上部テキスト
class SodaStreamCondition extends StatelessWidget {
  const SodaStreamCondition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isConfirmSodaStream =
        context.select((ProductDetailPageState state) => state.productDetailModel.isConfirmSodastream);
    return Visibility(
      visible: isConfirmSodaStream,
      child: const Padding(
        padding: EdgeInsets.only(bottom: 7.0),
        child: Text(
          'ご購入条件：使用済みのガスシリンダーと交換',
          style: TextStyle(
            fontSize: 12,
            height: 16 / 12,
            fontWeight: FontWeight.w300,
            color: AppColors.blackAlpha80,
          ),
        ),
      ),
    );
  }
}
