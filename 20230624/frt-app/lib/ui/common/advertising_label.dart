import 'package:flutter/material.dart';

import 'app_colors.dart';

class AdvertisingLabel extends StatelessWidget {
  const AdvertisingLabel({
    required this.code,
    required this.label,
    this.margin = EdgeInsets.zero,
    Key? key,
  }) : super(key: key);

  final String code;
  final String label;
  final EdgeInsetsGeometry margin;

  static const _orangeAdvertisingCodes = [
    'SYOUCP',
    'SHINSY',
    'KOUKOK',
    'SINMAI',
    'GEKKAN',
    'MATOME',
    'SHINMA',
    'SARANA',
    'WAKEAR',
    'KIKANG',
    'NESAGE',
    'SEJUKE',
  ];

  @override
  Widget build(BuildContext context) {
    final labelColor = _orangeAdvertisingCodes.contains(code) ? AppColors.orangeAdvertisement : AppColors.gray2;
    return Visibility(
      visible: code.isNotEmpty && label.isNotEmpty,
      child: Container(
        margin: margin,
        padding: const EdgeInsets.fromLTRB(4.0, 3.0, 4.0, 3.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: AppColors.white,
          border: Border.all(color: labelColor),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 11,
            color: labelColor,
            height: 0.909,
          ),
        ),
      ),
    );
  }
}
