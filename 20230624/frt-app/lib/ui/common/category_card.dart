import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import 'app_cached_network_image.dart';
import 'app_colors.dart';
import 'app_media_query.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.thumbnailUrl,
    required this.categoryName,
    required this.onTap,
  }) : super(key: key);
  final String thumbnailUrl;
  final String categoryName;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: SizedBox(
                  height: AppMediaQuery.of(context).widthRate * 40,
                  width: AppMediaQuery.of(context).widthRate * 40,
                  child: AppCachedNetworkImage(
                    imageUrl: thumbnailUrl,
                    errorBuilder: (_, __, ___) => Assets.images.categoryImageNotFound.image(),
                  ),
                ),
              ),
              Expanded(
                child: Text(
                  categoryName,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: AppColors.gray1,
                    height: 19 / 14,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
