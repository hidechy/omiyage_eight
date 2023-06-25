import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

class AppCheckbox extends StatelessWidget {
  const AppCheckbox({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.child,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  }) : super(key: key);

  final bool value;
  final ValueChanged<bool> onChanged;
  final Widget child;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(!value),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            child: SizedBox(
              width: 20,
              height: 20,
              child: value ? Assets.icons.checkboxSelected.svg() : Assets.icons.checkbox.svg(),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
