import 'package:flutter/material.dart';

import 'app_colors.dart';

class AlertInsertionBar extends StatelessWidget {
  const AlertInsertionBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.warning2,
      ),
      padding: const EdgeInsets.only(left: 20, top: 9, right: 20, bottom: 9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Expanded(
            child: Text(
              '入力内容に誤りがあります。\nメッセージをご確認の上、もう一度入力してください。',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                height: 16 / 12,
                fontWeight: FontWeight.w600,
                color: AppColors.warning1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
