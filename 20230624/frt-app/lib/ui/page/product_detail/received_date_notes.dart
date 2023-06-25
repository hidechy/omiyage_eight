import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../util/cart_info_manager.dart';
import '../../../util/product_string_helper.dart';
import '../../common/app_colors.dart';
import '../../state/product_detail_page_state.dart';

class ReceivedDateNotes extends StatelessWidget {
  const ReceivedDateNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector2<CartInfoState, ProductDetailPageState, String>(
      selector: (_, cart, product) {
        final receivedDateNotes = _notes(cart, product);
        return receivedDateNotes;
      },
      builder: (_, data, __) => Visibility(
        visible: data.isNotEmpty,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              data,
              style: const TextStyle(
                fontSize: 12,
                height: 16 / 12,
                fontWeight: FontWeight.w300,
                color: AppColors.blackAlpha80,
              ),
            ),
          ),
        ),
      ),
    );
  }

  String _notes(CartInfoState cart, ProductDetailPageState product) {
    final visitorCartFlag = cart.visitorCartFlag;
    final deemedDeliveryCartFlag = cart.deemedDeliveryCartFlag;
    final untilLimitedDeliveryDate = product.productDetailModel.product.untilLimitedDeliveryDate(
      visitorCartFlag: visitorCartFlag,
      deemedDeliveryCartFlag: deemedDeliveryCartFlag,
    );

    final afterLimitedDeliveryDate = product.productDetailModel.product.afterLimitedDeliveryDate(
      visitorCartFlag: visitorCartFlag,
      deemedDeliveryCartFlag: deemedDeliveryCartFlag,
    );

    final sellOutDate = product.productDetailModel.product.sellOutDate(
      visitorCartFlag: visitorCartFlag,
      deemedDeliveryCartFlag: deemedDeliveryCartFlag,
    );

    return ProductStringHelper.limitedSaleDeliveryInfo(
      untilLimitedDeliveryDate,
      afterLimitedDeliveryDate,
      sellOutDate,
      true,
    );
  }
}
