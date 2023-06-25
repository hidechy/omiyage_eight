import 'package:flutter/material.dart';

import 'app_buttons.dart';
import 'app_colors.dart';

class InsertionBar extends StatelessWidget {
  const InsertionBar({
    Key? key,
    required this.title,
    required this.content,
    required this.buttonText,
    this.onPressed,
  }) : super(key: key);

  final String title;

  final String content;

  final String buttonText;

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.blackShadow,
            blurRadius: 3,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: const TextStyle(
                color: AppColors.black2,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              content,
              style: const TextStyle(
                color: AppColors.black2,
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          if (onPressed != null)
            Align(
              alignment: Alignment.centerRight,
              child: BlueTextButton(
                fontSize: 14,
                child: Text(buttonText),
                onPressed: onPressed,
              ),
            ),
        ],
      ),
    );
  }
}
