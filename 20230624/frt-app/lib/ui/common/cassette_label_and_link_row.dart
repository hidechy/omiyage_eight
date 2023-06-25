import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import 'app_buttons.dart';
import 'app_colors.dart';

/// 商品カセットラベルともっとみる
class CassetteLabelAndLinkRow extends StatelessWidget {
  const CassetteLabelAndLinkRow({
    Key? key,
    required this.titleLabel,
    this.linkLabel = 'もっとみる',
    this.needLabel = true,
    required this.needLinkLabel,
    required this.onPressed,
  }) : super(key: key);
  final String titleLabel;
  final String linkLabel;
  final bool needLabel;
  final bool needLinkLabel;
  final Future<void> Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: needLabel,
      child: Container(
        padding: const EdgeInsets.only(bottom: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                titleLabel,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black2,
                ),
              ),
            ),
            Visibility(
              visible: needLinkLabel,
              child: BlueTextButton(
                fontSize: 14,
                onPressed: () async => await onPressed(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(linkLabel),
                    const SizedBox(width: 8),
                    Assets.icons.arrowRight.svg(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
