import 'package:flutter/material.dart';

import 'app_colors.dart';

class ImageSliderIndicator extends StatelessWidget {
  const ImageSliderIndicator({
    Key? key,
    required this.itemCount,
    this.currentIndex = 0,
    this.onTap,
  }) : super(key: key);

  final int itemCount;
  final int currentIndex;
  final ValueChanged<int>? onTap;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: itemCount > 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          itemCount,
          (index) => InkResponse(
            radius: 10,
            onTap: () => onTap?.call(index),
            child: Container(
              width: 8.0,
              height: 8.0,
              margin: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 12.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: index == currentIndex ? Colors.transparent : AppColors.blackAlpha40),
                color: index == currentIndex ? AppColors.blackAlpha40 : Colors.transparent,
              ),
            ),
          ),
        ),
      ),
      replacement: const SizedBox(height: 32),
    );
  }
}
