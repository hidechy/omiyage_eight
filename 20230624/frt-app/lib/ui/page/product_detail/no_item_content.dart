import 'package:flutter/material.dart';

import '../../common/app_colors.dart';

/// 該当する商品が見つかりませんでした
class NoItemContent extends StatelessWidget {
  const NoItemContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
      child: Align(
        alignment: Alignment.topCenter,
        child: Text(
          '該当する商品が見つかりませんでした',
          style: TextStyle(
            color: AppColors.gray2,
            fontSize: 14,
            fontWeight: FontWeight.w300,
            height: 19 / 14,
          ),
        ),
      ),
    );
  }
}
