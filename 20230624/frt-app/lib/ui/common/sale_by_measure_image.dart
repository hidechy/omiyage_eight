import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../util/access_point_info_manager.dart';
import '../../ui/common/app_cached_network_image.dart';
import '../state/shop_info_state.dart';

class SaleByMeasureImage extends StatelessWidget {
  const SaleByMeasureImage({Key? key, this.margin = EdgeInsets.zero}) : super(key: key);
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    final isCenterShop = context.select((ShopInfoState state) => state.shopInfo.isCenterShop);
    return Visibility(
      visible: isCenterShop,
      child: Padding(
        padding: margin,
        child: AppCachedNetworkImage(
          imageUrl: '$iynsStaticImagesBaseUrlAndSpPath/not-teikan-caution.jpg',
          imageBuilder: (context, image) => image,
          errorBuilder: (_, __, ___) => const SizedBox.shrink(),
        ),
      ),
    );
  }
}
