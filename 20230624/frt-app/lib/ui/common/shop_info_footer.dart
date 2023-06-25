import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../gen/assets.gen.dart';
import '../../util/access_point_info_manager.dart';
import '../state/shop_info_state.dart';
import 'app_colors.dart';

class ShopInfoFooterArgument {
  ShopInfoFooterArgument({
    required this.isShowAkahonShopInfo,
  });
  final bool isShowAkahonShopInfo;
}

class ShopInfoFooter extends StatelessWidget {
  const ShopInfoFooter({
    this.isDisplayedAkahon = false,
    Key? key,
  }) : super(key: key);

  final bool isDisplayedAkahon;

  @override
  Widget build(BuildContext context) {
    final isAkachanhonpoShop = context.select((ShopInfoState state) => state.shopInfo.isAkachanhonpoShop);
    final isAkahonAgentShop = context.select((ShopInfoState state) => state.shopInfo.isAkahonAgentShop);
    return Provider<ShopInfoFooterArgument>.value(
      value: ShopInfoFooterArgument(isShowAkahonShopInfo: isDisplayedAkahon && isAkachanhonpoShop && isAkahonAgentShop),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            _Logo(),
            SizedBox(height: 16),
            _CompanyName(),
            SizedBox(height: 12),
            _Outline(),
          ],
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SvgPicture.network(
        '$iynsStaticImagesBaseUrlAndSpPath/logo-iyns-footer.svg',
        placeholderBuilder: (_) => Assets.images.logoIynsFooter.svg(),
      ),
    );
  }
}

class _CompanyName extends StatelessWidget {
  const _CompanyName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isShowAkahonShopInfo = context.select((ShopInfoFooterArgument value) => value.isShowAkahonShopInfo);
    final shopInfo = context.select((ShopInfoState state) => state.shopInfo);

    final String companyName;
    if (isShowAkahonShopInfo) {
      companyName = '株式会社赤ちゃん本舗';
    } else if (shopInfo.isMarudaiShop) {
      companyName = '株式会社丸大';
    } else {
      companyName = '株式会社イトーヨーカ堂';
    }

    final String shopName;
    if (isShowAkahonShopInfo && shopInfo.shopCode == akachanhonpoChangeTargetShopCode) {
      shopName = akachanhonpoChangeShopName;
    } else {
      shopName = shopInfo.shopName;
    }

    return Text(
      '$companyName $shopName',
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w300,
        height: 16 / 12,
        color: AppColors.footerGray1,
      ),
    );
  }
}

class _Outline extends StatelessWidget {
  const _Outline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.line, width: 1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w300,
            height: 14 / 10,
            color: AppColors.footerGray2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('販売場の名称及び所在地：'),
            ],
          ),
        ),
      ),
    );
  }
}
