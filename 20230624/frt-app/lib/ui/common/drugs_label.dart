import 'package:flutter/material.dart';

import 'app_colors.dart';

class DrugsLabel extends StatelessWidget {
  DrugsLabel({
    Key? key,
    required this.isFirstClassDrugs,
    required this.isDesignatedSecondClassDrugs,
    required this.isSecondClassDrugs,
    required this.isThirdClassDrugs,
    required this.isQuasiDrugs,
  }) : super(key: key) {
    _drugsLabel = _drugsLabelText();
  }

  final bool isFirstClassDrugs;
  final bool isDesignatedSecondClassDrugs;
  final bool isSecondClassDrugs;
  final bool isThirdClassDrugs;
  final bool isQuasiDrugs;
  late final String _drugsLabel;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _drugsLabel.isNotEmpty,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.blackAlpha40,
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
        child: Text(
          _drugsLabel,
          style: const TextStyle(
            fontSize: 11,
            height: 1,
            color: AppColors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  String _drugsLabelText() {
    if (isFirstClassDrugs) {
      return '第1類';
    }
    if (isDesignatedSecondClassDrugs) {
      return '指定第2類';
    }
    if (isSecondClassDrugs) {
      return '第2類';
    }
    if (isThirdClassDrugs) {
      return '第3類';
    }
    if (isQuasiDrugs) {
      return '医薬部外品';
    }
    return '';
  }

  bool visible() => _drugsLabel.isNotEmpty;
}
