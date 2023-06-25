import 'package:flutter/material.dart';

import 'app_cached_network_image.dart';

class ProductImageLabel extends StatelessWidget {
  const ProductImageLabel({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    if (imageUrl.isEmpty) {
      return const SizedBox.shrink();
    }

    return AppCachedNetworkImage(
      fit: BoxFit.scaleDown,
      imageUrl: imageUrl,
      errorBuilder: (_, __, ___) => const SizedBox.shrink(),
    );
  }
}
