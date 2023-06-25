import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../common/app_cached_network_image.dart';
import '../../state/product_detail_page_state.dart';

class ProductLabels extends StatelessWidget {
  const ProductLabels({Key? key, required this.position}) : super(key: key);

  final ProductLabelPosition position;

  @override
  Widget build(BuildContext context) {
    final labels = context.select((ProductDetailPageState state) {
      switch (position) {
        case ProductLabelPosition.top:
          return state.topLabels;
        case ProductLabelPosition.bottom:
          return state.bottomLabels;
      }
    });

    return Wrap(
      spacing: 4,
      runSpacing: 4,
      children: labels.map((label) => _LabelImageComponent(imageUrl: label.imageUrl)).toList(),
    );
  }
}

class _LabelImageComponent extends StatelessWidget {
  const _LabelImageComponent({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 17),
      child: AppCachedNetworkImage(
        imageUrl: imageUrl,
        errorBuilder: (_, __, ___) => const SizedBox.shrink(),
      ),
    );
  }
}

enum ProductLabelPosition {
  top,
  bottom,
}
