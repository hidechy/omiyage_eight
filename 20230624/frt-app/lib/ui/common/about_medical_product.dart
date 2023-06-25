import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';

import '../state/shop_info_state.dart';
import 'app_colors.dart';

class AboutMedicalProduct extends StatelessWidget {
  const AboutMedicalProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: context.select((ShopInfoState state) => state.shopInfo.isDrugShop),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.background2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              '医薬品の販売について',
              style: TextStyle(
                fontSize: 16,
                height: 22 / 16,
                fontWeight: FontWeight.w600,
                color: AppColors.black2,
              ),
            ),
            SizedBox(height: 16),
            Text(
              '1 商品毎の”使用上の注意”、”添付文書”、”購入事前確認”を必ずご確認の上、ご購入ください。 \n2 ご購入された医薬品が欠品した際の代替商品のお届けは、お断りさせていただいております。 \n3 購入数を制限させていただく場合がございます。 \n4 当店では使用期限が6ヶ月以上ある医薬品のみ配達いたします。',
              style: TextStyle(
                color: AppColors.black2,
                fontSize: 11,
                fontWeight: FontWeight.w300,
                height: 15 / 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
