import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../enum/category_type.dart';
import '../../gen/assets.gen.dart';
import '../common/app_colors.dart';
import '../state/shop_info_state.dart';

/// 酒類・医薬品の法令警告ラベル
///
/// @param categoryType 表示判定に使用
class ComplianceWarningLabels extends StatelessWidget {
  const ComplianceWarningLabels({
    Key? key,
    required this.categoryType,
  }) : super(key: key);

  final CategoryType categoryType;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Visibility(
            visible: categoryType.isAlcohol,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Assets.icons.alcoholAnnotationIcon.svg(),
                const SizedBox(width: 4),
                const Flexible(
                  child: Text(
                    '飲料・酒　(酒類は法令により20歳未満の方には販売できません)',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w600,
                      height: 15 / 11,
                      color: AppColors.black2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: categoryType.isAlcohol &&
                context.select((ShopInfoState state) => state.shopInfo.isStraddlingPrefecturesShop),
            child: const Padding(
              padding: EdgeInsets.only(top: 4),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '酒税法により、店舗所在地とお届け住所で都道府県が\n異なる場合はお酒の販売ができません。',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.w300,
                    height: 1.36,
                    color: AppColors.gray1,
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: context.select((ShopInfoState state) => state.shopInfo.isDrugShop) && categoryType.isDrug,
            child: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Assets.images.iyLogoSmall.path,
                    width: 18,
                    height: 18,
                  ),
                  const SizedBox(width: 4),
                  Flexible(
                    child: Text(
                      'イトーヨーカドーネットスーパー${context.select((ShopInfoState state) => state.shopInfo.shopName)}　薬品です',
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w300,
                        height: 1.33,
                        color: AppColors.gray1,
                      ),
                    ),
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
