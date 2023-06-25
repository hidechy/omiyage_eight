import 'package:flutter/cupertino.dart';

import '../../gen/assets.gen.dart';
import 'app_colors.dart';

class AppImageNotFound extends StatelessWidget {
  const AppImageNotFound({
    Key? key,
    this.isGrayBack = false,
    this.fit = BoxFit.contain,
    this.width = double.infinity,
    this.height = double.infinity,
  }) : super(key: key);

  final bool isGrayBack;
  final BoxFit fit;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Assets.images.imageNotFound.svg(
      colorFilter: ColorFilter.mode(isGrayBack ? AppColors.background2 : AppColors.white, BlendMode.dstOver),
      width: width,
      height: height,
    );
  }
}
