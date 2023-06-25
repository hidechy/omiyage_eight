import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../util/access_point_info_manager.dart';
import '../../util/text_formatter.dart';
import '../state/shop_info_state.dart';
import 'app_cached_network_image.dart';
import 'app_colors.dart';
import 'html_parser.dart';

/// 担当店情報 - 医薬品
class DrugShopInfo extends StatelessWidget {
  const DrugShopInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shopInfo = context.select((ShopInfoState state) => state.shopInfo);
    final medicineConfirms = context.select((ShopInfoState state) => state.medicineConfirms);
    final isVisible = medicineConfirms != null && context.select((ShopInfoState state) => state.shopInfo.isDrugShop);
    if (!isVisible) {
      return const SizedBox.shrink();
    }
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.inactive, width: 1.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
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
            child: Text(
              '${shopInfo.isMarudaiShop ? 'イトーヨーカドー丸大' : '株式会社イトーヨーカ堂'} ${shopInfo.shopName}',
              style: const TextStyle(
                fontSize: 16,
                height: 22 / 16,
                color: AppColors.black2,
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
                  Text('〒${formatToSeparatedZipCode(shopInfo.shopPostNo)}'),
                  Text('${shopInfo.shopAddress1} ${shopInfo.shopAddress2}'),
                  Text('電話：${shopInfo.nsTelNumber.isNotEmpty ? shopInfo.nsTelNumber : shopInfo.shopTelNumber}'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: _ShopImages(shopInfo.shopCode),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 12,
                height: 16 / 12,
                color: AppColors.black2,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '許可証の内容',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text('許可区分：${medicineConfirms.permissionTypeName}'),
                  Text('許可証番号：${medicineConfirms.permissionNumber}'),
                  Text('氏名：${medicineConfirms.permissionName}'),
                  Text('店舗名称：${medicineConfirms.permissionShopName}'),
                  Text('店舗所在地：${medicineConfirms.permissionShopAddress}'),
                  Text('許可証有効期間：${medicineConfirms.validityPeriod}'),
                  Text(medicineConfirms.insuranceName),
                  const Text(
                    '\n曜日別在籍',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  HtmlParser(
                    value: medicineConfirms.weekdayEnrollmentList,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ShopImages extends StatelessWidget {
  const _ShopImages(this.shopCode, {Key? key}) : super(key: key);

  final String shopCode;

  @override
  Widget build(BuildContext context) {
    // ColumnとRowの組み合わせだと複雑になるため、GridViewを使用する
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 24,
      shrinkWrap: true,
      crossAxisCount: 2,
      children: [
        shopImage('店舗外観', path: 'shop/shop_$shopCode.jpg'),
        shopImage('売場外観', path: 'concourse/con_$shopCode.jpg'),
        shopImage('医薬品売場', path: 'place/place_$shopCode.jpg'),
      ],
    );
  }

  Widget shopImage(
    String title, {
    required String path,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppCachedNetworkImage(
          imageUrl: '$iynsBaseUrl/smph_contents/images/pharm/$path',
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            height: 16 / 12,
            color: AppColors.black2,
          ),
        ),
      ],
    );
  }
}
