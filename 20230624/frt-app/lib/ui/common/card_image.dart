import 'package:flutter/material.dart';

import 'app_cached_network_image.dart';
import 'app_image_not_found.dart';
import 'app_media_query.dart';

class CardImage extends StatelessWidget {
  const CardImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppMediaQuery.of(context).widthRate * 24,
      height: AppMediaQuery.of(context).widthRate * 14,
      child: AppCachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.contain,
        errorBuilder: (_, __, dynamic ___) => const AppImageNotFound(),
      ),
    );
  }
}
