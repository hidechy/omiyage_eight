import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../gen/assets.gen.dart';

class AppRadio<T> extends StatelessWidget {
  const AppRadio({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.useSmallButton = false,
  }) : super(key: key);

  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final bool useSmallButton;

  @override
  Widget build(BuildContext context) {
    return _AppRadio(
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      buttonSize: useSmallButton ? 16 : 24,
      selectedButton: onChanged != null
          // 活性状態
          ? useSmallButton
              ? Assets.icons.radioSmallSelected.svg()
              : Assets.icons.radioSelected.svg()
          // 非活性状態
          : useSmallButton
              ? Assets.icons.radioSmallSelected.svg()
              : Assets.icons.radioSelectedInactive.svg(),
      unSelectedButton: onChanged != null
          // 活性状態
          ? useSmallButton
              ? Assets.icons.radioSmall.svg()
              : Assets.icons.radio.svg()
          // 非活性状態
          : useSmallButton
              ? Assets.icons.radioSmall.svg()
              : Assets.icons.radioInactive.svg(),
      margin: useSmallButton ? const EdgeInsets.symmetric(horizontal: 4) : const EdgeInsets.all(8),
    );
  }
}

class _AppRadio<T> extends StatelessWidget {
  const _AppRadio({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.buttonSize,
    required this.selectedButton,
    required this.unSelectedButton,
    required this.margin,
  });

  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final double buttonSize;
  final SvgPicture selectedButton;
  final SvgPicture unSelectedButton;
  final EdgeInsets margin;

  Widget _buildIcon() {
    final bool isSelected = value == groupValue;
    return SizedBox(
      width: buttonSize,
      height: buttonSize,
      child: isSelected ? selectedButton : unSelectedButton,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: GestureDetector(
        onTap: () => onChanged != null ? onChanged!(value) : () {},
        child: _buildIcon(),
      ),
    );
  }
}
