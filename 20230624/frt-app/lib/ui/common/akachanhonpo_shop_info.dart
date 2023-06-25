import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../constants.dart';
import '../state/shop_info_state.dart';
import 'app_colors.dart';

class AkachanhonpoShopInfo extends StatelessWidget {
  const AkachanhonpoShopInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shopInfo = context.select((ShopInfoState state) => state.shopInfo);
    return shopInfo.isAkachanhonpoShop
        ? Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.inactive, width: 1.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  '担当店情報',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 22 / 16,
                    color: AppColors.black2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                  ),
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 16,
                      height: 22 / 16,
                      color: AppColors.black2,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('株式会社 赤ちゃん本舗'),
                        Text(shopInfo.shopCode == akachanhonpoChangeTargetShopCode
                            ? akachanhonpoChangeShopName
                            : shopInfo.shopName),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 14,
                      height: 19 / 14,
                      color: AppColors.black2,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '〒${shopInfo.akachanhonpoPostNo.substring(0, 3)}-${shopInfo.akachanhonpoPostNo.substring(3, 7)}',
                        ),
                        Text(shopInfo.akachanhonpoAddress),
                        Text('電話：${shopInfo.akachanhonpoTel}'),
                        Text('担当者：${shopInfo.akachanhonpoContactPerson}')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        : const SizedBox.shrink();
  }
}
