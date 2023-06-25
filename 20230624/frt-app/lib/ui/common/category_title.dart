import 'package:flutter/material.dart';

import 'app_colors.dart';

/// カテゴリタイトル
class CategoryTitle extends StatelessWidget {
  const CategoryTitle({required this.title, required this.topMargin, Key? key}) : super(key: key);
  final String title;
  final double topMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(top: topMargin, bottom: 12),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          height: 25 / 18,
          color: AppColors.black2,
        ),
      ),
    );
  }
}
