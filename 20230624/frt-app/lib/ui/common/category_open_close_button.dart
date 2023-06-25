import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import 'app_colors.dart';

/// カテゴリ開閉ボタン
class CategoryOpenCloseButton extends StatelessWidget {
  const CategoryOpenCloseButton({required this.isOpenFunction, required this.onPressed, Key? key}) : super(key: key);

  final bool Function(BuildContext context) isOpenFunction;
  final void Function(BuildContext context) onPressed;

  @override
  Widget build(BuildContext context) {
    final isOpen = isOpenFunction(context);

    return Padding(
      padding: isOpen ? const EdgeInsets.only(top: 16) : const EdgeInsets.only(top: 8),
      child: OutlinedButton.icon(
        label: isOpen ? const Text('閉じる') : const Text('すべて表示する'),
        icon: isOpen
            ? Assets.icons.arrowUp.svg(colorFilter: const ColorFilter.mode(AppColors.gray2, BlendMode.srcIn))
            : Assets.icons.arrowDown.svg(colorFilter: const ColorFilter.mode(AppColors.gray2, BlendMode.srcIn)),
        style: OutlinedButton.styleFrom(
          // 文字色
          foregroundColor: AppColors.gray1,
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            height: 19 / 14,
          ),
          side: const BorderSide(
            color: AppColors.gray2,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        ),
        onPressed: () => onPressed(context),
      ),
    );
  }
}
